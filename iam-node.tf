data "aws_iam_policy_document" "node_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "dockerhub_pull_through_cache" {
  statement {
    sid    = "DockerHubPullThroughCache"
    effect = "Allow"
    actions = [
      "ecr:CreateRepository",
      "ecr:BatchImportUpstreamImage",
    ]
    resources = [var.dockerhub_pull_through_cache_repositories_arn]
  }
}

resource "aws_iam_role" "node" {
  name               = "eks-node-${var.cluster_name}"
  assume_role_policy = data.aws_iam_policy_document.node_assume_role_policy.json

  inline_policy {
    name   = "DockerHubPullThroughCache"
    policy = data.aws_iam_policy_document.dockerhub_pull_through_cache.json
  }

  dynamic "inline_policy" {
    for_each = var.node_instance_profile_inline_policies

    content {
      name   = inline_policy.key
      policy = inline_policy.value
    }
  }
}

resource "aws_iam_role_policy_attachment" "node" {
  for_each = toset([
    "AmazonEKSWorkerNodePolicy",
    "AmazonEC2ContainerRegistryReadOnly",
    "AmazonEKS_CNI_Policy",
    "AmazonSSMManagedInstanceCore",
    "service-role/AmazonEBSCSIDriverPolicy",
  ])

  policy_arn = "arn:aws:iam::aws:policy/${each.value}"
  role       = aws_iam_role.node.name
}

resource "aws_iam_instance_profile" "node" {
  name = "eks-node-${var.cluster_name}"
  role = aws_iam_role.node.name
}
