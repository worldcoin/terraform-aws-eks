# Cluster recon for tfh-world-chat-service-prod-infra,eu-west-1,world-chat-service-prod-eu-west-1,tunnel-vpc-world-chat-service-prod-eu-west-1

TFH EKS login...
```console
2025/09/22 18:21:53 INFO Logging into AWS
2025/09/22 18:21:53 INFO Token found and valid
2025/09/22 18:21:55 INFO Switch WARP Virtual Network to name=tunnel-vpc-world-chat-service-prod-eu-west-1 id=598263cd-954c-466a-ae5a-791f758766f4
2025/09/22 18:21:59 INFO Active WARP Virtual Network id=598263cd-954c-466a-ae5a-791f758766f4
Updated context tfh-world-chat-service-prod-eu-west-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "world-chat-service-prod-eu-west-1",
        "arn": "arn:aws:eks:eu-west-1:535294144498:cluster/world-chat-service-prod-eu-west-1",
        "createdAt": "2025-08-11T11:28:31.947000+02:00",
        "version": "1.33",
        "endpoint": "https://17C9DC0ADA6130EDFA7C70CF8369AC8D.gr7.eu-west-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::535294144498:role/eks-cluster-world-chat-service-prod-eu-west-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-01c22054df6cf292c",
                "subnet-0aa4d11fe6b9168d7",
                "subnet-0c3ba7c00b37feae5"
            ],
            "securityGroupIds": [
                "sg-01c931983c3cf4c44"
            ],
            "clusterSecurityGroupId": "sg-0ccabcc4ecca63e26",
            "vpcId": "vpc-06ecc962022389a7c",
            "endpointPublicAccess": false,
            "endpointPrivateAccess": true,
            "publicAccessCidrs": []
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
                "issuer": "https://oidc.eks.eu-west-1.amazonaws.com/id/17C9DC0ADA6130EDFA7C70CF8369AC8D"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJWG9WME5XendlamN3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBNE1URXdPVEk0TkRKYUZ3MHpOVEE0TURrd09UTXpOREphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURFVVR3dmVScFhZc2UwZTB3cERseUpVSEFselFJMHd2SWw3L0RrM2toNVN4bjhkdStUanZ2VWFpaHAKSi9pYWVSdWQ2ejB0SFpBUTh4NkkyeklsakZIa0JRSUNkaWgvTHpPR2k2a2pDOVRZSU1iYko2KzBlczJialhNVApFbDBjM3pvckJRKzF3MHNCUTJXTEN5WFdLY1JSbWlxQVZZaWZ2cTlDaVp1cFNJMUt1L1QwQlN3MGRYL3VYaTcwClVnZXNmaytqMGltM2ZNdUJ3SjdSa3lSbk53UUlZNUc5bGpBWm5BczJYd3N1WXo5Q0ZIbjBuZmV2WE9NUjd0aCsKeUppemFiM3VvZEpvTDVYeHcrak80eG1Vb2FEckh0bVdDbnNjSkp3ZnpjZW9WQ2N6MlR4UGVwSlVtNE1RK3ZYTApYUU5qNmFzOUUxZEZOQVdGWmpJRkwrcUVFUTBMQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJTbklxbmQxM2FlSXZiT1loWnIwVzRUYVUxaVdUQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQThxdzJXeTUydAp3WmprYWxCWUd0RGxaei9jZEhPS05NQXRoejd3Z3V0cjVudVN5ODArVWwxMmN0ajZZckZYUzBSdmppTVE5Vjd3Ck96R3JxcjkyOEwxbElCZGRHSWdDSnJVQVhuWEkzYjA3SjJRVVI5bUlONUVEbTJ5WWs3QjVQajZZOXFQWDJXTW8Kd2xWeGNIaHhjcXRzcGRSWG1IaGk4dkd2MFIvREpRUFB6dk5scWxRY0RpVUxkMkpBVy9TM1JaSFNNaUJtd0E2RwphNnRFSlZ6S01XOVR2a3gyREZLQnhJQkl0ZlJ6R0xJRnliZzlNSWpQR255RmExVkMxczl2MzBSdEZjSWJmMlNiCnlERTVEQjBPeUVpUEhtWEt5WlN0VjVyNERXSXI2WXFvN2hjbDN2V2FXOGhZTmRkYU5vSFc4QXloWHp0OHNtbjEKSi9VUVBHMGZ0a2x4Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "world-chat-service-prod-eu-west-1",
            "Team": "world-chat-service",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-west-1:535294144498:key/4cab1e13-2972-4e31-9c67-f8608fefd697"
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
NAME                                         STATUS   ROLES    AGE    VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-59-48-177.eu-west-1.compute.internal   Ready    <none>   32m    v1.33.4-eks-99d6cc0   10.59.48.177   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-59-48-56.eu-west-1.compute.internal    Ready    <none>   35m    v1.33.4-eks-99d6cc0   10.59.48.56    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-59-51-14.eu-west-1.compute.internal    Ready    <none>   40m    v1.33.4-eks-99d6cc0   10.59.51.14    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-world-chat-service-prod-eu-west-1
ip-10-59-52-249.eu-west-1.compute.internal   Ready    <none>   39m    v1.33.4-eks-99d6cc0   10.59.52.249   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-world-chat-service-prod-eu-west-1
ip-10-59-53-166.eu-west-1.compute.internal   Ready    <none>   3d1h   v1.32.8-eks-99d6cc0   10.59.53.166   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-59-53-75.eu-west-1.compute.internal    Ready    <none>   35m    v1.33.4-eks-99d6cc0   10.59.53.75    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                         STATUS   ROLES    TAINTS
ip-10-59-48-177.eu-west-1.compute.internal   Ready    <none>   <none>
ip-10-59-48-56.eu-west-1.compute.internal    Ready    <none>   <none>
ip-10-59-51-14.eu-west-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-59-52-249.eu-west-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-59-53-166.eu-west-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:enclave]]
ip-10-59-53-75.eu-west-1.compute.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                                            MESSAGE
31m         Normal    Finalized                 node                                              Finalized karpenter.sh/termination
32m         Normal    Starting                  node/ip-10-59-48-177.eu-west-1.compute.internal   Starting kubelet.
32m         Warning   InvalidDiskCapacity       node/ip-10-59-48-177.eu-west-1.compute.internal   invalid capacity 0 on image filesystem
32m         Normal    NodeHasSufficientMemory   node/ip-10-59-48-177.eu-west-1.compute.internal   Node ip-10-59-48-177.eu-west-1.compute.internal status is now: NodeHasSufficientMemory
32m         Normal    NodeHasNoDiskPressure     node/ip-10-59-48-177.eu-west-1.compute.internal   Node ip-10-59-48-177.eu-west-1.compute.internal status is now: NodeHasNoDiskPressure
32m         Normal    NodeHasSufficientPID      node/ip-10-59-48-177.eu-west-1.compute.internal   Node ip-10-59-48-177.eu-west-1.compute.internal status is now: NodeHasSufficientPID
32m         Normal    NodeAllocatableEnforced   node/ip-10-59-48-177.eu-west-1.compute.internal   Updated Node Allocatable limit across pods
32m         Normal    Synced                    node/ip-10-59-48-177.eu-west-1.compute.internal   Node synced successfully
32m         Normal    RegisteredNode            node/ip-10-59-48-177.eu-west-1.compute.internal   Node ip-10-59-48-177.eu-west-1.compute.internal event: Registered Node ip-10-59-48-177.eu-west-1.compute.internal in Controller
32m         Normal    Starting                  node/ip-10-59-48-177.eu-west-1.compute.internal   
32m         Normal    DisruptionBlocked         node/ip-10-59-48-177.eu-west-1.compute.internal   Node isn't initialized
32m         Normal    ControllerVersionNotice   node/ip-10-59-48-177.eu-west-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
32m         Normal    NodeReady                 node/ip-10-59-48-177.eu-west-1.compute.internal   Node ip-10-59-48-177.eu-west-1.compute.internal status is now: NodeReady
32m         Normal    Ready                     node/ip-10-59-48-177.eu-west-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
32m         Normal    NodeTrunkInitiated        node/ip-10-59-48-177.eu-west-1.compute.internal   The node has trunk interface initialized successfully
3m52s       Normal    DisruptionBlocked         node/ip-10-59-48-177.eu-west-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
35m         Normal    Starting                  node/ip-10-59-48-56.eu-west-1.compute.internal    Starting kubelet.
35m         Warning   InvalidDiskCapacity       node/ip-10-59-48-56.eu-west-1.compute.internal    invalid capacity 0 on image filesystem
35m         Normal    NodeHasSufficientMemory   node/ip-10-59-48-56.eu-west-1.compute.internal    Node ip-10-59-48-56.eu-west-1.compute.internal status is now: NodeHasSufficientMemory
35m         Normal    NodeHasNoDiskPressure     node/ip-10-59-48-56.eu-west-1.compute.internal    Node ip-10-59-48-56.eu-west-1.compute.internal status is now: NodeHasNoDiskPressure
35m         Normal    NodeHasSufficientPID      node/ip-10-59-48-56.eu-west-1.compute.internal    Node ip-10-59-48-56.eu-west-1.compute.internal status is now: NodeHasSufficientPID
35m         Normal    NodeAllocatableEnforced   node/ip-10-59-48-56.eu-west-1.compute.internal    Updated Node Allocatable limit across pods
35m         Normal    DisruptionBlocked         node/ip-10-59-48-56.eu-west-1.compute.internal    Node isn't initialized
35m         Normal    Synced                    node/ip-10-59-48-56.eu-west-1.compute.internal    Node synced successfully
35m         Normal    RegisteredNode            node/ip-10-59-48-56.eu-west-1.compute.internal    Node ip-10-59-48-56.eu-west-1.compute.internal event: Registered Node ip-10-59-48-56.eu-west-1.compute.internal in Controller
34m         Normal    Starting                  node/ip-10-59-48-56.eu-west-1.compute.internal    
34m         Normal    ControllerVersionNotice   node/ip-10-59-48-56.eu-west-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
34m         Normal    NodeReady                 node/ip-10-59-48-56.eu-west-1.compute.internal    Node ip-10-59-48-56.eu-west-1.compute.internal status is now: NodeReady
34m         Normal    Ready                     node/ip-10-59-48-56.eu-west-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
34m         Normal    NodeTrunkInitiated        node/ip-10-59-48-56.eu-west-1.compute.internal    The node has trunk interface initialized successfully
34m         Normal    RegisteredNode            node/ip-10-59-48-56.eu-west-1.compute.internal    Node ip-10-59-48-56.eu-west-1.compute.internal event: Registered Node ip-10-59-48-56.eu-west-1.compute.internal in Controller
33m         Normal    DisruptionBlocked         node/ip-10-59-48-56.eu-west-1.compute.internal    Node is nominated for a pending pod
17m         Normal    Unconsolidatable          node/ip-10-59-48-56.eu-west-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
2m10s       Normal    Unconsolidatable          node/ip-10-59-48-56.eu-west-1.compute.internal    Can't remove without creating 2 candidates
45m         Normal    Unconsolidatable          node/ip-10-59-48-99.eu-west-1.compute.internal    Can't remove without creating 2 candidates
38m         Normal    RegisteredNode            node/ip-10-59-48-99.eu-west-1.compute.internal    Node ip-10-59-48-99.eu-west-1.compute.internal event: Registered Node ip-10-59-48-99.eu-west-1.compute.internal in Controller
38m         Normal    ControllerVersionNotice   node/ip-10-59-48-99.eu-west-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
38m         Normal    NodeTrunkInitiated        node/ip-10-59-48-99.eu-west-1.compute.internal    The node has trunk interface initialized successfully
36m         Normal    Unconsolidatable          node/ip-10-59-48-99.eu-west-1.compute.internal    Can't remove without creating 2 candidates
35m         Normal    DisruptionBlocked         node/ip-10-59-48-99.eu-west-1.compute.internal    Node is deleting or marked for deletion
34m         Normal    DisruptionTerminating     node/ip-10-59-48-99.eu-west-1.compute.internal    Disrupting Node: Drifted/Replace
34m         Warning   FailedDraining            node/ip-10-59-48-99.eu-west-1.compute.internal    Failed to drain node, 6 pods are waiting to be evicted
34m         Normal    RegisteredNode            node/ip-10-59-48-99.eu-west-1.compute.internal    Node ip-10-59-48-99.eu-west-1.compute.internal event: Registered Node ip-10-59-48-99.eu-west-1.compute.internal in Controller
33m         Warning   FailedDraining            node/ip-10-59-48-99.eu-west-1.compute.internal    Failed to drain node, 1 pods are waiting to be evicted
33m         Normal    DisruptionBlocked         node/ip-10-59-48-99.eu-west-1.compute.internal    Node is deleting or marked for deletion
33m         Warning   InstanceTerminating       node/ip-10-59-48-99.eu-west-1.compute.internal    Instance is terminating
32m         Normal    NodeNotReady              node/ip-10-59-48-99.eu-west-1.compute.internal    Node ip-10-59-48-99.eu-west-1.compute.internal status is now: NodeNotReady
32m         Normal    MemoryPressure            node/ip-10-59-48-99.eu-west-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
32m         Normal    DiskPressure              node/ip-10-59-48-99.eu-west-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
32m         Normal    PIDPressure               node/ip-10-59-48-99.eu-west-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
32m         Normal    Ready                     node/ip-10-59-48-99.eu-west-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
32m         Normal    DeletingNode              node/ip-10-59-48-99.eu-west-1.compute.internal    Deleting node ip-10-59-48-99.eu-west-1.compute.internal because it does not exist in the cloud provider
32m         Normal    RemovingNode              node/ip-10-59-48-99.eu-west-1.compute.internal    Node ip-10-59-48-99.eu-west-1.compute.internal event: Removing Node ip-10-59-48-99.eu-west-1.compute.internal from Controller
44m         Warning   Unsupported               node/ip-10-59-49-170.eu-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
38m         Normal    RegisteredNode            node/ip-10-59-49-170.eu-west-1.compute.internal   Node ip-10-59-49-170.eu-west-1.compute.internal event: Registered Node ip-10-59-49-170.eu-west-1.compute.internal in Controller
38m         Normal    ControllerVersionNotice   node/ip-10-59-49-170.eu-west-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
31m         Warning   Unsupported               node/ip-10-59-49-170.eu-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
37m         Normal    NodeNotSchedulable        node/ip-10-59-49-170.eu-west-1.compute.internal   Node ip-10-59-49-170.eu-west-1.compute.internal status is now: NodeNotSchedulable
34m         Normal    RegisteredNode            node/ip-10-59-49-170.eu-west-1.compute.internal   Node ip-10-59-49-170.eu-west-1.compute.internal event: Registered Node ip-10-59-49-170.eu-west-1.compute.internal in Controller
31m         Normal    NodeNotReady              node/ip-10-59-49-170.eu-west-1.compute.internal   Node ip-10-59-49-170.eu-west-1.compute.internal status is now: NodeNotReady
31m         Normal    MemoryPressure            node/ip-10-59-49-170.eu-west-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
31m         Normal    DiskPressure              node/ip-10-59-49-170.eu-west-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
31m         Normal    PIDPressure               node/ip-10-59-49-170.eu-west-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
31m         Normal    Ready                     node/ip-10-59-49-170.eu-west-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
31m         Normal    DeletingNode              node/ip-10-59-49-170.eu-west-1.compute.internal   Deleting node ip-10-59-49-170.eu-west-1.compute.internal because it does not exist in the cloud provider
31m         Normal    RemovingNode              node/ip-10-59-49-170.eu-west-1.compute.internal   Node ip-10-59-49-170.eu-west-1.compute.internal event: Removing Node ip-10-59-49-170.eu-west-1.compute.internal from Controller
37m         Normal    Starting                  node/ip-10-59-49-64.eu-west-1.compute.internal    Starting kubelet.
37m         Warning   InvalidDiskCapacity       node/ip-10-59-49-64.eu-west-1.compute.internal    invalid capacity 0 on image filesystem
37m         Normal    NodeHasSufficientMemory   node/ip-10-59-49-64.eu-west-1.compute.internal    Node ip-10-59-49-64.eu-west-1.compute.internal status is now: NodeHasSufficientMemory
37m         Normal    NodeHasNoDiskPressure     node/ip-10-59-49-64.eu-west-1.compute.internal    Node ip-10-59-49-64.eu-west-1.compute.internal status is now: NodeHasNoDiskPressure
37m         Normal    NodeHasSufficientPID      node/ip-10-59-49-64.eu-west-1.compute.internal    Node ip-10-59-49-64.eu-west-1.compute.internal status is now: NodeHasSufficientPID
37m         Normal    NodeAllocatableEnforced   node/ip-10-59-49-64.eu-west-1.compute.internal    Updated Node Allocatable limit across pods
37m         Normal    Synced                    node/ip-10-59-49-64.eu-west-1.compute.internal    Node synced successfully
37m         Normal    RegisteredNode            node/ip-10-59-49-64.eu-west-1.compute.internal    Node ip-10-59-49-64.eu-west-1.compute.internal event: Registered Node ip-10-59-49-64.eu-west-1.compute.internal in Controller
37m         Normal    Starting                  node/ip-10-59-49-64.eu-west-1.compute.internal    
37m         Normal    ControllerVersionNotice   node/ip-10-59-49-64.eu-west-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
25m         Warning   Unsupported               node/ip-10-59-49-64.eu-west-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
37m         Normal    NodeReady                 node/ip-10-59-49-64.eu-west-1.compute.internal    Node ip-10-59-49-64.eu-west-1.compute.internal status is now: NodeReady
37m         Normal    Ready                     node/ip-10-59-49-64.eu-west-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
34m         Normal    RegisteredNode            node/ip-10-59-49-64.eu-west-1.compute.internal    Node ip-10-59-49-64.eu-west-1.compute.internal event: Registered Node ip-10-59-49-64.eu-west-1.compute.internal in Controller
27m         Normal    NodeNotSchedulable        node/ip-10-59-49-64.eu-west-1.compute.internal    Node ip-10-59-49-64.eu-west-1.compute.internal status is now: NodeNotSchedulable
25m         Normal    NodeNotReady              node/ip-10-59-49-64.eu-west-1.compute.internal    Node ip-10-59-49-64.eu-west-1.compute.internal status is now: NodeNotReady
25m         Normal    MemoryPressure            node/ip-10-59-49-64.eu-west-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    DiskPressure              node/ip-10-59-49-64.eu-west-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    PIDPressure               node/ip-10-59-49-64.eu-west-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    Ready                     node/ip-10-59-49-64.eu-west-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    DeletingNode              node/ip-10-59-49-64.eu-west-1.compute.internal    Deleting node ip-10-59-49-64.eu-west-1.compute.internal because it does not exist in the cloud provider
25m         Normal    RemovingNode              node/ip-10-59-49-64.eu-west-1.compute.internal    Node ip-10-59-49-64.eu-west-1.compute.internal event: Removing Node ip-10-59-49-64.eu-west-1.compute.internal from Controller
40m         Normal    Starting                  node/ip-10-59-51-14.eu-west-1.compute.internal    Starting kubelet.
40m         Warning   InvalidDiskCapacity       node/ip-10-59-51-14.eu-west-1.compute.internal    invalid capacity 0 on image filesystem
40m         Normal    NodeHasSufficientMemory   node/ip-10-59-51-14.eu-west-1.compute.internal    Node ip-10-59-51-14.eu-west-1.compute.internal status is now: NodeHasSufficientMemory
40m         Normal    NodeHasNoDiskPressure     node/ip-10-59-51-14.eu-west-1.compute.internal    Node ip-10-59-51-14.eu-west-1.compute.internal status is now: NodeHasNoDiskPressure
40m         Normal    NodeHasSufficientPID      node/ip-10-59-51-14.eu-west-1.compute.internal    Node ip-10-59-51-14.eu-west-1.compute.internal status is now: NodeHasSufficientPID
40m         Normal    NodeAllocatableEnforced   node/ip-10-59-51-14.eu-west-1.compute.internal    Updated Node Allocatable limit across pods
40m         Normal    Synced                    node/ip-10-59-51-14.eu-west-1.compute.internal    Node synced successfully
40m         Normal    RegisteredNode            node/ip-10-59-51-14.eu-west-1.compute.internal    Node ip-10-59-51-14.eu-west-1.compute.internal event: Registered Node ip-10-59-51-14.eu-west-1.compute.internal in Controller
40m         Normal    Starting                  node/ip-10-59-51-14.eu-west-1.compute.internal    
40m         Normal    ControllerVersionNotice   node/ip-10-59-51-14.eu-west-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
39m         Warning   Unsupported               node/ip-10-59-51-14.eu-west-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
40m         Normal    NodeReady                 node/ip-10-59-51-14.eu-west-1.compute.internal    Node ip-10-59-51-14.eu-west-1.compute.internal status is now: NodeReady
40m         Normal    Ready                     node/ip-10-59-51-14.eu-west-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
38m         Normal    RegisteredNode            node/ip-10-59-51-14.eu-west-1.compute.internal    Node ip-10-59-51-14.eu-west-1.compute.internal event: Registered Node ip-10-59-51-14.eu-west-1.compute.internal in Controller
38m         Normal    ControllerVersionNotice   node/ip-10-59-51-14.eu-west-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
1s          Warning   Unsupported               node/ip-10-59-51-14.eu-west-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
34m         Normal    RegisteredNode            node/ip-10-59-51-14.eu-west-1.compute.internal    Node ip-10-59-51-14.eu-west-1.compute.internal event: Registered Node ip-10-59-51-14.eu-west-1.compute.internal in Controller
40m         Normal    Starting                  node/ip-10-59-51-233.eu-west-1.compute.internal   Starting kubelet.
40m         Warning   InvalidDiskCapacity       node/ip-10-59-51-233.eu-west-1.compute.internal   invalid capacity 0 on image filesystem
40m         Normal    NodeHasSufficientMemory   node/ip-10-59-51-233.eu-west-1.compute.internal   Node ip-10-59-51-233.eu-west-1.compute.internal status is now: NodeHasSufficientMemory
40m         Normal    NodeHasNoDiskPressure     node/ip-10-59-51-233.eu-west-1.compute.internal   Node ip-10-59-51-233.eu-west-1.compute.internal status is now: NodeHasNoDiskPressure
40m         Normal    NodeHasSufficientPID      node/ip-10-59-51-233.eu-west-1.compute.internal   Node ip-10-59-51-233.eu-west-1.compute.internal status is now: NodeHasSufficientPID
40m         Normal    NodeAllocatableEnforced   node/ip-10-59-51-233.eu-west-1.compute.internal   Updated Node Allocatable limit across pods
40m         Normal    Synced                    node/ip-10-59-51-233.eu-west-1.compute.internal   Node synced successfully
40m         Normal    RegisteredNode            node/ip-10-59-51-233.eu-west-1.compute.internal   Node ip-10-59-51-233.eu-west-1.compute.internal event: Registered Node ip-10-59-51-233.eu-west-1.compute.internal in Controller
40m         Normal    Starting                  node/ip-10-59-51-233.eu-west-1.compute.internal   
40m         Normal    ControllerVersionNotice   node/ip-10-59-51-233.eu-west-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
39m         Warning   Unsupported               node/ip-10-59-51-233.eu-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
40m         Normal    NodeReady                 node/ip-10-59-51-233.eu-west-1.compute.internal   Node ip-10-59-51-233.eu-west-1.compute.internal status is now: NodeReady
40m         Normal    Ready                     node/ip-10-59-51-233.eu-west-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
38m         Normal    RegisteredNode            node/ip-10-59-51-233.eu-west-1.compute.internal   Node ip-10-59-51-233.eu-west-1.compute.internal event: Registered Node ip-10-59-51-233.eu-west-1.compute.internal in Controller
38m         Normal    ControllerVersionNotice   node/ip-10-59-51-233.eu-west-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Warning   Unsupported               node/ip-10-59-51-233.eu-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
34m         Normal    RegisteredNode            node/ip-10-59-51-233.eu-west-1.compute.internal   Node ip-10-59-51-233.eu-west-1.compute.internal event: Registered Node ip-10-59-51-233.eu-west-1.compute.internal in Controller
29m         Normal    NodeNotSchedulable        node/ip-10-59-51-233.eu-west-1.compute.internal   Node ip-10-59-51-233.eu-west-1.compute.internal status is now: NodeNotSchedulable
27m         Normal    NodeNotReady              node/ip-10-59-51-233.eu-west-1.compute.internal   Node ip-10-59-51-233.eu-west-1.compute.internal status is now: NodeNotReady
27m         Normal    MemoryPressure            node/ip-10-59-51-233.eu-west-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
27m         Normal    DiskPressure              node/ip-10-59-51-233.eu-west-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
27m         Normal    PIDPressure               node/ip-10-59-51-233.eu-west-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
27m         Normal    Ready                     node/ip-10-59-51-233.eu-west-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
27m         Normal    DeletingNode              node/ip-10-59-51-233.eu-west-1.compute.internal   Deleting node ip-10-59-51-233.eu-west-1.compute.internal because it does not exist in the cloud provider
27m         Normal    RemovingNode              node/ip-10-59-51-233.eu-west-1.compute.internal   Node ip-10-59-51-233.eu-west-1.compute.internal event: Removing Node ip-10-59-51-233.eu-west-1.compute.internal from Controller
40m         Normal    NodeNotReady              node/ip-10-59-51-99.eu-west-1.compute.internal    Node ip-10-59-51-99.eu-west-1.compute.internal status is now: NodeNotReady
40m         Normal    MemoryPressure            node/ip-10-59-51-99.eu-west-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
40m         Normal    DiskPressure              node/ip-10-59-51-99.eu-west-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
40m         Normal    PIDPressure               node/ip-10-59-51-99.eu-west-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
40m         Normal    Ready                     node/ip-10-59-51-99.eu-west-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
40m         Normal    DeletingNode              node/ip-10-59-51-99.eu-west-1.compute.internal    Deleting node ip-10-59-51-99.eu-west-1.compute.internal because it does not exist in the cloud provider
40m         Normal    RemovingNode              node/ip-10-59-51-99.eu-west-1.compute.internal    Node ip-10-59-51-99.eu-west-1.compute.internal event: Removing Node ip-10-59-51-99.eu-west-1.compute.internal from Controller
44m         Warning   Unsupported               node/ip-10-59-52-110.eu-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
38m         Normal    RegisteredNode            node/ip-10-59-52-110.eu-west-1.compute.internal   Node ip-10-59-52-110.eu-west-1.compute.internal event: Registered Node ip-10-59-52-110.eu-west-1.compute.internal in Controller
38m         Normal    ControllerVersionNotice   node/ip-10-59-52-110.eu-west-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
33m         Warning   Unsupported               node/ip-10-59-52-110.eu-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
37m         Normal    NodeNotSchedulable        node/ip-10-59-52-110.eu-west-1.compute.internal   Node ip-10-59-52-110.eu-west-1.compute.internal status is now: NodeNotSchedulable
34m         Normal    RegisteredNode            node/ip-10-59-52-110.eu-west-1.compute.internal   Node ip-10-59-52-110.eu-west-1.compute.internal event: Registered Node ip-10-59-52-110.eu-west-1.compute.internal in Controller
33m         Normal    NodeNotReady              node/ip-10-59-52-110.eu-west-1.compute.internal   Node ip-10-59-52-110.eu-west-1.compute.internal status is now: NodeNotReady
33m         Normal    MemoryPressure            node/ip-10-59-52-110.eu-west-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
33m         Normal    DiskPressure              node/ip-10-59-52-110.eu-west-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
33m         Normal    PIDPressure               node/ip-10-59-52-110.eu-west-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
33m         Normal    Ready                     node/ip-10-59-52-110.eu-west-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
33m         Normal    DeletingNode              node/ip-10-59-52-110.eu-west-1.compute.internal   Deleting node ip-10-59-52-110.eu-west-1.compute.internal because it does not exist in the cloud provider
33m         Normal    RemovingNode              node/ip-10-59-52-110.eu-west-1.compute.internal   Node ip-10-59-52-110.eu-west-1.compute.internal event: Removing Node ip-10-59-52-110.eu-west-1.compute.internal from Controller
45m         Normal    Unconsolidatable          node/ip-10-59-52-159.eu-west-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
38m         Normal    RegisteredNode            node/ip-10-59-52-159.eu-west-1.compute.internal   Node ip-10-59-52-159.eu-west-1.compute.internal event: Registered Node ip-10-59-52-159.eu-west-1.compute.internal in Controller
38m         Normal    ControllerVersionNotice   node/ip-10-59-52-159.eu-west-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
38m         Normal    NodeTrunkInitiated        node/ip-10-59-52-159.eu-west-1.compute.internal   The node has trunk interface initialized successfully
36m         Normal    Unconsolidatable          node/ip-10-59-52-159.eu-west-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
35m         Normal    DisruptionBlocked         node/ip-10-59-52-159.eu-west-1.compute.internal   Node is nominated for a pending pod
34m         Normal    DisruptionTerminating     node/ip-10-59-52-159.eu-west-1.compute.internal   Disrupting Node: Drifted/Delete
34m         Warning   FailedDraining            node/ip-10-59-52-159.eu-west-1.compute.internal   Failed to drain node, 8 pods are waiting to be evicted
34m         Normal    RegisteredNode            node/ip-10-59-52-159.eu-west-1.compute.internal   Node ip-10-59-52-159.eu-west-1.compute.internal event: Registered Node ip-10-59-52-159.eu-west-1.compute.internal in Controller
33m         Warning   FailedDraining            node/ip-10-59-52-159.eu-west-1.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
33m         Normal    DisruptionBlocked         node/ip-10-59-52-159.eu-west-1.compute.internal   Node is deleting or marked for deletion
33m         Warning   InstanceTerminating       node/ip-10-59-52-159.eu-west-1.compute.internal   Instance is terminating
32m         Normal    RemovingNode              node/ip-10-59-52-159.eu-west-1.compute.internal   Node ip-10-59-52-159.eu-west-1.compute.internal event: Removing Node ip-10-59-52-159.eu-west-1.compute.internal from Controller
39m         Normal    Starting                  node/ip-10-59-52-249.eu-west-1.compute.internal   Starting kubelet.
39m         Warning   InvalidDiskCapacity       node/ip-10-59-52-249.eu-west-1.compute.internal   invalid capacity 0 on image filesystem
39m         Normal    NodeHasSufficientMemory   node/ip-10-59-52-249.eu-west-1.compute.internal   Node ip-10-59-52-249.eu-west-1.compute.internal status is now: NodeHasSufficientMemory
39m         Normal    NodeHasNoDiskPressure     node/ip-10-59-52-249.eu-west-1.compute.internal   Node ip-10-59-52-249.eu-west-1.compute.internal status is now: NodeHasNoDiskPressure
39m         Normal    NodeHasSufficientPID      node/ip-10-59-52-249.eu-west-1.compute.internal   Node ip-10-59-52-249.eu-west-1.compute.internal status is now: NodeHasSufficientPID
39m         Normal    NodeAllocatableEnforced   node/ip-10-59-52-249.eu-west-1.compute.internal   Updated Node Allocatable limit across pods
39m         Normal    Synced                    node/ip-10-59-52-249.eu-west-1.compute.internal   Node synced successfully
39m         Normal    RegisteredNode            node/ip-10-59-52-249.eu-west-1.compute.internal   Node ip-10-59-52-249.eu-west-1.compute.internal event: Registered Node ip-10-59-52-249.eu-west-1.compute.internal in Controller
39m         Normal    Starting                  node/ip-10-59-52-249.eu-west-1.compute.internal   
39m         Normal    ControllerVersionNotice   node/ip-10-59-52-249.eu-west-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
38m         Warning   Unsupported               node/ip-10-59-52-249.eu-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
39m         Normal    NodeReady                 node/ip-10-59-52-249.eu-west-1.compute.internal   Node ip-10-59-52-249.eu-west-1.compute.internal status is now: NodeReady
39m         Normal    Ready                     node/ip-10-59-52-249.eu-west-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
38m         Normal    RegisteredNode            node/ip-10-59-52-249.eu-west-1.compute.internal   Node ip-10-59-52-249.eu-west-1.compute.internal event: Registered Node ip-10-59-52-249.eu-west-1.compute.internal in Controller
38m         Normal    ControllerVersionNotice   node/ip-10-59-52-249.eu-west-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
3m4s        Warning   Unsupported               node/ip-10-59-52-249.eu-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
34m         Normal    RegisteredNode            node/ip-10-59-52-249.eu-west-1.compute.internal   Node ip-10-59-52-249.eu-west-1.compute.internal event: Registered Node ip-10-59-52-249.eu-west-1.compute.internal in Controller
38m         Normal    RegisteredNode            node/ip-10-59-53-166.eu-west-1.compute.internal   Node ip-10-59-53-166.eu-west-1.compute.internal event: Registered Node ip-10-59-53-166.eu-west-1.compute.internal in Controller
38m         Normal    ControllerVersionNotice   node/ip-10-59-53-166.eu-west-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
38m         Normal    NodeTrunkInitiated        node/ip-10-59-53-166.eu-west-1.compute.internal   The node has trunk interface initialized successfully
34m         Normal    RegisteredNode            node/ip-10-59-53-166.eu-west-1.compute.internal   Node ip-10-59-53-166.eu-west-1.compute.internal event: Registered Node ip-10-59-53-166.eu-west-1.compute.internal in Controller
38m         Normal    RegisteredNode            node/ip-10-59-53-191.eu-west-1.compute.internal   Node ip-10-59-53-191.eu-west-1.compute.internal event: Registered Node ip-10-59-53-191.eu-west-1.compute.internal in Controller
38m         Normal    ControllerVersionNotice   node/ip-10-59-53-191.eu-west-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
38m         Normal    NodeTrunkInitiated        node/ip-10-59-53-191.eu-west-1.compute.internal   The node has trunk interface initialized successfully
35m         Normal    DisruptionBlocked         node/ip-10-59-53-191.eu-west-1.compute.internal   Node is nominated for a pending pod
34m         Normal    RegisteredNode            node/ip-10-59-53-191.eu-west-1.compute.internal   Node ip-10-59-53-191.eu-west-1.compute.internal event: Registered Node ip-10-59-53-191.eu-west-1.compute.internal in Controller
31m         Normal    DisruptionBlocked         node/ip-10-59-53-191.eu-west-1.compute.internal   Node is deleting or marked for deletion
32m         Normal    DisruptionTerminating     node/ip-10-59-53-191.eu-west-1.compute.internal   Disrupting Node: Drifted/Replace
32m         Warning   FailedDraining            node/ip-10-59-53-191.eu-west-1.compute.internal   Failed to drain node, 14 pods are waiting to be evicted
31m         Warning   InstanceTerminating       node/ip-10-59-53-191.eu-west-1.compute.internal   Instance is terminating
31m         Normal    RemovingNode              node/ip-10-59-53-191.eu-west-1.compute.internal   Node ip-10-59-53-191.eu-west-1.compute.internal event: Removing Node ip-10-59-53-191.eu-west-1.compute.internal from Controller
35m         Normal    Starting                  node/ip-10-59-53-75.eu-west-1.compute.internal    Starting kubelet.
35m         Warning   InvalidDiskCapacity       node/ip-10-59-53-75.eu-west-1.compute.internal    invalid capacity 0 on image filesystem
35m         Normal    NodeHasSufficientMemory   node/ip-10-59-53-75.eu-west-1.compute.internal    Node ip-10-59-53-75.eu-west-1.compute.internal status is now: NodeHasSufficientMemory
35m         Normal    NodeHasNoDiskPressure     node/ip-10-59-53-75.eu-west-1.compute.internal    Node ip-10-59-53-75.eu-west-1.compute.internal status is now: NodeHasNoDiskPressure
35m         Normal    NodeHasSufficientPID      node/ip-10-59-53-75.eu-west-1.compute.internal    Node ip-10-59-53-75.eu-west-1.compute.internal status is now: NodeHasSufficientPID
35m         Normal    NodeAllocatableEnforced   node/ip-10-59-53-75.eu-west-1.compute.internal    Updated Node Allocatable limit across pods
35m         Normal    Synced                    node/ip-10-59-53-75.eu-west-1.compute.internal    Node synced successfully
35m         Normal    RegisteredNode            node/ip-10-59-53-75.eu-west-1.compute.internal    Node ip-10-59-53-75.eu-west-1.compute.internal event: Registered Node ip-10-59-53-75.eu-west-1.compute.internal in Controller
35m         Normal    Starting                  node/ip-10-59-53-75.eu-west-1.compute.internal    
34m         Normal    DisruptionBlocked         node/ip-10-59-53-75.eu-west-1.compute.internal    Node isn't initialized
34m         Normal    ControllerVersionNotice   node/ip-10-59-53-75.eu-west-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
34m         Normal    NodeReady                 node/ip-10-59-53-75.eu-west-1.compute.internal    Node ip-10-59-53-75.eu-west-1.compute.internal status is now: NodeReady
34m         Normal    Ready                     node/ip-10-59-53-75.eu-west-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
34m         Normal    NodeTrunkInitiated        node/ip-10-59-53-75.eu-west-1.compute.internal    The node has trunk interface initialized successfully
34m         Normal    RegisteredNode            node/ip-10-59-53-75.eu-west-1.compute.internal    Node ip-10-59-53-75.eu-west-1.compute.internal event: Registered Node ip-10-59-53-75.eu-west-1.compute.internal in Controller
33m         Normal    DisruptionBlocked         node/ip-10-59-53-75.eu-west-1.compute.internal    Node is nominated for a pending pod
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE            NAME                                        MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-autoscaler   cluster-autoscaler-aws-cluster-autoscaler   N/A             1                 1                     4d9h
karpenter            karpenter                                   N/A             1                 1                     41d
kube-system          coredns                                     N/A             1                 1                     42d
kube-system          ebs-csi-controller                          N/A             1                 1                     42d
kyverno              kyverno-admission-controller                1               N/A               2                     41d
world-chat           world-chat-backend-pdb                      N/A             1                 1                     3d1h
world-chat           world-chat-enclave-worker-pdb               N/A             1                 1                     3d1h
world-chat           world-chat-notification-worker-pdb          N/A             1                 1                     3d1h
world-chat           world-chat-secure-enclave-pdb               N/A             1                 1                     3d1h
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

Generated on: Mon Sep 22 18:22:19 CEST 2025
