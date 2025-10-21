data "cloudflare_zone" "worldcoin_dev" {
  count = var.monitoring_enabled ? 1 : 0
  name  = "worldcoin.dev"
}

removed {
  from = cloudflare_record.monitoring

  lifecycle {
    destroy = false
  }
}

# Dummy resource to ensure state is updated even if cloudflare_record resources weren't created
resource "null_resource" "cloudflare_migration_marker" {
  triggers = {
    migration_timestamp = timestamp()
  }
}
