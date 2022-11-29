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

  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size = 100
    }
  }

  iam_instance_profile {
    arn = aws_iam_instance_profile.node.arn
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 1
    instance_metadata_tags      = "disabled"
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name                                         = "eks-node-${var.cluster_name}"
      "kubernetes.io/cluster/${var.cluster_name}"  = "owned"
      "karpenter.sh/discovery/${var.cluster_name}" = var.cluster_name
    }
  }

  user_data = base64encode(
    templatefile("${path.module}/templates/userdata.sh.tpl", {
      cluster_name           = aws_eks_cluster.this.name
      cluster_endpoint       = aws_eks_cluster.this.endpoint
      cluster_ca_certificate = aws_eks_cluster.this.certificate_authority[0].data
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
            min = 2048
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
