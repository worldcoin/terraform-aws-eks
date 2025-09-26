# Cluster recon for tfh-crypto-prod-infra,ap-northeast-1,crypto-prod-ap-northeast-1,tunnel-vpc-crypto-prod-ap-northeast-1

TFH EKS login...
```console
2025/09/25 13:26:34 INFO Logging into AWS
2025/09/25 13:26:34 INFO Token found and valid
2025/09/25 13:26:36 INFO Switch WARP Virtual Network to name=tunnel-vpc-crypto-prod-ap-northeast-1 id=26b35f08-17b4-4963-a353-9d1d4e325b39
2025/09/25 13:26:38 INFO Active WARP Virtual Network id=26b35f08-17b4-4963-a353-9d1d4e325b39
Updated context tfh-crypto-prod-ap-northeast-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "crypto-prod-ap-northeast-1",
        "arn": "arn:aws:eks:ap-northeast-1:866736719513:cluster/crypto-prod-ap-northeast-1",
        "createdAt": "2025-06-27T12:07:14.742000+02:00",
        "version": "1.33",
        "endpoint": "https://E25200DBBD6E877EF0F40A53DB34D2DB.yl4.ap-northeast-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::866736719513:role/eks-cluster-crypto-prod-ap-northeast-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-05b676174b2392026",
                "subnet-0d93cc75fc369fc58",
                "subnet-02d3510a6158f4838"
            ],
            "securityGroupIds": [
                "sg-0684988243616b33c"
            ],
            "clusterSecurityGroupId": "sg-019c3868d73bd3474",
            "vpcId": "vpc-00ce16d4673a5f5f9",
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
                "issuer": "https://oidc.eks.ap-northeast-1.amazonaws.com/id/E25200DBBD6E877EF0F40A53DB34D2DB"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJVEQ4OGw0R08vVGN3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMk1qY3hNREEyTXpsYUZ3MHpOVEEyTWpVeE1ERXhNemxhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURSdjZwOVVFQUErQ2lFaUJ5MVc2dzd5aHJNaXZOeVkya2ppNXNDemJ4V2I5dEt3K21zY3JRbHRpbloKSXRLeHRlUWhRWWVrU3RDMzNwQ2J6SVRSamJTSE9kMm1zdDJqMVpiVUVEMTJVdzUwbncvYW5SY3JZNDQ1TnNDRApJVzZNZFhRcUloZVN0N2lZZEpaRzJ5d3lLa0tnblhFaitnUythN1JuVVljUXRpUXEyejBqRmVnZkYyWEo2UjQrCkYwNzVoQUtaRVpsc1Y5eU5nNGM5cW4xdDc5NjRmWTBXZHNnaEh1SC9INW9hQWRGdFBIM0J5c00zUjJ3d1d2US8KQ1gzV2VZZFZrNVdmZy9vbHplalJ2MktOUWxWaTh6SVR2SVZrVmlIbXF5YWZYSUFRdldzYUhwa0RhYktxTHR1Ywp4THJwMUF4N1JpQ2Z2YWtGK0FDalJUZVNMSFZsQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUSmhwdm0xM1lKOHlmazRrM0RMMEpZNG1SamdEQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQ1lZanpWcytQcQpNZHZrUkROZHNjYlZoeWhVTVBaWjJLVlIvS01ZTlN1WEVqdy9tdGJoUFR5Um14Rjg5SWlJYldJT3BOYTB6TTdHCnM4bGcwZVkzSFdkbGNIOWE0Sk8yQTd4Zi9sWS9TT0ZSUzF3clduaHhDakt2TmZCQnF2VnJneHp3ZVNnVWJxblYKUEdmUnluUG01Q3NYTjBFdEk3a1BqajVRdmZPbzZyeUdqQ0krMDNZNDhhcTNNY0dhbmY0eTZoblVKL0J4U1RQKwpFcmN4Tmh3TGNrWVovMFBLUDQwUWVDWVdVMHUyYjhxRWlER3dRZlN0Z3U4dk50Y0txN3ZhSFRkaElEb0trajNoCkVNaWNXMEdFOFFGM2JQTUNZWnZLVlBpV0F4QzRaMXo1NEROclVIWDhvRTBTMi9MRnU5bjVhN3JpSC9PNHNNUVMKVUdlemhtTmtEa3dhCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "crypto-prod-ap-northeast-1",
            "Team": "crypto",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:ap-northeast-1:866736719513:key/73ea1ee5-aa29-4dc3-88c4-6a34aeca0232"
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
NAME                                              STATUS   ROLES    AGE    VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                   CONTAINER-RUNTIME     NODEGROUP
ip-10-45-80-58.ap-northeast-1.compute.internal    Ready    <none>   165m   v1.33.5-eks-113cf36   10.45.80.58    <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64   containerd://1.7.27   eks-node-al2023-crypto-prod-ap-northeast-1
ip-10-45-81-193.ap-northeast-1.compute.internal   Ready    <none>   156m   v1.33.5-eks-113cf36   10.45.81.193   <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64   containerd://1.7.27   
ip-10-45-81-250.ap-northeast-1.compute.internal   Ready    <none>   158m   v1.33.5-eks-113cf36   10.45.81.250   <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64   containerd://1.7.27   
ip-10-45-82-205.ap-northeast-1.compute.internal   Ready    <none>   160m   v1.33.5-eks-113cf36   10.45.82.205   <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64   containerd://1.7.27   
ip-10-45-84-10.ap-northeast-1.compute.internal    Ready    <none>   58m    v1.33.5-eks-113cf36   10.45.84.10    <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64   containerd://1.7.27   
ip-10-45-84-6.ap-northeast-1.compute.internal     Ready    <none>   165m   v1.33.5-eks-113cf36   10.45.84.6     <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64   containerd://1.7.27   eks-node-al2023-crypto-prod-ap-northeast-1
```

Nodes and their taints
```
NAME                                              STATUS   ROLES    TAINTS
ip-10-45-80-58.ap-northeast-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-45-81-193.ap-northeast-1.compute.internal   Ready    <none>   <none>
ip-10-45-81-250.ap-northeast-1.compute.internal   Ready    <none>   <none>
ip-10-45-82-205.ap-northeast-1.compute.internal   Ready    <none>   <none>
ip-10-45-84-10.ap-northeast-1.compute.internal    Ready    <none>   <none>
ip-10-45-84-6.ap-northeast-1.compute.internal     Ready    <none>   [map[effect:NoExecute key:critical]]
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                                                 MESSAGE
34m         Normal    Finalized                 node                                                   Finalized karpenter.sh/termination
80s         Warning   Unsupported               node/ip-10-45-80-58.ap-northeast-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
60m         Normal    Unconsolidatable          node/ip-10-45-81-193.ap-northeast-1.compute.internal   Can't replace with a cheaper node
36m         Normal    DisruptionBlocked         node/ip-10-45-81-193.ap-northeast-1.compute.internal   Node is nominated for a pending pod
30m         Normal    DisruptionBlocked         node/ip-10-45-81-193.ap-northeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
6m17s       Normal    Unconsolidatable          node/ip-10-45-81-250.ap-northeast-1.compute.internal   Can't remove without creating 2 candidates
43m         Normal    Unconsolidatable          node/ip-10-45-81-250.ap-northeast-1.compute.internal   Can't replace with a cheaper node
36m         Normal    DisruptionBlocked         node/ip-10-45-81-250.ap-northeast-1.compute.internal   Node is nominated for a pending pod
11m         Normal    Unconsolidatable          node/ip-10-45-82-205.ap-northeast-1.compute.internal   Can't replace with a cheaper node
36m         Normal    DisruptionBlocked         node/ip-10-45-82-205.ap-northeast-1.compute.internal   Node is nominated for a pending pod
30m         Normal    DisruptionBlocked         node/ip-10-45-82-205.ap-northeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
36m         Normal    DisruptionTerminating     node/ip-10-45-83-167.ap-northeast-1.compute.internal   Disrupting Node: Underutilized
36m         Normal    DisruptionBlocked         node/ip-10-45-83-167.ap-northeast-1.compute.internal   Node is deleting or marked for deletion
36m         Warning   FailedDraining            node/ip-10-45-83-167.ap-northeast-1.compute.internal   Failed to drain node, 13 pods are waiting to be evicted
35m         Warning   InstanceTerminating       node/ip-10-45-83-167.ap-northeast-1.compute.internal   Instance is terminating
34m         Normal    RemovingNode              node/ip-10-45-83-167.ap-northeast-1.compute.internal   Node ip-10-45-83-167.ap-northeast-1.compute.internal event: Removing Node ip-10-45-83-167.ap-northeast-1.compute.internal from Controller
60m         Normal    Unconsolidatable          node/ip-10-45-83-88.ap-northeast-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
44m         Normal    DisruptionTerminating     node/ip-10-45-83-88.ap-northeast-1.compute.internal    Disrupting Node: Underutilized
44m         Normal    DisruptionBlocked         node/ip-10-45-83-88.ap-northeast-1.compute.internal    Node is deleting or marked for deletion
44m         Warning   FailedDraining            node/ip-10-45-83-88.ap-northeast-1.compute.internal    Failed to drain node, 3 pods are waiting to be evicted
43m         Warning   InstanceTerminating       node/ip-10-45-83-88.ap-northeast-1.compute.internal    Instance is terminating
43m         Normal    NodeNotReady              node/ip-10-45-83-88.ap-northeast-1.compute.internal    Node ip-10-45-83-88.ap-northeast-1.compute.internal status is now: NodeNotReady
43m         Normal    MemoryPressure            node/ip-10-45-83-88.ap-northeast-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
43m         Normal    DiskPressure              node/ip-10-45-83-88.ap-northeast-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
43m         Normal    PIDPressure               node/ip-10-45-83-88.ap-northeast-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
43m         Normal    Ready                     node/ip-10-45-83-88.ap-northeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
42m         Normal    DeletingNode              node/ip-10-45-83-88.ap-northeast-1.compute.internal    Deleting node ip-10-45-83-88.ap-northeast-1.compute.internal because it does not exist in the cloud provider
42m         Normal    RemovingNode              node/ip-10-45-83-88.ap-northeast-1.compute.internal    Node ip-10-45-83-88.ap-northeast-1.compute.internal event: Removing Node ip-10-45-83-88.ap-northeast-1.compute.internal from Controller
58m         Normal    Starting                  node/ip-10-45-84-10.ap-northeast-1.compute.internal    Starting kubelet.
58m         Warning   InvalidDiskCapacity       node/ip-10-45-84-10.ap-northeast-1.compute.internal    invalid capacity 0 on image filesystem
58m         Normal    NodeHasSufficientMemory   node/ip-10-45-84-10.ap-northeast-1.compute.internal    Node ip-10-45-84-10.ap-northeast-1.compute.internal status is now: NodeHasSufficientMemory
58m         Normal    NodeHasNoDiskPressure     node/ip-10-45-84-10.ap-northeast-1.compute.internal    Node ip-10-45-84-10.ap-northeast-1.compute.internal status is now: NodeHasNoDiskPressure
58m         Normal    NodeHasSufficientPID      node/ip-10-45-84-10.ap-northeast-1.compute.internal    Node ip-10-45-84-10.ap-northeast-1.compute.internal status is now: NodeHasSufficientPID
58m         Normal    NodeAllocatableEnforced   node/ip-10-45-84-10.ap-northeast-1.compute.internal    Updated Node Allocatable limit across pods
58m         Normal    Synced                    node/ip-10-45-84-10.ap-northeast-1.compute.internal    Node synced successfully
58m         Normal    RegisteredNode            node/ip-10-45-84-10.ap-northeast-1.compute.internal    Node ip-10-45-84-10.ap-northeast-1.compute.internal event: Registered Node ip-10-45-84-10.ap-northeast-1.compute.internal in Controller
58m         Normal    DisruptionBlocked         node/ip-10-45-84-10.ap-northeast-1.compute.internal    Node isn't initialized
58m         Normal    Starting                  node/ip-10-45-84-10.ap-northeast-1.compute.internal    
58m         Normal    ControllerVersionNotice   node/ip-10-45-84-10.ap-northeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
58m         Normal    NodeReady                 node/ip-10-45-84-10.ap-northeast-1.compute.internal    Node ip-10-45-84-10.ap-northeast-1.compute.internal status is now: NodeReady
58m         Normal    Ready                     node/ip-10-45-84-10.ap-northeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
58m         Normal    NodeTrunkInitiated        node/ip-10-45-84-10.ap-northeast-1.compute.internal    The node has trunk interface initialized successfully
53s         Normal    Unconsolidatable          node/ip-10-45-84-10.ap-northeast-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
4m48s       Warning   Unsupported               node/ip-10-45-84-6.ap-northeast-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring       cluster-monitoring-pdb         N/A             1                 1                     90d
karpenter                karpenter                      N/A             1                 1                     90d
kube-system              coredns                        N/A             1                 1                     90d
kube-system              ebs-csi-controller             N/A             1                 1                     90d
kyverno                  kyverno-admission-controller   1               N/A               2                     90d
nfc-uniqueness-service   issuer-service-pdb             N/A             1                 1                     30d
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

Generated on: Thu Sep 25 13:27:09 CEST 2025
