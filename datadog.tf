module "datadog_monitoring" {
  count = var.monitoring_enabled ? 1 : 0

  source  = "kabisa/kubernetes/datadog"
  version = "2.1.0"

  notification_channel = var.monitoring_notification_channel
  service              = "Kubernetes"
  env                  = var.environment
  filter_str           = format("kube_cluster_name:%s", var.cluster_name)
  additional_tags = [
    "CreatedBy:terraform"
  ]

  # don't lock the monitor, so we can edit (for example mute for some time) it in the UI
  locked = false

  # don't alert on cpu overbooking
  cpu_limits_low_perc_enabled   = false
  cpu_requests_low_perc_enabled = false

  # limit false positives when karpenter adds/removes nodes
  node_diskpressure_evaluation_period   = "last_1h"
  node_memorypressure_evaluation_period = "last_1h"
  pid_pressure_evaluation_period        = "last_1h"
  node_ready_evaluation_period          = "last_1h"
}

resource "datadog_monitor" "oom" {
  count = var.monitoring_enabled ? 1 : 0

  name      = "OOM kill detected on ${var.cluster_name}"
  type      = "metric alert"
  query     = "sum(last_1h):sum:oom_kill.oom_process.count{cluster_name:${var.cluster_name}} by {kube_namespace,kube_container_name}.as_count() >= 1"
  timeout_h = 1
  priority  = 3

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
