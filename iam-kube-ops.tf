locals {
  namespace       = "kube-ops"
  service_account = "kube-ops"
}

data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["pods.eks.amazonaws.com"]
    }

    actions = [
      "sts:AssumeRole",
      "sts:TagSession"
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
      values   = [local.namespace]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:RequestTag/kubernetes-service-account"
      values   = [local.service_account]
    }
  }
}

resource "aws_iam_role" "kube_ops" {
  count = var.kube_ops_enabled ? 1 : 0

  name               = trimsuffix(substr("kube-ops-${var.cluster_name}", 0, 63), "-")
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  path               = "/system/"

  tags = {
    namespace = local.namespace
  }
}

data "aws_iam_policy_document" "kube_ops" {
  statement {
    sid    = "listSecrets"
    effect = "Allow"

    actions = [
      "secretsmanager:ListSecrets",
    ]

    resources = ["*"]
  }

  statement {
    sid    = "readSecretsManager"
    effect = "Allow"

    actions = [
      "secretsmanager:GetResourcePolicy",
      "secretsmanager:GetSecretValue",
      "secretsmanager:DescribeSecret",
      "secretsmanager:ListSecretVersionIds",
    ]

    resources = ["arn:${data.aws_partition.current.partition}:secretsmanager:${var.region}:${data.aws_caller_identity.account.id}:secret:${var.environment}/*"]
  }
}

resource "aws_iam_role_policy" "kube_ops" {
  count = var.kube_ops_enabled ? 1 : 0

  name   = trimsuffix(substr("kube-ops-${var.cluster_name}", 0, 63), "-")
  role   = aws_iam_role.kube_ops[0].id
  policy = data.aws_iam_policy_document.kube_ops.json
}

data "aws_iam_policy_document" "kube_ops_app_config_read" {
  # DescribeParameters requires a wildcard resource for metadata discovery.
  statement {
    sid       = "DescribeParameters"
    effect    = "Allow"
    actions   = ["ssm:DescribeParameters"]
    resources = ["*"]
  }

  statement {
    sid     = "GetAppConfigParameters"
    effect  = "Allow"
    actions = ["ssm:GetParameters"]
    resources = [
      "arn:${data.aws_partition.current.partition}:ssm:${var.region}:${data.aws_caller_identity.account.account_id}:parameter/app-config/${var.environment}/*",
    ]
  }
}

resource "aws_iam_policy" "kube_ops_app_config_read" {
  count = var.kube_ops_enabled ? 1 : 0

  name        = "${aws_iam_role.kube_ops[0].name}-app-config-read"
  description = "Allows kube-ops to read application configuration from SSM Parameter Store"
  path        = "/system/"
  policy      = data.aws_iam_policy_document.kube_ops_app_config_read.json
}

resource "aws_iam_role_policy_attachment" "kube_ops_app_config_read" {
  count = var.kube_ops_enabled ? 1 : 0

  role       = aws_iam_role.kube_ops[0].name
  policy_arn = aws_iam_policy.kube_ops_app_config_read[0].arn
}

resource "aws_eks_pod_identity_association" "this" {
  count = var.kube_ops_enabled ? 1 : 0

  cluster_name    = aws_eks_cluster.this.id
  namespace       = local.namespace
  service_account = local.service_account
  role_arn        = aws_iam_role.kube_ops[0].arn
}
