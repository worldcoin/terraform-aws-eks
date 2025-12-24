resource "kubernetes_storage_class_v1" "gp3" {
  count = var.kubernetes_provider_enabled ? 1 : 0

  metadata {
    name = "gp3"
    annotations = {
      "storageclass.kubernetes.io/is-default-class" = "true"
    }
  }

  storage_provisioner    = "ebs.csi.aws.com"
  volume_binding_mode    = var.storage_class.volume_binding_mode
  allow_volume_expansion = var.storage_class.allow_volume_expansion

  parameters = {
    "encrypted" = "true"
    "fsType"    = "ext4"
    "type"      = "gp3"
  }
}
