locals {
  external_alb_name = "traefik"
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

    annotations = {
      "CreatedBy" = "terraform"
    }
  }
}
