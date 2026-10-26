mock_provider "aws" {
  source          = "./tests/mocks/aws"
  override_during = plan
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}

mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

run "default_preserves_shared_role_administrator" {
  command = plan

  assert {
    condition = length([
      for mapping in local.role_mapping : mapping
      if mapping.username == "tfh-github-deploy" && toset(mapping.groups) == toset(["tfh-cluster-admins"])
    ]) == 1
    error_message = "Existing consumers must retain exactly one default github-deploy administrator mapping."
  }
}

run "null_preserves_default" {
  command = plan

  variables {
    github_deploy_cluster_admin_enabled = null
  }

  assert {
    condition     = contains([for mapping in local.role_mapping : mapping.username], "tfh-github-deploy")
    error_message = "An explicit null must retain the compatibility default."
  }
}

run "disable_only_shared_role_mapping" {
  command = plan

  variables {
    github_deploy_cluster_admin_enabled = false
    extra_role_mapping = [{
      rolearn  = "arn:aws:iam::123456789012:role/github-deploy-platform"
      username = "tfh-github-deploy-platform"
      groups   = ["tfh-cluster-admins"]
    }]
  }

  assert {
    condition     = !contains([for mapping in local.role_mapping : mapping.username], "tfh-github-deploy")
    error_message = "The shared role's automatic administrator mapping must be absent."
  }

  assert {
    condition = (
      length(local.role_mapping) == 5 &&
      alltrue([for username in ["system:node:{{EC2PrivateDNSName}}", "tfh-admin", "tfh-tfe", "eks-cluster-eks-test", "tfh-github-deploy-platform"] :
        contains([for mapping in local.role_mapping : mapping.username], username)
      ]) &&
      alltrue([for mapping in local.role_mapping : toset(mapping.groups) == toset(["tfh-cluster-admins"]) if mapping.username != "system:node:{{EC2PrivateDNSName}}"])
    )
    error_message = "Node bootstrap, trusted administrators, Argo CD and explicit platform mappings must remain unchanged."
  }

}

run "additional_mappings_remain_explicit" {
  command = plan

  variables {
    github_deploy_cluster_admin_enabled = false
    extra_role_mapping = [{
      rolearn  = "arn:aws:iam::123456789012:role/github-deploy"
      username = "application-deploy"
      groups   = ["application-deployers"]
    }]
  }

  assert {
    condition = (
      length([for mapping in local.role_mapping : mapping if mapping.username == "application-deploy"]) == 1 &&
      !contains([for mapping in local.role_mapping : mapping.username], "tfh-github-deploy")
    )
    error_message = "Disabling the default must preserve caller-supplied application mappings."
  }
}

run "disabled_kubernetes_provider" {
  command = plan

  variables {
    github_deploy_cluster_admin_enabled = false
    kubernetes_provider_enabled         = false
  }

  assert {
    condition     = length(kubernetes_config_map_v1_data.aws_auth) == 0
    error_message = "Cluster bootstrap and removal must continue to omit Kubernetes resources."
  }
}
