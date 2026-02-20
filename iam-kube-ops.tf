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

    # https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourceaccount
    condition {
      test     = "StringEquals"
      variable = "aws:SourceAccount"
      values   = [data.aws_caller_identity.account.id]
    }

    # https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourcearn
    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values   = [aws_eks_cluster.this.arn]
    }

    # https://docs.aws.amazon.com/eks/latest/userguide/pod-id-role.html
    # https://docs.aws.amazon.com/eks/latest/userguide/pod-id-assign-target-role.html
    condition {
      test     = "StringEquals"
      variable = "aws:RequestTag/kubernetes-namespace"
      values   = ["kube-ops"]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:RequestTag/kubernetes-service-account"
      values   = ["kube-ops"]
    }
  }
}

resource "aws_iam_role" "kube_ops" {
  count = var.kube_ops_enabled ? 1 : 0

  name               = trimsuffix(substr("kube-ops-${var.cluster_name}", 0, 63), "-")
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  path               = "/system/"

  tags = {
    namespace = "kube-ops"
  }
}

data "aws_iam_policy_document" "kube_ops" {
  statement {
    sid    = "readSecretsManager"
    effect = "Allow"

    actions = [
      "secretsmanager:GetResourcePolicy",
      "secretsmanager:GetSecretValue",
      "secretsmanager:DescribeSecret",
      "secretsmanager:ListSecretVersionIds",
      "secretsmanager:ListSecrets"
    ]

    resources = ["*"]

    condition {
      test     = "StringEquals"
      variable = "aws:ResourceTag/namespace"
      values   = ["$${ aws:PrincipalTag/namespace }"]
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
  namespace       = "kube-ops"
  service_account = "kube-ops"
  role_arn        = aws_iam_role.kube_ops[0].arn
}
