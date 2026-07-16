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

# Asserts the Karpenter spot interruption EventBridge rules are cluster-scoped, so
# two clusters in the same AWS account/region never share or fight over the same
# regional rule names (INFRA-6779).
run "spot_interruption_rules_are_cluster_scoped" {
  command = plan

  assert {
    condition     = aws_cloudwatch_event_rule.spot_aws_ec2.name == "spot-aws-ec2-${var.cluster_name}"
    error_message = "spot_aws_ec2 EventBridge rule name must be scoped to the cluster name"
  }

  assert {
    condition     = aws_cloudwatch_event_rule.spot_aws_health.name == "spot-aws-health-${var.cluster_name}"
    error_message = "spot_aws_health EventBridge rule name must be scoped to the cluster name"
  }

  # Each rule delivers to this cluster's own SQS queue, which is already per-cluster.
  assert {
    condition     = aws_sqs_queue.this.name == "spot-notifications-${var.cluster_name}"
    error_message = "spot notifications SQS queue name must be scoped to the cluster name"
  }
}
