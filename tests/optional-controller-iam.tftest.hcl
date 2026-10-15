mock_provider "aws" {
  source = "./tests/mocks/aws"
}
mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

variables {
  kubernetes_provider_enabled = false
  monitoring_enabled          = false
  internal_nlb_enabled        = false
  external_alb_enabled        = false
}

run "managed_nodes_need_no_optional_controller_roles" {
  command = plan
  variables {
    optional_controller_iam_enabled = false
  }

  assert {
    condition = alltrue([
      length(aws_iam_role.karpenter) == 0,
      length(aws_iam_role.keda) == 0,
      length(aws_iam_role.cni_metrics_helper) == 0,
      length(aws_iam_role.ebs_csi_controller) == 0,
      length(aws_eks_pod_identity_association.keda) == 0,
      length(aws_eks_pod_identity_association.cni_metrics_helper) == 0,
      length(aws_eks_pod_identity_association.ebs_csi_controller) == 0,
    ])
    error_message = "Managed-node-only EKS must not create unused controller IAM identities"
  }

  assert {
    condition     = aws_iam_role.node.name == "eks-node-${var.cluster_name}" && aws_iam_role.cluster.name == "eks-cluster-${var.cluster_name}"
    error_message = "Managed-node cluster and node roles must remain available"
  }
}

run "default_keeps_existing_controller_roles" {
  command = plan

  assert {
    condition = alltrue([
      length(aws_iam_role.karpenter) == 1,
      length(aws_iam_role.keda) == 1,
      length(aws_iam_role.cni_metrics_helper) == 1,
      length(aws_iam_role.ebs_csi_controller) == 1,
    ])
    error_message = "Existing clusters must retain all controller roles by default"
  }
}

run "null_does_not_remove_existing_controller_roles" {
  command = plan

  variables {
    optional_controller_iam_enabled = null
  }

  assert {
    condition     = length(aws_iam_role.karpenter) == 1
    error_message = "A caller forwarding null must preserve the existing controller role"
  }
}
