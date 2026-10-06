mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}
mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

run "default_keeps_existing_scope" {
  command = plan

  assert {
    condition     = local.user_workload_filter_str == local.all_filter_str
    error_message = "Without exclusions the existing workload monitor scope must remain unchanged."
  }
}

run "null_keeps_existing_scope" {
  command = plan

  variables {
    monitoring_user_workload_excluded_namespaces = null
  }

  assert {
    condition     = local.user_workload_filter_str == local.all_filter_str
    error_message = "Null must use the empty default without changing existing monitoring."
  }
}

run "explicit_namespaces_are_sorted_and_excluded" {
  command = plan

  variables {
    monitoring_user_workload_notification_channel = "@slack-TFH-crypto-infra"
    monitoring_user_workload_team                 = "crypto"
    monitoring_user_workload_excluded_namespaces  = ["rehearsal-b", "rehearsal-a"]
  }

  assert {
    condition     = local.user_workload_filter_str == "kube_cluster_name:eks-test AND NOT kube_namespace IN (rehearsal-a,rehearsal-b)"
    error_message = "Exclude only the named namespaces, with stable query ordering."
  }

  assert {
    condition     = local.all_filter_str == "kube_cluster_name:eks-test" && strcontains(local.system_filter_str, "kube_namespace IN (kube-system,")
    error_message = "Workload exclusions must not change cluster-wide or system monitoring."
  }
}

run "reject_query_syntax_in_namespace" {
  command = plan

  variables {
    monitoring_user_workload_excluded_namespaces = ["rehearsal-a) OR kube_namespace:*"]
  }

  expect_failures = [var.monitoring_user_workload_excluded_namespaces]
}
