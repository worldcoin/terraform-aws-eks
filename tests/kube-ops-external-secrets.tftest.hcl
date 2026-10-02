mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

# Off unless configured: no account currently reads a shared secret from the cluster.
run "no_external_secrets_by_default" {
  command = plan

  assert {
    condition     = length(local.kube_ops_external_secret_arns) == 0
    error_message = "No external secret ARNs should be derived by default."
  }

  assert {
    condition     = local.kube_ops_external_secrets_flag == ""
    error_message = "The -external_secrets flag value should be empty by default."
  }
}

# The point of the variable: one source drives both the IAM grant and the flag.
run "one_variable_drives_arns_and_flag" {
  command = plan

  variables {
    kube_ops_external_secrets = {
      secrets = {
        wiz = ["arn:aws:secretsmanager:us-east-1:442042548984:secret:all/wiz/api-token-AbC123", "arn:aws:secretsmanager:us-east-1:442042548984:secret:all/wiz/dockerconfigjson-XyZ789"]
      }
      kms_key_arns = ["arn:aws:kms:us-east-1:442042548984:key/11111111-2222-3333-4444-555555555555"]
    }
  }

  assert {
    condition     = length(local.kube_ops_external_secret_arns) == 2
    error_message = "Both ARNs should reach the IAM policy."
  }

  assert {
    condition     = local.kube_ops_external_secrets_flag == "wiz=arn:aws:secretsmanager:us-east-1:442042548984:secret:all/wiz/api-token-AbC123,wiz=arn:aws:secretsmanager:us-east-1:442042548984:secret:all/wiz/dockerconfigjson-XyZ789"
    error_message = "The flag value should be namespace=arn pairs, one per secret."
  }
}

run "arns_are_deduplicated_across_namespaces" {
  command = plan

  variables {
    kube_ops_external_secrets = {
      secrets = {
        wiz      = ["arn:aws:secretsmanager:us-east-1:442042548984:secret:all/wiz/api-token-AbC123"]
        wiz-test = ["arn:aws:secretsmanager:us-east-1:442042548984:secret:all/wiz/api-token-AbC123"]
      }
      kms_key_arns = ["arn:aws:kms:us-east-1:442042548984:key/11111111-2222-3333-4444-555555555555"]
    }
  }

  assert {
    condition     = length(local.kube_ops_external_secret_arns) == 1
    error_message = "The same ARN shared with two namespaces should appear once in the IAM policy."
  }

  assert {
    condition     = length(split(",", local.kube_ops_external_secrets_flag)) == 2
    error_message = "Both namespaces should still get their own flag entry."
  }
}

# A bare name only resolves inside the calling account, so it can never address a shared secret.
run "bare_secret_name_rejected" {
  command = plan

  variables {
    kube_ops_external_secrets = {
      secrets      = { wiz = ["all/wiz/api-token"] }
      kms_key_arns = ["arn:aws:kms:us-east-1:442042548984:key/11111111-2222-3333-4444-555555555555"]
    }
  }

  expect_failures = [var.kube_ops_external_secrets]
}

# Without kms:Decrypt the read fails at runtime with an opaque AccessDenied, long after the plan.
run "secrets_without_a_kms_key_rejected" {
  command = plan

  variables {
    kube_ops_external_secrets = {
      secrets = { wiz = ["arn:aws:secretsmanager:us-east-1:442042548984:secret:all/wiz/api-token-AbC123"] }
    }
  }

  expect_failures = [var.kube_ops_external_secrets]
}

run "malformed_kms_arn_rejected" {
  command = plan

  variables {
    kube_ops_external_secrets = {
      secrets      = { wiz = ["arn:aws:secretsmanager:us-east-1:442042548984:secret:all/wiz/api-token-AbC123"] }
      kms_key_arns = ["alias/wiz"]
    }
  }

  expect_failures = [var.kube_ops_external_secrets]
}
