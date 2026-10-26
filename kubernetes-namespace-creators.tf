resource "kubernetes_cluster_role_binding_v1" "namespace_creators" {
  count = var.kubernetes_provider_enabled && length(var.namespace_creator_groups) > 0 ? 1 : 0

  metadata {
    name = "eks-namespace-creators"
    annotations = {
      "CreatedBy" = "terraform"
    }
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "NamespaceCreator"
  }

  dynamic "subject" {
    for_each = var.namespace_creator_groups
    content {
      api_group = "rbac.authorization.k8s.io"
      kind      = "Group"
      name      = subject.value
    }
  }
}
