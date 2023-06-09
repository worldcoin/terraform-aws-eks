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

  # don't alert on cpu overbooking
  cpu_limits_low_perc_enabled   = false
  cpu_requests_low_perc_enabled = false
}
