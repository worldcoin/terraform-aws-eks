locals {
  gateway_api_internal_nlb_name = "gw-int-nlb"
}

module "gateway_api_internal_nlb" {
  source = "git@github.com:worldcoin/terraform-aws-nlb.git?ref=v1.3.0"

  for_each = var.gateway_api_internal_enabled ? toset([local.gateway_api_internal_nlb_name]) : []

  name_suffix  = each.key
  cluster_name = var.cluster_name
  tag_prefix   = "gateway.k8s.aws.nlb"
  tag_stack    = format("kube-system/%s", each.key)

  tls_listener_version = var.internal_tls_listener_version

  internal    = true
  application = each.key

  create_default_listeners = false

  acm_arn         = var.internal_cert_arn != "" ? var.internal_cert_arn : var.external_cert_arn
  vpc_id          = var.vpc_config.vpc_id
  public_subnets  = var.use_private_subnets_for_internal_nlb ? [] : var.vpc_config.public_subnets
  private_subnets = var.use_private_subnets_for_internal_nlb ? var.vpc_config.private_subnets : []

  ingress_sg_rules = [
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
  ]
}
