# Enclave tracks for multi-version deployments
# This creates additional node groups for running multiple enclave versions simultaneously

resource "aws_launch_template" "enclave_track" {
  for_each = var.enclave_tracks

  name_prefix = "eks-node-enclaves-${each.key}-${var.cluster_name}-"

  image_id                             = data.aws_ssm_parameter.al2023_ami[try(each.value.arch, "amd64")].value
  instance_type                        = coalesce(each.value.instance_type, var.enclaves_instance_type)
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
      Name              = "eks-node-enclaves-${each.key}-${var.cluster_name}"
      KubernetesCluster = var.cluster_name
      EnclaveTrack      = each.key
    }
  }

  user_data = base64encode(
    templatefile("${path.module}/templates/userdata-enclave-track.sh.tpl", {
      cluster_name              = aws_eks_cluster.this.name
      cluster_endpoint          = aws_eks_cluster.this.endpoint
      cluster_certificate       = aws_eks_cluster.this.certificate_authority[0].data
      cluster_cidr              = data.aws_vpc.cluster_vpc.cidr_block
      cluster_dns               = var.eks_node_group.dns
      enclave_track             = each.key
      enclave_cpu_allocation    = coalesce(each.value.cpu_allocation, var.enclaves_cpu_allocation)
      enclave_memory_allocation = coalesce(each.value.memory_allocation, var.enclaves_memory_allocation)
    })
  )
}

locals {
  # create a map for each subnet and track combination
  subnet_track_combinations = {
    for combination in flatten([
      for track_key, track_value in var.enclave_tracks : [
        for subnet in var.vpc_config.private_subnets : {
          key         = "${track_key}-${subnet}"
          track_key   = track_key
          track_value = track_value
          subnet      = subnet
        }
      ]
    ]) : combination.key => combination
  }
}

resource "aws_autoscaling_group" "enclave_track" {
  for_each = local.subnet_track_combinations

  name                = "eks-enclave-${each.value.track_key}-${each.value.subnet}-${var.cluster_name}"
  vpc_zone_identifier = [each.value.subnet]
  desired_capacity    = each.value.track_value.autoscaling_group.size
  min_size            = each.value.track_value.autoscaling_group.min_size
  max_size            = each.value.track_value.autoscaling_group.max_size

  lifecycle {
    ignore_changes = [desired_capacity]
  }

  mixed_instances_policy {
    instances_distribution {
      on_demand_base_capacity                  = each.value.track_value.autoscaling_group.size
      on_demand_percentage_above_base_capacity = var.on_demand_percentage_above_base_capacity
    }

    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.enclave_track[each.value.track_key].id
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
    key                 = "k8s.io/cluster-autoscaler/node-template/taint/enclave"
    value               = "NoExecute"
    propagate_at_launch = false
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/intent"
    value               = "enclave"
    propagate_at_launch = false
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/enclave.tools/track"
    value               = each.value.track_key
    propagate_at_launch = false
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/resources/aws.ec2.nitro/nitro_enclaves"
    value               = "1"
    propagate_at_launch = false
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/resources/hugepages-1Gi"
    value               = "1Gi"
    propagate_at_launch = false
  }

  instance_refresh {
    strategy = "Rolling"
    preferences {
      min_healthy_percentage = 50
      auto_rollback          = true
    }
  }
}
