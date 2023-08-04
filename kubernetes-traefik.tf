locals {
  load_balancers = merge(
    { "traefik" = true },
    { for key, value in var.custom_load_balancers : "traefik-${key}" => value },
  )
}

resource "kubernetes_namespace" "traefik" {
  for_each = var.kubernetes_provider_enabled ? local.load_balancers : {}

  metadata {
    name = each.key

    annotations = {
      "CreatedBy" = "terraform"
    }
  }
}
