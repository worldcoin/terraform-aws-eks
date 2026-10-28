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
}

run "default_plans_with_alb_module_default" {
  command = plan

  assert {
    condition     = length(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.internet) == 1 && one(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.internet).protocol == "-1" && toset(one(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.internet).cidr_blocks) == toset(["0.0.0.0/0"])
    error_message = "Omitted EKS overrides must preserve the ALB module's unrestricted IPv4 default."
  }
}

run "null_plans_with_alb_module_default" {
  command = plan

  variables {
    gateway_api_external_alb_egress_sg_rules = null
  }

  assert {
    condition     = length(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.internet) == 1 && one(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.internet).protocol == "-1" && toset(one(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.internet).cidr_blocks) == toset(["0.0.0.0/0"])
    error_message = "Null EKS overrides must preserve the ALB module's unrestricted IPv4 default."
  }
}

run "empty_egress_plans" {
  command = plan

  variables {
    gateway_api_external_alb_egress_sg_rules = []
  }

  assert {
    condition     = length(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.internet) == 0
    error_message = "The EKS override must revoke internet-SG egress in the nested ALB module."
  }

  assert {
    condition     = length(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.backend) == 1 && toset(one(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.backend).cidr_blocks) == toset([data.aws_vpc.cluster_vpc.cidr_block]) && toset(one(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.backend).ipv6_cidr_blocks) == toset(local.cluster_vpc_ipv6_cidr_blocks)
    error_message = "Removing internet-SG egress must retain IPv4 and IPv6 backend VPC egress."
  }
}

run "external_destination_plans" {
  command = plan

  variables {
    gateway_api_external_alb_egress_sg_rules = [{
      protocol    = "tcp"
      from_port   = 443
      to_port     = 443
      cidr_blocks = ["192.0.2.10/32"]
    }]
  }

  assert {
    condition     = length(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.internet) == 1 && one(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.internet).protocol == "tcp" && one(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.internet).from_port == 443 && one(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.internet).to_port == 443 && toset(one(module.gateway_api_external_alb["gw-ext-alb"].sg_egress_rules.internet).cidr_blocks) == toset(["192.0.2.10/32"])
    error_message = "Custom EKS rules must replace unrestricted egress in the nested ALB module."
  }
}

run "rejects_missing_destination" {
  command = plan

  variables {
    gateway_api_external_alb_egress_sg_rules = [{ protocol = "tcp", from_port = 443, to_port = 443 }]
  }

  expect_failures = [var.gateway_api_external_alb_egress_sg_rules]
}

run "rejects_null_rule" {
  command = plan

  variables {
    gateway_api_external_alb_egress_sg_rules = [null]
  }

  expect_failures = [var.gateway_api_external_alb_egress_sg_rules]
}
