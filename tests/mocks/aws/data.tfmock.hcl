mock_data "aws_partition" {
  defaults = {
    partition  = "aws"
    dns_suffix = "amazonaws.com"
  }
}

mock_data "aws_caller_identity" {
  defaults = {
    arn = "arn:aws:iam::123456789012:user/test-user"
  }
}

mock_data "aws_region" {
  defaults = {
    name = "us-west-2"
  }
}

mock_data "aws_iam_policy_document" {
  defaults = {
    arn  = "arn:aws:iam::123456789012:policy/test-policy"
    json = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ]
}
EOF
  }
}

mock_data "aws_vpc" {
  defaults = {
    id         = "vpc-1234567890abcdef3" # Must match the vpc_id in your test variables
    cidr_block = "10.0.0.0/16"
  }
}

override_data {
  target = data.aws_iam_policy_document.dockerhub_pull_through_cache
  values = {
    json = <<EOT
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Action": [
            "ecr:PullImage",
            "ecr:PushImage"
          ],
          "Resource": "*"
        }
      ]
    }
    EOT
  }
}
