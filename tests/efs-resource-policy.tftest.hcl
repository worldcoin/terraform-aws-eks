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

run "efs_disabled_has_no_file_system_policy" {
  command = plan

  assert {
    condition     = length(aws_efs_file_system_policy.persistent_volume) == 0
    error_message = "Disabled EFS must not create a file system policy."
  }
}

run "efs_policy_preserves_csi_access_and_requires_tls" {
  command = plan

  variables {
    efs_csi_driver_enabled = true
  }

  override_resource {
    target          = aws_efs_file_system.persistent_volume[0]
    override_during = plan
    values = {
      id  = "fs-0123456789abcdef0"
      arn = "arn:aws:elasticfilesystem:us-east-1:123456789012:file-system/fs-0123456789abcdef0"
    }
  }

  assert {
    condition     = aws_efs_file_system_policy.persistent_volume[0].file_system_id == "fs-0123456789abcdef0"
    error_message = "The policy must attach to the existing module-owned EFS."
  }

  assert {
    condition     = length(jsondecode(aws_efs_file_system_policy.persistent_volume[0].policy).Statement) == 2
    error_message = "The policy must contain only the mount-target allow and unencrypted-client deny."
  }

  assert {
    condition = anytrue([
      for s in jsondecode(aws_efs_file_system_policy.persistent_volume[0].policy).Statement :
      s.Effect == "Allow" && s.Principal.AWS == "*" &&
      s.Resource == aws_efs_file_system.persistent_volume[0].arn &&
      toset(s.Action) == toset(["elasticfilesystem:ClientMount", "elasticfilesystem:ClientWrite", "elasticfilesystem:ClientRootAccess"]) &&
      try(s.Condition.Bool["elasticfilesystem:AccessedViaMountTarget"], "") == "true"
    ])
    error_message = "Existing non-IAM CSI mounts must retain mount, write and POSIX root access only through mount targets."
  }

  assert {
    condition = anytrue([
      for s in jsondecode(aws_efs_file_system_policy.persistent_volume[0].policy).Statement :
      s.Effect == "Deny" && s.Principal.AWS == "*" &&
      s.Resource == aws_efs_file_system.persistent_volume[0].arn &&
      toset(s.Action) == toset(["elasticfilesystem:ClientMount", "elasticfilesystem:ClientWrite", "elasticfilesystem:ClientRootAccess"]) &&
      try(s.Condition.Bool["aws:SecureTransport"], "") == "false"
    ])
    error_message = "Unencrypted NFS access must be denied without denying file system management APIs."
  }
}
