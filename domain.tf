data "cloudflare_zone" "worldcoin_dev" {
  count = var.enable_cluster_monitoring_domain ? 1 : 0
  name  = "worldcoin.dev"
}

# dns record for cluster monitoring
resource "cloudflare_record" "monitoring" {
  count = var.enable_cluster_monitoring_domain ? 1 : 0

  zone_id = one(data.cloudflare_zone.worldcoin_dev).id
  name    = format("%s.%s", var.cluster_name, "monitoring.worldcoin.dev")
  type    = "CNAME"
  content = module.alb["traefik"].dns_name
  proxied = true
}
