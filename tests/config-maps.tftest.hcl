mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

run "default_creates_no_config_maps" {
  command = plan

  assert {
    condition     = length(kubernetes_config_map_v1.this) == 0
    error_message = "Existing consumers must not create ConfigMaps by default."
  }
}

run "null_uses_default" {
  command = plan
  variables {
    config_maps = null
  }
  assert {
    condition     = length(kubernetes_config_map_v1.this) == 0
    error_message = "A null input must use the empty default."
  }
}

run "config_maps_in_separate_namespaces" {
  command = plan
  variables {
    config_maps = {
      signup = { name = "application-config", namespace = "signup-service-app", data = { FOO = "bar" } }
      other  = { name = "application-config", namespace = "other", data = { VALUE = "two" } }
    }
  }
  assert {
    condition = (
      length(kubernetes_config_map_v1.this) == 2 &&
      kubernetes_config_map_v1.this["signup"].metadata[0].name == "application-config" &&
      kubernetes_config_map_v1.this["signup"].metadata[0].namespace == "signup-service-app" &&
      kubernetes_config_map_v1.this["signup"].data["FOO"] == "bar" &&
      kubernetes_config_map_v1.this["other"].metadata[0].namespace == "other" &&
      kubernetes_config_map_v1.this["other"].data["VALUE"] == "two"
    )
    error_message = "ConfigMaps must use their configured namespace, name, and data."
  }
}

run "disabled_provider_creates_no_config_maps" {
  command = plan
  variables {
    kubernetes_provider_enabled = false
    config_maps = {
      signup = { name = "application-config", namespace = "signup-service-app", data = {} }
    }
  }
  assert {
    condition     = length(kubernetes_config_map_v1.this) == 0
    error_message = "Disabling the Kubernetes provider must disable ConfigMaps."
  }
}

run "reject_duplicate_config_maps" {
  command = plan
  variables {
    config_maps = {
      first  = { name = "application-config", namespace = "signup-service-app", data = {} }
      second = { name = "application-config", namespace = "signup-service-app", data = {} }
    }
  }
  expect_failures = [var.config_maps]
}
