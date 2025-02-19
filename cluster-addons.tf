locals {
  # Recommended version of the Amazon VPC CNI add-on for each cluster version
  # https://docs.aws.amazon.com/eks/latest/userguide/managing-vpc-cni.html
  # aws eks describe-addon-versions --addon-name vpc-cni | jq '.addons[0].addonVersions[0]'
  vpc_cni_version = {
    "1.29" = "v1.19.2-eksbuild.5"
    "1.30" = "v1.19.2-eksbuild.5"
    "1.31" = "v1.19.2-eksbuild.5"
    "1.32" = "v1.19.2-eksbuild.5"
  }

  # CoreDNS version deployed with each Amazon EKS supported cluster version
  # https://docs.aws.amazon.com/eks/latest/userguide/managing-coredns.html
  # aws eks describe-addon-versions --addon-name coredns | jq '.addons[0].addonVersions[0]'
  coredns_version = {
    "1.29" = "v1.11.4-eksbuild.2"
    "1.30" = "v1.11.4-eksbuild.2"
    "1.31" = "v1.11.4-eksbuild.2" 
    "1.32" = "v1.11.4-eksbuild.2"
  }

  # Latest available kube-proxy container image version for each Amazon EKS cluster version
  # https://docs.aws.amazon.com/eks/latest/userguide/managing-kube-proxy.html
  # aws eks describe-addon-versions --addon-name kube-proxy | jq '.addons[0].addonVersions[0]'
  kube_proxy_version = {
    "1.29" = "v1.29.13-eksbuild.3"
    "1.30" = "v1.30.9-eksbuild.3"
    "1.31" = "v1.31.3-eksbuild.2" 
    "1.32" = "v1.32.0-eksbuild.2"
  }

  # https://docs.aws.amazon.com/eks/latest/userguide/managing-ebs-csi.html
  # aws eks describe-addon-versions --addon-name aws-ebs-csi-driver | jq '.addons[0].addonVersions[0]'
  ebs_csi_driver_version = {
    "1.29" = "v1.39.0-eksbuild.1"
    "1.30" = "v1.39.0-eksbuild.1"
    "1.31" = "v1.39.0-eksbuild.1" 
    "1.32" = "v1.39.0-eksbuild.1"
  }

  # https://docs.aws.amazon.com/eks/latest/userguide/pod-id-agent-setup.html
  # aws eks describe-addon-versions --addon-name eks-pod-identity-agent | jq '.addons[0].addonVersions[0]'
  eks_pod_identity_agent_version = {
    "1.29" = "v1.3.5-eksbuild.2"
    "1.30" = "v1.3.5-eksbuild.2"
    "1.31" = "v1.3.5-eksbuild.2"
    "1.32" = "v1.3.5-eksbuild.2"
  }
}

resource "aws_eks_addon" "vpc_cni" {
  cluster_name                = aws_eks_cluster.this.id
  addon_name                  = "vpc-cni"
  addon_version               = var.vpc_cni_version_override == "" ? local.vpc_cni_version[var.cluster_version] : var.vpc_cni_version_override
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = "OVERWRITE"
  configuration_values = jsonencode({
    env : {
      ENABLE_PREFIX_DELEGATION : lower(tostring(var.vpc_cni_enable_prefix_delegation)), # Enable prefix delegation for IPv6, allocate IPs in /28 blocks (instead of all at once)
      WARM_IP_TARGET : var.vpc_cni_warm_ip_target,                                      # Keep +8 IPs warm for each node to speed up pod scheduling
      WARM_ENI_TARGET : var.vpc_cni_warm_eni_target,                                    # Keep +1 ENI warm for each node to speed up pod scheduling
    }
  })
}

resource "aws_eks_addon" "coredns" {
  cluster_name                = aws_eks_cluster.this.id
  addon_name                  = "coredns"
  addon_version               = local.coredns_version[var.cluster_version]
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = "OVERWRITE"
  configuration_values = jsonencode({
    "autoScaling" : {
      "enabled" : true,
      "minReplicas" : 4,
      "maxReplicas" : 10
    },
    tolerations : [
      {
        effect : "NoExecute",
        key : "critical"
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

resource "aws_eks_addon" "eks_pod_identity_agent" {
  cluster_name                = aws_eks_cluster.this.id
  addon_name                  = "eks-pod-identity-agent"
  addon_version               = local.eks_pod_identity_agent_version[var.cluster_version]
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = "OVERWRITE"
}
