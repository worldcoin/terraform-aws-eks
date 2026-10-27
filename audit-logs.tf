resource "aws_cloudwatch_log_subscription_filter" "security_audit" {
  count = var.audit_logs.enabled ? 1 : 0

  name            = "eks-control-plane-to-security"
  log_group_name  = aws_cloudwatch_log_group.this.name
  destination_arn = coalesce(var.audit_logs.destination_arn, "arn:aws:logs:${var.region}:338165278394:destination:eks-control-plane-logs")
  # Preserve every control plane record, including audit messages that are not valid JSON.
  filter_pattern     = ""
  emit_system_fields = ["@aws.account", "@aws.region"]
}
