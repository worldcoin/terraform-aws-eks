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
# Test: defaults preserve prior behavior on both gateway-api NLBs
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
}

# =============================================================================
# Test: partial override leaves the other NLB at default
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
    error_message = "gateway_api_internal.enable_cross_zone_load_balancing should be false when overridden"
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_internal.dns_record_client_routing_policy == "availability_zone_affinity"
    error_message = "gateway_api_internal.dns_record_client_routing_policy should be availability_zone_affinity when overridden"
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_external.enable_cross_zone_load_balancing == true
    error_message = "gateway_api_external should still be at default when only gateway_api_internal is overridden"
  }
}

# =============================================================================
# Test: partial sub-field override (only one of the two settings)
# =============================================================================
run "nlb_az_affinity_partial_subfield" {
  command = plan

  variables {
    nlb_az_affinity = {
      gateway_api_external = {
        enable_cross_zone_load_balancing = false
        # dns_record_client_routing_policy intentionally omitted
      }
    }
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_external.enable_cross_zone_load_balancing == false
    error_message = "gateway_api_external.enable_cross_zone_load_balancing should be false when overridden"
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_external.dns_record_client_routing_policy == "any_availability_zone"
    error_message = "Unspecified routing policy on gateway_api_external should fall back to any_availability_zone"
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

# =============================================================================
# Test: explicit null on a sub-object is normalized to default
# Pins TF's actual behavior: `optional(object({...}), {})` substitutes the
# default for explicit null too, so attribute lookups stay safe.
# =============================================================================
run "nlb_az_affinity_subobject_null_normalized" {
  command = plan

  variables {
    nlb_az_affinity = {
      gateway_api_internal = null
    }
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_internal.enable_cross_zone_load_balancing == true
    error_message = "Sub-object null should be normalized to default; attribute lookup must remain safe"
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_internal.dns_record_client_routing_policy == "any_availability_zone"
    error_message = "Sub-object null should normalize the routing-policy sub-field to its default too"
  }
}

# =============================================================================
# Test: explicit null on a sub-field is normalized to the optional() default
# =============================================================================
run "nlb_az_affinity_subfield_null_normalized" {
  command = plan

  variables {
    nlb_az_affinity = {
      gateway_api_external = {
        enable_cross_zone_load_balancing = null
      }
    }
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_external.enable_cross_zone_load_balancing == true
    error_message = "Sub-field null should be normalized to the optional() default"
  }
}

# =============================================================================
# Test: explicit null is normalized to the default {} (nullable = false)
# Empirically TF doesn't surface a hard failure here — instead the default
# kicks in and the attribute lookups stay safe. This test pins that behavior
# so any future change that breaks the null-safety contract is caught.
# =============================================================================
run "nlb_az_affinity_null_normalized_to_default" {
  command = plan

  variables {
    nlb_az_affinity = null
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_internal.enable_cross_zone_load_balancing == true
    error_message = "Passing null should normalize to the default object; attribute lookups must remain safe"
  }

  assert {
    condition     = var.nlb_az_affinity.gateway_api_external.dns_record_client_routing_policy == "any_availability_zone"
    error_message = "Passing null should normalize to the default object on gateway_api_external too"
  }
}
