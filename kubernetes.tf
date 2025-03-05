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
