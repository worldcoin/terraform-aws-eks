data "aws_ami" "this" {
  filter {
    name   = "name"
    values = ["amazon-eks-node-${var.cluster_version}-v*"]
  }

  most_recent = true
  owners      = ["amazon"]
}

resource "aws_launch_template" "this" {
  name_prefix = "eks-node-${var.cluster_name}-"

  image_id                             = data.aws_ami.this.image_id
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
    http_put_response_hop_limit = 2
    instance_metadata_tags      = "enabled"
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name              = "eks-node-${var.cluster_name}"
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

resource "aws_autoscaling_group" "this" {
  name                = "eks-node-${var.cluster_name}"
  vpc_zone_identifier = var.vpc_config.private_subnets
  desired_capacity    = 2
  min_size            = 1
  max_size            = 2

  mixed_instances_policy {
    instances_distribution {
      on_demand_base_capacity                  = var.on_demand_base_capacity
      on_demand_percentage_above_base_capacity = 0
      spot_allocation_strategy                 = "lowest-price"
    }

    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.this.id
        version            = "$Latest"
      }

      override {
        instance_requirements {
          burstable_performance = "included"

          cpu_manufacturers = [
            "intel",
          ]

          memory_mib {
            max = 8192
            min = 4096
          }

          vcpu_count {
            max = 4
            min = 2
          }
        }
      }
    }
  }
}

resource "aws_autoscaling_group" "static" {
  count = var.static_autoscaling_groups != null ? 1 : 0

  name                = "eks-node-${var.cluster_name}-static"
  vpc_zone_identifier = var.vpc_config.private_subnets
  desired_capacity    = var.static_autoscaling_groups.size
  min_size            = var.static_autoscaling_groups.size
  max_size            = var.static_autoscaling_groups.size

  mixed_instances_policy {
    instances_distribution {
      on_demand_base_capacity = var.static_autoscaling_groups.size
    }

    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.this.id
        version            = "$Latest"
      }

      override {
        instance_requirements {
          burstable_performance = "included"

          cpu_manufacturers = [
            "intel",
          ]

          memory_mib {
            max = var.static_autoscaling_groups.mem_max
            min = var.static_autoscaling_groups.mem_min
          }

          vcpu_count {
            max = var.static_autoscaling_groups.cpu_max
            min = var.static_autoscaling_groups.cpu_min
          }
        }
      }
    }
  }
}
