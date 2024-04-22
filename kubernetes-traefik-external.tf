resource "kubernetes_service" "traefik_alb" {
  for_each               = var.kubernetes_provider_enabled ? toset([local.external_alb_name]) : []
  wait_for_load_balancer = false

  metadata {
    name      = format("%s-alb", each.key)
    namespace = kubernetes_namespace.traefik[each.key].id

    labels = {
      "app.kubernetes.io/name"     = "traefik"
      "app.kubernetes.io/instance" = each.key
    }

    annotations = {
      "service.beta.kubernetes.io/aws-load-balancer-attributes" = "deletion_protection.enabled=true"
    }
  }

  spec {
    selector = {
      "app.kubernetes.io/name"     = "traefik"
      "app.kubernetes.io/instance" = each.key
    }

    port {
      name        = "websecure"
      port        = 443
      target_port = "websecure"
      protocol    = "TCP"
    }

    port {
      name        = "traefik"
      port        = 9000
      target_port = "traefik"
      protocol    = "TCP"
    }

    type = "ClusterIP"
  }
}

resource "kubernetes_ingress_v1" "treafik_ingress" {
  for_each = var.kubernetes_provider_enabled ? toset([local.external_alb_name]) : []

  metadata {
    name      = format("%s-alb", each.key)
    namespace = kubernetes_namespace.traefik[each.key].id

    labels = {
      "app.kubernetes.io/name"     = "traefik"
      "app.kubernetes.io/instance" = each.key
    }

    annotations = {
      "alb.ingress.kubernetes.io/scheme"                              = "internet-facing"
      "alb.ingress.kubernetes.io/certificate-arn"                     = var.traefik_cert_arn
      "alb.ingress.kubernetes.io/group.name"                          = format("%s.%s", each.key, each.key)
      "alb.ingress.kubernetes.io/security-groups"                     = join(",", [for type, id in module.alb[each.key].sg_ids : id if id != null])
      "alb.ingress.kubernetes.io/manage-backend-security-group-rules" = "false"
      "alb.ingress.kubernetes.io/healthcheck-protocol"                = "HTTP"
      "alb.ingress.kubernetes.io/healthcheck-port"                    = "9000"
      "alb.ingress.kubernetes.io/healthcheck-path"                    = "/ping"
      "alb.ingress.kubernetes.io/target-type"                         = "ip"
      "alb.ingress.kubernetes.io/ssl-policy"                          = module.alb[each.key].ssl_policy
      "alb.ingress.kubernetes.io/load-balancer-attributes"            = "deletion_protection.enabled=true"

      "CreatedBy" = "terraform"
    }
  }

  spec {
    ingress_class_name = "alb"
    rule {
      http {
        path {
          path      = "/"
          path_type = "Prefix"
          backend {
            service {
              name = format("%s-alb", each.key)
              port {
                number = 443
              }
            }
          }
        }
      }
    }
  }
}

module "alb" {
  source   = "git@github.com:worldcoin/terraform-aws-alb.git?ref=v0.5.0"
  for_each = toset([local.external_alb_name])

  # because of lenght limitation of LB name we need to remove prefix treafik from internal NLB
  name_suffix  = format("%s-alb", replace(each.key, "traefik-", ""))
  cluster_name = var.cluster_name

  tls_listener_version = var.external_tls_listener_version

  internal    = false
  application = each.key
  namespace   = each.key

  acm_arn        = var.traefik_cert_arn
  vpc_id         = var.vpc_config.vpc_id
  public_subnets = var.vpc_config.public_subnets

  s3_logs_bucket_id = var.alb_logs_bucket_id
  idle_timeout      = var.alb_idle_timeout
}
