mock_provider "aws" {
  source = "./tests/mocks/aws"
}
mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

run "security_archive_enabled_by_default" {
  command = plan

  assert {
    condition = (
      length(aws_cloudwatch_log_subscription_filter.security_audit) == 1 &&
      length(aws_iam_role.security_audit) == 1 &&
      length(aws_iam_role_policy.security_audit) == 1
    )
    error_message = "Central forwarding and its source-account role must be enabled by default."
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
    condition = (
      length(aws_cloudwatch_log_subscription_filter.security_audit) == 0 &&
      length(aws_iam_role.security_audit) == 0 &&
      length(aws_iam_role_policy.security_audit) == 0
    )
    error_message = "Opting out must omit both the subscription and its source-account role."
  }
}

run "organization_destination_uses_scoped_source_account_role" {
  command = plan

  override_resource {
    target          = aws_cloudwatch_log_group.this
    override_during = plan
    values = {
      arn = "arn:aws:logs:us-east-1:123456789012:log-group:/aws/eks/eks-test/cluster"
    }
  }

  override_resource {
    target          = aws_iam_role.security_audit[0]
    override_during = plan
    values = {
      arn = "arn:aws:iam::123456789012:role/system/eks-logs-test"
      id  = "eks-logs-test"
    }
  }

  assert {
    condition = (
      aws_cloudwatch_log_subscription_filter.security_audit[0].role_arn == "arn:aws:iam::123456789012:role/system/eks-logs-test" &&
      aws_iam_role_policy.security_audit[0].role == "eks-logs-test"
    )
    error_message = "The subscription must use the source-account role that receives its permission policy."
  }

  assert {
    condition = (
      toset(one(data.aws_iam_policy_document.security_audit_assume_role[0].statement).actions) == toset(["sts:AssumeRole"]) &&
      one(one(data.aws_iam_policy_document.security_audit_assume_role[0].statement).principals).type == "Service" &&
      toset(one(one(data.aws_iam_policy_document.security_audit_assume_role[0].statement).principals).identifiers) == toset(["logs.amazonaws.com"]) &&
      one(one(data.aws_iam_policy_document.security_audit_assume_role[0].statement).condition).test == "ArnLike" &&
      one(one(data.aws_iam_policy_document.security_audit_assume_role[0].statement).condition).variable == "aws:SourceArn" &&
      toset(one(one(data.aws_iam_policy_document.security_audit_assume_role[0].statement).condition).values) == toset([
        "arn:aws:logs:us-east-1:123456789012:log-group:/aws/eks/eks-test/cluster",
        "arn:aws:logs:us-east-1:123456789012:log-group:/aws/eks/eks-test/cluster:*",
      ])
    )
    error_message = "Only CloudWatch Logs acting for this cluster's log group may assume the role."
  }

  assert {
    condition = (
      one(data.aws_iam_policy_document.security_audit[0].statement).actions == toset(["logs:PutLogEvents"]) &&
      one(data.aws_iam_policy_document.security_audit[0].statement).resources == toset(["arn:aws:logs:us-east-1:123456789012:log-group:/aws/eks/eks-test/cluster:*"])
    )
    error_message = "The source-account role must grant only PutLogEvents on this cluster's log streams."
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

run "custom_destination_is_used" {
  command = plan
  variables {
    audit_logs = {
      enabled         = true
      destination_arn = "arn:aws:logs:us-east-1:111122223333:destination:custom-eks-logs"
    }
  }

  assert {
    condition = (
      aws_cloudwatch_log_subscription_filter.security_audit[0].destination_arn == "arn:aws:logs:us-east-1:111122223333:destination:custom-eks-logs"
    )
    error_message = "Central forwarding must use the configured custom destination."
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
