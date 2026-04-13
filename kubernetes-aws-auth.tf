locals {
  role_mapping = concat([
    {
      rolearn  = aws_iam_role.node.arn
      username = "system:node:{{EC2PrivateDNSName}}"
      groups   = ["system:bootstrappers", "system:nodes"]
    },
    {
      rolearn  = "arn:aws:iam::${data.aws_caller_identity.account.id}:role/admin"
      username = "tfh-admin"
      groups   = ["tfh-cluster-admins"]
    },
    {
      rolearn  = "arn:aws:iam::${data.aws_caller_identity.account.id}:role/tfe"
      username = "tfh-tfe"
      groups   = ["tfh-cluster-admins"]
    },
    {
      rolearn  = "arn:aws:iam::${data.aws_caller_identity.account.id}:role/github-deploy"
      username = "tfh-github-deploy"
      groups   = ["tfh-cluster-admins"]
    },
    { # This role is used by remote ArgoCD to deploy applications
      rolearn  = "arn:aws:iam::${data.aws_caller_identity.account.id}:role/eks-cluster-${var.cluster_name}"
      username = "eks-cluster-${var.cluster_name}"
      groups   = ["tfh-cluster-admins"]
    },
    ],
    var.extra_role_mapping,
  )
}

resource "kubernetes_cluster_role_binding_v1" "tfh_cluster_admins" {
  count = var.kubernetes_provider_enabled ? 1 : 0

  metadata {
    name = "tfh-cluster-admins-binding"
    annotations = {
      "CreatedBy" = "terraform"
    }
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "cluster-admin"
  }

  subject {
    kind = "Group"
    name = "tfh-cluster-admins"
  }
}

resource "kubernetes_config_map_v1_data" "aws_auth" {
  count = var.kubernetes_provider_enabled ? 1 : 0

  metadata {
    name      = "aws-auth"
    namespace = "kube-system"
  }

  force = true

  data = {
    mapRoles = yamlencode(local.role_mapping)
  }
}
