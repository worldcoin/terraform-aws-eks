# Mock (offline) provider
mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}

mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

# =============================================================================
# Test: Kubernetes resources should NOT be created when provider is disabled
# =============================================================================
run "kubernetes_resources_disabled" {
  command = plan

  variables {
    kubernetes_provider_enabled = false
  }

  # Storage classes
  assert {
    condition     = length(kubernetes_storage_class_v1.gp3) == 0
    error_message = "gp3 storage class should not be created when kubernetes_provider_enabled is false"
  }

  # Secrets
  assert {
    condition     = length(kubernetes_secret_v1.datadog) == 0
    error_message = "Datadog secret should not be created when kubernetes_provider_enabled is false"
  }

  # Namespaces
  assert {
    condition     = length(kubernetes_namespace_v1.traefik) == 0
    error_message = "Traefik namespace should not be created when kubernetes_provider_enabled is false"
  }

  # RBAC
  assert {
    condition     = length(kubernetes_cluster_role_binding_v1.tfh_cluster_admins) == 0
    error_message = "Cluster role binding should not be created when kubernetes_provider_enabled is false"
  }

  # ConfigMaps
  assert {
    condition     = length(kubernetes_config_map_v1_data.aws_auth) == 0
    error_message = "aws-auth ConfigMap should not be created when kubernetes_provider_enabled is false"
  }
}

# =============================================================================
# Test: Storage class gp3 configuration
# =============================================================================
run "storage_class_gp3" {
  command = plan

  variables {
    kubernetes_provider_enabled = true
  }

  # Verify storage class is created
  assert {
    condition     = length(kubernetes_storage_class_v1.gp3) == 1
    error_message = "gp3 storage class should be created"
  }

  # Verify EBS CSI driver provisioner
  assert {
    condition     = kubernetes_storage_class_v1.gp3[0].storage_provisioner == "ebs.csi.aws.com"
    error_message = "Storage class should use EBS CSI driver"
  }

  # Verify default storage class annotation
  assert {
    condition     = kubernetes_storage_class_v1.gp3[0].metadata[0].annotations["storageclass.kubernetes.io/is-default-class"] == "true"
    error_message = "gp3 should be the default storage class"
  }

  # Verify encryption is enabled
  assert {
    condition     = kubernetes_storage_class_v1.gp3[0].parameters["encrypted"] == "true"
    error_message = "Storage class should have encryption enabled"
  }

  # Verify volume type
  assert {
    condition     = kubernetes_storage_class_v1.gp3[0].parameters["type"] == "gp3"
    error_message = "Storage class should use gp3 volume type"
  }
}

# =============================================================================
# Test: Datadog secret configuration
# =============================================================================
run "datadog_secret" {
  command = plan

  variables {
    kubernetes_provider_enabled = true
  }

  # Verify secret is created
  assert {
    condition     = length(kubernetes_secret_v1.datadog) == 1
    error_message = "Datadog secret should be created"
  }

  # Verify namespace
  assert {
    condition     = kubernetes_secret_v1.datadog[0].metadata[0].namespace == "kube-system"
    error_message = "Datadog secret should be in kube-system namespace"
  }

  # Verify name
  assert {
    condition     = kubernetes_secret_v1.datadog[0].metadata[0].name == "datadog"
    error_message = "Datadog secret should be named 'datadog'"
  }

  # Verify terraform annotation
  assert {
    condition     = kubernetes_secret_v1.datadog[0].metadata[0].annotations["CreatedBy"] == "terraform"
    error_message = "Datadog secret should have CreatedBy annotation"
  }
}

# =============================================================================
# Test: aws-auth ConfigMap configuration
# =============================================================================
run "aws_auth_configmap" {
  command = plan

  variables {
    kubernetes_provider_enabled = true
  }

  # Verify ConfigMap is created
  assert {
    condition     = length(kubernetes_config_map_v1_data.aws_auth) == 1
    error_message = "aws-auth ConfigMap should be created"
  }

  # Verify namespace
  assert {
    condition     = kubernetes_config_map_v1_data.aws_auth[0].metadata[0].namespace == "kube-system"
    error_message = "aws-auth ConfigMap should be in kube-system namespace"
  }

  # Verify name
  assert {
    condition     = kubernetes_config_map_v1_data.aws_auth[0].metadata[0].name == "aws-auth"
    error_message = "ConfigMap should be named 'aws-auth'"
  }

  # Verify force update is enabled
  assert {
    condition     = kubernetes_config_map_v1_data.aws_auth[0].force == true
    error_message = "aws-auth ConfigMap should have force=true"
  }
}

# =============================================================================
# Test: RBAC cluster role binding
# =============================================================================
run "cluster_role_binding" {
  command = plan

  variables {
    kubernetes_provider_enabled = true
  }

  # Verify cluster role binding is created
  assert {
    condition     = length(kubernetes_cluster_role_binding_v1.tfh_cluster_admins) == 1
    error_message = "Cluster role binding should be created"
  }

  # Verify role reference
  assert {
    condition     = kubernetes_cluster_role_binding_v1.tfh_cluster_admins[0].role_ref[0].name == "cluster-admin"
    error_message = "Role binding should reference cluster-admin role"
  }

  # Verify role ref kind
  assert {
    condition     = kubernetes_cluster_role_binding_v1.tfh_cluster_admins[0].role_ref[0].kind == "ClusterRole"
    error_message = "Role ref should be a ClusterRole"
  }

  # Verify API group
  assert {
    condition     = kubernetes_cluster_role_binding_v1.tfh_cluster_admins[0].role_ref[0].api_group == "rbac.authorization.k8s.io"
    error_message = "Role ref should use rbac.authorization.k8s.io API group"
  }

  # Verify terraform annotation
  assert {
    condition     = kubernetes_cluster_role_binding_v1.tfh_cluster_admins[0].metadata[0].annotations["CreatedBy"] == "terraform"
    error_message = "Cluster role binding should have CreatedBy annotation"
  }
}

# =============================================================================
# Test: Traefik namespaces with both ALB and NLB enabled
# =============================================================================
run "traefik_namespaces_both_enabled" {
  command = plan

  variables {
    kubernetes_provider_enabled = true
    external_alb_enabled        = true
    internal_nlb_enabled        = true
  }

  # Verify both namespaces are created
  assert {
    condition     = length(kubernetes_namespace_v1.traefik) == 2
    error_message = "Two traefik namespaces should be created when both ALB and NLB are enabled"
  }

  # Verify external namespace exists
  assert {
    condition     = contains(keys(kubernetes_namespace_v1.traefik), "traefik")
    error_message = "Traefik namespace should exist for external ALB"
  }

  # Verify internal namespace exists
  assert {
    condition     = contains(keys(kubernetes_namespace_v1.traefik), "traefik-internal")
    error_message = "Traefik-internal namespace should exist for internal NLB"
  }

  # Verify pod readiness gate label
  assert {
    condition     = kubernetes_namespace_v1.traefik["traefik"].metadata[0].labels["elbv2.k8s.aws/pod-readiness-gate-inject"] == "enabled"
    error_message = "Traefik namespace should have pod readiness gate inject label"
  }
}

# =============================================================================
# Test: Traefik namespace with only external ALB
# =============================================================================
run "traefik_namespace_alb_only" {
  command = plan

  variables {
    kubernetes_provider_enabled = true
    external_alb_enabled        = true
    internal_nlb_enabled        = false
  }

  assert {
    condition     = length(kubernetes_namespace_v1.traefik) == 1
    error_message = "Only one traefik namespace should be created when only ALB is enabled"
  }

  assert {
    condition     = contains(keys(kubernetes_namespace_v1.traefik), "traefik")
    error_message = "Traefik namespace should exist for external ALB"
  }
}

# =============================================================================
# Test: Traefik namespace with only internal NLB
# =============================================================================
run "traefik_namespace_nlb_only" {
  command = plan

  variables {
    kubernetes_provider_enabled = true
    external_alb_enabled        = false
    internal_nlb_enabled        = true
  }

  assert {
    condition     = length(kubernetes_namespace_v1.traefik) == 1
    error_message = "Only one traefik namespace should be created when only NLB is enabled"
  }

  assert {
    condition     = contains(keys(kubernetes_namespace_v1.traefik), "traefik-internal")
    error_message = "Traefik-internal namespace should exist for internal NLB"
  }
}

# =============================================================================
# Test: EFS storage class when enabled
# =============================================================================
run "efs_storage_class_enabled" {
  command = plan

  variables {
    kubernetes_provider_enabled = true
    efs_csi_driver_enabled      = true
  }

  # Verify EFS storage class is created
  assert {
    condition     = length(kubernetes_storage_class_v1.efs) == 1
    error_message = "EFS storage class should be created when efs_csi_driver_enabled is true"
  }

  # Verify EFS CSI driver provisioner
  assert {
    condition     = kubernetes_storage_class_v1.efs[0].storage_provisioner == "efs.csi.aws.com"
    error_message = "EFS storage class should use EFS CSI driver"
  }

  # Verify storage class name
  assert {
    condition     = kubernetes_storage_class_v1.efs[0].metadata[0].name == "efs"
    error_message = "EFS storage class should be named 'efs'"
  }

  # Verify terraform annotation
  assert {
    condition     = kubernetes_storage_class_v1.efs[0].metadata[0].annotations["CreatedBy"] == "terraform"
    error_message = "EFS storage class should have CreatedBy annotation"
  }

  # Verify provisioning mode
  assert {
    condition     = kubernetes_storage_class_v1.efs[0].parameters["provisioningMode"] == "efs-ap"
    error_message = "EFS storage class should use efs-ap provisioning mode"
  }
}

# =============================================================================
# Test: EFS storage class when disabled
# =============================================================================
run "efs_storage_class_disabled" {
  command = plan

  variables {
    kubernetes_provider_enabled = true
    efs_csi_driver_enabled      = false
  }

  assert {
    condition     = length(kubernetes_storage_class_v1.efs) == 0
    error_message = "EFS storage class should not be created when efs_csi_driver_enabled is false"
  }
}
