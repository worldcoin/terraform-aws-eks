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
    optional_controller_iam_enabled    = false
    aws_load_balancer_iam_role_enabled = false
    efs_csi_driver_enabled             = false
    s3_mountpoint_csi_driver_enabled   = false
    oidc_provider_enabled              = false
    iam_role_permissions_boundary_arn  = "arn:aws:iam::123456789012:policy/eks-e2e-permissions-boundary"
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

  assert {
    condition = alltrue([
      length(aws_iam_openid_connect_provider.oidc_provider) == 0,
      length(data.tls_certificate.this) == 0,
      length(data.aws_iam_policy_document.karpenter_assume_role_policy) == 0,
      length(data.aws_iam_policy_document.aws_load_balancer_assume_role_policy) == 0,
      length(data.aws_iam_policy_document.aws_efs_csi_driver_assume_role_policy) == 0,
      length(data.aws_iam_policy_document.aws_s3_mountpoint_csi_s3_assume) == 0,
    ])
    error_message = "Managed-node-only clusters must not create or resolve an OIDC provider"
  }

  assert {
    condition = (
      aws_iam_role.cluster.permissions_boundary == var.iam_role_permissions_boundary_arn &&
      aws_iam_role.node.permissions_boundary == var.iam_role_permissions_boundary_arn
    )
    error_message = "The cluster and node roles must both use the requested permissions boundary"
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

  assert {
    condition = (
      length(aws_iam_openid_connect_provider.oidc_provider) == 1 &&
      aws_iam_role.cluster.permissions_boundary == null &&
      aws_iam_role.node.permissions_boundary == null
    )
    error_message = "Default settings must retain the IAM OIDC provider and unbounded cluster/node roles"
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

run "null_boundary_keeps_existing_role_behavior" {
  command = plan

  variables {
    iam_role_permissions_boundary_arn = null
    oidc_provider_enabled             = null
  }

  assert {
    condition = (
      aws_iam_role.cluster.permissions_boundary == null &&
      aws_iam_role.node.permissions_boundary == null &&
      length(aws_iam_openid_connect_provider.oidc_provider) == 1
    )
    error_message = "Forwarding null retains the default IAM role and OIDC provider behavior"
  }
}

run "oidc_required_for_irsa_roles" {
  command = plan

  variables {
    oidc_provider_enabled = false
  }

  expect_failures = [var.oidc_provider_enabled]
}
