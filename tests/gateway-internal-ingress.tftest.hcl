mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}

mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

variables {
  kubernetes_provider_enabled  = false
  gateway_api_crds_enabled     = true
  gateway_api_internal_enabled = true
}

run "defaults_preserve_broad_ipv4_and_vpc_ipv6" {
  command = plan

  assert {
    condition = (
      length(local.gateway_api_internal_alb_sg_rules) == 2 &&
      length(local.gateway_api_internal_nlb_sg_rules) == 4 &&
      tolist(one([for r in local.gateway_api_internal_alb_sg_rules : r if r.cidr_blocks != null]).cidr_blocks) == tolist(["10.0.0.0/8"]) &&
      toset([for r in local.gateway_api_internal_nlb_sg_rules : r.port if r.cidr_blocks != null]) == toset([80, 443])
    )
    error_message = "Existing callers must retain their IPv4 and IPv6 defaults."
  }
}

run "explicit_null_preserves_defaults" {
  command = plan

  variables {
    gateway_api_internal_alb_default_ipv4_ingress_enabled = null
    gateway_api_internal_nlb_default_ipv4_ingress_enabled = null
  }

  assert {
    condition = (
      var.gateway_api_internal_alb_default_ipv4_ingress_enabled &&
      var.gateway_api_internal_nlb_default_ipv4_ingress_enabled &&
      length(local.gateway_api_internal_alb_sg_rules) == 2 &&
      length(local.gateway_api_internal_nlb_sg_rules) == 4
    )
    error_message = "Null switches must use the backwards-compatible true defaults."
  }
}

run "alb_opt_out_preserves_custom_rules_ipv6_and_nlb_defaults" {
  command = plan

  variables {
    gateway_api_internal_alb_default_ipv4_ingress_enabled = false
    gateway_api_internal_alb_sg_rules = [
      {
        description = "Allow approved client VPC"
        port        = 443
        cidr_blocks = ["10.0.160.0/20"]
      },
      {
        description     = "Allow approved client security group"
        port            = 8443
        security_groups = ["sg-0123456789abcdef0"]
      },
    ]
  }

  assert {
    condition = (
      length(local.gateway_api_internal_alb_sg_rules) == 3 &&
      one([for r in local.gateway_api_internal_alb_sg_rules : r if r.cidr_blocks != null]).cidr_blocks == tolist(["10.0.160.0/20"]) &&
      one([for r in local.gateway_api_internal_alb_sg_rules : r if r.security_groups != null]).security_groups == tolist(["sg-0123456789abcdef0"]) &&
      one([for r in local.gateway_api_internal_alb_sg_rules : r if r.ipv6_cidr_blocks != null]).ipv6_cidr_blocks == local.cluster_vpc_ipv6_cidr_blocks &&
      length(local.gateway_api_internal_nlb_sg_rules) == 4
    )
    error_message = "ALB opt-out must remove only its broad IPv4 rule, preserving explicit clients, VPC IPv6, and NLB defaults."
  }
}

run "nlb_opt_out_preserves_custom_rules_ipv6_and_alb_defaults" {
  command = plan

  variables {
    gateway_api_internal_nlb_default_ipv4_ingress_enabled = false
    gateway_api_internal_nlb_sg_rules = [
      {
        description = "Allow approved PrivateLink clients"
        port        = 443
        cidr_blocks = ["10.245.0.0/16"]
      },
      {
        description     = "Allow approved direct client security group"
        port            = 8443
        security_groups = ["sg-0123456789abcdef0"]
      },
    ]
  }

  assert {
    condition = (
      length(local.gateway_api_internal_nlb_sg_rules) == 4 &&
      one([for r in local.gateway_api_internal_nlb_sg_rules : r if r.cidr_blocks != null]).cidr_blocks == tolist(["10.245.0.0/16"]) &&
      one([for r in local.gateway_api_internal_nlb_sg_rules : r if r.security_groups != null]).security_groups == tolist(["sg-0123456789abcdef0"]) &&
      length([for r in local.gateway_api_internal_nlb_sg_rules : r if r.ipv6_cidr_blocks != null]) == 2 &&
      alltrue([for r in local.gateway_api_internal_nlb_sg_rules : r.ipv6_cidr_blocks == null ? true : r.ipv6_cidr_blocks == local.cluster_vpc_ipv6_cidr_blocks]) &&
      length(local.gateway_api_internal_alb_sg_rules) == 2
    )
    error_message = "NLB opt-out must remove only its broad IPv4 rules, preserving explicit clients, VPC IPv6, and ALB defaults."
  }
}

run "both_opt_out_without_vpc_ipv6" {
  command = plan

  override_data {
    target = data.aws_vpc.cluster_vpc
    values = {
      id                           = "vpc-1234567890abcdef3"
      cidr_block                   = "10.0.0.0/16"
      ipv6_cidr_block_associations = []
    }
  }

  variables {
    gateway_api_internal_alb_default_ipv4_ingress_enabled = false
    gateway_api_internal_nlb_default_ipv4_ingress_enabled = false
    gateway_api_internal_alb_sg_rules = [{
      description = "Allow approved ALB client"
      port        = 443
      cidr_blocks = ["10.0.160.0/20"]
    }]
    gateway_api_internal_nlb_sg_rules = [{
      description = "Allow approved NLB client"
      port        = 443
      cidr_blocks = ["10.245.0.0/16"]
    }]
  }

  assert {
    condition = (
      length(local.gateway_api_internal_alb_sg_rules) == 1 &&
      length(local.gateway_api_internal_nlb_sg_rules) == 1 &&
      local.gateway_api_internal_alb_sg_rules[0].cidr_blocks == tolist(["10.0.160.0/20"]) &&
      local.gateway_api_internal_nlb_sg_rules[0].cidr_blocks == tolist(["10.245.0.0/16"])
    )
    error_message = "IPv4-only VPCs must receive exactly their explicit rules after opting out."
  }
}

run "empty_rules_cannot_disable_defaults" {
  command = plan

  variables {
    gateway_api_internal_alb_default_ipv4_ingress_enabled = false
    gateway_api_internal_nlb_default_ipv4_ingress_enabled = false
    gateway_api_internal_alb_sg_rules                     = []
    gateway_api_internal_nlb_sg_rules                     = null
  }

  expect_failures = [
    var.gateway_api_internal_alb_default_ipv4_ingress_enabled,
    var.gateway_api_internal_nlb_default_ipv4_ingress_enabled,
  ]
}
