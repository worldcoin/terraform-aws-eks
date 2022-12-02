locals {
  role_mapping = concat([
    {
      rolearn  = aws_iam_role.node.arn
      username = "system:node:{{EC2PrivateDNSName}}"
      groups   = ["system:bootstrappers", "system:nodes"]
    },
    {
      rolearn  = "arn:aws:iam::${data.aws_caller_identity.account.id}:role/admin"
      username = "admin"
      groups   = ["system:masters"]
    },
    {
      rolearn  = "arn:aws:iam::${data.aws_caller_identity.account.id}:role/github-deploy"
      username = "github-deploy"
      groups   = ["system:masters"]
    }
    ],
    var.extra_role_mapping,
  )
}

resource "kubernetes_config_map" "aws_auth" {
  count = var.kubernetes_provider_enabled ? 1 : 0

  metadata {
    name      = "aws-auth"
    namespace = "kube-system"

    annotations = {
      "CreatedBy" = "terraform"
    }
  }

  data = {
    mapRoles = yamlencode(local.role_mapping)
  }
}
