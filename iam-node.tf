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
  name               = trimsuffix(substr("eks-node-${var.cluster_name}", 0, 63), "-")
  assume_role_policy = data.aws_iam_policy_document.node_assume_role_policy.json
}

resource "aws_iam_role_policy" "dockerhub_pull_through_cache" {
  name   = "DockerHubPullThroughCache"
  role   = aws_iam_role.node.id
  policy = data.aws_iam_policy_document.dockerhub_pull_through_cache.json
}

resource "aws_iam_role_policy" "node_inline_policy" {
  for_each = var.node_instance_profile_inline_policies

  name   = each.key
  role   = aws_iam_role.node.id
  policy = each.value
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
  name = trimsuffix(substr("eks-node-${var.cluster_name}", 0, 63), "-")
  role = aws_iam_role.node.name
}
