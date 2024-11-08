# Mock (offline) provider
mock_provider "aws" {
  source = "./tests/mocks/aws" # Path to the directory containing the mock files
}

mock_provider "datadog" {}

mock_provider "cloudflare" {}

variables {
  # Override variables from terraform.tfvars here
}

run "check_kuberneters_traefik_external_alb_enabled" {
  command = plan

  assert {
    condition     = var.kubernetes_provider_enabled == true
    error_message = "External ALB should be enabled"
  }
}
