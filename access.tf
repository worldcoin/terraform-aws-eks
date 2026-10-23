resource "aws_eks_access_entry" "this" {
  for_each = { for k, v in var.access_entries : k => v }

  cluster_name      = aws_eks_cluster.this.id
  kubernetes_groups = each.value.kubernetes_groups
  principal_arn     = each.value.principal_arn
  type              = each.value.type
  user_name         = each.value.user_name
  tags              = each.value.tags
}

# Use the actual IAM ARN (including the path) for SSO roles. aws-auth mappings
# commonly omit the path, but EKS access entries require the full principal ARN.
data "aws_iam_role" "role_mapping" {
  for_each = var.enable_role_mapping_access_entries ? {
    for index, mapping in var.extra_role_mapping : "extra-${index}" => mapping
    if mapping.rolearn != ""
  } : {}

  name = element(reverse(split("/", each.value.rolearn)), 0)
}

resource "aws_eks_access_entry" "cluster_role" {
  count = var.enable_role_mapping_access_entries ? 1 : 0

  cluster_name      = aws_eks_cluster.this.id
  principal_arn     = aws_iam_role.cluster.arn
  kubernetes_groups = ["tfh-cluster-admins"]
  user_name         = "eks-cluster-${var.cluster_name}"
}

resource "aws_eks_access_entry" "role_mapping" {
  for_each = data.aws_iam_role.role_mapping

  cluster_name      = aws_eks_cluster.this.id
  principal_arn     = each.value.arn
  kubernetes_groups = var.extra_role_mapping[tonumber(trimprefix(each.key, "extra-"))].groups
  user_name         = var.extra_role_mapping[tonumber(trimprefix(each.key, "extra-"))].username
}

resource "aws_eks_access_policy_association" "this" {
  for_each = { for k, v in var.access_entries : k => v if v.associate_access_policy }

  cluster_name  = aws_eks_cluster.this.id
  policy_arn    = each.value.policy_arn
  principal_arn = aws_eks_access_entry.this[each.key].principal_arn

  access_scope {
    type       = each.value.access_scope_type
    namespaces = each.value.access_scope_type == "namespace" ? each.value.access_scope_namespaces : null
  }
}
