data "aws_eks_clusters" "this" {}

data "aws_eks_cluster" "this" {
  for_each = toset(data.aws_eks_clusters.this.names)
  name     = each.value
}

data "aws_eks_cluster_auth" "this" {
  for_each = toset(data.aws_eks_clusters.this.names)
  name     = data.aws_eks_cluster.this[each.value].endpoint
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster_auth.this[var.cluster_name].name
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.this[var.cluster_name].certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.this[var.cluster_name].token
}
