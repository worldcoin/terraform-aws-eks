data "aws_iam_policy_document" "keda_assume_role" {
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

resource "aws_iam_role" "keda" {
  count              = var.optional_controller_iam_enabled ? 1 : 0
  name               = trimsuffix(substr("keda-${var.cluster_name}", 0, 63), "-")
  assume_role_policy = data.aws_iam_policy_document.keda_assume_role.json
  path               = "/system/"
}

data "aws_iam_policy_document" "keda" {
  statement {
    sid    = "getQueueAttributes"
    effect = "Allow"

    actions = [
      "sqs:GetQueueAttributes",
    ]

    resources = ["*"]
  }
}

resource "aws_iam_role_policy" "keda" {
  count  = var.optional_controller_iam_enabled ? 1 : 0
  name   = trimsuffix(substr("keda-${var.cluster_name}", 0, 63), "-")
  role   = aws_iam_role.keda[0].id
  policy = data.aws_iam_policy_document.keda.json
}

resource "aws_eks_pod_identity_association" "keda" {
  count           = var.optional_controller_iam_enabled ? 1 : 0
  cluster_name    = aws_eks_cluster.this.id
  namespace       = "keda"
  service_account = "keda-operator"
  role_arn        = aws_iam_role.keda[0].arn
}

moved {
  from = aws_iam_role.keda
  to   = aws_iam_role.keda[0]
}

moved {
  from = aws_iam_role_policy.keda
  to   = aws_iam_role_policy.keda[0]
}

moved {
  from = aws_eks_pod_identity_association.keda
  to   = aws_eks_pod_identity_association.keda[0]
}
