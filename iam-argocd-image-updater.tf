locals {
  argocd_image_updater_namespace       = "argocd"
  argocd_image_updater_service_account = "argocd-image-updater"
}

# INFRA-7070: argocd-image-updater polls ECR for newer image tags. Its
# ServiceAccount carries no IRSA role, so it authenticates as the node instance
# profile through IMDS, which a Pod cannot reach at IMDSv2 hop limit 1. It is given
# its own identity through Pod Identity instead; the eks-pod-identity-agent addon
# serves credentials over an endpoint not subject to the hop limit. Modelled on the
# other baseline pod-identity workloads here (kube-ops, vector,
# ecr-credentials-sync): raw resources with a cluster-scoped role name, so multiple
# clusters in one account do not collide.
data "aws_iam_policy_document" "argocd_image_updater_assume_role" {
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
      values   = [local.argocd_image_updater_namespace]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:RequestTag/kubernetes-service-account"
      values   = [local.argocd_image_updater_service_account]
    }
  }
}

resource "aws_iam_role" "argocd_image_updater" {
  count = var.argocd_image_updater_enabled ? 1 : 0

  name               = trimsuffix(substr("argocd-image-updater-${var.cluster_name}", 0, 63), "-")
  assume_role_policy = data.aws_iam_policy_document.argocd_image_updater_assume_role.json
  path               = "/system/"

  tags = {
    namespace = local.argocd_image_updater_namespace
  }
}

# Discovering newer tags needs ecr:GetAuthorizationToken to log in, then
# DescribeRepositories / ListImages / DescribeImages to enumerate tags and
# BatchGetImage to resolve a digest. AmazonEC2ContainerRegistryReadOnly grants all
# of them, and is the same read access the node role provided.
resource "aws_iam_role_policy_attachment" "argocd_image_updater" {
  count = var.argocd_image_updater_enabled ? 1 : 0

  role       = aws_iam_role.argocd_image_updater[0].name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

resource "aws_eks_pod_identity_association" "argocd_image_updater" {
  count = var.argocd_image_updater_enabled ? 1 : 0

  cluster_name    = aws_eks_cluster.this.id
  namespace       = local.argocd_image_updater_namespace
  service_account = local.argocd_image_updater_service_account
  role_arn        = aws_iam_role.argocd_image_updater[0].arn
}
