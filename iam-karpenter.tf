locals {
  oidc = replace(aws_eks_cluster.this.identity[0].oidc[0].issuer, "https://", "")
}

data "aws_iam_policy_document" "karpenter_assume_role_policy" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRoleWithWebIdentity"]

    condition {
      test     = "StringEquals"
      variable = format("%s:sub", local.oidc)
      values   = ["system:serviceaccount:karpenter:karpenter"]
    }

    principals {
      type        = "Federated"
      identifiers = [aws_iam_openid_connect_provider.oidc_provider.arn]
    }
  }
}

data "aws_iam_policy_document" "karpenter" {
  statement {
    effect    = "Allow"
    resources = ["*"]

    actions = [
      "pricing:GetProducts",
      "ec2:DescribeSubnets",
      "ec2:DescribeSpotPriceHistory",
      "ec2:DescribeSecurityGroups",
      "ec2:DescribeLaunchTemplates",
      "ec2:DescribeInstances",
      "ec2:DescribeInstanceTypes",
      "ec2:DescribeInstanceTypeOfferings",
      "ec2:DescribeImages",
      "ec2:DescribeAvailabilityZones",
      "ec2:CreateTags",
      "ec2:CreateLaunchTemplate",
      "ec2:CreateFleet",
    ]
  }

  statement {
    effect    = "Allow"
    resources = ["*"]

    actions = [
      "ec2:TerminateInstances",
      "ec2:DeleteLaunchTemplate",
    ]

    condition {
      test     = "StringEquals"
      variable = "ec2:ResourceTag/karpenter.sh/discovery"
      values   = [var.cluster_name]
    }
  }

  statement {
    sid    = ""
    effect = "Allow"

    resources = [
      "arn:aws:ec2:*:926986201233:security-group/*",
      "arn:aws:ec2:*:926986201233:launch-template/*",
    ]

    actions = ["ec2:RunInstances"]

    condition {
      test     = "StringEquals"
      variable = "ec2:ResourceTag/karpenter.sh/discovery"
      values   = [var.cluster_name]
    }
  }

  statement {
    sid    = ""
    effect = "Allow"

    resources = [
      "arn:aws:ec2:*::image/*",
      "arn:aws:ec2:*:926986201233:volume/*",
      "arn:aws:ec2:*:926986201233:subnet/*",
      "arn:aws:ec2:*:926986201233:network-interface/*",
      "arn:aws:ec2:*:926986201233:instance/*",
    ]

    actions = ["ec2:RunInstances"]
  }

  statement {
    sid       = ""
    effect    = "Allow"
    resources = ["arn:aws:ssm:*:*:parameter/aws/service/*"]
    actions   = ["ssm:GetParameter"]
  }

  statement {
    sid       = ""
    effect    = "Allow"
    resources = [aws_iam_role.node.arn]
    actions   = ["iam:PassRole"]
  }
}

resource "aws_iam_role" "karpenter" {
  name               = "karpenter-controller-${var.cluster_name}"
  assume_role_policy = data.aws_iam_policy_document.karpenter_assume_role_policy.json
}

resource "aws_iam_role_policy" "karpenter" {
  name   = "karpenter-controller-${var.cluster_name}"
  role   = aws_iam_role.karpenter.id
  policy = data.aws_iam_policy_document.karpenter.json
}
