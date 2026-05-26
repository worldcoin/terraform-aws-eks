mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

run "vector_iam_enabled_by_default" {
  command = plan

  assert {
    condition     = length(aws_iam_role.vector) == 1
    error_message = "Vector IAM role should be created by default."
  }

  assert {
    condition     = length(aws_eks_pod_identity_association.vector) == 1
    error_message = "Vector pod identity association should be created by default."
  }
}

run "vector_iam_disabled_when_bucket_arns_empty" {
  command = plan

  variables {
    vector_s3_bucket_arns = []
  }

  assert {
    condition     = length(aws_iam_role.vector) == 0
    error_message = "Vector IAM role should not be created when vector_s3_bucket_arns is empty."
  }

  assert {
    condition     = length(aws_eks_pod_identity_association.vector) == 0
    error_message = "Vector pod identity association should not be created when vector_s3_bucket_arns is empty."
  }
}

run "vector_iam_enabled_with_custom_bucket" {
  command = plan

  variables {
    vector_s3_bucket_arns = ["arn:aws:s3:::custom-log-archive"]
  }

  assert {
    condition     = length(aws_iam_role.vector) == 1
    error_message = "Vector IAM role should be created when vector_s3_bucket_arns is set."
  }

  assert {
    condition     = aws_iam_role.vector[0].name == "vector-eks-test"
    error_message = "Vector IAM role should be named from the cluster name."
  }

  assert {
    condition     = aws_eks_pod_identity_association.vector[0].namespace == "vector"
    error_message = "Vector pod identity association should use the vector namespace."
  }

  assert {
    condition     = aws_eks_pod_identity_association.vector[0].service_account == "vector"
    error_message = "Vector pod identity association should use the vector service account."
  }
}
