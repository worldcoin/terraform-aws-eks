# Mock (offline) providers so these input-validation tests do not call AWS.
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

run "renders_gib_aligned_track_allocation_as_gib" {
  command = plan

  variables {
    enclaves_memory_allocation = "8192"
    enclave_tracks = {
      next = {
        memory_allocation = "2048"
      }
    }
  }

  assert {
    condition = alltrue([
      for _, asg in aws_autoscaling_group.enclave_track : anytrue([
        for tag in asg.tag :
        tag.key == "k8s.io/cluster-autoscaler/node-template/resources/hugepages-1Gi" && tag.value == "2Gi"
      ])
    ])
    error_message = "The Cluster Autoscaler hugepage tag must use the configured track allocation in GiB."
  }
}

run "renders_one_gib_track_allocation_as_legacy_tag_value" {
  command = plan

  variables {
    enclave_tracks = {
      next = {
        memory_allocation = "1024"
      }
    }
  }

  assert {
    condition = alltrue([
      for _, asg in aws_autoscaling_group.enclave_track : anytrue([
        for tag in asg.tag :
        tag.key == "k8s.io/cluster-autoscaler/node-template/resources/hugepages-1Gi" && tag.value == "1Gi"
      ])
    ])
    error_message = "A 1024 MiB track allocation must preserve the legacy 1Gi Cluster Autoscaler tag value."
  }
}

run "rejects_non_gib_aligned_default_allocation" {
  command = plan

  variables {
    enclaves_memory_allocation = "1536"
  }

  expect_failures = [var.enclaves_memory_allocation]
}

run "rejects_non_gib_aligned_track_allocation" {
  command = plan

  variables {
    enclave_tracks = {
      next = {
        memory_allocation = "1536"
      }
    }
  }

  expect_failures = [var.enclave_tracks]
}
