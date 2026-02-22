# Tests for cluster_name variable validation
mock_provider "aws" {}
mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {}

variables {
  kubernetes_provider_enabled = false
}

# Valid cluster names
run "cluster_name_valid_simple" {
  command = plan

  variables {
    cluster_name = "test"
  }

  assert {
    condition     = var.cluster_name == "test"
    error_message = "Simple lowercase cluster name should be valid"
  }
}

run "cluster_name_valid_with_hyphens" {
  command = plan

  variables {
    cluster_name = "test-cluster-prod"
  }

  assert {
    condition     = var.cluster_name == "test-cluster-prod"
    error_message = "Cluster name with hyphens should be valid"
  }
}

run "cluster_name_valid_with_numbers" {
  command = plan

  variables {
    cluster_name = "cluster123"
  }

  assert {
    condition     = var.cluster_name == "cluster123"
    error_message = "Cluster name with numbers should be valid"
  }
}

run "cluster_name_valid_max_length" {
  command = plan

  variables {
    cluster_name = "this-is-a-very-long-cluster-name-exactly-48-chars-ok"
  }

  assert {
    condition     = var.cluster_name == "this-is-a-very-long-cluster-name-exactly-48-chars-ok"
    error_message = "Cluster name at max 48 character limit should be valid"
  }
}

run "cluster_name_valid_single_char" {
  command = plan

  variables {
    cluster_name = "a"
  }

  assert {
    condition     = var.cluster_name == "a"
    error_message = "Single character cluster name should be valid"
  }
}

# Invalid cluster names - tested via expect_failures
run "cluster_name_invalid_too_long" {
  command = plan

  variables {
    cluster_name = "this-is-a-cluster-name-that-exceeds-the-48-character-limit-ok"
  }

  expect_failures = [
    var.cluster_name
  ]
}

run "cluster_name_invalid_uppercase" {
  command = plan

  variables {
    cluster_name = "TestCluster"
  }

  expect_failures = [
    var.cluster_name
  ]
}

run "cluster_name_invalid_starts_with_hyphen" {
  command = plan

  variables {
    cluster_name = "-invalid"
  }

  expect_failures = [
    var.cluster_name
  ]
}

run "cluster_name_invalid_ends_with_hyphen" {
  command = plan

  variables {
    cluster_name = "invalid-"
  }

  expect_failures = [
    var.cluster_name
  ]
}

run "cluster_name_invalid_special_chars" {
  command = plan

  variables {
    cluster_name = "invalid_cluster@name"
  }

  expect_failures = [
    var.cluster_name
  ]
}

run "cluster_name_invalid_spaces" {
  command = plan

  variables {
    cluster_name = "invalid cluster"
  }

  expect_failures = [
    var.cluster_name
  ]
}

run "cluster_name_fits_aws_lbc_role_constraint" {
  command = plan

  variables {
    cluster_name = "a-test-cluster-45-chars-is-under-56-char-role-limit"
  }

  assert {
    condition     = length("aws-lbc-${var.cluster_name}") <= 64
    error_message = "Cluster name should result in aws-lbc role name within 64 char IAM limit"
  }
}
