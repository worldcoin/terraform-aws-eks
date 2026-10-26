mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}

mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

run "default_creates_no_binding" {
  command = plan

  assert {
    condition     = length(kubernetes_cluster_role_binding_v1.namespace_creators) == 0
    error_message = "Existing consumers must receive no additional RBAC binding."
  }
}

run "null_creates_no_binding" {
  command = plan

  variables {
    namespace_creator_groups = null
  }

  assert {
    condition     = length(kubernetes_cluster_role_binding_v1.namespace_creators) == 0
    error_message = "An explicit null must retain the empty default."
  }
}

run "binds_only_configured_groups" {
  command = plan

  variables {
    namespace_creator_groups = ["otto-namespace-creators", "other-namespace-creators", "otto-namespace-creators"]
  }

  assert {
    condition = (
      length(kubernetes_cluster_role_binding_v1.namespace_creators) == 1 &&
      kubernetes_cluster_role_binding_v1.namespace_creators[0].metadata[0].name == "eks-namespace-creators" &&
      kubernetes_cluster_role_binding_v1.namespace_creators[0].role_ref[0].name == "NamespaceCreator" &&
      kubernetes_cluster_role_binding_v1.namespace_creators[0].role_ref[0].kind == "ClusterRole" &&
      kubernetes_cluster_role_binding_v1.namespace_creators[0].role_ref[0].api_group == "rbac.authorization.k8s.io" &&
      length(kubernetes_cluster_role_binding_v1.namespace_creators[0].subject) == 2 &&
      toset([for s in kubernetes_cluster_role_binding_v1.namespace_creators[0].subject : s.name]) == toset(["otto-namespace-creators", "other-namespace-creators"]) &&
      alltrue([for s in kubernetes_cluster_role_binding_v1.namespace_creators[0].subject : s.kind == "Group" && s.api_group == "rbac.authorization.k8s.io"])
    )
    error_message = "Only the configured groups may be bound, and only to the existing NamespaceCreator role."
  }
}

run "disabled_provider_creates_no_binding" {
  command = plan

  variables {
    kubernetes_provider_enabled = false
    namespace_creator_groups    = ["otto-namespace-creators"]
  }

  assert {
    condition     = length(kubernetes_cluster_role_binding_v1.namespace_creators) == 0
    error_message = "Cluster bootstrap/removal must disable the binding with all other Kubernetes resources."
  }
}

run "reject_empty_group" {
  command = plan

  variables {
    namespace_creator_groups = [""]
  }

  expect_failures = [var.namespace_creator_groups]
}

run "reject_null_group" {
  command = plan

  variables {
    namespace_creator_groups = [null]
  }

  expect_failures = [var.namespace_creator_groups]
}
