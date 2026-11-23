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

run "omitted_prefix_preserves_existing_name" {
  command = plan

  assert {
    condition     = aws_eks_node_group.al2023[0].node_group_name == "eks-node-al2023-eks-test"
    error_message = "Existing callers must retain the fixed node group name."
  }
}

run "null_prefix_preserves_existing_name" {
  command = plan

  variables {
    eks_node_group = {
      arch        = "amd64"
      types       = ["t3a.large"]
      name_prefix = null
    }
  }

  assert {
    condition     = aws_eks_node_group.al2023[0].node_group_name == "eks-node-al2023-eks-test"
    error_message = "An explicit null prefix must preserve fixed naming."
  }
}

run "mixed_instances_use_unique_names" {
  command = plan

  variables {
    eks_node_group = {
      arch         = "amd64"
      name_prefix  = "eks-system-"
      types        = ["m6a.large", "m6i.large", "m7a.large", "m7i.large"]
      min_size     = 3
      desired_size = 3
      max_size     = 3
    }
  }

  assert {
    condition = (
      aws_eks_node_group.al2023[0].node_group_name_prefix == "eks-system-" &&
      aws_eks_node_group.al2023[0].instance_types == tolist(["m6a.large", "m6i.large", "m7a.large", "m7i.large"]) &&
      aws_eks_node_group.al2023[0].scaling_config[0].desired_size == 3 &&
      aws_eks_node_group.al2023[0].capacity_type == "ON_DEMAND"
    )
    error_message = "Mixed On-Demand instances must use the requested prefix, instance types and capacity."
  }
}

run "reject_empty_prefix" {
  command = plan

  variables {
    eks_node_group = {
      arch        = "amd64"
      types       = ["m6a.large"]
      name_prefix = ""
    }
  }

  expect_failures = [var.eks_node_group]
}

run "reject_too_long_prefix" {
  command = plan

  variables {
    eks_node_group = {
      arch        = "amd64"
      types       = ["m6a.large"]
      name_prefix = "abcdefghijklmnopqrstuvwxyz012345678901"
    }
  }

  expect_failures = [var.eks_node_group]
}

run "reject_invalid_prefix" {
  command = plan

  variables {
    eks_node_group = {
      arch        = "amd64"
      types       = ["m6a.large"]
      name_prefix = "-invalid/prefix"
    }
  }

  expect_failures = [var.eks_node_group]
}
