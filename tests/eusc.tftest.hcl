mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

variables {
  kubernetes_provider_enabled     = false
  aws_devops_agent_access_enabled = false
  gateway_api_external_enabled    = false
  gateway_api_internal_enabled    = false
  extra_role_mapping              = []
  vector_s3_bucket_arns           = []
  audit_logs                      = { enabled = false }
}

run "preserve_commercial_policies" {
  command = plan

  assert {
    condition = (
      aws_iam_role_policy_attachment.cluster["AmazonEKSClusterPolicy"].policy_arn == "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy" &&
      aws_iam_role_policy_attachment.node["AmazonEKSWorkerNodePolicy"].policy_arn == "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy" &&
      var.dockerhub_pull_through_cache_repositories_arn == "arn:aws:ecr:us-east-1:507152310572:repository/docker-cache/*"
    )
    error_message = "Commercial AWS must retain its managed policies and cache default."
  }
}

run "use_eusc_policies_and_destinations" {
  command = plan

  override_data {
    target = data.aws_partition.current
    values = {
      partition  = "aws-eusc"
      dns_suffix = "amazonaws.eu"
    }
  }

  variables {
    region                                        = "eusc-de-east-1"
    dockerhub_pull_through_cache_repositories_arn = "arn:aws-eusc:ecr:eusc-de-east-1:123456789012:repository/docker-cache/*"
    vector_s3_bucket_arns                         = ["arn:aws-eusc:s3:::test-eusc-logs"]
    audit_logs = {
      destination_arn = "arn:aws-eusc:logs:eusc-de-east-1:123456789012:destination:eks-logs"
    }
    access_entries = {
      deploy = {
        principal_arn = "arn:aws-eusc:iam::123456789012:role/deploy"
      }
    }
  }

  assert {
    condition = alltrue([
      for attachment in values(aws_iam_role_policy_attachment.node) : startswith(attachment.policy_arn, "arn:aws-eusc:iam::aws:policy/")
      ]) && alltrue([
      for attachment in values(aws_iam_role_policy_attachment.cluster) : startswith(attachment.policy_arn, "arn:aws-eusc:iam::aws:policy/")
    ]) && aws_iam_role_policy_attachment.ebs_csi_controller.policy_arn == "arn:aws-eusc:iam::aws:policy/AmazonEBSCSIDriverPolicyV2"
    error_message = "Cluster, node and EBS policies must use the EUSC partition."
  }

  assert {
    condition     = aws_eks_access_policy_association.this["deploy"].policy_arn == "arn:aws-eusc:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy"
    error_message = "An omitted policy ARN must resolve to the current partition's namespace-admin policy."
  }

  assert {
    condition = (
      strcontains(jsonencode(data.aws_iam_policy_document.kms.statement), "arn:aws-eusc:iam::123456789012:root") &&
      strcontains(jsonencode(data.aws_iam_policy_document.kms.statement), "arn:aws-eusc:logs:eusc-de-east-1:123456789012:") &&
      aws_cloudwatch_log_subscription_filter.security_audit[0].destination_arn == "arn:aws-eusc:logs:eusc-de-east-1:123456789012:destination:eks-logs"
    )
    error_message = "KMS principals, encryption context and log forwarding must remain within EUSC."
  }
}

run "reject_commercial_cache_in_eusc" {
  command = plan
  override_data {
    target = data.aws_partition.current
    values = {
      partition  = "aws-eusc"
      dns_suffix = "amazonaws.eu"
    }
  }

  expect_failures = [var.dockerhub_pull_through_cache_repositories_arn]
}

run "require_explicit_eusc_audit_destination" {
  command = plan
  override_data {
    target = data.aws_partition.current
    values = {
      partition  = "aws-eusc"
      dns_suffix = "amazonaws.eu"
    }
  }

  variables {
    dockerhub_pull_through_cache_repositories_arn = "arn:aws-eusc:ecr:eusc-de-east-1:123456789012:repository/docker-cache/*"
    audit_logs                                    = {}
  }

  expect_failures = [var.audit_logs]
}

run "reject_commercial_vector_destination_in_eusc" {
  command = plan
  override_data {
    target = data.aws_partition.current
    values = {
      partition  = "aws-eusc"
      dns_suffix = "amazonaws.eu"
    }
  }

  variables {
    dockerhub_pull_through_cache_repositories_arn = "arn:aws-eusc:ecr:eusc-de-east-1:123456789012:repository/docker-cache/*"
    vector_s3_bucket_arns                         = ["arn:aws:s3:::wld-log-archive"]
  }

  expect_failures = [var.vector_s3_bucket_arns]
}
