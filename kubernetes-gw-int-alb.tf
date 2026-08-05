locals {
  gateway_api_internal_alb_name = "gw-int-alb"

  # NOTE: terraform-aws-alb's backend_ingress_rules has no ipv6_cidr_blocks attribute (checked
  # v1.6.1, the version pinned below) — the IPv6 rule below has never actually reached the ALB
  # module with a functioning ipv6 key. Preserved as-is (pre-existing, out of scope for
  # INFRA-6980); only normalized here so this local's own two branches type-check.
  gateway_api_internal_alb_default_sg_rules = concat(
    [
      {
        description      = "Allow HTTPS from all internal networks"
        protocol         = "tcp"
        port             = 443
        cidr_blocks      = ["10.0.0.0/8"]
        ipv6_cidr_blocks = null
        security_groups  = null
      },
    ],
    data.aws_vpc.cluster_vpc.ipv6_cidr_block != "" ? [
      {
        description      = "Allow HTTPS from VPC (IPv6)"
        protocol         = "tcp"
        port             = 443
        cidr_blocks      = null
        ipv6_cidr_blocks = [data.aws_vpc.cluster_vpc.ipv6_cidr_block]
        security_groups  = null
      },
    ] : []
  )

  gateway_api_internal_alb_sg_rules = concat(local.gateway_api_internal_alb_default_sg_rules, var.gateway_api_internal_alb_sg_rules)
}

module "gateway_api_internal_alb" {
  source   = "git::https://github.com/worldcoin/terraform-aws-alb.git?ref=v1.6.1"
  for_each = var.gateway_api_internal_enabled ? toset([local.gateway_api_internal_alb_name]) : []

  name_suffix  = each.key
  cluster_name = local.gateway_api_lb_name_prefix
  cluster_tag  = var.cluster_name
  tag_prefix   = "gateway.k8s.aws.alb"
  tag_stack    = format("kube-system/%s", each.key)

  tls_listener_version = var.internal_tls_listener_version

  internal    = true
  application = each.key
  namespace   = "kube-system"

  create_default_listener = false

  acm_arn        = local.effective_internal_cert_arn
  vpc_id         = var.vpc_config.vpc_id
  public_subnets = var.use_private_subnets_for_internal_nlb ? [] : var.vpc_config.public_subnets

  backend_ingress_rules = local.gateway_api_internal_alb_sg_rules

  s3_logs_bucket_id = var.alb_logs_bucket_id
  idle_timeout      = var.alb_idle_timeout

  drop_invalid_header_fields = var.drop_invalid_header_fields

  # mTLS on the internal ALB should be disabled because we want to allow traffic within the VPC
  mtls_enabled = false

  datadog = {
    monitoring_notification_channel = var.monitoring_notification_channel
  }

  enable_deletion_protection = var.enable_deletion_protection
}
