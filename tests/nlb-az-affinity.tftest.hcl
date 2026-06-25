# Tests for the grouped `nlb_az_affinity` object variable.
# Offline-only — uses the mock provider.

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
# Test: defaults preserve prior behavior across all three NLBs
# =============================================================================
run "nlb_az_affinity_defaults" {
  command = plan

  assert {
    condition     = var.nlb_az_affinity.gateway_api_internal.enable_cross_zone_load_balancing == true
    error_message = "gateway_api_internal.enable_cross_zone_load_balancing should default to true"
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_internal.dns_record_client_routing_policy == "any_availability_zone"
    error_message = "gateway_api_internal.dns_record_client_routing_policy should default to any_availability_zone"
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_external.enable_cross_zone_load_balancing == true
    error_message = "gateway_api_external.enable_cross_zone_load_balancing should default to true"
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_external.dns_record_client_routing_policy == "any_availability_zone"
    error_message = "gateway_api_external.dns_record_client_routing_policy should default to any_availability_zone"
  }

  assert {
    condition     = var.nlb_az_affinity.traefik_internal.enable_cross_zone_load_balancing == true
    error_message = "traefik_internal.enable_cross_zone_load_balancing should default to true"
  }

  assert {
    condition     = var.nlb_az_affinity.traefik_internal.dns_record_client_routing_policy == "any_availability_zone"
    error_message = "traefik_internal.dns_record_client_routing_policy should default to any_availability_zone"
  }
}

# =============================================================================
# Test: partial override leaves other NLBs at default
# =============================================================================
run "nlb_az_affinity_partial_override" {
  command = plan

  variables {
    nlb_az_affinity = {
      gateway_api_internal = {
        enable_cross_zone_load_balancing = false
        dns_record_client_routing_policy = "availability_zone_affinity"
      }
    }
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_internal.enable_cross_zone_load_balancing == false
    error_message = "Override on gateway_api_internal did not propagate"
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_internal.dns_record_client_routing_policy == "availability_zone_affinity"
    error_message = "Routing policy override on gateway_api_internal did not propagate"
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_external.enable_cross_zone_load_balancing == true
    error_message = "gateway_api_external should still be at default when only gateway_api_internal is overridden"
  }

  assert {
    condition     = var.nlb_az_affinity.traefik_internal.enable_cross_zone_load_balancing == true
    error_message = "traefik_internal should still be at default when only gateway_api_internal is overridden"
  }
}

# =============================================================================
# Test: partial sub-field override (only one of the two settings)
# =============================================================================
run "nlb_az_affinity_partial_subfield" {
  command = plan

  variables {
    nlb_az_affinity = {
      traefik_internal = {
        enable_cross_zone_load_balancing = false
        # dns_record_client_routing_policy intentionally omitted
      }
    }
  }

  assert {
    condition     = var.nlb_az_affinity.traefik_internal.enable_cross_zone_load_balancing == false
    error_message = "cross-zone override on traefik_internal did not propagate"
  }

  assert {
    condition     = var.nlb_az_affinity.traefik_internal.dns_record_client_routing_policy == "any_availability_zone"
    error_message = "Unspecified routing policy on traefik_internal should fall back to any_availability_zone"
  }
}

# =============================================================================
# Test: invalid routing policy is rejected by validation
# =============================================================================
run "nlb_az_affinity_invalid_routing_policy_rejected" {
  command = plan

  variables {
    nlb_az_affinity = {
      gateway_api_external = {
        dns_record_client_routing_policy = "foo"
      }
    }
  }

  expect_failures = [
    var.nlb_az_affinity,
  ]
}
