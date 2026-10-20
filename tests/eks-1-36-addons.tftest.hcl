mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}
mock_provider "cloudflare" {}

mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

variables {
  kubernetes_provider_enabled      = false
  cluster_version                  = "1.36"
  node_monitoring_agent_enabled    = true
  s3_mountpoint_csi_driver_enabled = true
}

run "eks_1_36_addon_versions" {
  command = plan

  assert {
    condition     = aws_eks_cluster.this.version == "1.36"
    error_message = "The EKS cluster must plan at Kubernetes 1.36"
  }

  assert {
    condition     = aws_eks_addon.vpc_cni.addon_version == "v1.22.4-eksbuild.3"
    error_message = "Incorrect VPC CNI version for Kubernetes 1.36"
  }

  assert {
    condition     = aws_eks_addon.coredns.addon_version == "v1.14.7-eksbuild.11"
    error_message = "Incorrect CoreDNS version for Kubernetes 1.36"
  }

  assert {
    condition     = aws_eks_addon.kube_proxy.addon_version == "v1.36.0-eksbuild.45"
    error_message = "Incorrect kube-proxy version for Kubernetes 1.36"
  }

  assert {
    condition     = aws_eks_addon.ebs_csi.addon_version == "v1.67.0-eksbuild.1"
    error_message = "Incorrect EBS CSI driver version for Kubernetes 1.36"
  }

  assert {
    condition     = aws_eks_addon.snapshot_controller.addon_version == "v8.6.0-eksbuild.10"
    error_message = "Incorrect snapshot controller version for Kubernetes 1.36"
  }

  assert {
    condition     = aws_eks_addon.eks_pod_identity_agent.addon_version == "v1.3.10-eksbuild.3"
    error_message = "Incorrect Pod Identity agent version for Kubernetes 1.36"
  }

  assert {
    condition     = aws_eks_addon.eks_node_monitoring_agent[0].addon_version == "v1.7.2-eksbuild.1"
    error_message = "Incorrect node monitoring agent version for Kubernetes 1.36"
  }

  assert {
    condition     = aws_eks_addon.mountpoint_s3_csi[0].addon_version == "v2.8.0-eksbuild.1"
    error_message = "Incorrect Mountpoint S3 CSI driver version for Kubernetes 1.36"
  }

  assert {
    condition     = aws_eks_addon.metrics_server.addon_version == "v0.9.0-eksbuild.13"
    error_message = "Incorrect metrics server version for Kubernetes 1.36"
  }
}
