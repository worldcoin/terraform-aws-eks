data "aws_ssm_parameter" "ami_id" {
  count = var.static_autoscaling_group != null ? 1 : 0

  name            = "/aws/service/eks/optimized-ami/${var.cluster_version}/amazon-linux-2${var.static_autoscaling_group.arch != null ? format("-%s", var.static_autoscaling_group.arch) : ""}/recommended/image_id"
  with_decryption = true
}

resource "aws_launch_template" "static" {
  count = var.static_autoscaling_group != null ? 1 : 0

  name_prefix = "eks-node-static-${var.cluster_name}-"

  image_id                             = data.aws_ssm_parameter.ami_id[0].value
  instance_type                        = var.static_autoscaling_group.type
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
      Name              = "eks-node-${var.cluster_name}"
      KubernetesCluster = var.cluster_name
    }
  }

  user_data = base64encode(
    templatefile("${path.module}/templates/userdata.sh.tpl", {
      cluster_name           = aws_eks_cluster.this.name
      cluster_endpoint       = aws_eks_cluster.this.endpoint
      cluster_ca_certificate = aws_eks_cluster.this.certificate_authority[0].data
      kubelet_extra_args     = var.kubelet_extra_args_static_autoscaling_group
    })
  )
}

resource "aws_autoscaling_group" "static" {
  count = var.static_autoscaling_group != null ? 1 : 0

  name                = "eks-node-static-${var.cluster_name}"
  vpc_zone_identifier = var.vpc_config.private_subnets
  desired_capacity    = var.static_autoscaling_group.size
  min_size            = var.static_autoscaling_group.size
  max_size            = var.static_autoscaling_group.size

  mixed_instances_policy {
    instances_distribution {
      on_demand_base_capacity = var.static_autoscaling_group.size
    }

    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.static[0].id
        version            = "$Latest"
      }
    }
  }
}
