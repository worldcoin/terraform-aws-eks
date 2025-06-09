#!/bin/bash
set -e

# source: https://docs.aws.amazon.com/enclaves/latest/user/kubernetes.html
readonly NE_ALLOCATOR_SPEC_PATH="/etc/nitro_enclaves/allocator.yaml"
# Node resources that will be allocated for Nitro Enclaves
readonly CPU_COUNT=4
readonly MEMORY_MIB=4096

# This step below is needed to install nitro-enclaves-allocator service.
amazon-linux-extras install aws-nitro-enclaves-cli -y

# Update enclave's allocator specification: allocator.yaml
sed -i "s/cpu_count:.*/cpu_count: $CPU_COUNT/g" $NE_ALLOCATOR_SPEC_PATH
sed -i "s/memory_mib:.*/memory_mib: $MEMORY_MIB/g" $NE_ALLOCATOR_SPEC_PATH
# Restart the nitro-enclaves-allocator service to take changes effect.
systemctl restart nitro-enclaves-allocator.service

echo "NE user data script has finished successfully."

KUBELET_EXTRA_ARGS=""
if [ -n "${kubelet_extra_args}" ]; then
  KUBELET_EXTRA_ARGS="--kubelet-extra-args ${kubelet_extra_args}"
fi

/etc/eks/bootstrap.sh ${cluster_name} \
  --b64-cluster-ca ${cluster_ca_certificate} \
  --apiserver-endpoint ${cluster_endpoint} \
  $KUBELET_EXTRA_ARGS
