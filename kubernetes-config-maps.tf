resource "kubernetes_config_map_v1" "this" {
  for_each = var.kubernetes_provider_enabled ? var.config_maps : {}

  metadata {
    name      = each.value.name
    namespace = each.value.namespace
  }

  data = each.value.data
}
