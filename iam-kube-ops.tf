locals {
  namespace       = "kube-ops"
  service_account = "kube-ops"

  # One variable drives both the IAM grant below and the flag kube-ops runs with, so the two cannot
  # drift apart.
  kube_ops_external_secret_arns = distinct(flatten(values(var.kube_ops_external_secrets.secrets)))

  kube_ops_external_secrets_flag = join(",", flatten([
    for namespace, arns in var.kube_ops_external_secrets.secrets : [
      for arn in arns : "${namespace}=${arn}"
    ]
  ]))
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

    resources = ["arn:aws:secretsmanager:${var.region}:${data.aws_caller_identity.account.id}:secret:${var.environment}/*"]
  }

  # Secrets owned by another account. Named individually rather than by prefix: the prefix above is
  # scoped to this account, and a wildcard across accounts would grant far more than intended.
  dynamic "statement" {
    for_each = length(local.kube_ops_external_secret_arns) > 0 ? [1] : []

    content {
      sid    = "readExternalSecretsManager"
      effect = "Allow"

      # GetSecretValue only: kube-ops addresses these by ARN and does not read their tags, so it
      # needs neither DescribeSecret nor GetResourcePolicy.
      actions = [
        "secretsmanager:GetSecretValue",
      ]

      resources = local.kube_ops_external_secret_arns
    }
  }

  # A shared secret always uses a customer-managed key, and decrypting with one needs an explicit
  # grant - unlike aws/secretsmanager, where it is implicit.
  dynamic "statement" {
    for_each = length(var.kube_ops_external_secrets.kms_key_arns) > 0 ? [1] : []

    content {
      sid    = "decryptExternalSecrets"
      effect = "Allow"

      actions = [
        "kms:Decrypt",
      ]

      resources = var.kube_ops_external_secrets.kms_key_arns
    }
  }
}

resource "aws_iam_role_policy" "kube_ops" {
  count = var.kube_ops_enabled ? 1 : 0

  name   = trimsuffix(substr("kube-ops-${var.cluster_name}", 0, 63), "-")
  role   = aws_iam_role.kube_ops[0].id
  policy = data.aws_iam_policy_document.kube_ops.json
}

resource "aws_eks_pod_identity_association" "this" {
  count = var.kube_ops_enabled ? 1 : 0

  cluster_name    = aws_eks_cluster.this.id
  namespace       = local.namespace
  service_account = local.service_account
  role_arn        = aws_iam_role.kube_ops[0].arn
}
