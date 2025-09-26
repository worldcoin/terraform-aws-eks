# Cluster recon for tfh-orb-dev-infra,us-west-1,orb-dev-us-west-1

TFH EKS login...
```console
2025/09/17 13:56:19 INFO Logging into AWS
2025/09/17 13:56:19 INFO Token found and valid
2025/09/17 13:56:21 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-dev-us-west-1 id=edc0b164-c8b0-4dae-b4aa-7f115b6ae9c7
2025/09/17 13:56:22 INFO Active WARP Virtual Network id=edc0b164-c8b0-4dae-b4aa-7f115b6ae9c7
Updated context tfh-orb-dev-us-west-1 in /Users/lukasz.glowacki/.kube/config
```

Current version: 1.33
Next version: 1.33

Checking addons...
```
aws-ebs-csi-driver      v1.48.0-eksbuild.2
coredns                 v1.11.4-eksbuild.22
eks-pod-identity-agent  v1.3.8-eksbuild.2
kube-proxy              v1.32.6-eksbuild.8
snapshot-controller     v8.3.0-eksbuild.1
vpc-cni                 v1.20.1-eksbuild.3
```

Cluster version up to date - no update insights

Show full cluster description:
```json
{
    "cluster": {
        "name": "orb-dev-us-west-1",
        "arn": "arn:aws:eks:us-west-1:448049788227:cluster/orb-dev-us-west-1",
        "createdAt": "2025-03-04T09:03:50.333000+01:00",
        "version": "1.33",
        "endpoint": "https://1E3AEE5A337B52C0BCB4E115B62BBEDC.yl4.us-west-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::448049788227:role/eks-cluster-orb-dev-us-west-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-03d466f73dfeeb16c",
                "subnet-0f5a02240ef066997"
            ],
            "securityGroupIds": [
                "sg-0e63105d92c04692d"
            ],
            "clusterSecurityGroupId": "sg-0d9091d1b70b61424",
            "vpcId": "vpc-0bacdccefe54b24cc",
            "endpointPublicAccess": false,
            "endpointPrivateAccess": true,
            "publicAccessCidrs": [
                "0.0.0.0/0"
            ]
        },
        "kubernetesNetworkConfig": {
            "serviceIpv4Cidr": "172.20.0.0/16",
            "ipFamily": "ipv4",
            "elasticLoadBalancing": {
                "enabled": false
            }
        },
        "logging": {
            "clusterLogging": [
                {
                    "types": [
                        "api",
                        "audit",
                        "authenticator",
                        "controllerManager",
                        "scheduler"
                    ],
                    "enabled": true
                }
            ]
        },
        "identity": {
            "oidc": {
                "issuer": "https://oidc.eks.us-west-1.amazonaws.com/id/1E3AEE5A337B52C0BCB4E115B62BBEDC"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJYjcrT0dHOXdYK0F3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBek1EUXdPREF6TURoYUZ3MHpOVEF6TURJd09EQTRNRGhhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUNqU0tIZ0ZRZU82c1g2NDV3ZURUSXpDN3ZUYmcybVBqaTR5NTUvdzhNek5NeXZ4YVpubURRdTZxSFkKWnlzbzVrajB5WWdra3kzbHdJSnF3RGxzK2pMNTA2Q2hJL3hCaWdxOEovdHBIT2NqQWkvdWsrUzNPcHQ4V3JRWgphc1k0Y0IwVjVwYzhpOWVjUGdKYjVLZTRHNElmZnl2NCs2NjlJK2hUVGZUc1paZWhBVzhDN0IvZENrNnd6VmYwCnZneWdUT0FBYWNoYmRRbVA5R3JJUUlrWm9DQkhEYkh5QUhWaENXelZPU2RrR2hZUlV1WG5JRjFKTFM0eG4wTWQKcWYxNVVzOUhnNjNIbURTbFFpU0RybU5Pd3FSMm5wNmwvQndlblFqUDdNRFBvL3h4UGhXcWdaQXVjWDd2YmVVTgoweHVOOWZ5T2hoL1J2QzJGSXZpcWp5RGpDMldwQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJTdWVtQ0MrM05QQkhGdXRqM0FxN2gvV1JqbGpEQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQmVaaGRlNzUvRwpjdG5GbVAzY0Y4NHNITFVDZHM1MlZUYzJyTi9IYm51VHZtYUMwOVlrdkpFc3ozdWc5MXN6c0Y1RDN6MCt5dHRPCkdSbGVvRVZlRldWc1ROclNwQndwRERxT09YUUtXUVB0OUo5VTZCSE5rd28rM3RSVXVWaGs5TWtnMEttZEc2UXIKTXpTdjVscHdUSVJGQThwVTk0ZVBJbnMzMmFTZngwcW14UUs0akQrQUFPN09aM005RitpMTRzMVBRd0xXSFdnZwpxWXh3UTRNRG5yUTdiV1I0dEEvUFVJazRYbG5aQnVBcy9YcDlZREtkZm5Dd3lkbHBYemoySnZnaEtIeWdCSlo4ClY2VG1NQ3NNMExKcFlxTnd4dGh6U3d1ZGp3aklGdVhxZHl2VkcwR0lOV2JncjdWalVWM1lkODhRczdxMjZhdzAKMmkvMldnWVRRZ09VCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.13",
        "tags": {
            "Environment": "dev",
            "karpenter.sh/discovery": "orb-dev-us-west-1",
            "Team": "orb",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-west-1:448049788227:key/80e24c8d-ad15-4360-b59a-07d1fc1095a3"
                }
            }
        ],
        "accessConfig": {
            "authenticationMode": "API_AND_CONFIG_MAP"
        },
        "upgradePolicy": {
            "supportType": "EXTENDED"
        },
        "deletionProtection": false
    }
}
```

Cluster nodes list
```
NAME                                        STATUS   ROLES    AGE   VERSION               INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME
ip-10-9-16-226.us-west-1.compute.internal   Ready    <none>   21h   v1.33.4-eks-99d6cc0   10.9.16.226   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
ip-10-9-17-198.us-west-1.compute.internal   Ready    <none>   44m   v1.33.4-eks-99d6cc0   10.9.17.198   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.aarch64   containerd://1.7.27
ip-10-9-18-25.us-west-1.compute.internal    Ready    <none>   20h   v1.33.4-eks-99d6cc0   10.9.18.25    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
ip-10-9-18-253.us-west-1.compute.internal   Ready    <none>   21h   v1.33.4-eks-99d6cc0   10.9.18.253   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
ip-10-9-19-79.us-west-1.compute.internal    Ready    <none>   21h   v1.33.4-eks-99d6cc0   10.9.19.79    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                                           MESSAGE
18m         Normal    Finalized                 node                                             Finalized karpenter.sh/termination
23s         Warning   Unsupported               node/ip-10-9-16-226.us-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
44m         Normal    Starting                  node/ip-10-9-17-198.us-west-1.compute.internal   Starting kubelet.
44m         Warning   InvalidDiskCapacity       node/ip-10-9-17-198.us-west-1.compute.internal   invalid capacity 0 on image filesystem
44m         Normal    NodeHasSufficientMemory   node/ip-10-9-17-198.us-west-1.compute.internal   Node ip-10-9-17-198.us-west-1.compute.internal status is now: NodeHasSufficientMemory
44m         Normal    NodeHasNoDiskPressure     node/ip-10-9-17-198.us-west-1.compute.internal   Node ip-10-9-17-198.us-west-1.compute.internal status is now: NodeHasNoDiskPressure
44m         Normal    NodeHasSufficientPID      node/ip-10-9-17-198.us-west-1.compute.internal   Node ip-10-9-17-198.us-west-1.compute.internal status is now: NodeHasSufficientPID
44m         Normal    NodeAllocatableEnforced   node/ip-10-9-17-198.us-west-1.compute.internal   Updated Node Allocatable limit across pods
44m         Normal    Synced                    node/ip-10-9-17-198.us-west-1.compute.internal   Node synced successfully
44m         Normal    RegisteredNode            node/ip-10-9-17-198.us-west-1.compute.internal   Node ip-10-9-17-198.us-west-1.compute.internal event: Registered Node ip-10-9-17-198.us-west-1.compute.internal in Controller
44m         Normal    Starting                  node/ip-10-9-17-198.us-west-1.compute.internal   
44m         Normal    DisruptionBlocked         node/ip-10-9-17-198.us-west-1.compute.internal   Node isn't initialized
44m         Normal    ControllerVersionNotice   node/ip-10-9-17-198.us-west-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
44m         Normal    NodeReady                 node/ip-10-9-17-198.us-west-1.compute.internal   Node ip-10-9-17-198.us-west-1.compute.internal status is now: NodeReady
44m         Normal    Ready                     node/ip-10-9-17-198.us-west-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
44m         Normal    NodeTrunkInitiated        node/ip-10-9-17-198.us-west-1.compute.internal   The node has trunk interface initialized successfully
14m         Normal    DisruptionBlocked         node/ip-10-9-17-198.us-west-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
20m         Normal    DisruptionBlocked         node/ip-10-9-17-198.us-west-1.compute.internal   Node is nominated for a pending pod
54m         Normal    DisruptionBlocked         node/ip-10-9-18-117.us-west-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
39m         Normal    DisruptionBlocked         node/ip-10-9-18-117.us-west-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
20m         Normal    DisruptionTerminating     node/ip-10-9-18-117.us-west-1.compute.internal   Disrupting Node: Underutilized
20m         Normal    DisruptionBlocked         node/ip-10-9-18-117.us-west-1.compute.internal   Node is deleting or marked for deletion
20m         Warning   FailedDraining            node/ip-10-9-18-117.us-west-1.compute.internal   Failed to drain node, 13 pods are waiting to be evicted
19m         Warning   InstanceTerminating       node/ip-10-9-18-117.us-west-1.compute.internal   Instance is terminating
18m         Normal    RemovingNode              node/ip-10-9-18-117.us-west-1.compute.internal   Node ip-10-9-18-117.us-west-1.compute.internal event: Removing Node ip-10-9-18-117.us-west-1.compute.internal from Controller
59m         Normal    Unconsolidatable          node/ip-10-9-18-25.us-west-1.compute.internal    Can't remove without creating 2 candidates
28m         Normal    Unconsolidatable          node/ip-10-9-18-25.us-west-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
13m         Normal    Unconsolidatable          node/ip-10-9-18-25.us-west-1.compute.internal    Can't remove without creating 2 candidates
39s         Warning   Unsupported               node/ip-10-9-18-253.us-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    Unconsolidatable          node/ip-10-9-19-79.us-west-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
14m         Normal    DisruptionBlocked         node/ip-10-9-19-79.us-west-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE            NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring   cluster-monitoring-pdb         N/A             1                 1                     139d
karpenter            karpenter                      N/A             1                 1                     196d
kube-system          coredns                        N/A             1                 1                     197d
kube-system          ebs-csi-controller             N/A             1                 1                     197d
kyverno              kyverno-admission-controller   1               N/A               2                     196d
orb-chain-registry   orb-chain-registry-pdb         N/A             1                 1                     47d
```

Cluster version up to date - no pluto apis detection rquired
