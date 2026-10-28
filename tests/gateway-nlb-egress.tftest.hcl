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
  gateway_api_external_enabled = true
  gateway_api_internal_enabled = true
}

run "defaults_preserve_existing_egress" {
  command = plan

  assert {
    condition = (
      length(local.gateway_api_external_nlb_egress_sg_rules) == 1 &&
      one(local.gateway_api_external_nlb_egress_sg_rules).protocol == "-1" &&
      toset(one(local.gateway_api_external_nlb_egress_sg_rules).cidr_blocks) == toset(["0.0.0.0/0"]) &&
      local.gateway_api_internal_nlb_egress_sg_rules == local.gateway_api_external_nlb_egress_sg_rules
    )
    error_message = "Existing callers must retain unrestricted IPv4 egress on both NLBs."
  }
}

run "null_preserves_shared_defaults" {
  command = plan

  variables {
    gateway_api_external_nlb_egress_sg_rules = null
    gateway_api_internal_nlb_egress_sg_rules = null
  }

  assert {
    condition     = jsonencode(local.gateway_api_external_nlb_egress_sg_rules) == jsonencode(local.gateway_api_nlb_default_egress_sg_rules) && jsonencode(local.gateway_api_internal_nlb_egress_sg_rules) == jsonencode(local.gateway_api_nlb_default_egress_sg_rules)
    error_message = "Null overrides must use the central Gateway defaults."
  }
}

run "external_restriction_preserves_internal_defaults" {
  command = plan

  variables {
    gateway_api_external_nlb_egress_sg_rules = [for port in [8080, 8081] : {
      description = "Allow target and separate health-check port"
      protocol    = "tcp"
      from_port   = port
      to_port     = port
      cidr_blocks = ["10.0.0.0/16"]
    }]
  }

  assert {
    condition = (
      length(local.gateway_api_external_nlb_egress_sg_rules) == 2 &&
      alltrue([for rule in local.gateway_api_external_nlb_egress_sg_rules : rule.protocol == "tcp" && rule.from_port == rule.to_port && rule.cidr_blocks == tolist(["10.0.0.0/16"])]) &&
      toset([for rule in local.gateway_api_external_nlb_egress_sg_rules : rule.to_port]) == toset([8080, 8081]) &&
      one(local.gateway_api_internal_nlb_egress_sg_rules).protocol == "-1"
    )
    error_message = "An external override must replace broad egress, including a distinct health-check port, without changing the internal NLB."
  }
}

run "internal_restriction_preserves_external_defaults" {
  command = plan

  variables {
    gateway_api_internal_nlb_egress_sg_rules = [{
      protocol         = "tcp"
      from_port        = 8453
      to_port          = 8453
      ipv6_cidr_blocks = ["2001:db8::/64"]
    }]
  }

  assert {
    condition = (
      length(local.gateway_api_internal_nlb_egress_sg_rules) == 1 &&
      one(local.gateway_api_internal_nlb_egress_sg_rules).protocol == "tcp" &&
      one(local.gateway_api_internal_nlb_egress_sg_rules).to_port == 8453 &&
      one(local.gateway_api_internal_nlb_egress_sg_rules).ipv6_cidr_blocks == tolist(["2001:db8::/64"]) &&
      one(local.gateway_api_external_nlb_egress_sg_rules).protocol == "-1"
    )
    error_message = "An internal IPv6 override must not change the external NLB."
  }
}

run "empty_rules_do_not_restore_defaults" {
  command = plan

  variables {
    gateway_api_external_nlb_egress_sg_rules = []
    gateway_api_internal_nlb_egress_sg_rules = []
  }

  assert {
    condition     = length(local.gateway_api_external_nlb_egress_sg_rules) == 0 && length(local.gateway_api_internal_nlb_egress_sg_rules) == 0
    error_message = "Explicit empty overrides must revoke egress on both NLBs."
  }
}

run "rejects_missing_destinations" {
  command = plan

  variables {
    gateway_api_external_nlb_egress_sg_rules = [{ protocol = "tcp", from_port = 8545, to_port = 8545 }]
    gateway_api_internal_nlb_egress_sg_rules = [null]
  }

  expect_failures = [var.gateway_api_external_nlb_egress_sg_rules, var.gateway_api_internal_nlb_egress_sg_rules]
}
