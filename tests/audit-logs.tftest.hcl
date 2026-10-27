mock_provider "aws" {
  source = "./tests/mocks/aws"
}
mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}
mock_provider "time" {}

run "security_archive_enabled_by_default" {
  command = plan

  assert {
    condition     = length(aws_cloudwatch_log_subscription_filter.security_audit) == 1
    error_message = "Central forwarding must be enabled by default."
  }
}

run "null_configuration_uses_enabled_default" {
  command = plan
  variables {
    audit_logs = null
  }

  assert {
    condition     = length(aws_cloudwatch_log_subscription_filter.security_audit) == 1
    error_message = "A null configuration must use the enabled default."
  }
}

run "security_archive_can_be_disabled" {
  command = plan
  variables {
    audit_logs = { enabled = false }
  }

  assert {
    condition     = length(aws_cloudwatch_log_subscription_filter.security_audit) == 0
    error_message = "Central forwarding must support an explicit opt out."
  }
}

run "security_destination_preserves_all_records" {
  command = plan
  variables {
    audit_logs = { enabled = true }
    region     = "eu-central-2"
  }

  assert {
    condition = (
      aws_cloudwatch_log_subscription_filter.security_audit[0].destination_arn == "arn:aws:logs:eu-central-2:338165278394:destination:eks-control-plane-logs" &&
      aws_cloudwatch_log_subscription_filter.security_audit[0].log_group_name == "/aws/eks/eks-test/cluster" &&
      aws_cloudwatch_log_subscription_filter.security_audit[0].filter_pattern == "" &&
      toset(aws_cloudwatch_log_subscription_filter.security_audit[0].emit_system_fields) == toset(["@aws.account", "@aws.region"])
    )
    error_message = "Forward every control plane record with source metadata to the security destination in the cluster Region."
  }
}

run "custom_destination_and_vector_can_coexist" {
  command = plan
  variables {
    audit_logs = {
      enabled         = true
      destination_arn = "arn:aws:logs:us-east-1:111122223333:destination:custom-eks-logs"
    }
    vector_audit_enabled             = true
    vector_audit_firehose_access_key = "test-access-key-32-chars-long-xx"
  }

  assert {
    condition = (
      aws_cloudwatch_log_subscription_filter.security_audit[0].destination_arn == "arn:aws:logs:us-east-1:111122223333:destination:custom-eks-logs" &&
      length(aws_cloudwatch_log_subscription_filter.eks_audit) == 1 &&
      length(aws_kinesis_firehose_delivery_stream.eks_audit) == 1
    )
    error_message = "A custom central destination must support concurrent Vector delivery for canary verification."
  }
}

run "wrong_region_destination_rejected" {
  command = plan
  variables {
    audit_logs = {
      enabled         = true
      destination_arn = "arn:aws:logs:eu-west-1:111122223333:destination:custom-eks-logs"
    }
  }
  expect_failures = [var.audit_logs]
}

run "empty_destination_rejected" {
  command = plan
  variables {
    audit_logs = { enabled = true, destination_arn = "" }
  }
  expect_failures = [var.audit_logs]
}
