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
  }
}

resource "aws_iam_role" "kube_ops" {
  count = var.kube_ops_enabled ? 1 : 0

  name               = "kube-ops-${var.cluster_name}"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  path               = "/system/"
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
  }
}

resource "aws_iam_role_policy" "kube_ops" {
  count = var.kube_ops_enabled ? 1 : 0

  name   = "kube-ops-${var.cluster_name}"
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
