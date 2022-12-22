locals {
  load_balancers = merge(
    { "traefik" = true },
    { for key, value in var.custom_load_balancers : "traefik-${key}" => value },
  )
}

resource "kubernetes_namespace" "traefik" {
  for_each = var.kubernetes_provider_enabled ? local.load_balancers : {}

  metadata {
    name = each.key

    annotations = {
      "CreatedBy" = "terraform"
    }
  }
}

resource "kubernetes_service" "traefik" {
  for_each               = var.kubernetes_provider_enabled ? local.load_balancers : {}
  wait_for_load_balancer = false

  metadata {
    name      = each.key
    namespace = kubernetes_namespace.traefik[each.key].id

    labels = {
      "app.kubernetes.io/name"     = "traefik"
      "app.kubernetes.io/instance" = each.key
    }

    annotations = {
      "service.beta.kubernetes.io/aws-load-balancer-cross-zone-load-balancing-enabled" = "true"
      "service.beta.kubernetes.io/aws-load-balancer-nlb-target-type"                   = "ip"
      "service.beta.kubernetes.io/aws-load-balancer-scheme"                            = each.value ? "internet-facing" : "internal"
      "service.beta.kubernetes.io/aws-load-balancer-ssl-cert"                          = var.traefik_cert_arn
      "service.beta.kubernetes.io/aws-load-balancer-ssl-ports"                         = "443"
      "service.beta.kubernetes.io/aws-load-balancer-type"                              = "external"
      "CreatedBy"                                                                      = "terraform"
    }

  }

  spec {
    selector = {
      "app.kubernetes.io/name"     = "traefik"
      "app.kubernetes.io/instance" = each.key
    }

    port {
      name        = "web"
      port        = 80
      target_port = "web"
      protocol    = "TCP"
    }

    port {
      name        = "websecure"
      port        = 443
      target_port = "websecure"
      protocol    = "TCP"
    }

    type = "LoadBalancer"
  }
}

module "nlb" {
  source   = "github.com/worldcoin/terraform-aws-nlb.git?ref=v0.1.0"
  for_each = local.load_balancers

  name_suffix  = each.key
  cluster_name = var.cluster_name

  internal    = each.value ? false : true
  application = format("%s/%s", each.key, each.key)

  acm_arn        = var.traefik_cert_arn
  vpc_id         = var.vpc_config.vpc_id
  public_subnets = var.vpc_config.public_subnets
}
