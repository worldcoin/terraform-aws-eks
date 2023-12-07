locals {
  # Recommended version of the Amazon VPC CNI add-on for each cluster version
  # https://docs.aws.amazon.com/eks/latest/userguide/managing-vpc-cni.html
  vpc_cni_version = {
    "1.22" = "v1.11.4-eksbuild.1"
    "1.23" = "v1.11.4-eksbuild.1"
    "1.24" = "v1.11.4-eksbuild.1"
    "1.25" = "v1.12.6-eksbuild.1"
    "1.26" = "v1.12.6-eksbuild.1"
  }

  # CoreDNS version deployed with each Amazon EKS supported cluster version
  # https://docs.aws.amazon.com/eks/latest/userguide/managing-coredns.html
  coredns_version = {
    "1.22" = "v1.8.7-eksbuild.1"
    "1.23" = "v1.8.7-eksbuild.2"
    "1.24" = "v1.8.7-eksbuild.3"
    "1.25" = "v1.9.3-eksbuild.2"
    "1.26" = "v1.9.3-eksbuild.2"
  }

  # Latest available kube-proxy container image version for each Amazon EKS cluster version
  # https://docs.aws.amazon.com/eks/latest/userguide/managing-kube-proxy.html
  kube_proxy_version = {
    "1.22" = "v1.22.11-eksbuild.2"
    "1.23" = "v1.23.8-eksbuild.2"
    "1.24" = "v1.24.7-eksbuild.2"
    "1.25" = "v1.25.6-eksbuild.2"
    "1.26" = "v1.26.2-eksbuild.1"
  }

  ebs_csi_driver_version = {
    "1.22" = "v1.14.1-eksbuild.1"
    "1.23" = "v1.14.1-eksbuild.1"
    "1.24" = "v1.14.1-eksbuild.1"
    "1.25" = "v1.17.0-eksbuild.1"
    "1.26" = "v1.17.0-eksbuild.1"
  }
}

resource "aws_eks_addon" "vpc_cni" {
  cluster_name                = aws_eks_cluster.this.id
  addon_name                  = "vpc-cni"
  addon_version               = var.vpc_cni_version_override == "" ? local.vpc_cni_version[var.cluster_version] : var.vpc_cni_version_override
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = "OVERWRITE"
}

resource "aws_eks_addon" "coredns" {
  cluster_name                = aws_eks_cluster.this.id
  addon_name                  = "coredns"
  addon_version               = local.coredns_version[var.cluster_version]
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = "OVERWRITE"
  configuration_values = jsonencode({
    tolerations: [
      {
        effect : "NoExecute",
        key : "karpenter"
      },
      {
        key : "CriticalAddonsOnly",
        operator : "Exists"
      },
      {
        effect : "NoSchedule",
        key : "node-role.kubernetes.io/control-plane"
      },
      {
        effect : "NoSchedule",
        key : "node-role.kubernetes.io/master"
      }
    ]
  })
}

resource "aws_eks_addon" "kube_proxy" {
  cluster_name                = aws_eks_cluster.this.id
  addon_name                  = "kube-proxy"
  addon_version               = local.kube_proxy_version[var.cluster_version]
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = "OVERWRITE"
}

resource "aws_eks_addon" "ebs_csi" {
  cluster_name                = aws_eks_cluster.this.id
  addon_name                  = "aws-ebs-csi-driver"
  addon_version               = local.ebs_csi_driver_version[var.cluster_version]
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = "OVERWRITE"
}
