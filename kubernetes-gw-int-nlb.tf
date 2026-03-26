locals {
  gateway_api_internal_nlb_name = "gw-int-nlb"

  gateway_api_internal_nlb_sg_rules = var.gateway_api_internal_nlb_sg_rules != null ? var.gateway_api_internal_nlb_sg_rules : concat(
    [
      {
        description = "allow http from VPC"
        port        = 80
        cidr_blocks = [data.aws_vpc.cluster_vpc.cidr_block]
      },
      {
        description = "allow https from VPC"
        port        = 443
        cidr_blocks = [data.aws_vpc.cluster_vpc.cidr_block]
      },
    ],
    data.aws_vpc.cluster_vpc.ipv6_cidr_block != "" ? [
      {
        description      = "allow http from VPC (IPv6)"
        port             = 80
        ipv6_cidr_blocks = [data.aws_vpc.cluster_vpc.ipv6_cidr_block]
      },
      {
        description      = "allow https from VPC (IPv6)"
        port             = 443
        ipv6_cidr_blocks = [data.aws_vpc.cluster_vpc.ipv6_cidr_block]
      },
    ] : []
  )
}

module "gateway_api_internal_nlb" {
  source = "git@github.com:worldcoin/terraform-aws-nlb.git?ref=v1.4.0"

  for_each = var.gateway_api_internal_enabled ? toset([local.gateway_api_internal_nlb_name]) : []

  name_suffix  = each.key
  cluster_name = local.gateway_api_lb_name_prefix
  cluster_tag  = var.cluster_name
  tag_prefix   = "gateway.k8s.aws.nlb"
  tag_stack    = format("kube-system/%s", each.key)

  tls_listener_version = var.internal_tls_listener_version

  internal    = true
  application = each.key

  create_default_listeners = false

  acm_arn         = local.effective_internal_cert_arn
  vpc_id          = var.vpc_config.vpc_id
  public_subnets  = var.use_private_subnets_for_internal_nlb ? [] : var.vpc_config.public_subnets
  private_subnets = var.use_private_subnets_for_internal_nlb ? var.vpc_config.private_subnets : []

  ingress_sg_rules = local.gateway_api_internal_nlb_sg_rules
}
