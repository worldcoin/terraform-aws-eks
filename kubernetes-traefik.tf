locals {
  external_alb_name = var.external_alb_enabled ? "traefik" : null
  internal_nlb_name = "traefik-internal"

  # list of all load balancers names
  load_balancers = concat([local.external_alb_name],
    var.internal_nlb_enabled ? [local.internal_nlb_name] : []
  )
}

resource "kubernetes_namespace" "traefik" {
  for_each = var.kubernetes_provider_enabled ? toset(local.load_balancers) : []

  metadata {
    name = each.key

    labels = {
      "elbv2.k8s.aws/pod-readiness-gate-inject" = "enabled"
    }
  }
}
