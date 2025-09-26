# Cluster recon for tfh-internal-tools-infra,us-east-1,teleport-orb-cluster-us-east-1,tunnel-vpc-teleport-orb-us-east-1

TFH EKS login...
```console
2025/09/22 11:45:35 INFO Logging into AWS
2025/09/22 11:45:35 INFO Token found and valid
2025/09/22 11:45:37 INFO Switch WARP Virtual Network to name=tunnel-vpc-teleport-orb-us-east-1 id=b47d3be9-ed75-4416-8c54-4a2e13e379a6
2025/09/22 11:45:38 INFO Active WARP Virtual Network id=b47d3be9-ed75-4416-8c54-4a2e13e379a6
Updated context tfh-teleport-orb-cluster-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "teleport-orb-cluster-us-east-1",
        "arn": "arn:aws:eks:us-east-1:507152310572:cluster/teleport-orb-cluster-us-east-1",
        "createdAt": "2025-05-14T11:32:08.152000+02:00",
        "version": "1.33",
        "endpoint": "https://9F1563585ACB50ABCBEC4603CDEA106A.yl4.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::507152310572:role/eks-cluster-teleport-orb-cluster-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0d88c6b5b456f325a",
                "subnet-01909f31d8b975522",
                "subnet-084f347337dbce0e6"
            ],
            "securityGroupIds": [
                "sg-00ae1a4751f8376e8"
            ],
            "clusterSecurityGroupId": "sg-073a5c44fab723c39",
            "vpcId": "vpc-0f49401940c691c91",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/9F1563585ACB50ABCBEC4603CDEA106A"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJQ1ptU3E4cThiaDB3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMU1UUXdPVE14TlRoYUZ3MHpOVEExTVRJd09UTTJOVGhhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURvRGFVU1ZodWRGY25qRmxuTXUvQS9UTitiR0thRXRqUGpGZE1vUjBlTmk2MWptZE5nR3BPTk82WkcKYmR5bzF5NDhjV0gvSHlodVZaenNJQUduNW9iTER0UGl4ditzKzM1dFhxWU52dm1kTFVpcVlXWm5aczVMVGRJagpsNVVqNGNBeWtxSFJ2SVVPUy9QaWxQalN0U2h0QXd6MUVpY1dIZCtCcE84aXBqVGl6VTh3aGp2V3pxNmVOcHpICmJ1VEZmVWM2WjlkUXVWSWxrWHVKZHc5ZmJEVlhuSis1aVZYV2NyZGU2SUU1cHpqS1ZBa0ludWtNT21EeHFxekMKaGZWdE9xcXVqQ2pJQ3FuK1J0bWJLMjk5RU04ekRzY1J0ZXB5RXhpOUFSNkFDdlc4R0hQY041ZmVOMzBHWjFmUwpKdnNlOXRtejc2a1laUnVJVGNnTjNRVCt2bm1MQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUdjN2RFdzNkN6UXRVY3ZDRUUwZEZOeWJrbkVEQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQlk1Y2F1eGJ0cQpiZUVwTC82RGovNnVkS3djcjR1SWpIYWVnWEc1emxEZVFzbXNIcjBsczlXL2cyOGswOXRTMmQ5RnZOVzYwcytPCkZVa25QMG9HUGdwb2FqSUc4aDhCL0lFS1JPU1kwOGkrZlVpQ2wrWVBqV0I5ejR5NEJObVIxUHVSYS9yeStHdFQKYzR3SW1EeVZST1I2QjJxYm1sSFVLcC9maHdUbElnc1A2MGRpTTlKUDFRbXIySVNYUTFzYWxrRnA4bGFTSEpQcApub0xRbnFCT1pGMm13TlIzamZBYXJyYndFR094Z2VPbXk5TUh4eVRtdUxDSXIyRWU0ZXV6UjhnT2FSUVh0ZWd3CnBtZnh5citkaSt6b2NBRG5GRFhFNlpiWUNZaU15SzdNZDlOcUhrS0NHR0IzMW1GL20yS3cyb290eWtwKzdGWGkKUWp4d25lRlV4a091Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "teleport-orb-cluster-us-east-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:507152310572:key/17dedead-cf6d-40f2-9d68-053eb7e346ac"
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
NAME                           STATUS   ROLES    AGE   VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-0-128-86.ec2.internal    Ready    <none>   21m   v1.33.4-eks-99d6cc0   10.0.128.86    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-129-148.ec2.internal   Ready    <none>   17m   v1.33.4-eks-99d6cc0   10.0.129.148   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-129-179.ec2.internal   Ready    <none>   27m   v1.33.4-eks-99d6cc0   10.0.129.179   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-teleport-orb-cluster-us-east-1
ip-10-0-130-64.ec2.internal    Ready    <none>   20m   v1.33.4-eks-99d6cc0   10.0.130.64    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-130-84.ec2.internal    Ready    <none>   21m   v1.33.4-eks-99d6cc0   10.0.130.84    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-131-84.ec2.internal    Ready    <none>   14m   v1.33.4-eks-99d6cc0   10.0.131.84    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-132-183.ec2.internal   Ready    <none>   19m   v1.33.4-eks-99d6cc0   10.0.132.183   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-132-85.ec2.internal    Ready    <none>   26m   v1.33.4-eks-99d6cc0   10.0.132.85    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-teleport-orb-cluster-us-east-1
```

Nodes and their taints
```
NAME                           STATUS   ROLES    TAINTS
ip-10-0-128-86.ec2.internal    Ready    <none>   <none>
ip-10-0-129-148.ec2.internal   Ready    <none>   <none>
ip-10-0-129-179.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-130-64.ec2.internal    Ready    <none>   <none>
ip-10-0-130-84.ec2.internal    Ready    <none>   <none>
ip-10-0-131-84.ec2.internal    Ready    <none>   <none>
ip-10-0-132-183.ec2.internal   Ready    <none>   <none>
ip-10-0-132-85.ec2.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                              MESSAGE
25m         Normal    Finalized                 node                                Finalized karpenter.sh/termination
12m         Normal    Finalized                 node                                Finalized karpenter.sh/termination
27m         Normal    Starting                  node/ip-10-0-128-6.ec2.internal     Starting kubelet.
27m         Warning   InvalidDiskCapacity       node/ip-10-0-128-6.ec2.internal     invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory   node/ip-10-0-128-6.ec2.internal     Node ip-10-0-128-6.ec2.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure     node/ip-10-0-128-6.ec2.internal     Node ip-10-0-128-6.ec2.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID      node/ip-10-0-128-6.ec2.internal     Node ip-10-0-128-6.ec2.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced   node/ip-10-0-128-6.ec2.internal     Updated Node Allocatable limit across pods
27m         Normal    Synced                    node/ip-10-0-128-6.ec2.internal     Node synced successfully
27m         Normal    RegisteredNode            node/ip-10-0-128-6.ec2.internal     Node ip-10-0-128-6.ec2.internal event: Registered Node ip-10-0-128-6.ec2.internal in Controller
27m         Normal    Starting                  node/ip-10-0-128-6.ec2.internal     
27m         Normal    ControllerVersionNotice   node/ip-10-0-128-6.ec2.internal     The node is managed by VPC resource controller version v1.7.9
27m         Warning   Unsupported               node/ip-10-0-128-6.ec2.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
27m         Normal    NodeReady                 node/ip-10-0-128-6.ec2.internal     Node ip-10-0-128-6.ec2.internal status is now: NodeReady
27m         Normal    Ready                     node/ip-10-0-128-6.ec2.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26m         Normal    RegisteredNode            node/ip-10-0-128-6.ec2.internal     Node ip-10-0-128-6.ec2.internal event: Registered Node ip-10-0-128-6.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-128-6.ec2.internal     The node is managed by VPC resource controller version v1.7.11
23m         Warning   Unsupported               node/ip-10-0-128-6.ec2.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    ControllerVersionNotice   node/ip-10-0-128-6.ec2.internal     The node is managed by VPC resource controller version v1.7.11
17m         Warning   Unsupported               node/ip-10-0-128-6.ec2.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
18m         Normal    NodeNotSchedulable        node/ip-10-0-128-6.ec2.internal     Node ip-10-0-128-6.ec2.internal status is now: NodeNotSchedulable
17m         Normal    NodeNotReady              node/ip-10-0-128-6.ec2.internal     Node ip-10-0-128-6.ec2.internal status is now: NodeNotReady
17m         Normal    MemoryPressure            node/ip-10-0-128-6.ec2.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure              node/ip-10-0-128-6.ec2.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure               node/ip-10-0-128-6.ec2.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                     node/ip-10-0-128-6.ec2.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DeletingNode              node/ip-10-0-128-6.ec2.internal     Deleting node ip-10-0-128-6.ec2.internal because it does not exist in the cloud provider
17m         Normal    RemovingNode              node/ip-10-0-128-6.ec2.internal     Node ip-10-0-128-6.ec2.internal event: Removing Node ip-10-0-128-6.ec2.internal from Controller
21m         Normal    Starting                  node/ip-10-0-128-86.ec2.internal    Starting kubelet.
21m         Warning   InvalidDiskCapacity       node/ip-10-0-128-86.ec2.internal    invalid capacity 0 on image filesystem
21m         Normal    NodeHasSufficientMemory   node/ip-10-0-128-86.ec2.internal    Node ip-10-0-128-86.ec2.internal status is now: NodeHasSufficientMemory
21m         Normal    NodeHasNoDiskPressure     node/ip-10-0-128-86.ec2.internal    Node ip-10-0-128-86.ec2.internal status is now: NodeHasNoDiskPressure
21m         Normal    NodeHasSufficientPID      node/ip-10-0-128-86.ec2.internal    Node ip-10-0-128-86.ec2.internal status is now: NodeHasSufficientPID
21m         Normal    NodeAllocatableEnforced   node/ip-10-0-128-86.ec2.internal    Updated Node Allocatable limit across pods
21m         Normal    RegisteredNode            node/ip-10-0-128-86.ec2.internal    Node ip-10-0-128-86.ec2.internal event: Registered Node ip-10-0-128-86.ec2.internal in Controller
20m         Normal    DisruptionBlocked         node/ip-10-0-128-86.ec2.internal    Node isn't initialized
20m         Normal    Starting                  node/ip-10-0-128-86.ec2.internal    
20m         Normal    Synced                    node/ip-10-0-128-86.ec2.internal    Node synced successfully
20m         Normal    ControllerVersionNotice   node/ip-10-0-128-86.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeReady                 node/ip-10-0-128-86.ec2.internal    Node ip-10-0-128-86.ec2.internal status is now: NodeReady
20m         Normal    Ready                     node/ip-10-0-128-86.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
20m         Normal    NodeTrunkInitiated        node/ip-10-0-128-86.ec2.internal    The node has trunk interface initialized successfully
14m         Normal    DisruptionBlocked         node/ip-10-0-128-86.ec2.internal    Node is nominated for a pending pod
15m         Normal    RegisteredNode            node/ip-10-0-128-86.ec2.internal    Node ip-10-0-128-86.ec2.internal event: Registered Node ip-10-0-128-86.ec2.internal in Controller
10m         Normal    DisruptionBlocked         node/ip-10-0-128-86.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
17m         Normal    Starting                  node/ip-10-0-129-148.ec2.internal   Starting kubelet.
17m         Warning   InvalidDiskCapacity       node/ip-10-0-129-148.ec2.internal   invalid capacity 0 on image filesystem
17m         Normal    NodeHasSufficientMemory   node/ip-10-0-129-148.ec2.internal   Node ip-10-0-129-148.ec2.internal status is now: NodeHasSufficientMemory
17m         Normal    NodeHasNoDiskPressure     node/ip-10-0-129-148.ec2.internal   Node ip-10-0-129-148.ec2.internal status is now: NodeHasNoDiskPressure
17m         Normal    NodeHasSufficientPID      node/ip-10-0-129-148.ec2.internal   Node ip-10-0-129-148.ec2.internal status is now: NodeHasSufficientPID
17m         Normal    NodeAllocatableEnforced   node/ip-10-0-129-148.ec2.internal   Updated Node Allocatable limit across pods
17m         Normal    Synced                    node/ip-10-0-129-148.ec2.internal   Node synced successfully
17m         Normal    RegisteredNode            node/ip-10-0-129-148.ec2.internal   Node ip-10-0-129-148.ec2.internal event: Registered Node ip-10-0-129-148.ec2.internal in Controller
17m         Normal    Starting                  node/ip-10-0-129-148.ec2.internal   
17m         Normal    DisruptionBlocked         node/ip-10-0-129-148.ec2.internal   Node isn't initialized
17m         Normal    ControllerVersionNotice   node/ip-10-0-129-148.ec2.internal   The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeReady                 node/ip-10-0-129-148.ec2.internal   Node ip-10-0-129-148.ec2.internal status is now: NodeReady
17m         Normal    Ready                     node/ip-10-0-129-148.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
16m         Normal    NodeTrunkInitiated        node/ip-10-0-129-148.ec2.internal   The node has trunk interface initialized successfully
15m         Normal    RegisteredNode            node/ip-10-0-129-148.ec2.internal   Node ip-10-0-129-148.ec2.internal event: Registered Node ip-10-0-129-148.ec2.internal in Controller
27m         Normal    Starting                  node/ip-10-0-129-179.ec2.internal   Starting kubelet.
27m         Warning   InvalidDiskCapacity       node/ip-10-0-129-179.ec2.internal   invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory   node/ip-10-0-129-179.ec2.internal   Node ip-10-0-129-179.ec2.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure     node/ip-10-0-129-179.ec2.internal   Node ip-10-0-129-179.ec2.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID      node/ip-10-0-129-179.ec2.internal   Node ip-10-0-129-179.ec2.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced   node/ip-10-0-129-179.ec2.internal   Updated Node Allocatable limit across pods
27m         Normal    Synced                    node/ip-10-0-129-179.ec2.internal   Node synced successfully
27m         Normal    RegisteredNode            node/ip-10-0-129-179.ec2.internal   Node ip-10-0-129-179.ec2.internal event: Registered Node ip-10-0-129-179.ec2.internal in Controller
27m         Normal    Starting                  node/ip-10-0-129-179.ec2.internal   
27m         Normal    ControllerVersionNotice   node/ip-10-0-129-179.ec2.internal   The node is managed by VPC resource controller version v1.7.9
27m         Warning   Unsupported               node/ip-10-0-129-179.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
27m         Normal    NodeReady                 node/ip-10-0-129-179.ec2.internal   Node ip-10-0-129-179.ec2.internal status is now: NodeReady
27m         Normal    Ready                     node/ip-10-0-129-179.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26m         Normal    RegisteredNode            node/ip-10-0-129-179.ec2.internal   Node ip-10-0-129-179.ec2.internal event: Registered Node ip-10-0-129-179.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-129-179.ec2.internal   The node is managed by VPC resource controller version v1.7.11
24m         Warning   Unsupported               node/ip-10-0-129-179.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    ControllerVersionNotice   node/ip-10-0-129-179.ec2.internal   The node is managed by VPC resource controller version v1.7.11
2m7s        Warning   Unsupported               node/ip-10-0-129-179.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
15m         Normal    RegisteredNode            node/ip-10-0-129-179.ec2.internal   Node ip-10-0-129-179.ec2.internal event: Registered Node ip-10-0-129-179.ec2.internal in Controller
55m         Normal    Unconsolidatable          node/ip-10-0-129-85.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
26m         Normal    RegisteredNode            node/ip-10-0-129-85.ec2.internal    Node ip-10-0-129-85.ec2.internal event: Registered Node ip-10-0-129-85.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-129-85.ec2.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-129-85.ec2.internal    The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked         node/ip-10-0-129-85.ec2.internal    Node is nominated for a pending pod
21m         Normal    ControllerVersionNotice   node/ip-10-0-129-85.ec2.internal    The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeTrunkInitiated        node/ip-10-0-129-85.ec2.internal    The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked         node/ip-10-0-129-85.ec2.internal    Node is nominated for a pending pod
17m         Normal    DisruptionBlocked         node/ip-10-0-129-85.ec2.internal    Node is deleting or marked for deletion
19m         Normal    DisruptionTerminating     node/ip-10-0-129-85.ec2.internal    Disrupting Node: Drifted/Replace
19m         Warning   FailedDraining            node/ip-10-0-129-85.ec2.internal    Failed to drain node, 4 pods are waiting to be evicted
17m         Warning   InstanceTerminating       node/ip-10-0-129-85.ec2.internal    Instance is terminating
16m         Normal    MemoryPressure            node/ip-10-0-129-85.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    DiskPressure              node/ip-10-0-129-85.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    PIDPressure               node/ip-10-0-129-85.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    Ready                     node/ip-10-0-129-85.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    NodeNotReady              node/ip-10-0-129-85.ec2.internal    Node ip-10-0-129-85.ec2.internal status is now: NodeNotReady
16m         Normal    RemovingNode              node/ip-10-0-129-85.ec2.internal    Node ip-10-0-129-85.ec2.internal event: Removing Node ip-10-0-129-85.ec2.internal from Controller
26m         Normal    RegisteredNode            node/ip-10-0-130-112.ec2.internal   Node ip-10-0-130-112.ec2.internal event: Registered Node ip-10-0-130-112.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-130-112.ec2.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-130-112.ec2.internal   The node has trunk interface initialized successfully
21m         Normal    ControllerVersionNotice   node/ip-10-0-130-112.ec2.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeTrunkInitiated        node/ip-10-0-130-112.ec2.internal   The node has trunk interface initialized successfully
15m         Normal    DisruptionBlocked         node/ip-10-0-130-112.ec2.internal   Node is deleting or marked for deletion
16m         Normal    DisruptionTerminating     node/ip-10-0-130-112.ec2.internal   Disrupting Node: Drifted/Replace
16m         Warning   FailedDraining            node/ip-10-0-130-112.ec2.internal   Failed to drain node, 10 pods are waiting to be evicted
15m         Normal    RegisteredNode            node/ip-10-0-130-112.ec2.internal   Node ip-10-0-130-112.ec2.internal event: Registered Node ip-10-0-130-112.ec2.internal in Controller
15m         Warning   InstanceTerminating       node/ip-10-0-130-112.ec2.internal   Instance is terminating
14m         Normal    NodeNotReady              node/ip-10-0-130-112.ec2.internal   Node ip-10-0-130-112.ec2.internal status is now: NodeNotReady
14m         Normal    MemoryPressure            node/ip-10-0-130-112.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure              node/ip-10-0-130-112.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure               node/ip-10-0-130-112.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                     node/ip-10-0-130-112.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DeletingNode              node/ip-10-0-130-112.ec2.internal   Deleting node ip-10-0-130-112.ec2.internal because it does not exist in the cloud provider
14m         Normal    RemovingNode              node/ip-10-0-130-112.ec2.internal   Node ip-10-0-130-112.ec2.internal event: Removing Node ip-10-0-130-112.ec2.internal from Controller
23m         Normal    Starting                  node/ip-10-0-130-142.ec2.internal   Starting kubelet.
23m         Warning   InvalidDiskCapacity       node/ip-10-0-130-142.ec2.internal   invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory   node/ip-10-0-130-142.ec2.internal   Node ip-10-0-130-142.ec2.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure     node/ip-10-0-130-142.ec2.internal   Node ip-10-0-130-142.ec2.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID      node/ip-10-0-130-142.ec2.internal   Node ip-10-0-130-142.ec2.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced   node/ip-10-0-130-142.ec2.internal   Updated Node Allocatable limit across pods
23m         Normal    Synced                    node/ip-10-0-130-142.ec2.internal   Node synced successfully
23m         Normal    DisruptionBlocked         node/ip-10-0-130-142.ec2.internal   Node isn't initialized
23m         Normal    RegisteredNode            node/ip-10-0-130-142.ec2.internal   Node ip-10-0-130-142.ec2.internal event: Registered Node ip-10-0-130-142.ec2.internal in Controller
23m         Normal    Starting                  node/ip-10-0-130-142.ec2.internal   
23m         Normal    ControllerVersionNotice   node/ip-10-0-130-142.ec2.internal   The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeReady                 node/ip-10-0-130-142.ec2.internal   Node ip-10-0-130-142.ec2.internal status is now: NodeReady
23m         Normal    Ready                     node/ip-10-0-130-142.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
23m         Normal    NodeTrunkInitiated        node/ip-10-0-130-142.ec2.internal   The node has trunk interface initialized successfully
21m         Normal    ControllerVersionNotice   node/ip-10-0-130-142.ec2.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeTrunkInitiated        node/ip-10-0-130-142.ec2.internal   The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked         node/ip-10-0-130-142.ec2.internal   Not all pods would schedule, cluster-monitoring/cluster-monitoring-b5977fcf8-n27gp => would schedule against uninitialized nodeclaim/main-amd64-zhfgv, node/ip-10-0-130-84.ec2.internal
21m         Normal    DisruptionTerminating     node/ip-10-0-130-142.ec2.internal   Disrupting Node: Drifted/Delete
21m         Warning   FailedDraining            node/ip-10-0-130-142.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
20m         Warning   InstanceTerminating       node/ip-10-0-130-142.ec2.internal   Instance is terminating
20m         Normal    RemovingNode              node/ip-10-0-130-142.ec2.internal   Node ip-10-0-130-142.ec2.internal event: Removing Node ip-10-0-130-142.ec2.internal from Controller
20m         Normal    Starting                  node/ip-10-0-130-64.ec2.internal    Starting kubelet.
20m         Warning   InvalidDiskCapacity       node/ip-10-0-130-64.ec2.internal    invalid capacity 0 on image filesystem
20m         Normal    NodeHasSufficientMemory   node/ip-10-0-130-64.ec2.internal    Node ip-10-0-130-64.ec2.internal status is now: NodeHasSufficientMemory
20m         Normal    NodeHasNoDiskPressure     node/ip-10-0-130-64.ec2.internal    Node ip-10-0-130-64.ec2.internal status is now: NodeHasNoDiskPressure
20m         Normal    NodeHasSufficientPID      node/ip-10-0-130-64.ec2.internal    Node ip-10-0-130-64.ec2.internal status is now: NodeHasSufficientPID
20m         Normal    NodeAllocatableEnforced   node/ip-10-0-130-64.ec2.internal    Updated Node Allocatable limit across pods
20m         Normal    Synced                    node/ip-10-0-130-64.ec2.internal    Node synced successfully
20m         Normal    DisruptionBlocked         node/ip-10-0-130-64.ec2.internal    Node isn't initialized
19m         Normal    RegisteredNode            node/ip-10-0-130-64.ec2.internal    Node ip-10-0-130-64.ec2.internal event: Registered Node ip-10-0-130-64.ec2.internal in Controller
19m         Normal    Starting                  node/ip-10-0-130-64.ec2.internal    
19m         Normal    NodeReady                 node/ip-10-0-130-64.ec2.internal    Node ip-10-0-130-64.ec2.internal status is now: NodeReady
19m         Normal    Ready                     node/ip-10-0-130-64.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    ControllerVersionNotice   node/ip-10-0-130-64.ec2.internal    The node is managed by VPC resource controller version v1.7.11
19m         Normal    NodeTrunkInitiated        node/ip-10-0-130-64.ec2.internal    The node has trunk interface initialized successfully
17m         Normal    DisruptionBlocked         node/ip-10-0-130-64.ec2.internal    Node is nominated for a pending pod
15m         Normal    RegisteredNode            node/ip-10-0-130-64.ec2.internal    Node ip-10-0-130-64.ec2.internal event: Registered Node ip-10-0-130-64.ec2.internal in Controller
21m         Normal    Starting                  node/ip-10-0-130-84.ec2.internal    Starting kubelet.
21m         Warning   InvalidDiskCapacity       node/ip-10-0-130-84.ec2.internal    invalid capacity 0 on image filesystem
21m         Normal    NodeHasSufficientMemory   node/ip-10-0-130-84.ec2.internal    Node ip-10-0-130-84.ec2.internal status is now: NodeHasSufficientMemory
21m         Normal    NodeHasNoDiskPressure     node/ip-10-0-130-84.ec2.internal    Node ip-10-0-130-84.ec2.internal status is now: NodeHasNoDiskPressure
21m         Normal    NodeHasSufficientPID      node/ip-10-0-130-84.ec2.internal    Node ip-10-0-130-84.ec2.internal status is now: NodeHasSufficientPID
21m         Normal    NodeAllocatableEnforced   node/ip-10-0-130-84.ec2.internal    Updated Node Allocatable limit across pods
21m         Normal    DisruptionBlocked         node/ip-10-0-130-84.ec2.internal    Node isn't initialized
21m         Normal    RegisteredNode            node/ip-10-0-130-84.ec2.internal    Node ip-10-0-130-84.ec2.internal event: Registered Node ip-10-0-130-84.ec2.internal in Controller
21m         Normal    Starting                  node/ip-10-0-130-84.ec2.internal    
21m         Normal    ControllerVersionNotice   node/ip-10-0-130-84.ec2.internal    The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeReady                 node/ip-10-0-130-84.ec2.internal    Node ip-10-0-130-84.ec2.internal status is now: NodeReady
21m         Normal    Ready                     node/ip-10-0-130-84.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    NodeTrunkInitiated        node/ip-10-0-130-84.ec2.internal    The node has trunk interface initialized successfully
21m         Normal    Synced                    node/ip-10-0-130-84.ec2.internal    Node synced successfully
19m         Normal    DisruptionBlocked         node/ip-10-0-130-84.ec2.internal    Node is nominated for a pending pod
15m         Normal    RegisteredNode            node/ip-10-0-130-84.ec2.internal    Node ip-10-0-130-84.ec2.internal event: Registered Node ip-10-0-130-84.ec2.internal in Controller
6m4s        Normal    Unconsolidatable          node/ip-10-0-130-84.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
27m         Warning   Unsupported               node/ip-10-0-131-123.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    RegisteredNode            node/ip-10-0-131-123.ec2.internal   Node ip-10-0-131-123.ec2.internal event: Registered Node ip-10-0-131-123.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-131-123.ec2.internal   The node is managed by VPC resource controller version v1.7.11
22m         Warning   Unsupported               node/ip-10-0-131-123.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    NodeNotSchedulable        node/ip-10-0-131-123.ec2.internal   Node ip-10-0-131-123.ec2.internal status is now: NodeNotSchedulable
22m         Normal    NodeNotReady              node/ip-10-0-131-123.ec2.internal   Node ip-10-0-131-123.ec2.internal status is now: NodeNotReady
22m         Normal    MemoryPressure            node/ip-10-0-131-123.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure              node/ip-10-0-131-123.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure               node/ip-10-0-131-123.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                     node/ip-10-0-131-123.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    DeletingNode              node/ip-10-0-131-123.ec2.internal   Deleting node ip-10-0-131-123.ec2.internal because it does not exist in the cloud provider
21m         Warning   DeletingNodeFailed        node/ip-10-0-131-123.ec2.internal   Failed deleting node ip-10-0-131-123.ec2.internal: nodes "ip-10-0-131-123.ec2.internal" not found
21m         Normal    RemovingNode              node/ip-10-0-131-123.ec2.internal   Node ip-10-0-131-123.ec2.internal event: Removing Node ip-10-0-131-123.ec2.internal from Controller
25m         Normal    Starting                  node/ip-10-0-131-245.ec2.internal   Starting kubelet.
25m         Warning   InvalidDiskCapacity       node/ip-10-0-131-245.ec2.internal   invalid capacity 0 on image filesystem
25m         Normal    NodeHasSufficientMemory   node/ip-10-0-131-245.ec2.internal   Node ip-10-0-131-245.ec2.internal status is now: NodeHasSufficientMemory
25m         Normal    NodeHasNoDiskPressure     node/ip-10-0-131-245.ec2.internal   Node ip-10-0-131-245.ec2.internal status is now: NodeHasNoDiskPressure
25m         Normal    NodeHasSufficientPID      node/ip-10-0-131-245.ec2.internal   Node ip-10-0-131-245.ec2.internal status is now: NodeHasSufficientPID
25m         Normal    NodeAllocatableEnforced   node/ip-10-0-131-245.ec2.internal   Updated Node Allocatable limit across pods
25m         Normal    Synced                    node/ip-10-0-131-245.ec2.internal   Node synced successfully
25m         Normal    RegisteredNode            node/ip-10-0-131-245.ec2.internal   Node ip-10-0-131-245.ec2.internal event: Registered Node ip-10-0-131-245.ec2.internal in Controller
25m         Normal    Starting                  node/ip-10-0-131-245.ec2.internal   
25m         Normal    ControllerVersionNotice   node/ip-10-0-131-245.ec2.internal   The node is managed by VPC resource controller version v1.7.11
24m         Warning   Unsupported               node/ip-10-0-131-245.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    NodeReady                 node/ip-10-0-131-245.ec2.internal   Node ip-10-0-131-245.ec2.internal status is now: NodeReady
25m         Normal    Ready                     node/ip-10-0-131-245.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    ControllerVersionNotice   node/ip-10-0-131-245.ec2.internal   The node is managed by VPC resource controller version v1.7.11
14m         Warning   Unsupported               node/ip-10-0-131-245.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
16m         Normal    NodeNotSchedulable        node/ip-10-0-131-245.ec2.internal   Node ip-10-0-131-245.ec2.internal status is now: NodeNotSchedulable
15m         Normal    RegisteredNode            node/ip-10-0-131-245.ec2.internal   Node ip-10-0-131-245.ec2.internal event: Registered Node ip-10-0-131-245.ec2.internal in Controller
14m         Normal    NodeNotReady              node/ip-10-0-131-245.ec2.internal   Node ip-10-0-131-245.ec2.internal status is now: NodeNotReady
14m         Normal    MemoryPressure            node/ip-10-0-131-245.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure              node/ip-10-0-131-245.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure               node/ip-10-0-131-245.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                     node/ip-10-0-131-245.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DeletingNode              node/ip-10-0-131-245.ec2.internal   Deleting node ip-10-0-131-245.ec2.internal because it does not exist in the cloud provider
14m         Normal    RemovingNode              node/ip-10-0-131-245.ec2.internal   Node ip-10-0-131-245.ec2.internal event: Removing Node ip-10-0-131-245.ec2.internal from Controller
25m         Normal    Starting                  node/ip-10-0-131-44.ec2.internal    Starting kubelet.
25m         Warning   InvalidDiskCapacity       node/ip-10-0-131-44.ec2.internal    invalid capacity 0 on image filesystem
25m         Normal    NodeHasSufficientMemory   node/ip-10-0-131-44.ec2.internal    Node ip-10-0-131-44.ec2.internal status is now: NodeHasSufficientMemory
25m         Normal    NodeHasNoDiskPressure     node/ip-10-0-131-44.ec2.internal    Node ip-10-0-131-44.ec2.internal status is now: NodeHasNoDiskPressure
25m         Normal    NodeHasSufficientPID      node/ip-10-0-131-44.ec2.internal    Node ip-10-0-131-44.ec2.internal status is now: NodeHasSufficientPID
25m         Normal    NodeAllocatableEnforced   node/ip-10-0-131-44.ec2.internal    Updated Node Allocatable limit across pods
25m         Normal    Synced                    node/ip-10-0-131-44.ec2.internal    Node synced successfully
25m         Normal    RegisteredNode            node/ip-10-0-131-44.ec2.internal    Node ip-10-0-131-44.ec2.internal event: Registered Node ip-10-0-131-44.ec2.internal in Controller
25m         Normal    Starting                  node/ip-10-0-131-44.ec2.internal    
25m         Normal    DisruptionBlocked         node/ip-10-0-131-44.ec2.internal    Node isn't initialized
25m         Normal    ControllerVersionNotice   node/ip-10-0-131-44.ec2.internal    The node is managed by VPC resource controller version v1.7.11
25m         Normal    NodeReady                 node/ip-10-0-131-44.ec2.internal    Node ip-10-0-131-44.ec2.internal status is now: NodeReady
25m         Normal    Ready                     node/ip-10-0-131-44.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
25m         Normal    NodeTrunkInitiated        node/ip-10-0-131-44.ec2.internal    The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked         node/ip-10-0-131-44.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
21m         Normal    ControllerVersionNotice   node/ip-10-0-131-44.ec2.internal    The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeTrunkInitiated        node/ip-10-0-131-44.ec2.internal    The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked         node/ip-10-0-131-44.ec2.internal    Not all pods would schedule, cluster-monitoring/cluster-monitoring-b5977fcf8-dkm22 => would schedule against uninitialized nodeclaim/main-amd64-zhfgv, node/ip-10-0-130-84.ec2.internal
19m         Normal    DisruptionBlocked         node/ip-10-0-131-44.ec2.internal    Node is deleting or marked for deletion
19m         Normal    DisruptionTerminating     node/ip-10-0-131-44.ec2.internal    Disrupting Node: Drifted/Replace
19m         Warning   FailedDraining            node/ip-10-0-131-44.ec2.internal    Failed to drain node, 4 pods are waiting to be evicted
18m         Warning   InstanceTerminating       node/ip-10-0-131-44.ec2.internal    Instance is terminating
17m         Normal    NodeNotReady              node/ip-10-0-131-44.ec2.internal    Node ip-10-0-131-44.ec2.internal status is now: NodeNotReady
17m         Normal    MemoryPressure            node/ip-10-0-131-44.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure              node/ip-10-0-131-44.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure               node/ip-10-0-131-44.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                     node/ip-10-0-131-44.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DeletingNode              node/ip-10-0-131-44.ec2.internal    Deleting node ip-10-0-131-44.ec2.internal because it does not exist in the cloud provider
17m         Normal    RemovingNode              node/ip-10-0-131-44.ec2.internal    Node ip-10-0-131-44.ec2.internal event: Removing Node ip-10-0-131-44.ec2.internal from Controller
15m         Normal    Starting                  node/ip-10-0-131-84.ec2.internal    Starting kubelet.
15m         Warning   InvalidDiskCapacity       node/ip-10-0-131-84.ec2.internal    invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory   node/ip-10-0-131-84.ec2.internal    Node ip-10-0-131-84.ec2.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure     node/ip-10-0-131-84.ec2.internal    Node ip-10-0-131-84.ec2.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID      node/ip-10-0-131-84.ec2.internal    Node ip-10-0-131-84.ec2.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced   node/ip-10-0-131-84.ec2.internal    Updated Node Allocatable limit across pods
14m         Normal    Synced                    node/ip-10-0-131-84.ec2.internal    Node synced successfully
14m         Normal    RegisteredNode            node/ip-10-0-131-84.ec2.internal    Node ip-10-0-131-84.ec2.internal event: Registered Node ip-10-0-131-84.ec2.internal in Controller
14m         Normal    Starting                  node/ip-10-0-131-84.ec2.internal    
14m         Normal    DisruptionBlocked         node/ip-10-0-131-84.ec2.internal    Node isn't initialized
14m         Normal    ControllerVersionNotice   node/ip-10-0-131-84.ec2.internal    The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeReady                 node/ip-10-0-131-84.ec2.internal    Node ip-10-0-131-84.ec2.internal status is now: NodeReady
14m         Normal    Ready                     node/ip-10-0-131-84.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeTrunkInitiated        node/ip-10-0-131-84.ec2.internal    The node has trunk interface initialized successfully
10m         Normal    DisruptionBlocked         node/ip-10-0-131-84.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
25m         Normal    Unconsolidatable          node/ip-10-0-131-91.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
25m         Normal    DisruptionBlocked         node/ip-10-0-131-91.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
26m         Normal    RegisteredNode            node/ip-10-0-131-91.ec2.internal    Node ip-10-0-131-91.ec2.internal event: Registered Node ip-10-0-131-91.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-131-91.ec2.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-131-91.ec2.internal    The node has trunk interface initialized successfully
21m         Normal    ControllerVersionNotice   node/ip-10-0-131-91.ec2.internal    The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeTrunkInitiated        node/ip-10-0-131-91.ec2.internal    The node has trunk interface initialized successfully
21m         Warning   FailedDraining            node/ip-10-0-131-91.ec2.internal    Failed to drain node, 14 pods are waiting to be evicted
19m         Normal    DisruptionBlocked         node/ip-10-0-131-91.ec2.internal    Node is deleting or marked for deletion
20m         Warning   InstanceTerminating       node/ip-10-0-131-91.ec2.internal    Instance is terminating
19m         Normal    RemovingNode              node/ip-10-0-131-91.ec2.internal    Node ip-10-0-131-91.ec2.internal event: Removing Node ip-10-0-131-91.ec2.internal from Controller
27m         Warning   Unsupported               node/ip-10-0-132-101.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    RegisteredNode            node/ip-10-0-132-101.ec2.internal   Node ip-10-0-132-101.ec2.internal event: Registered Node ip-10-0-132-101.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-132-101.ec2.internal   The node is managed by VPC resource controller version v1.7.11
23m         Warning   Unsupported               node/ip-10-0-132-101.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    NodeNotSchedulable        node/ip-10-0-132-101.ec2.internal   Node ip-10-0-132-101.ec2.internal status is now: NodeNotSchedulable
21m         Normal    ControllerVersionNotice   node/ip-10-0-132-101.ec2.internal   The node is managed by VPC resource controller version v1.7.11
19m         Warning   Unsupported               node/ip-10-0-132-101.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
19m         Normal    NodeNotReady              node/ip-10-0-132-101.ec2.internal   Node ip-10-0-132-101.ec2.internal status is now: NodeNotReady
19m         Normal    MemoryPressure            node/ip-10-0-132-101.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DiskPressure              node/ip-10-0-132-101.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    PIDPressure               node/ip-10-0-132-101.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    Ready                     node/ip-10-0-132-101.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DeletingNode              node/ip-10-0-132-101.ec2.internal   Deleting node ip-10-0-132-101.ec2.internal because it does not exist in the cloud provider
19m         Normal    RemovingNode              node/ip-10-0-132-101.ec2.internal   Node ip-10-0-132-101.ec2.internal event: Removing Node ip-10-0-132-101.ec2.internal from Controller
20m         Normal    Starting                  node/ip-10-0-132-183.ec2.internal   Starting kubelet.
20m         Warning   InvalidDiskCapacity       node/ip-10-0-132-183.ec2.internal   invalid capacity 0 on image filesystem
20m         Normal    NodeHasSufficientMemory   node/ip-10-0-132-183.ec2.internal   Node ip-10-0-132-183.ec2.internal status is now: NodeHasSufficientMemory
20m         Normal    NodeHasNoDiskPressure     node/ip-10-0-132-183.ec2.internal   Node ip-10-0-132-183.ec2.internal status is now: NodeHasNoDiskPressure
20m         Normal    NodeHasSufficientPID      node/ip-10-0-132-183.ec2.internal   Node ip-10-0-132-183.ec2.internal status is now: NodeHasSufficientPID
20m         Normal    NodeAllocatableEnforced   node/ip-10-0-132-183.ec2.internal   Updated Node Allocatable limit across pods
19m         Normal    RegisteredNode            node/ip-10-0-132-183.ec2.internal   Node ip-10-0-132-183.ec2.internal event: Registered Node ip-10-0-132-183.ec2.internal in Controller
19m         Normal    Synced                    node/ip-10-0-132-183.ec2.internal   Node synced successfully
19m         Normal    Starting                  node/ip-10-0-132-183.ec2.internal   
19m         Normal    DisruptionBlocked         node/ip-10-0-132-183.ec2.internal   Node isn't initialized
19m         Normal    NodeReady                 node/ip-10-0-132-183.ec2.internal   Node ip-10-0-132-183.ec2.internal status is now: NodeReady
19m         Normal    Ready                     node/ip-10-0-132-183.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    ControllerVersionNotice   node/ip-10-0-132-183.ec2.internal   The node is managed by VPC resource controller version v1.7.11
19m         Normal    NodeTrunkInitiated        node/ip-10-0-132-183.ec2.internal   The node has trunk interface initialized successfully
15m         Normal    RegisteredNode            node/ip-10-0-132-183.ec2.internal   Node ip-10-0-132-183.ec2.internal event: Registered Node ip-10-0-132-183.ec2.internal in Controller
54m         Normal    Unconsolidatable          node/ip-10-0-132-235.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
26m         Normal    RegisteredNode            node/ip-10-0-132-235.ec2.internal   Node ip-10-0-132-235.ec2.internal event: Registered Node ip-10-0-132-235.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-132-235.ec2.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-132-235.ec2.internal   The node has trunk interface initialized successfully
26m         Warning   FailedDraining            node/ip-10-0-132-235.ec2.internal   Failed to drain node, 7 pods are waiting to be evicted
26m         Normal    DisruptionBlocked         node/ip-10-0-132-235.ec2.internal   Node is deleting or marked for deletion
25m         Warning   InstanceTerminating       node/ip-10-0-132-235.ec2.internal   Instance is terminating
25m         Normal    RemovingNode              node/ip-10-0-132-235.ec2.internal   Node ip-10-0-132-235.ec2.internal event: Removing Node ip-10-0-132-235.ec2.internal from Controller
39m         Normal    Unconsolidatable          node/ip-10-0-132-241.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
26m         Normal    RegisteredNode            node/ip-10-0-132-241.ec2.internal   Node ip-10-0-132-241.ec2.internal event: Registered Node ip-10-0-132-241.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-132-241.ec2.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-132-241.ec2.internal   The node has trunk interface initialized successfully
26m         Normal    DisruptionBlocked         node/ip-10-0-132-241.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
24m         Warning   FailedDraining            node/ip-10-0-132-241.ec2.internal   Failed to drain node, 8 pods are waiting to be evicted
24m         Normal    DisruptionBlocked         node/ip-10-0-132-241.ec2.internal   Node is deleting or marked for deletion
23m         Warning   InstanceTerminating       node/ip-10-0-132-241.ec2.internal   Instance is terminating
22m         Normal    NodeNotReady              node/ip-10-0-132-241.ec2.internal   Node ip-10-0-132-241.ec2.internal status is now: NodeNotReady
22m         Normal    MemoryPressure            node/ip-10-0-132-241.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure              node/ip-10-0-132-241.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure               node/ip-10-0-132-241.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                     node/ip-10-0-132-241.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    DeletingNode              node/ip-10-0-132-241.ec2.internal   Deleting node ip-10-0-132-241.ec2.internal because it does not exist in the cloud provider
21m         Warning   InstanceTerminating       node/ip-10-0-132-241.ec2.internal   Instance is terminating
21m         Warning   DeletingNodeFailed        node/ip-10-0-132-241.ec2.internal   Failed deleting node ip-10-0-132-241.ec2.internal: nodes "ip-10-0-132-241.ec2.internal" not found
21m         Normal    RemovingNode              node/ip-10-0-132-241.ec2.internal   Node ip-10-0-132-241.ec2.internal event: Removing Node ip-10-0-132-241.ec2.internal from Controller
26m         Normal    Starting                  node/ip-10-0-132-85.ec2.internal    Starting kubelet.
26m         Warning   InvalidDiskCapacity       node/ip-10-0-132-85.ec2.internal    invalid capacity 0 on image filesystem
26m         Normal    NodeHasSufficientMemory   node/ip-10-0-132-85.ec2.internal    Node ip-10-0-132-85.ec2.internal status is now: NodeHasSufficientMemory
26m         Normal    NodeHasNoDiskPressure     node/ip-10-0-132-85.ec2.internal    Node ip-10-0-132-85.ec2.internal status is now: NodeHasNoDiskPressure
26m         Normal    NodeHasSufficientPID      node/ip-10-0-132-85.ec2.internal    Node ip-10-0-132-85.ec2.internal status is now: NodeHasSufficientPID
26m         Normal    NodeAllocatableEnforced   node/ip-10-0-132-85.ec2.internal    Updated Node Allocatable limit across pods
26m         Normal    Synced                    node/ip-10-0-132-85.ec2.internal    Node synced successfully
26m         Normal    RegisteredNode            node/ip-10-0-132-85.ec2.internal    Node ip-10-0-132-85.ec2.internal event: Registered Node ip-10-0-132-85.ec2.internal in Controller
26m         Normal    Starting                  node/ip-10-0-132-85.ec2.internal    
26m         Normal    ControllerVersionNotice   node/ip-10-0-132-85.ec2.internal    The node is managed by VPC resource controller version v1.7.11
23m         Warning   Unsupported               node/ip-10-0-132-85.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    NodeReady                 node/ip-10-0-132-85.ec2.internal    Node ip-10-0-132-85.ec2.internal status is now: NodeReady
26m         Normal    Ready                     node/ip-10-0-132-85.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    ControllerVersionNotice   node/ip-10-0-132-85.ec2.internal    The node is managed by VPC resource controller version v1.7.11
62s         Warning   Unsupported               node/ip-10-0-132-85.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
15m         Normal    RegisteredNode            node/ip-10-0-132-85.ec2.internal    Node ip-10-0-132-85.ec2.internal event: Registered Node ip-10-0-132-85.ec2.internal in Controller
54m         Normal    Unconsolidatable          node/ip-10-0-133-20.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
26m         Normal    RegisteredNode            node/ip-10-0-133-20.ec2.internal    Node ip-10-0-133-20.ec2.internal event: Registered Node ip-10-0-133-20.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-133-20.ec2.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-133-20.ec2.internal    The node has trunk interface initialized successfully
21m         Normal    ControllerVersionNotice   node/ip-10-0-133-20.ec2.internal    The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeTrunkInitiated        node/ip-10-0-133-20.ec2.internal    The node has trunk interface initialized successfully
15m         Normal    RegisteredNode            node/ip-10-0-133-20.ec2.internal    Node ip-10-0-133-20.ec2.internal event: Registered Node ip-10-0-133-20.ec2.internal in Controller
13m         Normal    DisruptionBlocked         node/ip-10-0-133-20.ec2.internal    Node is deleting or marked for deletion
14m         Normal    DisruptionTerminating     node/ip-10-0-133-20.ec2.internal    Disrupting Node: Drifted/Replace
14m         Warning   FailedDraining            node/ip-10-0-133-20.ec2.internal    Failed to drain node, 9 pods are waiting to be evicted
13m         Warning   InstanceTerminating       node/ip-10-0-133-20.ec2.internal    Instance is terminating
12m         Normal    NodeNotReady              node/ip-10-0-133-20.ec2.internal    Node ip-10-0-133-20.ec2.internal status is now: NodeNotReady
12m         Normal    MemoryPressure            node/ip-10-0-133-20.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DiskPressure              node/ip-10-0-133-20.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    PIDPressure               node/ip-10-0-133-20.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    Ready                     node/ip-10-0-133-20.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    RemovingNode              node/ip-10-0-133-20.ec2.internal    Node ip-10-0-133-20.ec2.internal event: Removing Node ip-10-0-133-20.ec2.internal from Controller
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE            NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring   cluster-monitoring-pdb         N/A             1                 1                     130d
karpenter            karpenter                      N/A             1                 1                     130d
kube-system          coredns                        N/A             1                 1                     131d
kube-system          ebs-csi-controller             N/A             1                 1                     131d
kyverno              kyverno-admission-controller   1               N/A               2                     130d
```

Pods with Karpenter.sh/Do-Not-Disrupt Annotation
```
```

Pods Tolerating karpenter.sh/disrupted
```
```

Static Pods
```
```

Cluster version up to date - no pluto apis detection rquired

Generated on: Mon Sep 22 11:45:59 CEST 2025
