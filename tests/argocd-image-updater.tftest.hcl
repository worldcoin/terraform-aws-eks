mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

run "argocd_image_updater_iam_enabled_by_default" {
  command = plan

  assert {
    condition     = length(aws_iam_role.argocd_image_updater) == 1
    error_message = "argocd-image-updater IAM role should be created by default."
  }

  assert {
    condition     = length(aws_eks_pod_identity_association.argocd_image_updater) == 1
    error_message = "argocd-image-updater pod identity association should be created by default."
  }

  assert {
    condition     = aws_iam_role_policy_attachment.argocd_image_updater[0].policy_arn == "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
    error_message = "argocd-image-updater role should attach AmazonEC2ContainerRegistryReadOnly to read ECR image tags."
  }

  assert {
    condition     = aws_iam_role.argocd_image_updater[0].name == "argocd-image-updater-eks-test"
    error_message = "argocd-image-updater IAM role should be named from the cluster name."
  }

  assert {
    condition     = aws_eks_pod_identity_association.argocd_image_updater[0].namespace == "argocd"
    error_message = "argocd-image-updater pod identity association should use the argocd namespace."
  }

  assert {
    condition     = aws_eks_pod_identity_association.argocd_image_updater[0].service_account == "argocd-image-updater"
    error_message = "argocd-image-updater pod identity association should use the argocd-image-updater service account."
  }
}

run "argocd_image_updater_iam_disabled" {
  command = plan

  variables {
    argocd_image_updater_enabled = false
  }

  assert {
    condition     = length(aws_iam_role.argocd_image_updater) == 0
    error_message = "argocd-image-updater IAM role should not be created when disabled."
  }

  assert {
    condition     = length(aws_iam_role_policy_attachment.argocd_image_updater) == 0
    error_message = "argocd-image-updater policy attachment should not be created when disabled."
  }

  assert {
    condition     = length(aws_eks_pod_identity_association.argocd_image_updater) == 0
    error_message = "argocd-image-updater pod identity association should not be created when disabled."
  }
}
