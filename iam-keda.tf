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
  name               = "keda-${var.cluster_name}"
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
  name   = "keda-${var.cluster_name}"
  role   = aws_iam_role.keda.id
  policy = data.aws_iam_policy_document.keda.json
}

resource "aws_eks_pod_identity_association" "this" {
  cluster_name    = aws_eks_cluster.this.id
  namespace       = "keda"
  service_account = "keda-operator"
  role_arn        = aws_iam_role.keda.arn
}
