---
apiVersion: node.eks.aws/v1alpha1
kind: NodeConfig
spec:
  cluster:
    name: ${cluster_name}
    cidr: ${cluster_cidr}
userdata:
    type: EKS_NODEADM
