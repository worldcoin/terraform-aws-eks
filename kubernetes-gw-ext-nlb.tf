locals {
  gateway_api_external_nlb_name = "gw-ext-nlb"

  gateway_api_external_nlb_default_sg_rules = [
    {
      description = "allow http from Cloudflare"
      port        = 80
      cidr_blocks = data.cloudflare_ip_ranges.cloudflare.ipv4_cidrs
    },
    {
      description      = "allow http from Cloudflare (IPv6)"
      port             = 80
      ipv6_cidr_blocks = data.cloudflare_ip_ranges.cloudflare.ipv6_cidrs
    },
    {
      description = "allow https from Cloudflare"
      port        = 443
      cidr_blocks = data.cloudflare_ip_ranges.cloudflare.ipv4_cidrs
    },
    {
      description      = "allow https from Cloudflare (IPv6)"
      port             = 443
      ipv6_cidr_blocks = data.cloudflare_ip_ranges.cloudflare.ipv6_cidrs
    },
  ]
}

module "gateway_api_external_nlb" {
  source = "git@github.com:worldcoin/terraform-aws-nlb.git?ref=v1.3.0"

  for_each = var.gateway_api_external_enabled ? toset([local.gateway_api_external_nlb_name]) : []

  name_suffix  = each.key
  cluster_name = var.cluster_name
  tag_prefix   = "gateway.k8s.aws.nlb"
  tag_stack    = format("kube-system/%s", each.key)

  tls_listener_version = var.external_tls_listener_version

  internal    = false
  application = each.key

  create_default_listeners = false

  acm_arn        = local.effective_external_cert_arn
  vpc_id         = var.vpc_config.vpc_id
  public_subnets = var.vpc_config.public_subnets

  ingress_sg_rules = var.gateway_api_external_nlb_sg_rules != null ? var.gateway_api_external_nlb_sg_rules : local.gateway_api_external_nlb_default_sg_rules
}
