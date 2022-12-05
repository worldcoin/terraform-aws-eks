resource "kubernetes_namespace" "snyk_monitor" {
  count = var.kubernetes_provider_enabled ? 1 : 0

  metadata {
    name = "snyk-monitor"

    annotations = {
      "CreatedBy" = "terraform"
    }
  }
}

resource "kubernetes_secret" "snyk_monitor" {
  count = var.kubernetes_provider_enabled ? 1 : 0

  metadata {
    name      = "snyk-monitor"
    namespace = kubernetes_namespace.snyk_monitor[0].id

    annotations = {
      "CreatedBy" = "terraform"
    }
  }

  data = {
    ".dockerconfigjson" = "{}"
    "dockercfg.json"    = "{}"
    "integrationId"     = var.snyk_integration_id
  }

  type = "kubernetes.io/dockerconfigjson"
}
