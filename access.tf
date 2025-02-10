resource "aws_eks_access_entry" "this" {
  for_each = { for k, v in var.access_entries : k => v }

  cluster_name      = aws_eks_cluster.this.id
  kubernetes_groups = try(each.value.kubernetes_groups, null)
  principal_arn     = each.value.principal_arn
  type              = try(each.value.type, "STANDARD")
  tags              = try(each.value.tags, {})
}

resource "aws_eks_access_policy_association" "this" {
  for_each = { for k, v in var.access_entries : k => v }

  cluster_name  = aws_eks_cluster.this.id
  policy_arn    = each.value.policy_arn
  principal_arn = each.value.principal_arn

  access_scope {
    type       = each.value.access_scope_type
    namespaces = each.value.access_scope_type == "namespace" ? each.value.access_scope_namespaces : null
  }
}
