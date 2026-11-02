data "aws_iam_policy_document" "security_audit_assume_role" {
  count = var.audit_logs.enabled ? 1 : 0

  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["logs.amazonaws.com"]
    }

    condition {
      test     = "ArnLike"
      variable = "aws:SourceArn"
      values = [
        trimsuffix(aws_cloudwatch_log_group.this.arn, ":*"),
        "${trimsuffix(aws_cloudwatch_log_group.this.arn, ":*")}:*",
      ]
    }
  }
}

# Organization-scoped destinations require a role in the source account.
resource "aws_iam_role" "security_audit" {
  count = var.audit_logs.enabled ? 1 : 0

  name_prefix        = "${substr("eks-logs-${var.cluster_name}", 0, 37)}-"
  path               = "/system/"
  assume_role_policy = data.aws_iam_policy_document.security_audit_assume_role[0].json
}

data "aws_iam_policy_document" "security_audit" {
  count = var.audit_logs.enabled ? 1 : 0

  statement {
    actions   = ["logs:PutLogEvents"]
    resources = ["${trimsuffix(aws_cloudwatch_log_group.this.arn, ":*")}:*"]
  }
}

resource "aws_iam_role_policy" "security_audit" {
  count = var.audit_logs.enabled ? 1 : 0

  name   = "eks-control-plane-logs"
  role   = aws_iam_role.security_audit[0].id
  policy = data.aws_iam_policy_document.security_audit[0].json
}

resource "aws_cloudwatch_log_subscription_filter" "security_audit" {
  count = var.audit_logs.enabled ? 1 : 0

  name            = "eks-control-plane-to-security"
  log_group_name  = aws_cloudwatch_log_group.this.name
  destination_arn = coalesce(var.audit_logs.destination_arn, "arn:aws:logs:${var.region}:338165278394:destination:eks-control-plane-logs")
  role_arn        = aws_iam_role.security_audit[0].arn
  # Preserve every control plane record, including audit messages that are not valid JSON.
  filter_pattern     = ""
  emit_system_fields = ["@aws.account", "@aws.region"]

  depends_on = [aws_iam_role_policy.security_audit]
}
