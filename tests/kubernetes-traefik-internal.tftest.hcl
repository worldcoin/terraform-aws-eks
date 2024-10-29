# Mock (offline) provider
mock_provider "aws" {
  source = "./tests/mocks/aws" # Path to the directory containing the mock files
}

mock_provider "datadog" {}

mock_provider "cloudflare" {}

variables {
  # Override variables from terraform.tfvars here
}

run "check_kuberneters_traefik_internal" {
  command = plan

  assert {
    condition     = var.internal_nlb_enabled == true
    error_message = "Internal NLB should be enabled"
  }
}
