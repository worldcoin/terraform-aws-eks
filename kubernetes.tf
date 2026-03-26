# Authenticate to the cluster in a case when cluster is created.
data "aws_eks_clusters" "this" {}

data "aws_eks_cluster" "this" {
  for_each = toset(data.aws_eks_clusters.this.names)
  name     = each.value
}

data "aws_eks_cluster_auth" "this" {
  for_each = toset(data.aws_eks_clusters.this.names)
  name     = data.aws_eks_cluster.this[each.value].name
}

# Aythenticate to the cluster in a case when cluster is gonna be created.
data "aws_eks_cluster_auth" "default" {
  name = aws_eks_cluster.this.name
}

# Kubernetes provider configuration:
# - based data sources when cluster is created, and cluster update is rquired,
# - based on the resource when cluster is gonna be created.
provider "kubernetes" {
  host = coalesce(
    try(data.aws_eks_cluster.this[var.cluster_name].endpoint, null),
    aws_eks_cluster.this.endpoint
  )
  cluster_ca_certificate = base64decode(
    coalesce(
      try(data.aws_eks_cluster.this[var.cluster_name].certificate_authority[0].data, null),
      aws_eks_cluster.this.certificate_authority[0].data
    )
  )
  token = coalesce(
    try(data.aws_eks_cluster_auth.this[var.cluster_name].token, null),
    data.aws_eks_cluster_auth.default.token
  )
}

locals {
  gateway_api_lb_name_prefix = coalesce(var.gateway_api_lb_name_prefix, var.cluster_name)
}

resource "terraform_data" "gateway_api_lb_name_validation" {
  count = (var.gateway_api_external_enabled || var.gateway_api_internal_enabled) ? 1 : 0

  lifecycle {
    precondition {
      condition     = length(local.gateway_api_lb_name_prefix) <= 21
      error_message = "Resolved gateway_api_lb_name_prefix '${local.gateway_api_lb_name_prefix}' exceeds 21 characters (32-char LB name limit minus '-gw-ext-alb' suffix). Set gateway_api_lb_name_prefix explicitly when cluster_name is too long."
    }
  }
}
