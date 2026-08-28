# Mock (offline) provider
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

# Every cluster runs at IMDS hop limit 1, where the imds attempt can never succeed
# and the driver falls through to the Kubernetes API anyway. Defaulting to
# kubernetes removes the 5s timeout and the error log without changing the metadata
# the driver ends up using, so no caller should have to opt in.
run "ebs_csi_metadata_sources_defaults_to_kubernetes" {
  command = plan

  assert {
    condition     = jsondecode(aws_eks_addon.ebs_csi.configuration_values)["node"]["metadataSources"] == "kubernetes"
    error_message = "The ebs-csi addon must default to the kubernetes metadata source"
  }
}

# The escape hatch for a cluster at hop limit 2 or higher, where the imds source
# does carry real ENI and block-device counts. Sending null must leave the
# attribute unset rather than an empty object, which would be a real value and
# would surface as an addon update. Asserted on the local rather than the resource
# attribute: configuration_values is Optional+Computed, so a null there reads as
# unknown at plan time and no condition can be evaluated against it.
run "ebs_csi_explicit_null_sends_no_configuration" {
  command = plan

  variables {
    ebs_csi_metadata_sources = null
  }

  assert {
    condition     = local.ebs_csi_configuration_values == null
    error_message = "An explicit null must leave the addon carrying no configuration_values at all"
  }
}

# Setting the input is what lets a single cluster move first. The driver reads the
# Node object instead of IMDS, which is the only source that works at hop limit 1.
run "ebs_csi_metadata_sources_is_rendered_when_set" {
  command = plan

  variables {
    ebs_csi_metadata_sources = "kubernetes"
  }

  assert {
    condition     = jsondecode(aws_eks_addon.ebs_csi.configuration_values)["node"]["metadataSources"] == "kubernetes"
    error_message = "node.metadataSources must carry the requested source list"
  }

  assert {
    condition     = keys(jsondecode(aws_eks_addon.ebs_csi.configuration_values)) == ["node"]
    error_message = "The addon config schema is additionalProperties: false, so only the node key may be sent"
  }
}

# The driver takes a comma-separated fallback order, not a single source. A
# validation that only accepted one token would block the documented default and
# the metadata-labeler escape hatch.
run "ebs_csi_metadata_sources_accepts_a_fallback_order" {
  command = plan

  variables {
    ebs_csi_metadata_sources = "imds,kubernetes"
  }

  assert {
    condition     = jsondecode(aws_eks_addon.ebs_csi.configuration_values)["node"]["metadataSources"] == "imds,kubernetes"
    error_message = "A comma-separated fallback order must pass validation and reach the addon unchanged"
  }
}

# The addon config schema is additionalProperties: false and the driver rejects
# unknown source tokens at startup, which would leave ebs-csi-node crash-looping.
# Catching a typo at plan time is cheaper than catching it on a node.
run "ebs_csi_metadata_sources_rejects_an_unknown_source" {
  command = plan

  variables {
    ebs_csi_metadata_sources = "ec2-api"
  }

  expect_failures = [var.ebs_csi_metadata_sources]
}

# The driver reads the value as CSV without trimming, so a space after the comma
# becomes part of the token and the node plugin refuses to start. This is the
# typo a human is most likely to write, so it has to fail at plan time.
run "ebs_csi_metadata_sources_rejects_a_space_after_the_comma" {
  command = plan

  variables {
    ebs_csi_metadata_sources = "imds, kubernetes"
  }

  expect_failures = [var.ebs_csi_metadata_sources]
}

# An empty string is not null: it would render "metadataSources": "" and leave the
# driver with no usable source at all.
run "ebs_csi_metadata_sources_rejects_an_empty_string" {
  command = plan

  variables {
    ebs_csi_metadata_sources = ""
  }

  expect_failures = [var.ebs_csi_metadata_sources]
}

# node.metadataSources exists in both driver versions this module pins, v1.58.0
# for cluster 1.32/1.33 and v1.59.0 for 1.34/1.35, so the input needs no version
# gating. This asserts the older pin still resolves with the input set.
run "ebs_csi_metadata_sources_works_on_the_older_driver_pin" {
  command = plan

  variables {
    cluster_version          = "1.32"
    ebs_csi_metadata_sources = "kubernetes"
  }

  assert {
    condition     = aws_eks_addon.ebs_csi.addon_version == "v1.58.0-eksbuild.1"
    error_message = "The 1.32 cluster version must still resolve to the v1.58.0 driver pin"
  }

  assert {
    condition     = jsondecode(aws_eks_addon.ebs_csi.configuration_values)["node"]["metadataSources"] == "kubernetes"
    error_message = "The input must apply on the older driver pin too"
  }
}
