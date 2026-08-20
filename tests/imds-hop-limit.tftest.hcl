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

# Hop limit 1 keeps the IMDS response in the host network namespace, so a Pod one
# hop away cannot reach 169.254.169.254 and assume the node IAM role (INFRA-7052).
#
# The value reaches instances through three independent launch templates, one per
# node path, and a cluster is only closed if all three carry it. Covering them
# together is the point of this test: the managed node group has historically been
# the one people remember, and Karpenter and the enclave tracks the ones they miss.
run "hop_limit_defaults_to_one_on_every_node_path" {
  command = plan

  variables {
    aws_autoscaling_group_enabled = true
    enclave_tracks = {
      a = {
        instance_type     = "m5.xlarge"
        cpu_allocation    = "2"
        memory_allocation = "4096"
      }
    }
  }

  assert {
    condition     = aws_launch_template.al2023[0].metadata_options[0].http_put_response_hop_limit == 1
    error_message = "The managed node group launch template must default to hop limit 1"
  }

  assert {
    condition     = aws_launch_template.this[0].metadata_options[0].http_put_response_hop_limit == 1
    error_message = "The autoscaling group launch template must default to hop limit 1"
  }

  assert {
    condition     = aws_launch_template.enclave_track["a"].metadata_options[0].http_put_response_hop_limit == 1
    error_message = "The enclave track launch template must default to hop limit 1"
  }
}

# Raising the limit stays possible, because documented exceptions exist: the
# internal-tools clusters run at 3 under INFRA-3764. What must not happen is a
# caller setting a value and one of the three paths quietly ignoring it.
run "explicit_hop_limit_is_honoured_on_every_node_path" {
  command = plan

  variables {
    http_put_response_hop_limit   = 3
    aws_autoscaling_group_enabled = true
    enclave_tracks = {
      a = {
        instance_type     = "m5.xlarge"
        cpu_allocation    = "2"
        memory_allocation = "4096"
      }
    }
  }

  assert {
    condition     = aws_launch_template.al2023[0].metadata_options[0].http_put_response_hop_limit == 3
    error_message = "The managed node group launch template must honour an explicit hop limit"
  }

  assert {
    condition     = aws_launch_template.this[0].metadata_options[0].http_put_response_hop_limit == 3
    error_message = "The autoscaling group launch template must honour an explicit hop limit"
  }

  assert {
    condition     = aws_launch_template.enclave_track["a"].metadata_options[0].http_put_response_hop_limit == 3
    error_message = "The enclave track launch template must honour an explicit hop limit"
  }
}

# IMDSv2 itself is not optional. A hop limit of 1 blocks the network path, while
# httpTokens required is what stops IMDSv1 from answering without a token at all,
# and the two are only meaningful together.
run "imdsv2_tokens_stay_required" {
  command = plan

  variables {
    aws_autoscaling_group_enabled = true
    enclave_tracks = {
      a = {
        instance_type     = "m5.xlarge"
        cpu_allocation    = "2"
        memory_allocation = "4096"
      }
    }
  }

  assert {
    condition     = aws_launch_template.al2023[0].metadata_options[0].http_tokens == "required"
    error_message = "The managed node group launch template must require IMDSv2 tokens"
  }

  assert {
    condition     = aws_launch_template.this[0].metadata_options[0].http_tokens == "required"
    error_message = "The autoscaling group launch template must require IMDSv2 tokens"
  }

  assert {
    condition     = aws_launch_template.enclave_track["a"].metadata_options[0].http_tokens == "required"
    error_message = "The enclave track launch template must require IMDSv2 tokens"
  }
}
