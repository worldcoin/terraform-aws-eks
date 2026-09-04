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

run "allows_gib_aligned_default_and_track_allocations" {
  command = plan

  variables {
    enclaves_memory_allocation = "8192"
    enclave_tracks = {
      next = {
        memory_allocation = "2048"
      }
    }
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
