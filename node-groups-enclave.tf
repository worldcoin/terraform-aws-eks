resource "aws_launch_template" "enclave" {
  count       = var.enclaves ? 1 : 0
  name_prefix = "eks-node-enclaves-${var.cluster_name}-"

  image_id                             = data.aws_ami.this[0].image_id
  instance_type                        = var.enclaves_instance_type
  vpc_security_group_ids               = [aws_security_group.node.id]
  ebs_optimized                        = true
  instance_initiated_shutdown_behavior = "terminate"

  enclave_options {
    enabled = true
  }

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
      Name              = "eks-node-enclaves-${var.cluster_name}"
      KubernetesCluster = var.cluster_name
    }
  }

  user_data = base64encode(
    templatefile("${path.module}/templates/userdata-enclaves.sh.tpl", {
      cluster_name              = aws_eks_cluster.this.name
      cluster_endpoint          = aws_eks_cluster.this.endpoint
      cluster_ca_certificate    = aws_eks_cluster.this.certificate_authority[0].data
      kubelet_extra_args        = "--node-labels=aws-nitro-enclaves-k8s-dp=enabled ${var.kubelet_extra_args}"
      enclave_cpu_allocation    = var.enclaves_cpu_allocation
      enclave_memory_allocation = var.enclaves_memory_allocation
    })
  )
}

resource "aws_autoscaling_group" "enclave" {
  count = var.enclaves ? 1 : 0

  name                = "eks-node-enclaves-${var.cluster_name}"
  vpc_zone_identifier = var.vpc_config.private_subnets
  desired_capacity    = var.enclaves_autoscaling_group.size
  min_size            = var.enclaves_autoscaling_group.size
  max_size            = var.enclaves_autoscaling_group.size

  mixed_instances_policy {
    instances_distribution {
      on_demand_base_capacity = var.enclaves_autoscaling_group.size
    }

    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.enclave[0].id
        version            = "$Latest"
      }
    }
  }
}
