locals {
  al2023_name                = format("eks-node-al2023-%s", var.cluster_name)
  al2023_name_prefix         = format("%s-", local.al2023_name)
  al2023_x86_64_standard_ami = format("/aws/service/eks/optimized-ami/%s/amazon-linux-2023/x86_64/standard/recommended/release_version", var.cluster_version)
  al2023_arm_64_standard_ami = format("/aws/service/eks/optimized-ami/%s/amazon-linux-2023/arm64/standard/recommended/release_version", var.cluster_version)
}

data "aws_ssm_parameter" "al2023_ami" {
  count = var.eks_node_group != null ? 1 : 0

  name = var.eks_node_group.arch == "arm64" ? local.al2023_arm_64_standard_ami : local.al2023_x86_64_standard_ami
}

resource "aws_launch_template" "al2023" {
  count = var.eks_node_group != null ? 1 : 0

  name_prefix = local.al2023_name_prefix

  image_id                             = data.aws_ssm_parameter.al2023_ami[0].image_id
  vpc_security_group_ids               = [aws_security_group.node.id]
  ebs_optimized                        = true
  instance_initiated_shutdown_behavior = "terminate"

  iam_instance_profile {
    arn = aws_iam_instance_profile.node.arn
  }

  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      volume_size = var.eks_node_group.disk
    }
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = var.http_put_response_hop_limit
    instance_metadata_tags      = "enabled"
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name              = local.al2023_name
      KubernetesCluster = var.cluster_name
    }
  }

  user_data = base64encode(
    templatefile("${path.module}/templates/userdata-al2023.tpl", {
      cluster_name        = aws_eks_cluster.this.name
      cluster_endpoint    = aws_eks_cluster.this.endpoint
      cluster_certificate = aws_eks_cluster.this.certificate_authority[0].data
    })
  )
}

resource "aws_eks_node_group" "al2023" {
  count = var.eks_node_group != null ? 1 : 0

  node_group_name = local.al2023_name
  node_role_arn   = aws_iam_role.node.arn
  cluster_name    = aws_eks_cluster.this.name
  subnet_ids      = var.vpc_config.private_subnets

  # https://docs.aws.amazon.com/eks/latest/APIReference/API_Nodegroup.html#API_Nodegroup_Contents
  capacity_type = "ON_DEMAND"

  # https://docs.aws.amazon.com/eks/latest/APIReference/API_Nodegroup.html#AmazonEKS-Type-Nodegroup-amiType
  ami_type       = var.eks_node_group.arch == "arm64" ? "AL2023_ARM_64_STANDARD" : "AL2023_x86_64_STANDARD"
  instance_types = var.eks_node_group.types

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 2
  }

  launch_template {
    id      = aws_launch_template.al2023[0].id
    version = "$Latest"
  }

  tags = {
    Name                                                   = local.al2023_name
    KubernetesCluster                                      = var.cluster_name
    (format("kubernetes.io/cluster/%s", var.cluster_name)) = "owned"
  }
}
