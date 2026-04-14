mock_data "kubernetes_resources" {
  defaults = {
    objects = [
      {
        object = {
          apiVersion = "apiextensions.k8s.io/v1"
          kind       = "CustomResourceDefinition"
          metadata = {
            name = "gateways.gateway.networking.k8s.io"
          }
        }
      }
    ]
  }
}
