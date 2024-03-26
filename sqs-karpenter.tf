resource "aws_sqs_queue" "this" {
  content_based_deduplication = false
  delay_seconds               = 0
  fifo_queue                  = false
  sqs_managed_sse_enabled     = true
  max_message_size            = 262144
  message_retention_seconds   = 86400
  name                        = "spot-notifications-${var.cluster_name}"
  receive_wait_time_seconds   = 0

  tags = {
    Name        = "spot-notifications-${var.cluster_name}"
    Application = "karpenter"
  }
  visibility_timeout_seconds = 300
}

# Source: https://karpenter.sh/preview/reference/cloudformation/
data "aws_iam_policy_document" "spot_notification_sqs_policy" {
  statement {
    effect = "Allow"
    principals {
      identifiers = [
        "events.amazonaws.com",
        "sqs.amazonaws.com",
      ]
      type = "Service"
    }
    actions   = ["sqs:SendMessage"]
    resources = [aws_sqs_queue.this.arn]
  }
}
resource "aws_sqs_queue_policy" "spot_notifications_sqs" {
  policy    = data.aws_iam_policy_document.spot_notification_sqs_policy.json
  queue_url = aws_sqs_queue.this.id
}

# Rules
resource "aws_cloudwatch_event_rule" "spot_aws_health" {
  name        = "spot-aws-health"
  description = "Capture each scheduled change event from AWS Health"

  event_pattern = jsonencode({
    source = [
      "aws.health"
    ]
    detail-type = [
      "AWS Health Event"
    ]
  })
}
resource "aws_cloudwatch_event_target" "spot_aws_health" {
  rule = aws_cloudwatch_event_rule.spot_aws_health.name
  arn  = aws_sqs_queue.this.arn
}

resource "aws_cloudwatch_event_rule" "spot_aws_ec2" {
  name        = "spot-aws-ec2"
  description = "Capture aws.ec2 spot instance events"

  event_pattern = jsonencode({
    source = [
      "aws.ec2"
    ]
    detail-type = [
      "EC2 Spot Instance Interruption Warning",
      "EC2 Instance Rebalance Recommendation",
      "EC2 Instance State-change Notification",
    ]
  })
}
resource "aws_cloudwatch_event_target" "spot_aws_ec2" {
  rule = aws_cloudwatch_event_rule.spot_aws_ec2.name
  arn  = aws_sqs_queue.this.arn
}
