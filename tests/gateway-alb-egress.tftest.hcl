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
}

run "null_plans_with_alb_module_default" {
  command = plan

  variables {
    gateway_api_external_alb_egress_sg_rules = null
  }
}

run "empty_egress_plans" {
  command = plan

  variables {
    gateway_api_external_alb_egress_sg_rules = []
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
