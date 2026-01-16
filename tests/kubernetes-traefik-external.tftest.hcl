# Mock (offline) provider
mock_provider "aws" {
  source = "./tests/mocks/aws" # Path to the directory containing the mock files
}

mock_provider "datadog" {}

mock_provider "cloudflare" {}

mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes" # Path to the directory containing the mock files
}

variables {
  # Disable kubernetes provider to avoid import block issues with mock provider
  # The kubernetes provider's import blocks cannot be properly mocked in Terraform tests
  kubernetes_provider_enabled = false
}

run "check_kuberneters_traefik_external_alb_enabled" {
  command = plan

  assert {
    condition     = var.external_alb_enabled == true
    error_message = "External ALB should be enabled"
  }
}
