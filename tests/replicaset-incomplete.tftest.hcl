mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

run "replicaset_incomplete_enabled_by_default" {
  command = plan

  assert {
    condition     = var.replicaset_incomplete_enabled == true
    error_message = "Replicaset Incomplete monitor should be enabled by default."
  }
}

run "replicaset_incomplete_disabled" {
  command = plan

  variables {
    replicaset_incomplete_enabled = false
  }

  assert {
    condition     = var.replicaset_incomplete_enabled == false
    error_message = "Replicaset Incomplete monitor should accept an explicit disabled value."
  }
}

run "replicaset_incomplete_null_uses_default" {
  command = plan

  variables {
    replicaset_incomplete_enabled = null
  }

  assert {
    condition     = var.replicaset_incomplete_enabled == true
    error_message = "Replicaset Incomplete monitor should use the default when set to null."
  }
}

run "replicaset_unavailable_enabled_by_default" {
  command = plan

  assert {
    condition     = var.replicaset_unavailable_enabled == true
    error_message = "Replicaset Unavailable monitor should be enabled by default."
  }
}

run "replicaset_unavailable_disabled" {
  command = plan

  variables {
    replicaset_unavailable_enabled = false
  }

  assert {
    condition     = var.replicaset_unavailable_enabled == false
    error_message = "Replicaset Unavailable monitor should accept an explicit disabled value."
  }
}

run "replicaset_unavailable_null_uses_default" {
  command = plan

  variables {
    replicaset_unavailable_enabled = null
  }

  assert {
    condition     = var.replicaset_unavailable_enabled == true
    error_message = "Replicaset Unavailable monitor should use the default when set to null."
  }
}
