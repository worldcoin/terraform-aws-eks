locals {
  aws_devops_agent_principal_arn = "arn:aws:iam::${data.aws_caller_identity.account.account_id}:role/DevOpsAgentCrossAccountRole-internal-tools-prod"

  aws_devops_agent_access_enabled = (
    var.aws_devops_agent_access_enabled &&
    var.authentication_mode != "CONFIG_MAP" &&
    !contains([for entry in var.access_entries : entry.principal_arn], local.aws_devops_agent_principal_arn)
  )
}

resource "aws_eks_access_entry" "aws_devops_agent" {
  count = local.aws_devops_agent_access_enabled ? 1 : 0

  cluster_name      = aws_eks_cluster.this.id
  principal_arn     = local.aws_devops_agent_principal_arn
  type              = "STANDARD"
  kubernetes_groups = ["devops-agent-extra-read"]
}

resource "aws_eks_access_policy_association" "aws_devops_agent" {
  count = local.aws_devops_agent_access_enabled ? 1 : 0

  cluster_name  = aws_eks_access_entry.aws_devops_agent[0].cluster_name
  principal_arn = aws_eks_access_entry.aws_devops_agent[0].principal_arn
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonAIOpsAssistantPolicy"

  access_scope {
    type = "cluster"
  }

  depends_on = [aws_eks_access_entry.aws_devops_agent]
}
