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
  kubernetes_provider_enabled = false
}

# Asserts every node provisioning path this module owns ships IMDSv2 with a hop
# limit of 1, so a regular Pod cannot reach IMDS and assume the node IAM role
# (INFRA-7052). Hop limit 2 let the IMDS response survive the extra veth hop
# into a Pod network namespace.
run "imds_defaults_are_locked_down_on_every_node_path" {
  command = plan

  variables {
    enclave_tracks = {
      v1 = {}
    }
  }

  # ASG launch template
  assert {
    condition     = aws_launch_template.this[0].metadata_options[0].http_put_response_hop_limit == 1
    error_message = "ASG launch template must default to IMDSv2 hop limit 1"
  }

  assert {
    condition     = aws_launch_template.this[0].metadata_options[0].http_tokens == "required"
    error_message = "ASG launch template must require IMDSv2 tokens"
  }

  assert {
    condition     = aws_launch_template.this[0].metadata_options[0].http_endpoint == "enabled"
    error_message = "ASG launch template must keep the IMDS endpoint enabled for the node itself"
  }

  # Managed node group (AL2023) launch template
  assert {
    condition     = aws_launch_template.al2023[0].metadata_options[0].http_put_response_hop_limit == 1
    error_message = "AL2023 managed node group launch template must default to IMDSv2 hop limit 1"
  }

  assert {
    condition     = aws_launch_template.al2023[0].metadata_options[0].http_tokens == "required"
    error_message = "AL2023 managed node group launch template must require IMDSv2 tokens"
  }

  assert {
    condition     = aws_launch_template.al2023[0].metadata_options[0].http_endpoint == "enabled"
    error_message = "AL2023 managed node group launch template must keep the IMDS endpoint enabled"
  }

  # Enclave track launch template
  assert {
    condition     = aws_launch_template.enclave_track["v1"].metadata_options[0].http_put_response_hop_limit == 1
    error_message = "Enclave track launch template must default to IMDSv2 hop limit 1"
  }

  assert {
    condition     = aws_launch_template.enclave_track["v1"].metadata_options[0].http_tokens == "required"
    error_message = "Enclave track launch template must require IMDSv2 tokens"
  }

  assert {
    condition     = aws_launch_template.enclave_track["v1"].metadata_options[0].http_endpoint == "enabled"
    error_message = "Enclave track launch template must keep the IMDS endpoint enabled"
  }
}

# The secure default stays overridable for documented workloads that genuinely
# need node-level metadata access. The override must reach every node path, not
# just the one the caller happened to think about.
run "hop_limit_override_reaches_every_node_path" {
  command = plan

  variables {
    http_put_response_hop_limit = 2
    enclave_tracks = {
      v1 = {}
    }
  }

  assert {
    condition     = aws_launch_template.this[0].metadata_options[0].http_put_response_hop_limit == 2
    error_message = "ASG launch template must honour the hop limit override"
  }

  assert {
    condition     = aws_launch_template.al2023[0].metadata_options[0].http_put_response_hop_limit == 2
    error_message = "AL2023 managed node group launch template must honour the hop limit override"
  }

  assert {
    condition     = aws_launch_template.enclave_track["v1"].metadata_options[0].http_put_response_hop_limit == 2
    error_message = "Enclave track launch template must honour the hop limit override"
  }
}

# A caller passing null falls back to the secure default (nullable = false)
# rather than to the provider default of 2, so an unset or conditional caller
# variable can never silently reopen IMDS to Pods.
run "null_hop_limit_falls_back_to_secure_default" {
  command = plan

  variables {
    http_put_response_hop_limit = null
  }

  assert {
    condition     = aws_launch_template.this[0].metadata_options[0].http_put_response_hop_limit == 1
    error_message = "A null hop limit must fall back to the secure default of 1"
  }
}

run "hop_limit_below_range_is_rejected" {
  command = plan

  variables {
    http_put_response_hop_limit = 0
  }

  expect_failures = [
    var.http_put_response_hop_limit,
  ]
}

run "hop_limit_above_range_is_rejected" {
  command = plan

  variables {
    http_put_response_hop_limit = 65
  }

  expect_failures = [
    var.http_put_response_hop_limit,
  ]
}
