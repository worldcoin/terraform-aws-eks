locals {
  gateway_api_external_nlb_name = "gw-ext-nlb"

  # Every element shares the same key set (nulls for the unused ones) so this is a uniform
  # list(object(...)) type, matching var.gateway_api_external_nlb_sg_rules's declared type —
  # concat() below would otherwise hit "Inconsistent conditional result types" the moment an
  # override doesn't structurally clone this default (see INFRA-6980).
  gateway_api_external_nlb_default_sg_rules = [
    {
      description      = "allow http from Cloudflare"
      protocol         = "tcp"
      port             = 80
      cidr_blocks      = data.cloudflare_ip_ranges.cloudflare.ipv4_cidrs
      ipv6_cidr_blocks = null
      security_groups  = null
    },
    {
      description      = "allow http from Cloudflare (IPv6)"
      protocol         = "tcp"
      port             = 80
      cidr_blocks      = null
      ipv6_cidr_blocks = data.cloudflare_ip_ranges.cloudflare.ipv6_cidrs
      security_groups  = null
    },
    {
      description      = "allow https from Cloudflare"
      protocol         = "tcp"
      port             = 443
      cidr_blocks      = data.cloudflare_ip_ranges.cloudflare.ipv4_cidrs
      ipv6_cidr_blocks = null
      security_groups  = null
    },
    {
      description      = "allow https from Cloudflare (IPv6)"
      protocol         = "tcp"
      port             = 443
      cidr_blocks      = null
      ipv6_cidr_blocks = data.cloudflare_ip_ranges.cloudflare.ipv6_cidrs
      security_groups  = null
    },
  ]

  gateway_api_external_nlb_sg_rules = concat(local.gateway_api_external_nlb_default_sg_rules, var.gateway_api_external_nlb_sg_rules)
}

module "gateway_api_external_nlb" {
  source = "git::https://github.com/worldcoin/terraform-aws-nlb.git?ref=v1.6.1"

  for_each = var.gateway_api_external_enabled ? toset([local.gateway_api_external_nlb_name]) : []

  name_suffix  = each.key
  cluster_name = local.gateway_api_lb_name_prefix
  cluster_tag  = var.cluster_name
  tag_prefix   = "gateway.k8s.aws.nlb"
  tag_stack    = format("kube-system/%s", each.key)

  tls_listener_version = var.external_tls_listener_version

  internal    = false
  application = each.key

  create_default_listeners = false

  acm_arn        = local.effective_external_cert_arn
  vpc_id         = var.vpc_config.vpc_id
  public_subnets = var.vpc_config.public_subnets

  ingress_sg_rules = local.gateway_api_external_nlb_sg_rules

  enable_deletion_protection       = var.enable_deletion_protection
  enable_cross_zone_load_balancing = var.nlb_az_affinity.gateway_api_external.enable_cross_zone_load_balancing
  dns_record_client_routing_policy = var.nlb_az_affinity.gateway_api_external.dns_record_client_routing_policy
}
