locals {
  gateway_api_internal_alb_name = "gw-int-alb"
}

module "gateway_api_internal_alb" {
  source   = "git@github.com:worldcoin/terraform-aws-alb.git?ref=v1.4.2"
  for_each = var.gateway_api_internal_enabled ? toset([local.gateway_api_internal_alb_name]) : []

  name_suffix  = each.key
  cluster_name = var.cluster_name
  tag_prefix   = "gateway.k8s.aws.alb"
  tag_stack    = format("kube-system/%s", each.key)

  tls_listener_version = var.internal_tls_listener_version

  internal    = true
  application = each.key
  namespace   = "kube-system"

  create_default_listener = false

  acm_arn        = var.internal_cert_arn != "" ? var.internal_cert_arn : var.external_cert_arn
  vpc_id         = var.vpc_config.vpc_id
  public_subnets = var.use_private_subnets_for_internal_nlb ? [] : var.vpc_config.public_subnets

  backend_ingress_rules = var.gateway_api_internal_alb_sg_rules != null ? var.gateway_api_internal_alb_sg_rules : [
    {
      description = "Allow HTTPS from VPC"
      port        = 443
      cidr_blocks = [data.aws_vpc.cluster_vpc.cidr_block]
    },
  ]

  s3_logs_bucket_id = var.alb_logs_bucket_id
  idle_timeout      = var.alb_idle_timeout

  drop_invalid_header_fields = var.drop_invalid_header_fields

  # mTLS on the internal ALB should be disabled because we want to allow traffic within the VPC
  mtls_enabled = false

  datadog = {
    monitoring_notification_channel = var.monitoring_notification_channel
  }
}
