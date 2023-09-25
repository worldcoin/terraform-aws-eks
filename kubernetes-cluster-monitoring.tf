resource "kubernetes_namespace" "cluster_monitoring" {
  count = var.kubernetes_provider_enabled ? 1 : 0

  metadata {
    name = "cluster-monitoring"

    annotations = {
      "CreatedBy" = "terraform"
    }
  }
}
