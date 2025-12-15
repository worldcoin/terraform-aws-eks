resource "aws_efs_file_system" "persistent_volume" {
  count      = var.efs_csi_driver_enabled ? 1 : 0
  encrypted  = true
  kms_key_id = aws_kms_key.this.arn

  tags = {
    Name = "eks-node-efs-${var.cluster_name}"
  }
}

resource "aws_efs_mount_target" "persistent_volume" {
  for_each        = var.efs_csi_driver_enabled ? toset(var.vpc_config.private_subnets) : []
  file_system_id  = aws_efs_file_system.persistent_volume[0].id
  security_groups = [aws_security_group.persistent_volume[0].id]
  subnet_id       = each.value
}

resource "aws_security_group" "persistent_volume" {
  count       = var.efs_csi_driver_enabled ? 1 : 0
  name        = "eks-node-efs-${var.cluster_name}"
  description = "EKS node EFS security group"
  vpc_id      = var.vpc_config.vpc_id
}

resource "aws_security_group_rule" "persistent_volume_from_node_ingress" {
  count                    = var.efs_csi_driver_enabled ? 1 : 0
  security_group_id        = aws_security_group.persistent_volume[0].id
  type                     = "ingress"
  from_port                = 2049
  to_port                  = 2049
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.node.id
  description              = "Allow nodes to communicate with the EFS mount target"
}

resource "kubernetes_storage_class_v1" "efs" {
  count = var.efs_csi_driver_enabled ? 1 : 0

  metadata {
    name = "efs"

    annotations = {
      "CreatedBy" = "terraform"
    }
  }

  parameters = {
    provisioningMode = "efs-ap"
    fileSystemId     = aws_efs_file_system.persistent_volume[0].id
    directoryPerms   = "700"
  }

  storage_provisioner = "efs.csi.aws.com"
}
