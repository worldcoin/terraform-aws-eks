resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/eks/${var.cluster_name}/cluster"
  kms_key_id        = aws_kms_key.this.arn
  retention_in_days = 30
}
