data "aws_ami" "al2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amazon-eks-gpu-node-1.32-v*"]
  }

  owners = ["602401143452"] # Amazon
}

resource "aws_launch_template" "gpu" {
  count       = var.gpu ? 1 : 0
  name_prefix = "eks-node-gpu-${var.cluster_name}-"

  image_id                             = data.aws_ami.al2.id
  instance_type                        = "g6e.8xlarge"
  vpc_security_group_ids               = [aws_security_group.node.id]
  ebs_optimized                        = true
  instance_initiated_shutdown_behavior = "terminate"

  iam_instance_profile {
    arn = aws_iam_instance_profile.node.arn
  }

  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      volume_size = 100
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
      Name              = "eks-node-gpu-${var.cluster_name}"
      KubernetesCluster = var.cluster_name
    }
  }

  user_data = base64encode(
    templatefile("${path.module}/templates/userdata.sh.tpl", {
      cluster_name           = aws_eks_cluster.this.name
      cluster_endpoint       = aws_eks_cluster.this.endpoint
      cluster_ca_certificate = aws_eks_cluster.this.certificate_authority[0].data
      kubelet_extra_args     = var.kubelet_extra_args
    })
  )
}

resource "aws_autoscaling_group" "gpu" {
  count = var.gpu ? 1 : 0

  name                = "eks-node-gpu-${var.cluster_name}"
  vpc_zone_identifier = var.vpc_config.private_subnets
  desired_capacity    = 0
  min_size            = 0
  max_size            = 3

  mixed_instances_policy {
    instances_distribution {
      on_demand_base_capacity = var.gpu_autoscaling_group.size
    }

    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.gpu[0].id
        version            = "$Latest"
      }
    }
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/enabled"
    value               = "true"
    propagate_at_launch = false
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/${var.cluster_name}"
    value               = "owned"
    propagate_at_launch = false
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/taint/gpu"
    value               = "NoExecute"
    propagate_at_launch = false
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/intent"
    value               = "gpu"
    propagate_at_launch = false
  }
}
