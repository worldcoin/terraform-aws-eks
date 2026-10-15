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
  count              = var.optional_controller_iam_enabled ? 1 : 0
  name               = trimsuffix(substr("cni-metrics-helper-${var.cluster_name}", 0, 63), "-")
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
  count  = var.optional_controller_iam_enabled ? 1 : 0
  name   = trimsuffix(substr("cni-metrics-helper-${var.cluster_name}", 0, 63), "-")
  role   = aws_iam_role.cni_metrics_helper[0].id
  policy = data.aws_iam_policy_document.cni_metrics_helper.json
}

resource "aws_eks_pod_identity_association" "cni_metrics_helper" {
  count           = var.optional_controller_iam_enabled ? 1 : 0
  cluster_name    = aws_eks_cluster.this.id
  namespace       = "kube-system"
  service_account = "cni-metrics-helper"
  role_arn        = aws_iam_role.cni_metrics_helper[0].arn
}

moved {
  from = aws_iam_role.cni_metrics_helper
  to   = aws_iam_role.cni_metrics_helper[0]
}

moved {
  from = aws_iam_role_policy.cni_metrics_helper
  to   = aws_iam_role_policy.cni_metrics_helper[0]
}

moved {
  from = aws_eks_pod_identity_association.cni_metrics_helper
  to   = aws_eks_pod_identity_association.cni_metrics_helper[0]
}
