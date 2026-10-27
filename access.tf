locals {
  effective_access_entries = merge(
    var.aws_devops_agent_access_enabled && var.authentication_mode != "CONFIG_MAP" ? {
      aws-devops-agent = {
        principal_arn           = "arn:aws:iam::${data.aws_caller_identity.account.account_id}:role/DevOpsAgentCrossAccountRole-internal-tools-prod"
        kubernetes_groups       = ["devops-agent-extra-read"]
        type                    = "STANDARD"
        tags                    = {}
        access_scope_type       = "cluster"
        access_scope_namespaces = []
        policy_arn              = "arn:aws:eks::aws:cluster-access-policy/AmazonAIOpsAssistantPolicy"
      }
    } : {},
    var.access_entries,
  )
}

resource "aws_eks_access_entry" "this" {
  for_each = local.effective_access_entries

  cluster_name      = aws_eks_cluster.this.id
  kubernetes_groups = each.value.kubernetes_groups
  principal_arn     = each.value.principal_arn
  type              = each.value.type
  tags              = each.value.tags
}

resource "aws_eks_access_policy_association" "this" {
  for_each = local.effective_access_entries

  cluster_name  = aws_eks_cluster.this.id
  policy_arn    = each.value.policy_arn
  principal_arn = each.value.principal_arn

  access_scope {
    type       = each.value.access_scope_type
    namespaces = each.value.access_scope_type == "namespace" ? each.value.access_scope_namespaces : null
  }

  depends_on = [aws_eks_access_entry.this]
}
