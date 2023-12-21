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
    effect = "Allow"

    resources = [
      "arn:aws:ec2:*:${data.aws_caller_identity.account.id}:launch-template/*",
    ]

    actions = ["ec2:RunInstances"]

    condition {
      test     = "StringEquals"
      variable = "ec2:ResourceTag/karpenter.sh/discovery"
      values   = [var.cluster_name]
    }
  }

  statement {
    effect = "Allow"

    resources = [
      "arn:aws:ec2:*::image/*",
      "arn:aws:ec2:*:${data.aws_caller_identity.account.id}:volume/*",
      "arn:aws:ec2:*:${data.aws_caller_identity.account.id}:subnet/*",
      "arn:aws:ec2:*:${data.aws_caller_identity.account.id}:network-interface/*",
      "arn:aws:ec2:*:${data.aws_caller_identity.account.id}:instance/*",
      "arn:aws:ec2:*:${data.aws_caller_identity.account.id}:security-group/*",
      "arn:aws:ec2:*:${data.aws_caller_identity.account.id}:spot-instances-request/*",
    ]

    actions = ["ec2:RunInstances"]
  }

  statement {
    effect    = "Allow"
    resources = ["arn:aws:ssm:*:*:parameter/aws/service/*"]
    actions   = ["ssm:GetParameter"]
  }

  statement {
    effect    = "Allow"
    resources = [aws_iam_role.node.arn]
    actions   = ["iam:PassRole"]
  }

  statement {
    effect    = "Allow"
    resources = [aws_eks_cluster.this.arn]
    actions   = ["eks:DescribeCluster"]
  }

  # Karpenter >= 0.30.0
  statement {
    sid       = "Karpenter"
    effect    = "Allow"
    resources = ["*"]
    actions = [
      "ssm:GetParameter",
      "ec2:DescribeImages",
      "ec2:RunInstances",
      "ec2:DescribeSubnets",
      "ec2:DescribeSecurityGroups",
      "ec2:DescribeLaunchTemplates",
      "ec2:DescribeInstances",
      "ec2:DescribeInstanceTypes",
      "ec2:DescribeInstanceTypeOfferings",
      "ec2:DescribeAvailabilityZones",
      "ec2:DeleteLaunchTemplate",
      "ec2:CreateTags",
      "ec2:CreateLaunchTemplate",
      "ec2:CreateFleet",
      "ec2:DescribeSpotPriceHistory",
      "pricing:GetProducts"
    ]
  }

  statement {
    sid       = "ConditionalEC2Termination"
    resources = ["*"]
    effect    = "Allow"
    actions   = ["ec2:TerminateInstances"]
    condition {
      test     = "StringLike"
      variable = "ec2:ResourceTag/karpenter.sh/nodepool"
      values   = ["*"]
    }
  }

  statement {
    sid       = "PassNodeIAMRole"
    effect    = "Allow"
    actions   = ["iam:PassRole"]
    resources = ["arn:aws:iam::${data.aws_caller_identity.account.id}:role/eks-node-${var.cluster_name}"]
  }
  statement {
    sid       = "EKSClusterEndpointLookup"
    effect    = "Allow"
    actions   = ["eks:DescribeCluster"]
    resources = ["arn:aws:eks:${data.aws_region.current.name}:${data.aws_caller_identity.account.id}:cluster/${var.cluster_name}"]
  }

  statement {
    sid       = "AllowScopedInstanceProfileCreationActions"
    effect    = "Allow"
    resources = ["*"]
    actions = [
      "iam:CreateInstanceProfile",
    ]
    condition {
      test     = "StringEquals"
      variable = "aws:RequestTag/kubernetes.io/cluster/${var.cluster_name}"
      values   = ["owned"]
    }
    condition {
      test     = "StringEquals"
      variable = "aws:RequestTag/topology.kubernetes.io/region"
      values   = ["${data.aws_region.current.name}"]
    }
    condition {
      test     = "StringLike"
      variable = "aws:RequestTag/karpenter.k8s.aws/ec2nodeclass"
      values   = ["*"]
    }
  }

  statement {
    sid       = "AllowScopedInstanceProfileTagActions"
    effect    = "Allow"
    resources = ["*"]

    actions = ["iam:TagInstanceProfile"]

    condition {
      test     = "StringEquals"
      variable = "aws:RequestTag/kubernetes.io/cluster/${var.cluster_name}"
      values   = ["owned"]
    }
    condition {
      test     = "StringEquals"
      variable = "aws:RequestTag/topology.kubernetes.io/region"
      values   = "${data.aws_region.current.name}"
    }
    condition {
      test     = "StringEquals"
      variable = "aws:ResourceTag/kubernetes.io/cluster/${var.cluster_name}"
      values   = ["owned"]
    }
    condition {
      test     = "StringEquals"
      variable = "aws:ResourceTag/topology.kubernetes.io/region"
      values   = "${data.aws_region.current.name}"
    }

    condition {
      test     = "StringLike"
      variable = "aws:RequestTag/karpenter.k8s.aws/ec2nodeclass"
      values   = ["*"]
    }
    condition {
      test     = "StringLike"
      variable = "aws:ResourceTag/karpenter.k8s.aws/ec2nodeclass"
      values   = ["*"]
    }
  }
  statement {
    sid       = "AllowScopedInstanceProfileActions"
    effect    = "Allow"
    resources = ["*"]
    actions = [
      "iam:AddRoleToInstanceProfile",
      "iam:RemoveRoleFromInstanceProfile",
      "iam:DeleteInstanceProfile"
    ]
    condition {
      test     = "StringEquals"
      variable = "aws:ResourceTag/kubernetes.io/cluster/${var.cluster_name}"
      values   = ["owned"]
    }
    condition {
      test     = "StringEquals"
      variable = "aws:ResourceTag/topology.kubernetes.io/region"
      values   = ["${data.aws_region.current.name}"]
    }
    condition {
      test     = "StringLike"
      variable = "aws:ResourceTag/karpenter.k8s.aws/ec2nodeclass"
      values   = ["*"]
    }
  }
  statement {
    sid       = "AllowInstanceProfileReadActions"
    effect    = "Allow"
    resources = ["*"]
    actions   = ["iam:GetInstanceProfile"]
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
