data "aws_iam_policy_document" "node_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "node" {
  name               = "eks-node-${var.cluster_name}"
  assume_role_policy = data.aws_iam_policy_document.node_assume_role_policy.json
}

resource "aws_iam_role_policy_attachment" "node" {
  for_each = toset([
    "AmazonEKSWorkerNodePolicy",
    "AmazonEC2ContainerRegistryReadOnly",
    "AmazonEKS_CNI_Policy",
    "AmazonSSMManagedInstanceCore",
  ])

  policy_arn = "arn:aws:iam::aws:policy/${each.value}"
  role       = aws_iam_role.node.name
}

resource "aws_iam_instance_profile" "node" {
  name = "eks-node-${var.cluster_name}"
  role = aws_iam_role.node.name
}
