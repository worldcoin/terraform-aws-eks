resource "aws_eks_pod_identity_association" "this" {
  for_each = toset(var.service_accounts)

  cluster_name    = var.cluster_name
  namespace       = var.namespace
  service_account = each.key
  role_arn        = data.aws_iam_role.pod_identity_role.arn
}

resource "aws_eks_access_entry" "this" {
  for_each = toset(var.service_accounts)

  cluster_name      = var.cluster_name
  kubernetes_groups = ["NamespaceCreator"]
  principal_arn     = data.aws_iam_role.access_entries.arn
  type              = "STANDARD"
}

resource "aws_eks_access_policy_association" "this" {
  for_each = toset(var.service_accounts)

  cluster_name  = var.cluster_name
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy"
  principal_arn = data.aws_iam_role.access_entries.arn

  access_scope {
    type       = "namespace"
    namespaces = [var.namespace]
  }
}
