locals {
  # Recommended version of the Amazon VPC CNI add-on for each cluster version
  # https://docs.aws.amazon.com/eks/latest/userguide/managing-vpc-cni.html
  # aws eks describe-addon-versions --addon-name vpc-cni --region us-east-1 --output json| jq '.addons[0].addonVersions[0]'
  vpc_cni_version = {
    "1.32" = "v1.19.2-eksbuild.5"
    "1.33" = "v1.20.1-eksbuild.3"
  }

  # CoreDNS version deployed with each Amazon EKS supported cluster version
  # https://docs.aws.amazon.com/eks/latest/userguide/managing-coredns.html
  # aws eks describe-addon-versions --addon-name coredns | jq '.addons[0].addonVersions[0]'
  coredns_version = {
    "1.32" = "v1.11.4-eksbuild.10"
    "1.33" = "v1.11.4-eksbuild.22"
  }

  # Latest available kube-proxy container image version for each Amazon EKS cluster version
  # https://docs.aws.amazon.com/eks/latest/userguide/managing-kube-proxy.html
  # aws eks describe-addon-versions --addon-name kube-proxy | jq '.addons[0].addonVersions[0]'
  kube_proxy_version = {
    "1.32" = "v1.32.0-eksbuild.2"
    "1.33" = "v1.32.6-eksbuild.8"
  }

  # https://docs.aws.amazon.com/eks/latest/userguide/managing-ebs-csi.html
  # aws eks describe-addon-versions --addon-name aws-ebs-csi-driver | jq '.addons[0].addonVersions[0]'
  ebs_csi_driver_version = {
    "1.32" = "v1.39.0-eksbuild.1"
    "1.33" = "v1.48.0-eksbuild.2"
  }

  # https://docs.aws.amazon.com/eks/latest/userguide/workloads-add-ons-available-eks.html#addons-csi-snapshot-controller
  # https://docs.aws.amazon.com/eks/latest/userguide/csi-snapshot-controller.html
  # aws eks describe-addon-versions --region us-east-1 --addon-name snapshot-controller | jq '.addons[0].addonVersions[0]'
  snapshot_controller = {
    "1.32" = "v8.2.0-eksbuild.1"
    "1.33" = "v8.3.0-eksbuild.1"
  }

  # https://docs.aws.amazon.com/eks/latest/userguide/pod-id-agent-setup.html
  # aws eks describe-addon-versions --addon-name eks-pod-identity-agent | jq '.addons[0].addonVersions[0]'
  eks_pod_identity_agent_version = {
    "1.32" = "v1.3.5-eksbuild.2"
    "1.33" = "v1.3.8-eksbuild.2"
  }

  # https://docs.aws.amazon.com/eks/latest/userguide/node-health.html
  # aws eks describe-addon-versions --addon-name eks-node-monitoring-agent | jq '.addons[0].addonVersions[0]'
  eks_node_monitoring_agent_version = {
    "1.32" = "v1.1.0-eksbuild.1"
    "1.33" = "v1.4.0-eksbuild.2"
  }

  # https://docs.aws.amazon.com/eks/latest/userguide/s3-csi.html#s3-install-driver
  # aws eks describe-addon-versions --addon-name aws-mountpoint-s3-csi-driver --region us-east-1 --output json| jq '.addons[0].addonVersions[0]'
  mountpoint_s3_csi_version = {
    "1.32" = "v1.12.0-eksbuild.1"
    "1.33" = "v2.0.0-eksbuild.1"
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
      ENABLE_PREFIX_DELEGATION : lower(tostring(var.vpc_cni_enable_prefix_delegation)),                   # Enable prefix delegation for IPv6, allocate IPs in /28 blocks (instead of all at once)
      WARM_IP_TARGET : var.vpc_cni_warm_ip_target,                                                        # Keep +8 IPs warm for each node to speed up pod scheduling
      WARM_ENI_TARGET : var.vpc_cni_warm_eni_target,                                                      # Keep +1 ENI warm for each node to speed up pod scheduling
      ENABLE_POD_ENI : lower(tostring(var.vpc_cni_enable_pod_eni)),                                       # Enable pod ENI support
      POD_SECURITY_GROUP_ENFORCING_MODE : lower(tostring(var.vpc_cni_pod_security_group_enforcing_mode)), # Enable pod security group enforcing mode
      AWS_VPC_K8S_CNI_EXTERNALSNAT : lower(tostring(var.vpc_cni_external_snat)),                          # Enable external SNAT to enable pod to pod communication across different vpc's
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
      "minReplicas" : var.coredns_min_replicas,
      "maxReplicas" : var.coredns_max_replicas,
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

resource "aws_eks_addon" "snapshot_controller" {
  cluster_name                = aws_eks_cluster.this.id
  addon_name                  = "snapshot-controller"
  addon_version               = local.snapshot_controller[var.cluster_version]
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

resource "aws_eks_addon" "eks_node_monitoring_agent" {
  count                       = var.node_monitoring_agent_enabled ? 1 : 0
  cluster_name                = aws_eks_cluster.this.id
  addon_name                  = "eks-node-monitoring-agent"
  addon_version               = local.eks_node_monitoring_agent_version[var.cluster_version]
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = "OVERWRITE"
}

resource "aws_eks_addon" "mountpoint_s3_csi" {
  count                       = var.s3_mountpoint_csi_driver_enabled ? 1 : 0
  cluster_name                = aws_eks_cluster.this.id
  addon_name                  = "aws-mountpoint-s3-csi-driver"
  addon_version               = local.mountpoint_s3_csi_version[var.cluster_version]
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = "OVERWRITE"

  service_account_role_arn = aws_iam_role.aws_s3_mountpoint_csi[0].arn

  configuration_values = jsonencode(
    {
      node : {
        tolerateAllTaints : true,
      }
    }
  )
}
