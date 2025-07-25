data "aws_iam_policy_document" "aws_efs_csi_driver_assume_role_policy" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRoleWithWebIdentity"]

    condition {
      test     = "StringEquals"
      variable = format("%s:sub", local.oidc)
      values   = ["system:serviceaccount:kube-system:efs-csi-controller-sa"]
    }

    principals {
      type        = "Federated"
      identifiers = [aws_iam_openid_connect_provider.oidc_provider.arn]
    }
  }
}

data "aws_iam_policy_document" "aws_efs_csi_driver" {
  statement {
    effect    = "Allow"
    resources = ["*"]

    actions = [
      "elasticfilesystem:DescribeAccessPoints",
      "elasticfilesystem:DescribeFileSystems",
      "elasticfilesystem:DescribeMountTargets",
      "ec2:DescribeAvailabilityZones",
    ]
  }

  # The driver does not apply any tags to the DeleteAccessPoint request
  statement {
    effect    = "Allow"
    resources = ["*"]
    actions   = ["elasticfilesystem:DeleteAccessPoint"]
  }

  statement {
    effect    = "Allow"
    resources = var.efs_csi_driver_enabled ? [aws_efs_file_system.persistent_volume[0].arn] : []
    actions   = ["elasticfilesystem:CreateAccessPoint"]

    condition {
      test     = "StringEquals"
      variable = "aws:RequestTag/efs.csi.aws.com/cluster"
      values   = ["true"]
    }
  }
}

resource "aws_iam_role" "aws_efs_csi_driver" {
  count              = var.efs_csi_driver_enabled ? 1 : 0
  name               = "aws-efs-csi-driver-${var.cluster_name}"
  path               = "/system/"
  assume_role_policy = data.aws_iam_policy_document.aws_efs_csi_driver_assume_role_policy.json
}

resource "aws_iam_role_policy" "aws_efs_csi_driver" {
  count  = var.efs_csi_driver_enabled ? 1 : 0
  name   = "aws-efs-csi-driver-${var.cluster_name}"
  role   = aws_iam_role.aws_efs_csi_driver[0].id
  policy = data.aws_iam_policy_document.aws_efs_csi_driver.json
}
