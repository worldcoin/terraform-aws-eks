mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

mock_provider "time" {}

run "vector_audit_disabled_by_default" {
  command = plan

  assert {
    condition     = length(aws_kinesis_firehose_delivery_stream.eks_audit) == 0
    error_message = "Firehose delivery stream should NOT be created by default."
  }

  assert {
    condition     = length(aws_cloudwatch_log_subscription_filter.eks_audit) == 0
    error_message = "CW Logs subscription filter should NOT be created by default."
  }
}

run "vector_audit_enabled_with_access_key" {
  command = plan

  variables {
    vector_audit_firehose_access_key = "test-access-key-32-chars-long-xx"
  }

  assert {
    condition     = length(aws_kinesis_firehose_delivery_stream.eks_audit) == 1
    error_message = "Firehose delivery stream should be created when access key is provided."
  }

  assert {
    condition     = length(aws_cloudwatch_log_subscription_filter.eks_audit) == 1
    error_message = "CW Logs subscription filter should be created when access key is provided."
  }

  assert {
    condition     = length(aws_iam_role.firehose_eks_audit) == 1
    error_message = "Firehose IAM role should be created when access key is provided."
  }

  assert {
    condition     = length(aws_iam_role.cw_logs_to_firehose_eks_audit) == 1
    error_message = "CW Logs IAM role should be created when access key is provided."
  }
}

run "vector_audit_empty_access_key_fails" {
  command = plan

  variables {
    vector_audit_firehose_access_key = ""
  }

  expect_failures = [
    aws_kinesis_firehose_delivery_stream.eks_audit,
  ]
}

run "vector_audit_disabled" {
  command = plan

  variables {
    vector_audit_enabled             = false
    vector_audit_firehose_access_key = "test-access-key-32-chars-long-xx"
  }

  assert {
    condition     = length(aws_kinesis_firehose_delivery_stream.eks_audit) == 0
    error_message = "Firehose delivery stream should not be created when vector_audit_enabled is false."
  }

  assert {
    condition     = length(aws_cloudwatch_log_subscription_filter.eks_audit) == 0
    error_message = "CW Logs subscription filter should not be created when vector_audit_enabled is false."
  }
}

run "vector_audit_custom_endpoint" {
  command = plan

  variables {
    vector_audit_firehose_access_key = "test-access-key-32-chars-long-xx"
    vector_audit_endpoint_url        = "https://vector-custom.example.com/"
  }

  assert {
    condition     = aws_kinesis_firehose_delivery_stream.eks_audit[0].http_endpoint_configuration[0].url == "https://vector-custom.example.com/"
    error_message = "Firehose should use the custom endpoint URL."
  }
}
