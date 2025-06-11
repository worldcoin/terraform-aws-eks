resource "kubernetes_storage_class" "gp3" {
  count = var.kubernetes_provider_enabled ? 1 : 0

  metadata {
    name = "gp3"
    annotations = {
      "storageclass.kubernetes.io/is-default-class" = "true"
    }
  }

  storage_provisioner    = "ebs.csi.aws.com"
  volume_binding_mode    = "WaitForFirstConsumer"
  allow_volume_expansion = true

  parameters = {
    "encrypted" = "true"
    "fsType"    = "ext4"
    "type"      = "gp3"
  }
}
