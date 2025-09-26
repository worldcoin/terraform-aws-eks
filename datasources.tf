data "aws_caller_identity" "account" {}
data "aws_vpc" "cluster_vpc" {
  id = var.vpc_config.vpc_id
}

locals {
  al2023_standard_ami = {
    amd64 = format("/aws/service/eks/optimized-ami/%s/amazon-linux-2023/x86_64/standard/recommended/image_id", var.cluster_version)
    arm64 = format("/aws/service/eks/optimized-ami/%s/amazon-linux-2023/arm64/standard/recommended/image_id", var.cluster_version)
  }
}

data "aws_ssm_parameter" "al2023_ami" {
  for_each = local.al2023_standard_ami
  name     = each.value
}
