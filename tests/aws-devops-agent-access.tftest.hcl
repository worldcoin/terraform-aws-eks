mock_provider "aws" {
  source          = "./tests/mocks/aws"
  override_during = plan
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

override_data {
  target = data.aws_caller_identity.account
  values = {
    account_id = "123456789012"
  }
}

variables {
  kubernetes_provider_enabled = false
}

run "default_account_local_agent_access" {
  command = plan

  assert {
    condition = (
      length(aws_eks_access_entry.this) == 0 &&
      length(aws_eks_access_entry.aws_devops_agent) == 1 &&
      aws_eks_access_entry.aws_devops_agent[0].principal_arn == "arn:aws:iam::123456789012:role/DevOpsAgentCrossAccountRole-internal-tools-prod" &&
      aws_eks_access_entry.aws_devops_agent[0].type == "STANDARD" &&
      aws_eks_access_entry.aws_devops_agent[0].kubernetes_groups == toset(["devops-agent-extra-read"])
    )
    error_message = "The default must create only the account-local agent's STANDARD entry with the supplemental read group."
  }

  assert {
    condition = (
      length(aws_eks_access_policy_association.this) == 0 &&
      length(aws_eks_access_policy_association.aws_devops_agent) == 1 &&
      aws_eks_access_policy_association.aws_devops_agent[0].principal_arn == aws_eks_access_entry.aws_devops_agent[0].principal_arn &&
      aws_eks_access_policy_association.aws_devops_agent[0].policy_arn == "arn:aws:eks::aws:cluster-access-policy/AmazonAIOpsAssistantPolicy" &&
      aws_eks_access_policy_association.aws_devops_agent[0].access_scope[0].type == "cluster"
    )
    error_message = "The agent must receive only the cluster-scoped AmazonAIOpsAssistantPolicy through its dedicated association."
  }
}

run "api_authentication_includes_agent" {
  command = plan

  variables {
    authentication_mode = "API"
  }

  assert {
    condition = (
      length(aws_eks_access_entry.aws_devops_agent) == 1 &&
      length(aws_eks_access_policy_association.aws_devops_agent) == 1
    )
    error_message = "API-only authentication must also receive automatic agent access."
  }
}

run "unrelated_explicit_entry_retains_optional_defaults" {
  command = plan

  variables {
    access_entries = {
      application = {
        principal_arn = "arn:aws:iam::123456789012:role/application"
      }
    }
  }

  assert {
    condition = (
      toset(keys(aws_eks_access_entry.this)) == toset(["application"]) &&
      toset(keys(aws_eks_access_policy_association.this)) == toset(["application"]) &&
      length(aws_eks_access_entry.aws_devops_agent) == 1 &&
      length(aws_eks_access_policy_association.aws_devops_agent) == 1 &&
      aws_eks_access_entry.this["application"].principal_arn == "arn:aws:iam::123456789012:role/application" &&
      aws_eks_access_entry.this["application"].type == "STANDARD" &&
      length(aws_eks_access_entry.this["application"].tags) == 0 &&
      aws_eks_access_policy_association.this["application"].policy_arn == "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy" &&
      aws_eks_access_policy_association.this["application"].access_scope[0].type == "namespace"
    )
    error_message = "Adding the default must preserve every optional input default on unrelated explicit entries."
  }
}

run "same_key_with_distinct_principal_preserves_both_entries" {
  command = plan

  variables {
    access_entries = {
      aws-devops-agent = {
        principal_arn           = "arn:aws:iam::123456789012:role/custom-agent"
        kubernetes_groups       = ["custom-agent-readers"]
        type                    = "STANDARD"
        tags                    = { owner = "finance" }
        access_scope_type       = "namespace"
        access_scope_namespaces = ["finance"]
        policy_arn              = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy"
      }
    }
  }

  assert {
    condition = (
      length(aws_eks_access_entry.aws_devops_agent) == 1 &&
      length(aws_eks_access_policy_association.aws_devops_agent) == 1 &&
      aws_eks_access_entry.aws_devops_agent[0].principal_arn == "arn:aws:iam::123456789012:role/DevOpsAgentCrossAccountRole-internal-tools-prod" &&
      toset(keys(aws_eks_access_entry.this)) == toset(["aws-devops-agent"]) &&
      toset(keys(aws_eks_access_policy_association.this)) == toset(["aws-devops-agent"]) &&
      aws_eks_access_entry.this["aws-devops-agent"].principal_arn == "arn:aws:iam::123456789012:role/custom-agent" &&
      aws_eks_access_entry.this["aws-devops-agent"].type == "STANDARD" &&
      aws_eks_access_entry.this["aws-devops-agent"].kubernetes_groups == toset(["custom-agent-readers"]) &&
      aws_eks_access_entry.this["aws-devops-agent"].tags == tomap({ owner = "finance" }) &&
      aws_eks_access_policy_association.this["aws-devops-agent"].principal_arn == "arn:aws:iam::123456789012:role/custom-agent" &&
      aws_eks_access_policy_association.this["aws-devops-agent"].policy_arn == "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy" &&
      aws_eks_access_policy_association.this["aws-devops-agent"].access_scope[0].type == "namespace" &&
      aws_eks_access_policy_association.this["aws-devops-agent"].access_scope[0].namespaces == toset(["finance"])
    )
    error_message = "A caller key matching the agent name must not suppress automatic access for a distinct principal or change the caller entry."
  }
}

run "disabled_default_omits_automatic_access" {
  command = plan

  variables {
    aws_devops_agent_access_enabled = false
  }

  assert {
    condition = (
      length(aws_eks_access_entry.aws_devops_agent) == 0 &&
      length(aws_eks_access_policy_association.aws_devops_agent) == 0
    )
    error_message = "Accounts without the agent role must be able to opt out of all automatic agent access."
  }
}

run "disabled_default_preserves_all_explicit_entries" {
  command = plan

  variables {
    aws_devops_agent_access_enabled = false
    access_entries = {
      aws-devops-agent = {
        principal_arn = "arn:aws:iam::123456789012:role/DevOpsAgentCrossAccountRole-internal-tools-prod"
      }
      application = {
        principal_arn = "arn:aws:iam::123456789012:role/application"
      }
    }
  }

  assert {
    condition = (
      length(aws_eks_access_entry.aws_devops_agent) == 0 &&
      length(aws_eks_access_policy_association.aws_devops_agent) == 0 &&
      toset(keys(aws_eks_access_entry.this)) == toset(["aws-devops-agent", "application"]) &&
      toset(keys(aws_eks_access_policy_association.this)) == toset(["aws-devops-agent", "application"]) &&
      aws_eks_access_entry.this["aws-devops-agent"].principal_arn == "arn:aws:iam::123456789012:role/DevOpsAgentCrossAccountRole-internal-tools-prod"
    )
    error_message = "Opting out must preserve caller-managed access for the agent principal and all unrelated caller entries."
  }
}

run "config_map_authentication_omits_automatic_access" {
  command = plan

  variables {
    authentication_mode = "CONFIG_MAP"
  }

  assert {
    condition = (
      length(aws_eks_access_entry.aws_devops_agent) == 0 &&
      length(aws_eks_access_policy_association.aws_devops_agent) == 0
    )
    error_message = "CONFIG_MAP-only clusters must not receive an automatic EKS API access entry or association."
  }
}

run "config_map_authentication_preserves_explicit_entries" {
  command = plan

  variables {
    authentication_mode = "CONFIG_MAP"
    access_entries = {
      aws-devops-agent = {
        principal_arn = "arn:aws:iam::123456789012:role/custom-agent"
      }
    }
  }

  assert {
    condition = (
      length(aws_eks_access_entry.aws_devops_agent) == 0 &&
      length(aws_eks_access_policy_association.aws_devops_agent) == 0 &&
      toset(keys(aws_eks_access_entry.this)) == toset(["aws-devops-agent"]) &&
      toset(keys(aws_eks_access_policy_association.this)) == toset(["aws-devops-agent"]) &&
      aws_eks_access_entry.this["aws-devops-agent"].principal_arn == "arn:aws:iam::123456789012:role/custom-agent"
    )
    error_message = "Authentication-mode gating must suppress only the automatic entry, never caller-supplied access entries."
  }
}
