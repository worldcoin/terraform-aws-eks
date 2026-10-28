locals {
  gateway_api_nlb_default_egress_sg_rules = toset([{
    description      = "Allow all for egress"
    protocol         = "-1"
    from_port        = 0
    to_port          = 0
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    security_groups  = []
  }])

  # An explicit empty set must revoke egress rather than fall back to defaults.
  gateway_api_external_nlb_egress_sg_rules = var.gateway_api_external_nlb_egress_sg_rules == null ? local.gateway_api_nlb_default_egress_sg_rules : var.gateway_api_external_nlb_egress_sg_rules
  gateway_api_internal_nlb_egress_sg_rules = var.gateway_api_internal_nlb_egress_sg_rules == null ? local.gateway_api_nlb_default_egress_sg_rules : var.gateway_api_internal_nlb_egress_sg_rules
}
