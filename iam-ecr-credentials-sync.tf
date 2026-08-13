locals {
  ecr_credentials_sync_namespace       = "argocd"
  ecr_credentials_sync_service_account = "ecr-credentials-sync"
}

# INFRA-7052: the argocd/ecr-credentials-sync CronJob refreshes ArgoCD's ECR pull
# and Helm credentials by running `aws ecr get-login-password`. Its ServiceAccount
# has no IRSA role, so it used the node instance profile through IMDS. At IMDSv2
# hop limit 1 the Pod cannot reach IMDS, so it is given credentials through Pod
# Identity instead. The eks-pod-identity-agent addon serves them over a link-local
# endpoint not subject to the hop limit.
data "aws_iam_policy_document" "ecr_credentials_sync_assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["pods.eks.amazonaws.com"]
    }

    actions = [
      "sts:AssumeRole",
      "sts:TagSession",
    ]

    # https://docs.aws.amazon.com/eks/latest/userguide/pod-id-assign-target-role.html
    condition {
      test     = "StringEquals"
      variable = "aws:RequestTag/eks-cluster-arn"
      values   = [aws_eks_cluster.this.arn]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:RequestTag/kubernetes-namespace"
      values   = [local.ecr_credentials_sync_namespace]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:RequestTag/kubernetes-service-account"
      values   = [local.ecr_credentials_sync_service_account]
    }
  }
}

resource "aws_iam_role" "ecr_credentials_sync" {
  count = var.ecr_credentials_sync_enabled ? 1 : 0

  name               = trimsuffix(substr("ecr-credentials-sync-${var.cluster_name}", 0, 63), "-")
  assume_role_policy = data.aws_iam_policy_document.ecr_credentials_sync_assume_role.json
  path               = "/system/"

  tags = {
    namespace = local.ecr_credentials_sync_namespace
  }
}

# The ECR token minted by this role is used by kubelet and ArgoCD to actually pull
# images and Helm charts, and ECR authorizes those pulls against the identity that
# minted the token. So the role needs the same read access the node role had (which
# is what authorized these pulls before). AmazonEC2ContainerRegistryReadOnly grants
# ecr:GetAuthorizationToken plus the pull actions (BatchGetImage,
# GetDownloadUrlForLayer, BatchCheckLayerAvailability, ...).
resource "aws_iam_role_policy_attachment" "ecr_credentials_sync" {
  count = var.ecr_credentials_sync_enabled ? 1 : 0

  role       = aws_iam_role.ecr_credentials_sync[0].name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

resource "aws_eks_pod_identity_association" "ecr_credentials_sync" {
  count = var.ecr_credentials_sync_enabled ? 1 : 0

  cluster_name    = aws_eks_cluster.this.id
  namespace       = local.ecr_credentials_sync_namespace
  service_account = local.ecr_credentials_sync_service_account
  role_arn        = aws_iam_role.ecr_credentials_sync[0].arn
}
