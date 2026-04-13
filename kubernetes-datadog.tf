resource "kubernetes_secret_v1" "datadog" {
  count = var.kubernetes_provider_enabled ? 1 : 0

  metadata {
    name      = "datadog"
    namespace = "kube-system"

    annotations = {
      "CreatedBy" = "terraform"
    }
  }

  data = {
    api-key = var.datadog_api_key
  }
}
