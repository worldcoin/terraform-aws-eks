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
    id         = "vpc-1234567890abcdef3"
    cidr_block = "10.0.0.0/16"
    ipv6_cidr_block_associations = [
      {
        association_id         = "vpc-cidr-assoc-1234567890abcdef0"
        ip_source              = "amazon"
        ipv6_address_attribute = "public"
        ipv6_cidr_block        = "2600:1f14:abcd:1000::/56"
        ipv6_pool              = "Amazon"
        network_border_group   = "us-west-2"
        state                  = "associated"
      },
      {
        association_id         = "vpc-cidr-assoc-abcdef0123456789"
        ip_source              = "amazon"
        ipv6_address_attribute = "public"
        ipv6_cidr_block        = "2600:1f14:abcd:2000::/56"
        ipv6_pool              = "Amazon"
        network_border_group   = "us-west-2"
        state                  = "associated"
      },
      {
        association_id         = "vpc-cidr-assoc-0123456789abcdef"
        ip_source              = "amazon"
        ipv6_address_attribute = "public"
        ipv6_cidr_block        = "2600:1f14:abcd:3000::/56"
        ipv6_pool              = "Amazon"
        network_border_group   = "us-west-2"
        state                  = "disassociated"
      },
    ]
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
