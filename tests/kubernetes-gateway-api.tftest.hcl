# Mock (offline) provider
mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}

mock_provider "cloudflare" {}

mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

variables {
  kubernetes_provider_enabled = false
}

# =============================================================================
# Test: Gateway API LBs disabled by default
# =============================================================================
run "gateway_api_disabled_by_default" {
  command = plan

  assert {
    condition     = var.gateway_api_external_enabled == false
    error_message = "Gateway API external should be disabled by default"
  }

  assert {
    condition     = var.gateway_api_internal_enabled == false
    error_message = "Gateway API internal should be disabled by default"
  }
}

# =============================================================================
# Test: Shared cert reused from external_cert_arn
# =============================================================================
run "gateway_api_cert_reuses_external" {
  command = plan

  assert {
    condition     = var.external_cert_arn != null
    error_message = "external_cert_arn should be set from tfvars"
  }
}

# =============================================================================
# Test: Shared TLS listener version defaults
# =============================================================================
run "gateway_api_tls_defaults" {
  command = plan

  assert {
    condition     = var.external_tls_listener_version == "1.3"
    error_message = "External TLS listener version should default to 1.3"
  }

  assert {
    condition     = var.internal_tls_listener_version == "1.3"
    error_message = "Internal TLS listener version should default to 1.3"
  }
}
