#!/bin/bash
set -e

/etc/eks/bootstrap.sh ${cluster_name} \
  --b64-cluster-ca ${cluster_ca_certificate} \
  --apiserver-endpoint ${cluster_endpoint}
