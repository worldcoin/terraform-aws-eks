module "datadog_monitoring_for_user" {
  count = var.monitoring_user_workload_notification_channel != "" ? 1 : 0

  source = "git@github.com:worldcoin/terraform-datadog-kubernetes?ref=v1.2.3"

  notification_channel = var.monitoring_user_workload_notification_channel
  service              = format("EKS %s", var.cluster_name)
  env                  = var.environment
  filter_str           = local.all_filter_str
  additional_tags = [
    "CreatedBy:terraform",
    "service:k8s",
    "team:${var.monitoring_user_workload_team}",
    "env:${var.environment}",
  ]

  deployment_multiple_restarts_enabled = true
  deploy_desired_vs_status_enabled     = true
  hpa_status_enabled                   = true
  persistent_volumes_enabled           = true
  pod_ready_enabled                    = true
  pod_restarts_enabled                 = true
  pods_failed_enabled                  = true
  pods_pending_enabled                 = true
  replicaset_incomplete_enabled        = true
  replicaset_unavailable_enabled       = true
  sts_desired_vs_status_enabled        = true
  sts_multiple_restarts_enabled        = true

  #disable rest:
  cpu_limits_low_perc_state_enabled      = false
  cpu_limits_low_perc_enabled            = false
  cpu_limits_low_enabled                 = false
  cpu_on_dns_pods_high_enabled           = false
  cpu_requests_low_perc_state_enabled    = false
  cpu_requests_low_perc_enabled          = false
  cpu_requests_low_enabled               = false
  daemonset_incomplete_enabled           = false
  daemonset_multiple_restarts_enabled    = false
  datadog_agent_enabled                  = false
  memory_limits_low_perc_state_enabled   = false
  memory_limits_low_perc_enabled         = false
  memory_limits_low_enabled              = false
  memory_requests_low_perc_state_enabled = false
  memory_requests_low_perc_enabled       = false
  memory_requests_low_enabled            = false
  network_unavailable_enabled            = false
  node_diskpressure_enabled              = false
  node_memory_used_percent_enabled       = false
  node_memorypressure_enabled            = false
  node_ready_enabled                     = false
  node_status_enabled                    = false
  pid_pressure_enabled                   = false
  pod_count_per_node_high_enabled        = false
}

resource "datadog_monitor" "oom_for_user" {
  count = var.monitoring_user_workload_notification_channel != "" ? 1 : 0

  name  = "OOM kill detected on ${var.cluster_name}"
  type  = "metric alert"
  query = "sum(last_4h):sum:oom_kill.oom_process.count{${local.oom_filter_str}} by {kube_namespace,kube_container_name}.as_count() >= 1"

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

Notify: ${var.monitoring_user_workload_notification_channel}
EOT

  tags = [
    "CreatedBy:terraform",
    "service:k8s",
    "team:${var.monitoring_user_workload_team}",
    "env:${var.environment}",
  ]
}
