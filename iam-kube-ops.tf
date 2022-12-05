data "aws_iam_policy_document" "kube_ops_assume_role_policy" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRoleWithWebIdentity"]

    condition {
      test     = "StringEquals"
      variable = format("%s:sub", local.oidc)
      values   = ["system:serviceaccount:kube-ops:kube-ops"]
    }

    principals {
      type        = "Federated"
      identifiers = [aws_iam_openid_connect_provider.oidc_provider.arn]
    }
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
  }

  statement {
    sid     = "readOwnECRRepository"
    effect  = "Allow"
    actions = ["ecr:DescribeImages"]
    # the kube-ops is deployed always on 1 region, so we can not use the current region
    resources = [
      "arn:aws:ecr:us-east-1:${data.aws_caller_identity.current.account_id}:repository/kube-ops"
    ]
  }
}

resource "aws_iam_role" "kube_ops" {
  name               = "kube-ops-${var.cluster_name}"
  path               = "/system/"
  assume_role_policy = data.aws_iam_policy_document.kube_ops_assume_role_policy.json
}

resource "aws_iam_role_policy" "kube_ops" {
  name   = "kube-ops-${var.cluster_name}"
  role   = aws_iam_role.kube_ops.id
  policy = data.aws_iam_policy_document.kube_ops.json
}
