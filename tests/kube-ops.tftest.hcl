mock_provider "aws" {
  source          = "./tests/mocks/aws"
  override_during = plan
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

run "kube_ops_app_config_read_policy" {
  command = plan

  assert {
    condition = (
      aws_iam_policy.kube_ops_app_config_read[0].name == "kube-ops-eks-test-app-config-read" &&
      aws_iam_role_policy_attachment.kube_ops_app_config_read[0].role == aws_iam_role.kube_ops[0].name &&
      aws_iam_role_policy_attachment.kube_ops_app_config_read[0].policy_arn == aws_iam_policy.kube_ops_app_config_read[0].arn
    )
    error_message = "The cluster-specific app config policy must be attached to the kube-ops role."
  }

  assert {
    condition = toset([
      for statement in data.aws_iam_policy_document.kube_ops_app_config_read.statement : {
        effect    = statement.effect
        actions   = toset(statement.actions)
        resources = toset(statement.resources)
      }
      ]) == toset([
      {
        effect    = "Allow"
        actions   = toset(["ssm:DescribeParameters"])
        resources = toset(["*"])
      },
      {
        effect    = "Allow"
        actions   = toset(["ssm:GetParameters"])
        resources = toset(["arn:aws:ssm:us-east-1:123456789012:parameter/app-config/test/*"])
      },
    ])
    error_message = "App config permissions must allow discovery and scope value reads to the configured environment."
  }
}

run "kube_ops_app_config_read_policy_disabled" {
  command = plan

  variables {
    kube_ops_enabled = false
  }

  assert {
    condition = (
      length(aws_iam_policy.kube_ops_app_config_read) == 0 &&
      length(aws_iam_role_policy_attachment.kube_ops_app_config_read) == 0
    )
    error_message = "The app config policy and attachment must be absent when kube-ops is disabled."
  }
}
