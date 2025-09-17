#!/bin/bash
set -e

# source: https://docs.aws.amazon.com/enclaves/latest/user/kubernetes.html
readonly NE_ALLOCATOR_SPEC_PATH="/etc/nitro_enclaves/allocator.yaml"
# Node resources that will be allocated for Nitro Enclaves
readonly CPU_COUNT=${enclave_cpu_allocation}
readonly MEMORY_MIB=${enclave_memory_allocation}

# This step below is needed to install nitro-enclaves-allocator service.
dnf install -y aws-nitro-enclaves-cli

# Update enclave's allocator specification: allocator.yaml
sed -i "s/cpu_count:.*/cpu_count: $CPU_COUNT/g" $NE_ALLOCATOR_SPEC_PATH
sed -i "s/memory_mib:.*/memory_mib: $MEMORY_MIB/g" $NE_ALLOCATOR_SPEC_PATH
# Restart the nitro-enclaves-allocator service to take changes effect.
systemctl restart nitro-enclaves-allocator.service
echo "NE user data script has finished successfully."
