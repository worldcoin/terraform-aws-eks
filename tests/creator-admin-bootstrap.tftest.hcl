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
}

run "default_preserves_creator_admin_access" {
  command = plan

  assert {
    condition     = aws_eks_cluster.this.access_config[0].bootstrap_cluster_creator_admin_permissions
    error_message = "Existing consumers must retain the creator-admin bootstrap default."
  }
}

run "null_preserves_creator_admin_default" {
  command = plan

  variables {
    bootstrap_cluster_creator_admin_permissions = null
  }

  assert {
    condition     = aws_eks_cluster.this.access_config[0].bootstrap_cluster_creator_admin_permissions
    error_message = "An explicit null must retain the compatibility default."
  }
}

run "disable_bootstrap_preserves_explicit_admin" {
  command = plan

  variables {
    bootstrap_cluster_creator_admin_permissions = false
    access_entries = {
      tfe = {
        principal_arn     = "arn:aws:iam::123456789012:role/cross-account/tfe"
        policy_arn        = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
        access_scope_type = "cluster"
      }
    }
  }

  assert {
    condition     = !aws_eks_cluster.this.access_config[0].bootstrap_cluster_creator_admin_permissions
    error_message = "New clusters must allow disabling automatic creator access."
  }

  assert {
    condition = (
      aws_eks_access_entry.this["tfe"].principal_arn == "arn:aws:iam::123456789012:role/cross-account/tfe" &&
      aws_eks_access_policy_association.this["tfe"].policy_arn == "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy" &&
      aws_eks_access_policy_association.this["tfe"].access_scope[0].type == "cluster"
    )
    error_message = "Disabling bootstrap must preserve explicitly managed administrator access."
  }
}

run "config_map_keeps_creator_admin_bootstrap" {
  command = plan

  variables {
    authentication_mode = "CONFIG_MAP"
  }

  assert {
    condition     = aws_eks_cluster.this.access_config[0].bootstrap_cluster_creator_admin_permissions
    error_message = "CONFIG_MAP consumers must retain creator-admin bootstrap."
  }
}

run "reject_disabled_bootstrap_without_access_api" {
  command = plan

  variables {
    authentication_mode                         = "CONFIG_MAP"
    bootstrap_cluster_creator_admin_permissions = false
  }

  expect_failures = [var.bootstrap_cluster_creator_admin_permissions]
}

run "api_only_can_disable_creator_bootstrap" {
  command = plan

  variables {
    authentication_mode                         = "API"
    bootstrap_cluster_creator_admin_permissions = false
  }

  assert {
    condition     = !aws_eks_cluster.this.access_config[0].bootstrap_cluster_creator_admin_permissions
    error_message = "API-only clusters must support explicit administrator access without creator bootstrap."
  }
}
