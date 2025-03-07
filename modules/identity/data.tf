data "aws_caller_identity" "current" {}

data "aws_iam_role" "pod_identity_role" {
  name = substr("${var.application}-${var.environment}", 0, 64)
}

data "aws_iam_role" "access_entries" {
  name = substr("github-deploy-${var.application}", 0, 64)
}
