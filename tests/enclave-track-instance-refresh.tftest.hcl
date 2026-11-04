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

run "keeps_existing_latest_alias_by_default" {
  command = plan

  variables {
    enclave_tracks = {
      stable = {}
    }
  }

  assert {
    condition = alltrue([
      for _, asg in aws_autoscaling_group.enclave_track :
      asg.mixed_instances_policy[0].launch_template[0].launch_template_specification[0].version == "$Latest" &&
      asg.instance_refresh[0].preferences[0].auto_rollback == true &&
      asg.instance_refresh[0].preferences[0].min_healthy_percentage == 50
    ])
    error_message = "Enclave tracks must retain the existing ASG version and rollback settings by default."
  }
}

run "pins_current_version_for_one_selected_subnet" {
  command = plan

  override_resource {
    target          = aws_launch_template.enclave_track["next"]
    override_during = plan
    values = {
      latest_version = 9
    }
  }

  variables {
    enclave_tracks = {
      stable = {}
      next = {
        autoscaling_group = {
          refresh_subnet_ids = ["subnet-1234567890abcdef0"]
        }
      }
    }
  }

  assert {
    condition = alltrue([
      for _, asg in aws_autoscaling_group.enclave_track :
      asg.mixed_instances_policy[0].launch_template[0].launch_template_specification[0].version == (
        startswith(asg.name, "eks-enclave-next-subnet-1234567890abcdef0-") ? "9" : "$Latest"
      )
    ])
    error_message = "Only the selected track subnet must use its launch template's numeric latest version."
  }

  assert {
    condition = alltrue([
      for _, asg in aws_autoscaling_group.enclave_track :
      asg.instance_refresh[0].preferences[0].auto_rollback == !startswith(asg.name, "eks-enclave-next-subnet-1234567890abcdef0-")
    ])
    error_message = "The first numeric-version refresh must disable automatic rollback from $Latest."
  }

  assert {
    condition = alltrue([
      for _, asg in aws_autoscaling_group.enclave_track :
      startswith(asg.name, "eks-enclave-next-subnet-1234567890abcdef0-") ? (
        asg.instance_refresh[0].preferences[0].min_healthy_percentage == 100 &&
        asg.instance_refresh[0].preferences[0].max_healthy_percentage == 200
      ) : asg.instance_refresh[0].preferences[0].min_healthy_percentage == 50
    ])
    error_message = "The selected ASG must launch a replacement before terminating its node."
  }
}

run "can_enable_rollback_after_the_first_refresh" {
  command = plan

  variables {
    enclave_tracks = {
      next = {
        autoscaling_group = {
          refresh_subnet_ids             = ["subnet-1234567890abcdef0"]
          instance_refresh_auto_rollback = true
        }
      }
    }
  }

  assert {
    condition = alltrue([
      for _, asg in aws_autoscaling_group.enclave_track :
      asg.instance_refresh[0].preferences[0].auto_rollback == true
    ])
    error_message = "Automatic rollback must be configurable after a numeric ASG version is established."
  }
}

run "rejects_a_subnet_outside_the_cluster_vpc" {
  command = plan

  variables {
    enclave_tracks = {
      next = {
        autoscaling_group = {
          refresh_subnet_ids = ["subnet-not-in-vpc"]
        }
      }
    }
  }

  expect_failures = [var.enclave_tracks]
}
