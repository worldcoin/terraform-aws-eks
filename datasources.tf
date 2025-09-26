data "aws_caller_identity" "account" {}
data "aws_region" "current" {}
data "aws_vpc" "cluster_vpc" {
  id = var.vpc_config.vpc_id
}

locals {
  current_region_name = try(data.aws_region.current.region, data.aws_region.current.name)
}
