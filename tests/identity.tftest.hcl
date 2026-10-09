mock_provider "aws" {
  mock_data "aws_caller_identity" {
    defaults = {
      account_id = "123456789012"
    }
  }
}

variables {
  application      = "di-migration-tee"
  environment      = "dev"
  cluster_name     = "tee-dev-eu-central-1"
  namespace        = "di-migration-tee"
  service_accounts = ["di-migration-tee"]
}

run "namespace_scoped_deploy_access" {
  command = plan

  module {
    source = "./modules/identity"
  }

  assert {
    condition = (
      aws_eks_access_entry.this["di-migration-tee"].cluster_name == "tee-dev-eu-central-1" &&
      aws_eks_access_entry.this["di-migration-tee"].principal_arn == "arn:aws:iam::123456789012:role/oidc/github-deploy-di-migration-tee" &&
      aws_eks_access_entry.this["di-migration-tee"].type == "STANDARD" &&
      aws_eks_access_entry.this["di-migration-tee"].kubernetes_groups == toset(["NamespaceCreator", "github-deploy-di-migration-tee"])
    )
    error_message = "The deploy access entry must retain its cluster, principal, type and deployment groups."
  }

  assert {
    condition = (
      aws_eks_access_policy_association.this["di-migration-tee"].cluster_name == "tee-dev-eu-central-1" &&
      aws_eks_access_policy_association.this["di-migration-tee"].principal_arn == "arn:aws:iam::123456789012:role/oidc/github-deploy-di-migration-tee" &&
      aws_eks_access_policy_association.this["di-migration-tee"].policy_arn == "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy" &&
      aws_eks_access_policy_association.this["di-migration-tee"].access_scope[0].type == "namespace" &&
      aws_eks_access_policy_association.this["di-migration-tee"].access_scope[0].namespaces == toset(["di-migration-tee"])
    )
    error_message = "The policy association must grant only namespace-scoped admin access to the deploy principal."
  }

  assert {
    condition = (
      aws_eks_pod_identity_association.this["di-migration-tee"].cluster_name == "tee-dev-eu-central-1" &&
      aws_eks_pod_identity_association.this["di-migration-tee"].namespace == "di-migration-tee" &&
      aws_eks_pod_identity_association.this["di-migration-tee"].service_account == "di-migration-tee" &&
      aws_eks_pod_identity_association.this["di-migration-tee"].role_arn == "arn:aws:iam::123456789012:role/di-migration-tee-dev"
    )
    error_message = "Pod Identity must retain its service account, namespace and workload role."
  }
}

run "empty_service_accounts" {
  command = plan

  module {
    source = "./modules/identity"
  }

  variables {
    service_accounts = []
  }

  assert {
    condition = (
      length(aws_eks_access_entry.this) == 0 &&
      length(aws_eks_access_policy_association.this) == 0 &&
      length(aws_eks_pod_identity_association.this) == 0
    )
    error_message = "No service accounts must produce no access entries, policies or Pod Identity associations."
  }
}
