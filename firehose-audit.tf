# Per-cluster EKS audit-log pipeline:
#   CloudWatch Logs → Kinesis Data Firehose → central Vector aggregator
#
# The central Vector aggregator lives on shared-tools-prod-eu-west-1 and is
# reachable at var.vector_audit_endpoint_url (default: https://vector.worldcoin.dev/).
# Each cluster gets its own Firehose delivery stream and CW Logs subscription
# filter; Vector writes the merged stream to S3 as Parquet.

# ---------------------------------------------------------------------------
# Firehose IAM role
# ---------------------------------------------------------------------------

data "aws_iam_policy_document" "firehose_eks_audit_assume_role" {
  count = var.vector_audit_enabled ? 1 : 0

  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["firehose.amazonaws.com"]
    }

    # Confused-deputy protection: scope to this account and this exact stream.
    condition {
      test     = "StringEquals"
      variable = "aws:SourceAccount"
      values   = [data.aws_caller_identity.account.account_id]
    }

    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values   = ["arn:aws:firehose:${var.region}:${data.aws_caller_identity.account.account_id}:deliverystream/${var.cluster_name}-eks-audit"]
    }
  }
}

resource "aws_iam_role" "firehose_eks_audit" {
  count              = var.vector_audit_enabled ? 1 : 0
  name               = trimsuffix(substr("firehose-eks-audit-${var.cluster_name}", 0, 64), "-")
  path               = "/system/"
  assume_role_policy = data.aws_iam_policy_document.firehose_eks_audit_assume_role[0].json
}

data "aws_iam_policy_document" "firehose_eks_audit" {
  count = var.vector_audit_enabled ? 1 : 0

  statement {
    # S3 backup for failed deliveries only.
    actions = [
      "s3:AbortMultipartUpload",
      "s3:GetBucketLocation",
      "s3:ListBucket",
      "s3:ListBucketMultipartUploads",
      "s3:ListMultipartUploadParts",
      "s3:PutObject",
    ]
    resources = [
      "arn:aws:s3:::${var.vector_audit_s3_backup_bucket}",
      "arn:aws:s3:::${var.vector_audit_s3_backup_bucket}/*",
    ]
  }
}

resource "aws_iam_role_policy" "firehose_eks_audit" {
  count  = var.vector_audit_enabled ? 1 : 0
  name   = trimsuffix(substr("firehose-eks-audit-${var.cluster_name}", 0, 64), "-")
  role   = aws_iam_role.firehose_eks_audit[0].name
  policy = data.aws_iam_policy_document.firehose_eks_audit[0].json
}

# ---------------------------------------------------------------------------
# Kinesis Data Firehose delivery stream (HTTP endpoint → Vector)
# ---------------------------------------------------------------------------

resource "aws_kinesis_firehose_delivery_stream" "eks_audit" {
  count       = var.vector_audit_enabled ? 1 : 0
  name        = "${var.cluster_name}-eks-audit"
  destination = "http_endpoint"

  http_endpoint_configuration {
    url                = var.vector_audit_endpoint_url
    name               = "vector-audit-${var.cluster_name}"
    access_key         = var.vector_audit_firehose_access_key
    buffering_size     = 1
    buffering_interval = 60
    role_arn           = aws_iam_role.firehose_eks_audit[0].arn
    s3_backup_mode     = "FailedDataOnly"

    s3_configuration {
      role_arn           = aws_iam_role.firehose_eks_audit[0].arn
      bucket_arn         = "arn:aws:s3:::${var.vector_audit_s3_backup_bucket}"
      prefix             = "kubernetes-audit/org=tfh/env=${var.environment}/region=${var.region}/cluster=${var.cluster_name}/firehose-errors/year=%Y/month=%m/day=%d/hour=%H/"
      buffering_size     = 64
      buffering_interval = 300
      compression_format = "GZIP"
    }

    request_configuration {
      content_encoding = "NONE"
    }
  }

  # Ensure the S3 backup policy is in place before the stream is created to
  # avoid flaky IAM propagation failures.
  depends_on = [aws_iam_role_policy.firehose_eks_audit]

  tags = {
    Environment = var.environment
  }
}

# ---------------------------------------------------------------------------
# CloudWatch Logs → Firehose IAM role
# ---------------------------------------------------------------------------

data "aws_iam_policy_document" "cw_logs_firehose_assume_role" {
  count = var.vector_audit_enabled ? 1 : 0

  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["logs.${var.region}.amazonaws.com"]
    }

    # Confused-deputy protection: scope to this account and the EKS audit log group.
    condition {
      test     = "StringEquals"
      variable = "aws:SourceAccount"
      values   = [data.aws_caller_identity.account.account_id]
    }

    # ArnLike (not ArnEquals) required: CW Logs sets aws:SourceArn to the bare
    # log group ARN during PutSubscriptionFilter validation (CONTROL_MESSAGE)
    # and to a log-stream ARN during async DATA_MESSAGE delivery.
    # Pattern uses "cluster*" (no colon before wildcard) so it matches both:
    #   .../cluster          ← CONTROL_MESSAGE test at filter-creation time
    #   .../cluster:stream   ← DATA_MESSAGE delivery (log-stream ARN suffix)
    condition {
      test     = "ArnLike"
      variable = "aws:SourceArn"
      values   = ["arn:aws:logs:${var.region}:${data.aws_caller_identity.account.account_id}:log-group:/aws/eks/${var.cluster_name}/cluster*"]
    }
  }
}

resource "aws_iam_role" "cw_logs_to_firehose_eks_audit" {
  count              = var.vector_audit_enabled ? 1 : 0
  name               = trimsuffix(substr("cw-logs-firehose-eks-audit-${var.cluster_name}", 0, 64), "-")
  path               = "/system/"
  assume_role_policy = data.aws_iam_policy_document.cw_logs_firehose_assume_role[0].json
}

data "aws_iam_policy_document" "cw_logs_firehose_eks_audit" {
  count = var.vector_audit_enabled ? 1 : 0

  statement {
    actions   = ["firehose:PutRecord"]
    resources = [aws_kinesis_firehose_delivery_stream.eks_audit[0].arn]
  }
}

resource "aws_iam_role_policy" "cw_logs_to_firehose_eks_audit" {
  count  = var.vector_audit_enabled ? 1 : 0
  name   = trimsuffix(substr("cw-logs-firehose-eks-audit-${var.cluster_name}", 0, 64), "-")
  role   = aws_iam_role.cw_logs_to_firehose_eks_audit[0].name
  policy = data.aws_iam_policy_document.cw_logs_firehose_eks_audit[0].json
}

# ---------------------------------------------------------------------------
# Delay between Firehose create/update and the subscription filter
#
# After Terraform marks the Firehose resource done, AWS keeps the stream in
# UPDATING state for ~10-20 s. Attempting put-subscription-filter during that
# window returns:
#   InvalidParameterException: Could not deliver test message to specified
#   Firehose stream
# A 30 s sleep covers the observed window with margin.
# ---------------------------------------------------------------------------

resource "time_sleep" "wait_firehose_eks_audit_active" {
  count           = var.vector_audit_enabled ? 1 : 0
  create_duration = "30s"
  depends_on      = [aws_kinesis_firehose_delivery_stream.eks_audit]
}

# ---------------------------------------------------------------------------
# CloudWatch Logs subscription filter
# ---------------------------------------------------------------------------

resource "aws_cloudwatch_log_subscription_filter" "eks_audit" {
  count           = var.vector_audit_enabled ? 1 : 0
  name            = "eks-audit-to-firehose"
  log_group_name  = aws_cloudwatch_log_group.this.name
  destination_arn = aws_kinesis_firehose_delivery_stream.eks_audit[0].arn
  filter_pattern  = ""
  role_arn        = aws_iam_role.cw_logs_to_firehose_eks_audit[0].arn

  depends_on = [
    aws_iam_role_policy.cw_logs_to_firehose_eks_audit,
    time_sleep.wait_firehose_eks_audit_active,
  ]
}
