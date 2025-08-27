---
apiVersion: node.eks.aws/v1alpha1
kind: NodeConfig
spec:
  cluster:
    name: ${cluster_name}
    apiServerEndpoint: ${cluster_endpoint}
    certificateAuthority: ${cluster_certificate}
    cidr: ${cluster_cidr}
  kubelet:
    config:
      clusterDNS:
        - "${cluster_dns}"
userdata:
    type: EKS_NODEADM
