mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

run "ecr_credentials_sync_iam_enabled_by_default" {
  command = plan

  assert {
    condition     = length(aws_iam_role.ecr_credentials_sync) == 1
    error_message = "ecr-credentials-sync IAM role should be created by default."
  }

  assert {
    condition     = length(aws_eks_pod_identity_association.ecr_credentials_sync) == 1
    error_message = "ecr-credentials-sync pod identity association should be created by default."
  }

  assert {
    condition     = aws_iam_role_policy_attachment.ecr_credentials_sync[0].policy_arn == "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
    error_message = "ecr-credentials-sync role should attach AmazonEC2ContainerRegistryReadOnly for ECR pull authorization."
  }

  assert {
    condition     = aws_iam_role.ecr_credentials_sync[0].name == "ecr-credentials-sync-eks-test"
    error_message = "ecr-credentials-sync IAM role should be named from the cluster name."
  }

  assert {
    condition     = aws_eks_pod_identity_association.ecr_credentials_sync[0].namespace == "argocd"
    error_message = "ecr-credentials-sync pod identity association should use the argocd namespace."
  }

  assert {
    condition     = aws_eks_pod_identity_association.ecr_credentials_sync[0].service_account == "ecr-credentials-sync"
    error_message = "ecr-credentials-sync pod identity association should use the ecr-credentials-sync service account."
  }
}

run "ecr_credentials_sync_iam_disabled" {
  command = plan

  variables {
    ecr_credentials_sync_enabled = false
  }

  assert {
    condition     = length(aws_iam_role.ecr_credentials_sync) == 0
    error_message = "ecr-credentials-sync IAM role should not be created when disabled."
  }

  assert {
    condition     = length(aws_eks_pod_identity_association.ecr_credentials_sync) == 0
    error_message = "ecr-credentials-sync pod identity association should not be created when disabled."
  }
}
