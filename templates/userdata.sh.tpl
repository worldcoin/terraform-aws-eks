#!/bin/bash
set -e

KUBELET_EXTRA_ARGS=""
if [ -n "${kubelet_extra_args}" ]; then
  KUBELET_EXTRA_ARGS="--kubelet-extra-args ${kubelet_extra_args}"
fi

/etc/eks/bootstrap.sh ${cluster_name} \
  --b64-cluster-ca ${cluster_ca_certificate} \
  --apiserver-endpoint ${cluster_endpoint} \
  $KUBELET_EXTRA_ARGS
