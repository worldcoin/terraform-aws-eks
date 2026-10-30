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

run "defaults_allow_exact_backend_and_health_ports" {
  command = plan

  assert {
    condition = (
      length(module.gateway_api_external_nlb["gw-ext-nlb"].sg_egress_rules) == 6 &&
      toset([for rule in module.gateway_api_external_nlb["gw-ext-nlb"].sg_egress_rules : rule.from_port]) == toset([5052, 5053, 8080, 8081, 8085, 8443]) &&
      alltrue([for rule in module.gateway_api_external_nlb["gw-ext-nlb"].sg_egress_rules :
        rule.protocol == "tcp" && rule.from_port == rule.to_port &&
        toset(rule.cidr_blocks) == toset(["10.0.0.0/16"]) &&
        length(rule.ipv6_cidr_blocks) == 0 && length(rule.security_groups) == 0
      ]) &&
      module.gateway_api_internal_nlb["gw-int-nlb"].sg_egress_rules == module.gateway_api_external_nlb["gw-ext-nlb"].sg_egress_rules
    )
    error_message = "Both Gateway NLBs must allow only the six exact TCP backend/health ports to the VPC IPv4 ranges."
  }
}

run "null_uses_gateway_defaults" {
  command = plan

  variables {
    gateway_api_external_nlb_egress_sg_rules = null
    gateway_api_internal_nlb_egress_sg_rules = null
  }

  assert {
    condition = (
      length(module.gateway_api_external_nlb["gw-ext-nlb"].sg_egress_rules) == 6 &&
      toset([for rule in module.gateway_api_external_nlb["gw-ext-nlb"].sg_egress_rules : rule.to_port]) == toset([5052, 5053, 8080, 8081, 8085, 8443]) &&
      module.gateway_api_internal_nlb["gw-int-nlb"].sg_egress_rules == module.gateway_api_external_nlb["gw-ext-nlb"].sg_egress_rules
    )
    error_message = "Explicit null must behave like omitted rules for both Gateway NLBs."
  }
}

run "defaults_include_only_associated_ipv4_ranges" {
  command = plan

  override_data {
    target = data.aws_vpc.cluster_vpc
    values = {
      cidr_block = "10.0.0.0/16"
      cidr_block_associations = [
        { association_id = "vpc-cidr-assoc-primary", cidr_block = "10.0.0.0/16", state = "associated" },
        { association_id = "vpc-cidr-assoc-secondary", cidr_block = "10.1.0.0/16", state = "associated" },
        { association_id = "vpc-cidr-assoc-removed", cidr_block = "10.2.0.0/16", state = "disassociated" },
      ]
    }
  }

  assert {
    condition = alltrue([
      for rule in module.gateway_api_external_nlb["gw-ext-nlb"].sg_egress_rules :
      toset(rule.cidr_blocks) == toset(["10.0.0.0/16", "10.1.0.0/16"])
    ]) && module.gateway_api_internal_nlb["gw-int-nlb"].sg_egress_rules == module.gateway_api_external_nlb["gw-ext-nlb"].sg_egress_rules
    error_message = "Default rules must preserve primary and associated secondary IPv4 ranges, excluding removed associations."
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
      length(module.gateway_api_external_nlb["gw-ext-nlb"].sg_egress_rules) == 2 &&
      alltrue([for rule in module.gateway_api_external_nlb["gw-ext-nlb"].sg_egress_rules : rule.protocol == "tcp" && rule.from_port == rule.to_port && toset(rule.cidr_blocks) == toset(["10.0.0.0/16"])]) &&
      toset([for rule in module.gateway_api_external_nlb["gw-ext-nlb"].sg_egress_rules : rule.to_port]) == toset([8080, 8081]) &&
      toset([for rule in module.gateway_api_internal_nlb["gw-int-nlb"].sg_egress_rules : rule.to_port]) == toset([5052, 5053, 8080, 8081, 8085, 8443])
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
      length(module.gateway_api_internal_nlb["gw-int-nlb"].sg_egress_rules) == 1 &&
      one(module.gateway_api_internal_nlb["gw-int-nlb"].sg_egress_rules).protocol == "tcp" &&
      one(module.gateway_api_internal_nlb["gw-int-nlb"].sg_egress_rules).to_port == 8453 &&
      toset(one(module.gateway_api_internal_nlb["gw-int-nlb"].sg_egress_rules).ipv6_cidr_blocks) == toset(["2001:db8::/64"]) &&
      toset([for rule in module.gateway_api_external_nlb["gw-ext-nlb"].sg_egress_rules : rule.to_port]) == toset([5052, 5053, 8080, 8081, 8085, 8443])
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
    condition     = length(module.gateway_api_external_nlb["gw-ext-nlb"].sg_egress_rules) == 0 && length(module.gateway_api_internal_nlb["gw-int-nlb"].sg_egress_rules) == 0
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
