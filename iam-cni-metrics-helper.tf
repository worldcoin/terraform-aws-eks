data "aws_iam_policy_document" "cni_metrics_helper_assume_role" {
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

resource "aws_iam_role" "cni_metrics_helper" {
  name               = "cni-metrics-helper-${var.cluster_name}"
  assume_role_policy = data.aws_iam_policy_document.cni_metrics_helper_assume_role.json
  path               = "/system/"
}

data "aws_iam_policy_document" "cni_metrics_helper" {
  statement {
    sid    = "AllowCloudWatchPutMetricData"
    effect = "Allow"

    actions = [
      "cloudwatch:PutMetricData",
    ]

    resources = ["*"]
  }
}

resource "aws_iam_role_policy" "cni_metrics_helper" {
  name   = "cni-metrics-helper-${var.cluster_name}"
  role   = aws_iam_role.cni_metrics_helper.id
  policy = data.aws_iam_policy_document.cni_metrics_helper.json
}

resource "aws_eks_pod_identity_association" "cni_metrics_helper" {
  cluster_name    = aws_eks_cluster.this.id
  namespace       = "cni-metrics-helper"
  service_account = "cni-metrics-helper"
  role_arn        = aws_iam_role.cni_metrics_helper.arn
}
