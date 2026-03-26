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

# =============================================================================
# Test: gateway_api_lb_name_prefix defaults to cluster_name when short enough
# =============================================================================
run "gateway_api_lb_prefix_defaults_to_cluster_name" {
  command = plan

  assert {
    condition     = local.gateway_api_lb_name_prefix == var.cluster_name
    error_message = "gateway_api_lb_name_prefix should default to cluster_name"
  }
}

# =============================================================================
# Test: Long cluster_name with gateway enabled requires explicit prefix
# =============================================================================
run "gateway_api_lb_prefix_required_when_cluster_name_too_long" {
  command = plan

  variables {
    cluster_name                 = "this-is-a-very-long-cluster-name-exceeding-limit"
    gateway_api_external_enabled = true
    gateway_api_lb_name_prefix   = "short-prefix"
  }

  assert {
    condition     = local.gateway_api_lb_name_prefix == "short-prefix"
    error_message = "gateway_api_lb_name_prefix should use explicit value"
  }
}

# =============================================================================
# Test: Long cluster_name without gateway enabled does not require prefix
# =============================================================================
run "gateway_api_lb_prefix_not_required_when_gateway_disabled" {
  command = plan

  variables {
    cluster_name = "this-is-a-very-long-cluster-name-exceeding-limit"
  }

  assert {
    condition     = local.gateway_api_lb_name_prefix == "this-is-a-very-long-cluster-name-exceeding-limit"
    error_message = "gateway_api_lb_name_prefix should default to cluster_name when gateway is disabled"
  }
}

# =============================================================================
# Test: Long cluster_name + gateway enabled + no prefix → plan must fail
# =============================================================================
run "gateway_api_lb_prefix_missing_long_name_fails" {
  command = plan

  variables {
    cluster_name                 = "this-is-a-very-long-cluster-name-exceeding-limit"
    gateway_api_external_enabled = true
  }

  expect_failures = [
    terraform_data.gateway_api_lb_name_validation,
  ]
}
