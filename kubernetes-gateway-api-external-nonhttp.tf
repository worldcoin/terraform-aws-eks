locals {
  gateway_api_external_nlb_name = "gw-ext-nlb"
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

  acm_arn        = var.external_cert_arn
  vpc_id         = var.vpc_config.vpc_id
  public_subnets = var.vpc_config.public_subnets

  extra_listeners = var.extra_nlb_listeners
}
