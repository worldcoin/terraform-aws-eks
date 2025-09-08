resource "kubernetes_service" "traefik_nlb" {
  for_each               = var.kubernetes_provider_enabled ? var.internal_nlb_enabled ? toset([local.internal_nlb_name]) : [] : []
  wait_for_load_balancer = false

  metadata {
    name      = each.key
    namespace = kubernetes_namespace.traefik[each.key].id

    labels = {
      "app.kubernetes.io/name"     = "traefik"
      "app.kubernetes.io/instance" = each.key
    }

    annotations = {
      "service.beta.kubernetes.io/aws-load-balancer-cross-zone-load-balancing-enabled"   = "true"
      "service.beta.kubernetes.io/aws-load-balancer-nlb-target-type"                     = "ip"
      "service.beta.kubernetes.io/aws-load-balancer-scheme"                              = "internal"
      "service.beta.kubernetes.io/aws-load-balancer-ssl-cert"                            = var.internal_nlb_acm_arn != "" ? var.internal_nlb_acm_arn : var.traefik_cert_arn
      "service.beta.kubernetes.io/aws-load-balancer-ssl-ports"                           = "443"
      "service.beta.kubernetes.io/aws-load-balancer-type"                                = "external"
      "service.beta.kubernetes.io/aws-load-balancer-ssl-negotiation-policy"              = module.nlb[each.key].ssl_policy
      "service.beta.kubernetes.io/aws-load-balancer-attributes"                          = "deletion_protection.enabled=true"
      "service.beta.kubernetes.io/aws-load-balancer-security-groups"                     = module.nlb[each.key].sg_nlb_id
      "service.beta.kubernetes.io/aws-load-balancer-manage-backend-security-group-rules" = "true"
      "CreatedBy"                                                                        = "terraform"
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

    dynamic "port" {
      for_each = var.traefik_nlb_service_ports

      content {
        name        = port.value["name"]
        port        = port.value["port"]
        target_port = port.value["target_port"]
        protocol    = port.value["protocol"]
      }
    }

    type = "LoadBalancer"
  }
}

module "nlb" {
  source = "git@github.com:worldcoin/terraform-aws-nlb.git?ref=v1.1.1"

  for_each = var.internal_nlb_enabled ? toset([local.internal_nlb_name]) : []

  # because of lenght limitation of LB name we need to remove prefix treafik from custom_load_balancers
  name_suffix  = replace(each.key, "traefik-", "")
  cluster_name = var.cluster_name

  tls_listener_version = var.internal_tls_listener_version

  internal    = true
  application = format("%s/%s", each.key, each.key)

  acm_arn         = var.internal_nlb_acm_arn != "" ? var.internal_nlb_acm_arn : var.traefik_cert_arn
  vpc_id          = var.vpc_config.vpc_id
  public_subnets  = var.use_private_subnets_for_internal_nlb ? [] : var.vpc_config.public_subnets
  private_subnets = var.use_private_subnets_for_internal_nlb ? var.vpc_config.private_subnets : []

  extra_listeners = var.extra_nlb_listeners
}
