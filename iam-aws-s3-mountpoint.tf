data "aws_iam_policy_document" "aws_s3_mountpoint_csi_s3_assume" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRoleWithWebIdentity"]

    condition {
      test     = "StringEquals"
      variable = format("%s:sub", local.oidc)
      values   = ["system:serviceaccount:kube-system:s3-csi-driver-sa"]
    }
    condition {
      test     = "StringEquals"
      variable = format("%s:aud", local.oidc)
      values   = ["sts.amazonaws.com"]
    }

    principals {
      type        = "Federated"
      identifiers = [aws_iam_openid_connect_provider.oidc_provider.arn]
    }
  }
}


data "aws_iam_policy_document" "aws_s3_mountpoint_csi_s3_access" {
  statement {
    effect    = "Allow"
    resources = var.s3_mountpoint_csi_s3_bucket_arns

    actions = [
      "s3:ListBucket",
      "s3express:CreateSession",
    ]
  }
  statement {
    effect    = "Allow"
    resources = var.s3_mountpoint_csi_s3_bucket_arns == tolist(["*"]) ? ["*"] : formatlist("%s/*", var.s3_mountpoint_csi_s3_bucket_arns)

    actions = [
      "s3:GetObject",
      "s3:PutObject",
      "s3:AbortMultipartUpload",
      "s3:DeleteObject",
    ]
  }
}

resource "aws_iam_role" "aws_s3_mountpoint_csi" {
  count              = var.s3_mountpoint_csi_driver_enabled ? 1 : 0
  name               = trimsuffix(substr("aws-mountpoint-s3-csi-${var.cluster_name}", 0, 63), "-")
  path               = "/system/"
  assume_role_policy = data.aws_iam_policy_document.aws_s3_mountpoint_csi_s3_assume.json
}

resource "aws_iam_role_policy" "aws_s3_mountpoint_csi" {
  count  = var.s3_mountpoint_csi_driver_enabled ? 1 : 0
  name   = trimsuffix(substr("aws-mountpoint-s3-csi-${var.cluster_name}", 0, 63), "-")
  role   = aws_iam_role.aws_s3_mountpoint_csi[0].id
  policy = data.aws_iam_policy_document.aws_s3_mountpoint_csi_s3_access.json
}
