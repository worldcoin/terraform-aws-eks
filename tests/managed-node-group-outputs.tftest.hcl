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

run "managed_node_group_asg_names" {
  command = plan

  override_resource {
    target          = aws_eks_node_group.al2023[0]
    override_during = plan
    values = {
      resources = [{
        autoscaling_groups = [{ name = "managed-asg-a" }, { name = "managed-asg-b" }]
      }]
    }
  }

  assert {
    condition = (
      length(output.managed_node_group_autoscaling_group_names) == 2 &&
      output.managed_node_group_autoscaling_group_names[0] == "managed-asg-a" &&
      output.managed_node_group_autoscaling_group_names[1] == "managed-asg-b"
    )
    error_message = "The output must expose the managed node group's ASG names."
  }
}

run "disabled_managed_node_group_has_no_asg_names" {
  command = plan

  variables {
    eks_node_group = null
  }

  assert {
    condition     = length(output.managed_node_group_autoscaling_group_names) == 0
    error_message = "A disabled managed node group must expose an empty list of ASGs."
  }
}
