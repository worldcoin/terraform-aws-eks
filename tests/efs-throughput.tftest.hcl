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
  efs_csi_driver_enabled      = true
}

run "default_preserves_bursting" {
  command = plan

  assert {
    condition     = aws_efs_file_system.persistent_volume[0].throughput_mode == "bursting"
    error_message = "Existing callers must retain Bursting throughput."
  }
}

run "null_mode_uses_default" {
  command = plan

  variables {
    efs_throughput_mode = null
  }

  assert {
    condition     = aws_efs_file_system.persistent_volume[0].throughput_mode == "bursting"
    error_message = "A null mode must retain the Bursting default."
  }
}

run "provisioned_throughput_reaches_filesystem" {
  command = plan

  variables {
    efs_throughput_mode                 = "provisioned"
    efs_provisioned_throughput_in_mibps = 10
  }

  assert {
    condition = (
      aws_efs_file_system.persistent_volume[0].throughput_mode == "provisioned" &&
      aws_efs_file_system.persistent_volume[0].provisioned_throughput_in_mibps == 10
    )
    error_message = "The filesystem must receive the configured provisioned throughput."
  }
}

run "elastic_throughput_reaches_filesystem" {
  command = plan

  variables {
    efs_throughput_mode = "elastic"
  }

  assert {
    condition     = aws_efs_file_system.persistent_volume[0].throughput_mode == "elastic"
    error_message = "The filesystem must receive Elastic throughput."
  }
}

run "reject_invalid_mode" {
  command = plan

  variables {
    efs_throughput_mode = "invalid"
  }

  expect_failures = [var.efs_throughput_mode]
}

run "reject_provisioned_without_capacity" {
  command = plan

  variables {
    efs_throughput_mode = "provisioned"
  }

  expect_failures = [var.efs_provisioned_throughput_in_mibps]
}

run "reject_capacity_below_one" {
  command = plan

  variables {
    efs_throughput_mode                 = "provisioned"
    efs_provisioned_throughput_in_mibps = 0.5
  }

  expect_failures = [var.efs_provisioned_throughput_in_mibps]
}

run "reject_capacity_in_bursting_mode" {
  command = plan

  variables {
    efs_provisioned_throughput_in_mibps = 10
  }

  expect_failures = [var.efs_provisioned_throughput_in_mibps]
}
