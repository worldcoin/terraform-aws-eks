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
# Test: Network policy disabled by default
# =============================================================================
run "vpc_cni_network_policy_disabled_by_default" {
  command = plan

  assert {
    condition     = var.vpc_cni_enable_network_policy == false
    error_message = "vpc_cni_enable_network_policy should default to false"
  }

  assert {
    condition     = !contains(keys(jsondecode(aws_eks_addon.vpc_cni.configuration_values)), "enableNetworkPolicy")
    error_message = "enableNetworkPolicy should not be present when disabled"
  }

  assert {
    condition     = !contains(keys(jsondecode(aws_eks_addon.vpc_cni.configuration_values)), "nodeAgent")
    error_message = "nodeAgent should not be present when network policy is disabled"
  }
}

# =============================================================================
# Test: Network policy enabled
# =============================================================================
run "vpc_cni_network_policy_enabled" {
  command = plan

  variables {
    vpc_cni_enable_network_policy = true
  }

  assert {
    condition     = jsondecode(aws_eks_addon.vpc_cni.configuration_values)["enableNetworkPolicy"] == "true"
    error_message = "enableNetworkPolicy should be 'true' when enabled"
  }

  assert {
    condition     = jsondecode(aws_eks_addon.vpc_cni.configuration_values)["nodeAgent"]["enablePolicyEventLogs"] == "true"
    error_message = "nodeAgent.enablePolicyEventLogs should be 'true' when network policy is enabled"
  }
}
