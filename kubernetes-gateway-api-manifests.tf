locals {
  gateway_api_enabled = var.gateway_api_external_enabled || var.gateway_api_internal_enabled

  gateway_api_ssl_policies = {
    "1.3" = "ELBSecurityPolicy-TLS13-1-3-2021-06"
    "1.2" = "ELBSecurityPolicy-TLS-1-2-2017-01"
  }

  _gateway_api_crd_docs = [
    for doc in split("\n---", file("${path.module}/manifests/crds-gateway-api.yaml")) :
    { for k, v in yamldecode(doc) : k => v if k != "status" }
    if can(yamldecode(doc).metadata.name)
  ]

  _aws_lbc_crd_docs = [
    for doc in split("\n---", file("${path.module}/manifests/crds-aws-lbc.yaml")) :
    { for k, v in yamldecode(doc) : k => v if k != "status" }
    if can(yamldecode(doc).metadata.name)
  ]

  gateway_api_crds = {
    for crd in concat(local._gateway_api_crd_docs, local._aws_lbc_crd_docs) :
    format("%s/%s", crd.kind, crd.metadata.name) => crd
  }
}

# CRDs: Gateway API (v1.5.1) + AWS LBC Gateway CRDs (v3.2.1)
#
# source files in manifests/:
# - crds-gateway-api.yaml = https://github.com/kubernetes-sigs/gateway-api/releases/download/v1.5.1/standard-install.yaml
# - crds-aws-lbc.yaml     = https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/v3.2.1/config/crd/gateway/gateway-crds.yaml
resource "kubernetes_manifest" "gateway_api_crds" {
  for_each = {
    for k, v in local.gateway_api_crds : k => v
    if var.kubernetes_provider_enabled && local.gateway_api_enabled
  }
  manifest = each.value
}

resource "kubernetes_manifest" "gateway_class_alb" {
  count      = var.kubernetes_provider_enabled && local.gateway_api_enabled ? 1 : 0
  depends_on = [kubernetes_manifest.gateway_api_crds]

  manifest = {
    apiVersion = "gateway.networking.k8s.io/v1"
    kind       = "GatewayClass"
    metadata = {
      name = "aws-alb"
    }
    spec = {
      controllerName = "gateway.k8s.aws/alb"
    }
  }
}

resource "kubernetes_manifest" "gateway_class_nlb" {
  count      = var.kubernetes_provider_enabled && local.gateway_api_enabled ? 1 : 0
  depends_on = [kubernetes_manifest.gateway_api_crds]

  manifest = {
    apiVersion = "gateway.networking.k8s.io/v1"
    kind       = "GatewayClass"
    metadata = {
      name = "aws-nlb"
    }
    spec = {
      controllerName = "gateway.k8s.aws/nlb"
    }
  }
}

resource "kubernetes_manifest" "gw_ext_alb_config" {
  count      = var.kubernetes_provider_enabled && var.gateway_api_external_enabled ? 1 : 0
  depends_on = [kubernetes_manifest.gateway_api_crds]

  manifest = {
    apiVersion = "gateway.k8s.aws/v1beta1"
    kind       = "LoadBalancerConfiguration"
    metadata = {
      name      = local.gateway_api_external_alb_name
      namespace = "kube-system"
    }
    spec = {
      loadBalancerName                = format("%s-%s", local.gateway_api_lb_name_prefix, local.gateway_api_external_alb_name)
      scheme                          = "internet-facing"
      securityGroups                  = [for _, id in module.gateway_api_external_alb[local.gateway_api_external_alb_name].sg_ids : id if id != null]
      manageBackendSecurityGroupRules = false
      listenerConfigurations = [{
        protocolPort       = "HTTPS:443"
        alpnPolicy         = "None"
        sslPolicy          = local.gateway_api_ssl_policies[var.external_tls_listener_version]
        defaultCertificate = local.effective_external_cert_arn
      }]
    }
  }
}

resource "kubernetes_manifest" "gw_ext_alb" {
  count      = var.kubernetes_provider_enabled && var.gateway_api_external_enabled ? 1 : 0
  depends_on = [kubernetes_manifest.gateway_class_alb, kubernetes_manifest.gw_ext_alb_config]

  manifest = {
    apiVersion = "gateway.networking.k8s.io/v1"
    kind       = "Gateway"
    metadata = {
      name      = local.gateway_api_external_alb_name
      namespace = "kube-system"
    }
    spec = {
      gatewayClassName = "aws-alb"
      infrastructure = {
        parametersRef = {
          group = "gateway.k8s.aws"
          kind  = "LoadBalancerConfiguration"
          name  = local.gateway_api_external_alb_name
        }
      }
      listeners = [{
        name     = "https"
        protocol = "HTTPS"
        port     = 443
        tls = {
          mode = "Terminate"
          certificateRefs = [{
            group = ""
            kind  = "Secret"
            name  = "default-cert"
          }]
        }
        allowedRoutes = {
          namespaces = {
            from = "All"
          }
        }
      }]
    }
  }
}

resource "kubernetes_manifest" "gw_ext_nlb_config" {
  count      = var.kubernetes_provider_enabled && var.gateway_api_external_enabled ? 1 : 0
  depends_on = [kubernetes_manifest.gateway_api_crds]

  manifest = {
    apiVersion = "gateway.k8s.aws/v1beta1"
    kind       = "LoadBalancerConfiguration"
    metadata = {
      name      = local.gateway_api_external_nlb_name
      namespace = "kube-system"
    }
    spec = {
      loadBalancerName                = format("%s-%s", local.gateway_api_lb_name_prefix, local.gateway_api_external_nlb_name)
      scheme                          = "internet-facing"
      securityGroups                  = [module.gateway_api_external_nlb[local.gateway_api_external_nlb_name].sg_nlb_id]
      manageBackendSecurityGroupRules = false
      listenerConfigurations = [{
        protocolPort       = "TLS:443"
        alpnPolicy         = "None"
        sslPolicy          = local.gateway_api_ssl_policies[var.external_tls_listener_version]
        defaultCertificate = local.effective_external_cert_arn
      }]
    }
  }
}

resource "kubernetes_manifest" "gw_ext_nlb" {
  count      = var.kubernetes_provider_enabled && var.gateway_api_external_enabled ? 1 : 0
  depends_on = [kubernetes_manifest.gateway_class_nlb, kubernetes_manifest.gw_ext_nlb_config]

  manifest = {
    apiVersion = "gateway.networking.k8s.io/v1"
    kind       = "Gateway"
    metadata = {
      name      = local.gateway_api_external_nlb_name
      namespace = "kube-system"
    }
    spec = {
      gatewayClassName = "aws-nlb"
      infrastructure = {
        parametersRef = {
          group = "gateway.k8s.aws"
          kind  = "LoadBalancerConfiguration"
          name  = local.gateway_api_external_nlb_name
        }
      }
      listeners = [
        {
          name     = "tcp"
          protocol = "TCP"
          port     = 80
          allowedRoutes = {
            namespaces = {
              from = "All"
            }
            kinds = [{
              group = "gateway.networking.k8s.io"
              kind  = "TCPRoute"
            }]
          }
        },
        {
          name     = "tls"
          protocol = "TLS"
          port     = 443
          tls = {
            mode = "Terminate"
            certificateRefs = [{
              group = ""
              kind  = "Secret"
              name  = "default-cert"
            }]
          }
          allowedRoutes = {
            namespaces = {
              from = "All"
            }
            kinds = [{
              group = "gateway.networking.k8s.io"
              kind  = "TLSRoute"
            }]
          }
        },
      ]
    }
  }
}

resource "kubernetes_manifest" "gw_int_alb_config" {
  count      = var.kubernetes_provider_enabled && var.gateway_api_internal_enabled ? 1 : 0
  depends_on = [kubernetes_manifest.gateway_api_crds]

  manifest = {
    apiVersion = "gateway.k8s.aws/v1beta1"
    kind       = "LoadBalancerConfiguration"
    metadata = {
      name      = local.gateway_api_internal_alb_name
      namespace = "kube-system"
    }
    spec = {
      loadBalancerName                = format("%s-%s", local.gateway_api_lb_name_prefix, local.gateway_api_internal_alb_name)
      scheme                          = "internal"
      securityGroups                  = [for _, id in module.gateway_api_internal_alb[local.gateway_api_internal_alb_name].sg_ids : id if id != null]
      manageBackendSecurityGroupRules = false
      listenerConfigurations = [{
        protocolPort       = "HTTPS:443"
        alpnPolicy         = "None"
        sslPolicy          = local.gateway_api_ssl_policies[var.internal_tls_listener_version]
        defaultCertificate = local.effective_internal_cert_arn
      }]
    }
  }
}

resource "kubernetes_manifest" "gw_int_alb" {
  count      = var.kubernetes_provider_enabled && var.gateway_api_internal_enabled ? 1 : 0
  depends_on = [kubernetes_manifest.gateway_class_alb, kubernetes_manifest.gw_int_alb_config]

  manifest = {
    apiVersion = "gateway.networking.k8s.io/v1"
    kind       = "Gateway"
    metadata = {
      name      = local.gateway_api_internal_alb_name
      namespace = "kube-system"
    }
    spec = {
      gatewayClassName = "aws-alb"
      infrastructure = {
        parametersRef = {
          group = "gateway.k8s.aws"
          kind  = "LoadBalancerConfiguration"
          name  = local.gateway_api_internal_alb_name
        }
      }
      listeners = [{
        name     = "https"
        protocol = "HTTPS"
        port     = 443
        tls = {
          mode = "Terminate"
          certificateRefs = [{
            group = ""
            kind  = "Secret"
            name  = "default-cert"
          }]
        }
        allowedRoutes = {
          namespaces = {
            from = "All"
          }
        }
      }]
    }
  }
}

resource "kubernetes_manifest" "gw_int_nlb_config" {
  count      = var.kubernetes_provider_enabled && var.gateway_api_internal_enabled ? 1 : 0
  depends_on = [kubernetes_manifest.gateway_api_crds]

  manifest = {
    apiVersion = "gateway.k8s.aws/v1beta1"
    kind       = "LoadBalancerConfiguration"
    metadata = {
      name      = local.gateway_api_internal_nlb_name
      namespace = "kube-system"
    }
    spec = {
      loadBalancerName                = format("%s-%s", local.gateway_api_lb_name_prefix, local.gateway_api_internal_nlb_name)
      scheme                          = "internal"
      securityGroups                  = [module.gateway_api_internal_nlb[local.gateway_api_internal_nlb_name].sg_nlb_id]
      manageBackendSecurityGroupRules = false
      listenerConfigurations = [{
        protocolPort       = "TLS:443"
        alpnPolicy         = "None"
        sslPolicy          = local.gateway_api_ssl_policies[var.internal_tls_listener_version]
        defaultCertificate = local.effective_internal_cert_arn
      }]
    }
  }
}

resource "kubernetes_manifest" "gw_int_nlb" {
  count      = var.kubernetes_provider_enabled && var.gateway_api_internal_enabled ? 1 : 0
  depends_on = [kubernetes_manifest.gateway_class_nlb, kubernetes_manifest.gw_int_nlb_config]

  manifest = {
    apiVersion = "gateway.networking.k8s.io/v1"
    kind       = "Gateway"
    metadata = {
      name      = local.gateway_api_internal_nlb_name
      namespace = "kube-system"
    }
    spec = {
      gatewayClassName = "aws-nlb"
      infrastructure = {
        parametersRef = {
          group = "gateway.k8s.aws"
          kind  = "LoadBalancerConfiguration"
          name  = local.gateway_api_internal_nlb_name
        }
      }
      listeners = [
        {
          name     = "tcp"
          protocol = "TCP"
          port     = 80
          allowedRoutes = {
            namespaces = {
              from = "All"
            }
            kinds = [{
              group = "gateway.networking.k8s.io"
              kind  = "TCPRoute"
            }]
          }
        },
        {
          name     = "tls"
          protocol = "TLS"
          port     = 443
          tls = {
            mode = "Terminate"
            certificateRefs = [{
              group = ""
              kind  = "Secret"
              name  = "default-cert"
            }]
          }
          allowedRoutes = {
            namespaces = {
              from = "All"
            }
            kinds = [{
              group = "gateway.networking.k8s.io"
              kind  = "TLSRoute"
            }]
          }
        },
      ]
    }
  }
}
