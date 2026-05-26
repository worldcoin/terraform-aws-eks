data "aws_iam_policy_document" "vector_assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["pods.eks.amazonaws.com"]
    }

    actions = [
      "sts:AssumeRole",
      "sts:TagSession",
    ]
  }
}

resource "aws_iam_role" "vector" {
  count              = length(var.vector_s3_bucket_arns) > 0 ? 1 : 0
  name               = trimsuffix(substr("vector-${var.cluster_name}", 0, 63), "-")
  assume_role_policy = data.aws_iam_policy_document.vector_assume_role.json
  path               = "/system/"
}

data "aws_iam_policy_document" "vector" {
  count = length(var.vector_s3_bucket_arns) > 0 ? 1 : 0

  statement {
    sid    = "AllowVectorToWriteObjects"
    effect = "Allow"

    actions = [
      "s3:AbortMultipartUpload",
      "s3:ListMultipartUploadParts",
      "s3:PutObject",
    ]

    resources = formatlist("%s/*", var.vector_s3_bucket_arns)
  }

  statement {
    sid    = "AllowVectorToInspectBucket"
    effect = "Allow"

    actions = [
      "s3:GetBucketLocation",
      "s3:ListBucket",
      "s3:ListBucketMultipartUploads",
    ]

    resources = var.vector_s3_bucket_arns
  }
}

resource "aws_iam_role_policy" "vector" {
  count  = length(var.vector_s3_bucket_arns) > 0 ? 1 : 0
  name   = trimsuffix(substr("vector-${var.cluster_name}", 0, 63), "-")
  role   = aws_iam_role.vector[0].id
  policy = data.aws_iam_policy_document.vector[0].json
}

resource "aws_eks_pod_identity_association" "vector" {
  count = length(var.vector_s3_bucket_arns) > 0 ? 1 : 0

  cluster_name    = aws_eks_cluster.this.id
  namespace       = "vector"
  service_account = "vector"
  role_arn        = aws_iam_role.vector[0].arn
}
