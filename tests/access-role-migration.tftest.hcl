mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

run "overlap_preserves_role_access_without_admin_policy" {
  command = plan

  variables {
    enable_role_mapping_access_entries = true
    kubernetes_provider_enabled        = true
    access_entries = {
      reviewer = {
        principal_arn           = "arn:aws:iam::123456789012:role/reviewer"
        kubernetes_groups       = ["ViewOnlyAccess"]
        user_name               = "reviewer"
        associate_access_policy = false
      }
      deploy = {
        principal_arn           = "arn:aws:iam::123456789012:role/deploy"
        access_scope_namespaces = ["application"]
      }
    }
  }

  override_data {
    target = data.aws_iam_role.role_mapping["extra-2"]
    values = {
      arn = "arn:aws:iam::123123123123:role/aws-reserved/sso.amazonaws.com/AWSReservedSSO_PowerUserAccess"
    }
  }

  assert {
    condition     = length(kubernetes_config_map_v1_data.aws_auth) == 1 && length(aws_eks_access_entry.role_mapping) == 3
    error_message = "The overlap must keep aws-auth while creating entries for nonempty mapped roles."
  }

  assert {
    condition     = aws_eks_access_entry.role_mapping["extra-2"].principal_arn == "arn:aws:iam::123123123123:role/aws-reserved/sso.amazonaws.com/AWSReservedSSO_PowerUserAccess"
    error_message = "SSO access entries must use the full IAM ARN."
  }

  assert {
    condition     = length(aws_eks_access_entry.role_mapping["extra-2"].kubernetes_groups) == 1 && contains(aws_eks_access_entry.role_mapping["extra-2"].kubernetes_groups, "PowerUserAccess")
    error_message = "Access entries must retain the original Kubernetes group."
  }

  assert {
    condition     = aws_eks_access_entry.this["reviewer"].user_name == "reviewer" && length(aws_eks_access_policy_association.this) == 1 && contains(keys(aws_eks_access_policy_association.this), "deploy")
    error_message = "RBAC-only entries must not gain an admin policy; existing policy entries must retain their association."
  }
}

run "retire_config_map_after_access_entries" {
  command = plan

  variables {
    enable_role_mapping_access_entries = true
    manage_aws_auth_config_map         = false
    kubernetes_provider_enabled        = true
  }

  assert {
    condition     = length(kubernetes_config_map_v1_data.aws_auth) == 0 && length(aws_eks_access_entry.cluster_role) == 1 && length(aws_eks_access_entry.role_mapping) == 3
    error_message = "The final stage must retain role access entries without managing aws-auth."
  }

  assert {
    condition     = length(kubernetes_cluster_role_binding_v1.tfh_cluster_admins) == 1
    error_message = "Access-entry Kubernetes groups still require their RBAC binding."
  }
}

run "initial_cluster_access_does_not_require_kubernetes_provider" {
  command = plan

  variables {
    enable_role_mapping_access_entries = true
    manage_aws_auth_config_map         = false
    kubernetes_provider_enabled        = false
    eks_node_group                     = null
  }

  assert {
    condition     = length(aws_eks_node_group.al2023) == 0 && length(kubernetes_config_map_v1_data.aws_auth) == 0 && length(aws_eks_access_entry.cluster_role) == 1 && length(aws_eks_access_entry.role_mapping) == 3
    error_message = "API access entries must be available during bootstrap without the Kubernetes provider."
  }
}
