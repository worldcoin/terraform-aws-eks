resource "aws_eks_pod_identity_association" "this" {
  for_each = toset(var.service_accounts)

  cluster_name    = var.cluster_name
  namespace       = var.namespace
  service_account = each.key
  role_arn        = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/${substr("${var.application}-${var.environment}", 0, 64)}"
}

resource "aws_eks_access_entry" "this" {
  for_each = toset(var.service_accounts)

  cluster_name      = var.cluster_name
  kubernetes_groups = ["NamespaceCreator"]
  principal_arn     = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/oidc/${substr("github-deploy-${var.application}", 0, 64)}"
  type              = "STANDARD"
}

resource "aws_eks_access_policy_association" "this" {
  for_each = toset(var.service_accounts)

  cluster_name  = var.cluster_name
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy"
  principal_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/oidc/${substr("github-deploy-${var.application}", 0, 64)}"

  access_scope {
    type       = "namespace"
    namespaces = [var.namespace]
  }
}
