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

run "existing_callers_keep_two_nodes" {
  command = plan

  assert {
    condition = (
      aws_eks_node_group.al2023[0].scaling_config[0].min_size == 1 &&
      aws_eks_node_group.al2023[0].scaling_config[0].desired_size == 2 &&
      aws_eks_node_group.al2023[0].scaling_config[0].max_size == 2
    )
    error_message = "Omitting scaling settings must preserve the existing 1/2/2 configuration."
  }
}

run "three_system_nodes" {
  command = plan

  variables {
    eks_node_group = {
      arch         = "amd64"
      types        = ["t3a.large"]
      min_size     = 3
      desired_size = 3
      max_size     = 3
    }
  }

  assert {
    condition = (
      aws_eks_node_group.al2023[0].scaling_config[0].min_size == 3 &&
      aws_eks_node_group.al2023[0].scaling_config[0].desired_size == 3 &&
      aws_eks_node_group.al2023[0].scaling_config[0].max_size == 3 &&
      aws_eks_node_group.al2023[0].instance_types == tolist(["t3a.large"])
    )
    error_message = "Callers must be able to request three nodes without changing instance types."
  }
}

run "null_scaling_settings_keep_defaults" {
  command = plan

  variables {
    eks_node_group = {
      arch         = "amd64"
      types        = ["t3a.large"]
      min_size     = null
      desired_size = null
      max_size     = null
    }
  }

  assert {
    condition = (
      aws_eks_node_group.al2023[0].scaling_config[0].min_size == 1 &&
      aws_eks_node_group.al2023[0].scaling_config[0].desired_size == 2 &&
      aws_eks_node_group.al2023[0].scaling_config[0].max_size == 2
    )
    error_message = "Explicit null scaling settings must use the existing defaults."
  }
}

run "null_node_group_stays_disabled" {
  command = plan

  variables {
    eks_node_group = null
  }

  assert {
    condition     = length(aws_eks_node_group.al2023) == 0
    error_message = "A null node group must remain disabled."
  }
}

run "reject_desired_above_maximum" {
  command = plan

  variables {
    eks_node_group = {
      arch         = "amd64"
      types        = ["t3a.large"]
      desired_size = 3
    }
  }

  expect_failures = [var.eks_node_group]
}

run "reject_desired_below_minimum" {
  command = plan

  variables {
    eks_node_group = {
      arch         = "amd64"
      types        = ["t3a.large"]
      min_size     = 3
      desired_size = 2
      max_size     = 3
    }
  }

  expect_failures = [var.eks_node_group]
}

run "reject_fractional_size" {
  command = plan

  variables {
    eks_node_group = {
      arch         = "amd64"
      types        = ["t3a.large"]
      desired_size = 1.5
    }
  }

  expect_failures = [var.eks_node_group]
}

run "reject_negative_size" {
  command = plan

  variables {
    eks_node_group = {
      arch     = "amd64"
      types    = ["t3a.large"]
      min_size = -1
    }
  }

  expect_failures = [var.eks_node_group]
}

run "reject_zero_maximum" {
  command = plan

  variables {
    eks_node_group = {
      arch         = "amd64"
      types        = ["t3a.large"]
      min_size     = 0
      desired_size = 0
      max_size     = 0
    }
  }

  expect_failures = [var.eks_node_group]
}
