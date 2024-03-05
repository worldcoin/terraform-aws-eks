data "aws_iam_policy_document" "cluster_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["eks.amazonaws.com"]
    }
  }
  dynamic "statement" {
    for_each = var.argocd_role_arn != null ? [1] : []
    content {
      principals {
        type        = "AWS"
        identifiers = [var.argocd_role_arn]
      }
      actions = ["sts:AssumeRole"]
    }
  }
}

resource "aws_iam_role" "cluster" {
  name               = "eks-cluster-${var.cluster_name}"
  assume_role_policy = data.aws_iam_policy_document.cluster_assume_role_policy.json
}

resource "aws_iam_role_policy_attachment" "cluster" {
  for_each = toset([
    "AmazonEKSClusterPolicy",
    "AmazonEKSServicePolicy",
  ])
  policy_arn = "arn:aws:iam::aws:policy/${each.value}"
  role       = aws_iam_role.cluster.name
}
