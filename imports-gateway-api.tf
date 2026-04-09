locals {
  _gw_import = var.gateway_api_import_existing ? ["import"] : []

  _gw_import_external = var.gateway_api_import_existing && var.gateway_api_external_enabled ? ["import"] : []
  _gw_import_internal = var.gateway_api_import_existing && var.gateway_api_internal_enabled ? ["import"] : []

  _importable_crds = {
    for k, v in local.gateway_api_crds : k => v
    if var.gateway_api_import_existing && can(regex("^CustomResourceDefinition/", k)) && !contains([
      "CustomResourceDefinition/listenersets.gateway.networking.k8s.io",
    ], k)
  }
}

import {
  for_each = local._importable_crds
  to       = kubernetes_manifest.gateway_api_crds[each.key]
  id       = "apiVersion=apiextensions.k8s.io/v1,kind=CustomResourceDefinition,name=${split("/", each.key)[1]}"
}

import {
  for_each = local._gw_import
  to       = kubernetes_manifest.gateway_class_alb[0]
  id       = "apiVersion=gateway.networking.k8s.io/v1,kind=GatewayClass,name=aws-alb"
}

import {
  for_each = local._gw_import
  to       = kubernetes_manifest.gateway_class_nlb[0]
  id       = "apiVersion=gateway.networking.k8s.io/v1,kind=GatewayClass,name=aws-nlb"
}

import {
  for_each = local._gw_import_external
  to       = kubernetes_manifest.gw_ext_alb_config[0]
  id       = "apiVersion=gateway.k8s.aws/v1beta1,kind=LoadBalancerConfiguration,namespace=kube-system,name=gw-ext-alb"
}

import {
  for_each = local._gw_import_external
  to       = kubernetes_manifest.gw_ext_alb[0]
  id       = "apiVersion=gateway.networking.k8s.io/v1,kind=Gateway,namespace=kube-system,name=gw-ext-alb"
}

import {
  for_each = local._gw_import_external
  to       = kubernetes_manifest.gw_ext_nlb_config[0]
  id       = "apiVersion=gateway.k8s.aws/v1beta1,kind=LoadBalancerConfiguration,namespace=kube-system,name=gw-ext-nlb"
}

import {
  for_each = local._gw_import_external
  to       = kubernetes_manifest.gw_ext_nlb[0]
  id       = "apiVersion=gateway.networking.k8s.io/v1,kind=Gateway,namespace=kube-system,name=gw-ext-nlb"
}

import {
  for_each = local._gw_import_internal
  to       = kubernetes_manifest.gw_int_alb_config[0]
  id       = "apiVersion=gateway.k8s.aws/v1beta1,kind=LoadBalancerConfiguration,namespace=kube-system,name=gw-int-alb"
}

import {
  for_each = local._gw_import_internal
  to       = kubernetes_manifest.gw_int_alb[0]
  id       = "apiVersion=gateway.networking.k8s.io/v1,kind=Gateway,namespace=kube-system,name=gw-int-alb"
}

import {
  for_each = local._gw_import_internal
  to       = kubernetes_manifest.gw_int_nlb_config[0]
  id       = "apiVersion=gateway.k8s.aws/v1beta1,kind=LoadBalancerConfiguration,namespace=kube-system,name=gw-int-nlb"
}

import {
  for_each = local._gw_import_internal
  to       = kubernetes_manifest.gw_int_nlb[0]
  id       = "apiVersion=gateway.networking.k8s.io/v1,kind=Gateway,namespace=kube-system,name=gw-int-nlb"
}
