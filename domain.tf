# data "cloudflare_zone" "worldcoin_dev" {
#   name = "worldcoin.dev"
# }

# # dns record for cluster monitoring
# resource "cloudflare_record" "monitoring" {
#   zone_id = data.cloudflare_zone.worldcoin_dev.id
#   name    = format("%s.%s", var.cluster_name, "monitoring.worldcoin.dev")
#   type    = "CNAME"
#   content = module.alb["traefik"].dns_name
#   proxied = true
# }
