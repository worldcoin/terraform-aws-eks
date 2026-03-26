locals {
  gateway_api_external_alb_name = "gw-ext-alb"

  # Default is [] — the ALB module manages frontend SG ingress internally
  # using open_to_all (Cloudflare IPs or 0.0.0.0/0). backend_ingress_rules
  # only adds extra rules to the backend SG which has no ingress by default.
  gateway_api_external_alb_sg_rules = var.gateway_api_external_alb_sg_rules != null ? var.gateway_api_external_alb_sg_rules : []
}

module "gateway_api_external_alb" {
  source   = "git@github.com:worldcoin/terraform-aws-alb.git?ref=v1.5.1"
  for_each = var.gateway_api_external_enabled ? toset([local.gateway_api_external_alb_name]) : []

  name_suffix  = each.key
  cluster_name = local.gateway_api_lb_name_prefix
  cluster_tag  = var.cluster_name
  tag_prefix   = "gateway.k8s.aws.alb"
  tag_stack    = format("kube-system/%s", each.key)

  tls_listener_version = var.external_tls_listener_version

  internal    = false
  application = each.key
  namespace   = "kube-system"

  create_default_listener = false

  acm_arn        = local.effective_external_cert_arn
  vpc_id         = var.vpc_config.vpc_id
  public_subnets = var.vpc_config.public_subnets
  open_to_all    = var.open_to_all

  s3_logs_bucket_id = var.alb_logs_bucket_id
  idle_timeout      = var.alb_idle_timeout

  additional_open_ports      = var.additional_open_ports
  drop_invalid_header_fields = var.drop_invalid_header_fields
  backend_ingress_rules      = local.gateway_api_external_alb_sg_rules

  mtls_enabled   = var.open_to_all ? false : var.mtls_enabled
  mtls_s3_bucket = format("wld-mtls-ca-%s", var.region)

  datadog = {
    monitoring_notification_channel = var.monitoring_notification_channel
  }
}
