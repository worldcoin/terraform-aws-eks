data "cloudflare_zone" "worldcoin_dev" {
  name = "worldcoin.dev"
}

removed {
  from = cloudflare_record.monitoring

  lifecycle {
    destroy = false
  }
}
