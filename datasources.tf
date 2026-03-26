data "aws_caller_identity" "account" {}
data "aws_vpc" "cluster_vpc" {
  id = var.vpc_config.vpc_id
}

data "cloudflare_ip_ranges" "cloudflare" {}

locals {
  effective_external_cert_arn = var.external_cert_arn != null ? var.external_cert_arn : var.traefik_cert_arn
  effective_internal_cert_arn = var.internal_cert_arn != "" ? var.internal_cert_arn : (var.internal_nlb_acm_arn != "" ? var.internal_nlb_acm_arn : local.effective_external_cert_arn)
  effective_nlb_service_ports = length(var.internal_nlb_service_ports) > 0 ? var.internal_nlb_service_ports : var.traefik_nlb_service_ports

  al2023_standard_ami = {
    amd64 = format("/aws/service/eks/optimized-ami/%s/amazon-linux-2023/x86_64/standard/recommended/image_id", var.cluster_version)
    arm64 = format("/aws/service/eks/optimized-ami/%s/amazon-linux-2023/arm64/standard/recommended/image_id", var.cluster_version)
  }
}

data "aws_ssm_parameter" "al2023_ami" {
  for_each = local.al2023_standard_ami
  name     = each.value
}
