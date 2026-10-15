data "aws_iam_policy_document" "eks_pod_identity_assume_role" {
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

resource "aws_iam_role" "ebs_csi_controller" {
  count = var.optional_controller_iam_enabled ? 1 : 0
  name  = trimsuffix(substr(format("ebs-csi-controller-%s", var.cluster_name), 0, 63), "-")

  assume_role_policy = data.aws_iam_policy_document.eks_pod_identity_assume_role.json
  path               = "/system/"
}

resource "aws_iam_role_policy_attachment" "ebs_csi_controller" {
  count      = var.optional_controller_iam_enabled ? 1 : 0
  role       = aws_iam_role.ebs_csi_controller[0].name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEBSCSIDriverPolicyV2"
}

resource "aws_eks_pod_identity_association" "ebs_csi_controller" {
  count           = var.optional_controller_iam_enabled ? 1 : 0
  cluster_name    = var.cluster_name
  namespace       = "kube-system"
  service_account = "ebs-csi-controller-sa"
  role_arn        = aws_iam_role.ebs_csi_controller[0].arn
  depends_on = [
    aws_eks_cluster.this
  ]
}

moved {
  from = aws_iam_role.ebs_csi_controller
  to   = aws_iam_role.ebs_csi_controller[0]
}

moved {
  from = aws_iam_role_policy_attachment.ebs_csi_controller
  to   = aws_iam_role_policy_attachment.ebs_csi_controller[0]
}

moved {
  from = aws_eks_pod_identity_association.ebs_csi_controller
  to   = aws_eks_pod_identity_association.ebs_csi_controller[0]
}
