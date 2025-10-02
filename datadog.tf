module "datadog_monitoring" {
  count = var.monitoring_enabled ? 1 : 0

  source = "git@github.com:worldcoin/terraform-datadog-kubernetes?ref=v1.2.2"

  notification_channel = var.monitoring_notification_channel
  service              = format("EKS %s", var.cluster_name)
  env                  = var.environment
  filter_str           = format("kube_cluster_name:%s", var.cluster_name)
  additional_tags = [
    "CreatedBy:terraform"
  ]

  # don't alert on cpu overbooking
  cpu_limits_low_perc_enabled                = false
  cpu_requests_low_perc_enabled              = false
  memory_limits_low_perc_enabled             = var.memory_limits_low_perc_enabled
  deploy_desired_vs_status_warning           = var.deploy_desired_vs_status_warning
  deploy_desired_vs_status_critical          = var.deploy_desired_vs_status_critical
  deploy_desired_vs_status_evaluation_period = var.deploy_desired_vs_status_evaluation_period

  # limit false positives when karpenter adds/removes nodes
  node_diskpressure_evaluation_period   = "last_1h"
  node_memorypressure_evaluation_period = "last_1h"
  pid_pressure_evaluation_period        = "last_1h"
  node_ready_enabled                    = false
  node_memory_used_percent_warning      = null
}

resource "datadog_monitor" "oom" {
  count = var.monitoring_enabled ? 1 : 0

  name  = "OOM kill detected on ${var.cluster_name}"
  type  = "metric alert"
  query = "sum(last_4h):sum:oom_kill.oom_process.count{cluster_name:${var.cluster_name}} by {kube_namespace,kube_container_name}.as_count() >= 1"

  on_missing_data          = "default"
  group_retention_duration = "24h"

  priority = 3

  monitor_thresholds {
    critical = 1
  }

  message = <<EOT
OOM kill detected:

```
Cluster:   {{cluster_name}}
Namespace: {{kube_namespace}}
Container: {{kube_container_name}}
```

Notify: ${var.monitoring_notification_channel}
EOT

  tags = [
    "CreatedBy:terraform"
  ]
}

data "datadog_synthetics_locations" "locations" {
  count = var.monitoring_enabled ? 1 : 0
}

resource "datadog_synthetics_test" "cluster_monitoring" {
  count     = var.monitoring_enabled ? 1 : 0
  name      = "Cluster ${var.cluster_name} unreachable"
  type      = "api"
  subtype   = "http"
  status    = "live"
  message   = "Cluster ${var.cluster_name} is not responding. ${var.monitoring_notification_channel}"
  locations = setintersection(keys(one(data.datadog_synthetics_locations.locations).locations), var.external_check_locations)
  tags = [
    "CreatedBy:terraform",
    "env:${var.environment}",
  ]

  request_definition {
    method = "GET"
    url    = "https://${var.cluster_name}.monitoring.worldcoin.dev/"
  }

  request_headers = {
    Content-Type = "application/json"
  }

  assertion {
    type     = "statusCode"
    operator = "is"
    target   = "200"
  }

  options_list {
    tick_every           = 300
    monitor_priority     = 1
    min_location_failed  = min(var.monitoring_reachability_fail_locations, length(one(data.datadog_synthetics_locations.locations).locations))
    min_failure_duration = var.monitoring_reachability_failure_duration
    retry {
      count    = 3
      interval = 1000 # ms
    }
  }
}
