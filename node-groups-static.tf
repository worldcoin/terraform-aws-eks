resource "aws_eks_node_group" "static" {
  count = var.static_autoscaling_groups != null ? 1 : 0

  cluster_name    = aws_eks_cluster.this.name
  node_group_name = "eks-node-static-${var.cluster_name}"
  node_role_arn   = aws_iam_role.node.arn
  subnet_ids      = var.vpc_config.private_subnets

  # https://docs.aws.amazon.com/eks/latest/APIReference/API_Nodegroup.html#API_Nodegroup_Contents
  capacity_type = "ON_DEMAND"
  disk_size     = var.static_autoscaling_groups.disk

  # https://docs.aws.amazon.com/eks/latest/APIReference/API_Nodegroup.html#AmazonEKS-Type-Nodegroup-amiType
  ami_type       = var.static_autoscaling_groups.arch == "arm64" ? "AL2_ARM_64" : "AL2_x86_64"
  instance_types = var.static_autoscaling_groups.types

  scaling_config {
    desired_size = var.static_autoscaling_groups.size
    min_size     = var.static_autoscaling_groups.size
    max_size     = var.static_autoscaling_groups.size
  }

  tags = {
    Name              = "eks-node-${var.cluster_name}"
    KubernetesCluster = var.cluster_name
    "kubernetes.io/cluster/${var.cluster_name}" : "owned"
  }
}
