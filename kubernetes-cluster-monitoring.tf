removed {
  from = kubernetes_namespace.cluster_monitoring

  lifecycle {
    destroy = false
  }
}
