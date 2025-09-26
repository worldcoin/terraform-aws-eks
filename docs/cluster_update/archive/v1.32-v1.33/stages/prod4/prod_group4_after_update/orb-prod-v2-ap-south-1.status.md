# Cluster recon for tfh-orb-prod-infra,ap-south-1,orb-prod-v2-ap-south-1,tunnel-vpc-orb-prod-ap-south-1

TFH EKS login...
```console
2025/09/23 14:08:53 INFO Logging into AWS
2025/09/23 14:08:53 INFO Token found and valid
2025/09/23 14:08:55 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-prod-ap-south-1 id=1ed8ff43-ee6b-409c-bbf2-bcd84ecdcb1d
2025/09/23 14:08:57 INFO Active WARP Virtual Network id=1ed8ff43-ee6b-409c-bbf2-bcd84ecdcb1d
Updated context tfh-orb-prod-v2-ap-south-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "orb-prod-v2-ap-south-1",
        "arn": "arn:aws:eks:ap-south-1:573252405782:cluster/orb-prod-v2-ap-south-1",
        "createdAt": "2023-06-16T09:55:38.232000+02:00",
        "version": "1.33",
        "endpoint": "https://F7A74B4A22E83CF207BA0BA628CFB861.sk1.ap-south-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::573252405782:role/eks-cluster-orb-prod-v2-ap-south-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-01798b5caa04982a8",
                "subnet-0a60524d311d3464a",
                "subnet-008dc916b5db06ed0"
            ],
            "securityGroupIds": [
                "sg-01ffe5db754572a08"
            ],
            "clusterSecurityGroupId": "sg-0e0e91e686c04d8c5",
            "vpcId": "vpc-0dd01e07496fc643d",
            "endpointPublicAccess": false,
            "endpointPrivateAccess": true,
            "publicAccessCidrs": [
                "0.0.0.0/0"
            ]
        },
        "kubernetesNetworkConfig": {
            "serviceIpv4Cidr": "172.20.0.0/16",
            "ipFamily": "ipv4"
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
                "issuer": "https://oidc.eks.ap-south-1.amazonaws.com/id/F7A74B4A22E83CF207BA0BA628CFB861"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EWXhOakE0TURBMU0xb1hEVE16TURZeE16QTRNREExTTFvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTUcvCnp2MW40TFQ1TVhZOGxnVjJMbVAxZFJCMjR0bjhST01XYnhKRklyOUw2ZXZvR0RwUlN2VnpCVndXbkpZSDBXeW0KanEyV2h2eWtmSkJtOEtvenczdzRtWVBHYUhKUmZRMVhRQTg5N1ZyakdhUEw5OWtkQWFmMlF4WWUxM0lISTYyYwpzWWE4VlhPWktUeHlHcUhhRENHNy9rQjRuN3p0S1N2T0ZhOWlXY1NEWUVOVUVkZTFnc2I3d0pqdzF1VVZnNWh0CjF6U2Q3UjRONWJ0RWFmSjI3cCtuQUpCSHNlWFBYMkg4M25tVGpRdmRGMm55R2hSaGRTeDFiVWd5WFYxOHE4cUgKSHkxa0NEM25xajh3MU5DOCtDelNvOGxpVS91cXJJNGREazhFL2hWQjJxNjByT2E3bG1kK0s4UHhCdFdIVnV4YgorejYzWEVnQXVSQm9qWkg1ck9zQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZLc2FKUzNUMW9YeVhLSkwwRkg5LzlnRXJMcC9NQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBQm1YNnlzOUZoNmNWK1RscHEwMwo2Mk1HNlY4RTNqQmxobmRXUVgza3VKckZmVGsrZUlFUXZRM3dMM1dxbWs2cDVKeFEvSHNhdnhybHJZTjEwajgvCmh0UmxUN0k5b3JJRG1kMFl3VzVjQ29mc05TRVV2MWVWQ3NDUy9yK2lPR3VzWWdMY05XdHVsSjlZemw3K3ppMEQKY3luRkZQaWFmMDdSMDlXby91UDMwNmJtNXBsNWw2SjJ1Y0hjejJkMnc1YmZPeWNoTklYc3M0ZGZ1SmRnZ3F1TQpmQ1VkOWlpYW04SW52MWtOcDlyQUl4b2pnejBSQjJCV2toZzJyV0l2M3hHeW5taWpRai9TVEYyRUdvWkg0Zk5MClZ5QU9vOGxjZEg2SHNMbkxHVkVGSHo0RTZiVm1jaHhOSFMrVWhFTklVazF5dDh2cFZsTzBpWGs4bFJrYTFuQWUKRnc0PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-prod-v2-ap-south-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:ap-south-1:573252405782:key/cb830667-2833-4bbe-846c-317c5a6a9260"
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
NAME                                          STATUS   ROLES    AGE   VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-26-16-12.ap-south-1.compute.internal    Ready    <none>   30m   v1.33.4-eks-99d6cc0   10.26.16.12    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-ap-south-1
ip-10-26-18-114.ap-south-1.compute.internal   Ready    <none>   24m   v1.33.4-eks-99d6cc0   10.26.18.114   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-26-18-168.ap-south-1.compute.internal   Ready    <none>   20m   v1.33.4-eks-99d6cc0   10.26.18.168   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-26-18-184.ap-south-1.compute.internal   Ready    <none>   15m   v1.33.4-eks-99d6cc0   10.26.18.184   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-26-18-33.ap-south-1.compute.internal    Ready    <none>   15m   v1.33.4-eks-99d6cc0   10.26.18.33    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-26-19-152.ap-south-1.compute.internal   Ready    <none>   21m   v1.33.4-eks-99d6cc0   10.26.19.152   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-26-19-250.ap-south-1.compute.internal   Ready    <none>   22m   v1.33.4-eks-99d6cc0   10.26.19.250   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-26-19-251.ap-south-1.compute.internal   Ready    <none>   29m   v1.33.4-eks-99d6cc0   10.26.19.251   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-ap-south-1
ip-10-26-20-104.ap-south-1.compute.internal   Ready    <none>   24m   v1.33.4-eks-99d6cc0   10.26.20.104   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-26-20-70.ap-south-1.compute.internal    Ready    <none>   18m   v1.33.4-eks-99d6cc0   10.26.20.70    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-26-21-12.ap-south-1.compute.internal    Ready    <none>   15m   v1.33.4-eks-99d6cc0   10.26.21.12    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-26-21-122.ap-south-1.compute.internal   Ready    <none>   16m   v1.33.4-eks-99d6cc0   10.26.21.122   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                          STATUS   ROLES    TAINTS
ip-10-26-16-12.ap-south-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-26-18-114.ap-south-1.compute.internal   Ready    <none>   <none>
ip-10-26-18-168.ap-south-1.compute.internal   Ready    <none>   <none>
ip-10-26-18-184.ap-south-1.compute.internal   Ready    <none>   <none>
ip-10-26-18-33.ap-south-1.compute.internal    Ready    <none>   <none>
ip-10-26-19-152.ap-south-1.compute.internal   Ready    <none>   <none>
ip-10-26-19-250.ap-south-1.compute.internal   Ready    <none>   <none>
ip-10-26-19-251.ap-south-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-26-20-104.ap-south-1.compute.internal   Ready    <none>   <none>
ip-10-26-20-70.ap-south-1.compute.internal    Ready    <none>   <none>
ip-10-26-21-12.ap-south-1.compute.internal    Ready    <none>   <none>
ip-10-26-21-122.ap-south-1.compute.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                      OBJECT                                             MESSAGE
36m         Normal    Finalized                   node                                               Finalized karpenter.sh/termination
18m         Normal    Finalized                   node                                               Finalized karpenter.sh/termination
34s         Normal    Finalized                   node                                               Finalized karpenter.sh/termination
30m         Normal    Starting                    node/ip-10-26-16-12.ap-south-1.compute.internal    Starting kubelet.
30m         Warning   InvalidDiskCapacity         node/ip-10-26-16-12.ap-south-1.compute.internal    invalid capacity 0 on image filesystem
30m         Normal    NodeHasSufficientMemory     node/ip-10-26-16-12.ap-south-1.compute.internal    Node ip-10-26-16-12.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
30m         Normal    NodeHasNoDiskPressure       node/ip-10-26-16-12.ap-south-1.compute.internal    Node ip-10-26-16-12.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
30m         Normal    NodeHasSufficientPID        node/ip-10-26-16-12.ap-south-1.compute.internal    Node ip-10-26-16-12.ap-south-1.compute.internal status is now: NodeHasSufficientPID
30m         Normal    NodeAllocatableEnforced     node/ip-10-26-16-12.ap-south-1.compute.internal    Updated Node Allocatable limit across pods
30m         Normal    Synced                      node/ip-10-26-16-12.ap-south-1.compute.internal    Node synced successfully
30m         Normal    RegisteredNode              node/ip-10-26-16-12.ap-south-1.compute.internal    Node ip-10-26-16-12.ap-south-1.compute.internal event: Registered Node ip-10-26-16-12.ap-south-1.compute.internal in Controller
30m         Normal    Starting                    node/ip-10-26-16-12.ap-south-1.compute.internal    
30m         Normal    ControllerVersionNotice     node/ip-10-26-16-12.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
29m         Warning   Unsupported                 node/ip-10-26-16-12.ap-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
30m         Normal    NodeReady                   node/ip-10-26-16-12.ap-south-1.compute.internal    Node ip-10-26-16-12.ap-south-1.compute.internal status is now: NodeReady
30m         Normal    Ready                       node/ip-10-26-16-12.ap-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
28m         Normal    RegisteredNode              node/ip-10-26-16-12.ap-south-1.compute.internal    Node ip-10-26-16-12.ap-south-1.compute.internal event: Registered Node ip-10-26-16-12.ap-south-1.compute.internal in Controller
28m         Normal    ControllerVersionNotice     node/ip-10-26-16-12.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
24m         Warning   Unsupported                 node/ip-10-26-16-12.ap-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
23m         Normal    RegisteredNode              node/ip-10-26-16-12.ap-south-1.compute.internal    Node ip-10-26-16-12.ap-south-1.compute.internal event: Registered Node ip-10-26-16-12.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-16-12.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
8s          Warning   Unsupported                 node/ip-10-26-16-12.ap-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
30m         Normal    Starting                    node/ip-10-26-16-126.ap-south-1.compute.internal   Starting kubelet.
30m         Warning   InvalidDiskCapacity         node/ip-10-26-16-126.ap-south-1.compute.internal   invalid capacity 0 on image filesystem
30m         Normal    NodeHasSufficientMemory     node/ip-10-26-16-126.ap-south-1.compute.internal   Node ip-10-26-16-126.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
30m         Normal    NodeHasNoDiskPressure       node/ip-10-26-16-126.ap-south-1.compute.internal   Node ip-10-26-16-126.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
30m         Normal    NodeHasSufficientPID        node/ip-10-26-16-126.ap-south-1.compute.internal   Node ip-10-26-16-126.ap-south-1.compute.internal status is now: NodeHasSufficientPID
30m         Normal    NodeAllocatableEnforced     node/ip-10-26-16-126.ap-south-1.compute.internal   Updated Node Allocatable limit across pods
30m         Normal    Synced                      node/ip-10-26-16-126.ap-south-1.compute.internal   Node synced successfully
30m         Normal    RegisteredNode              node/ip-10-26-16-126.ap-south-1.compute.internal   Node ip-10-26-16-126.ap-south-1.compute.internal event: Registered Node ip-10-26-16-126.ap-south-1.compute.internal in Controller
30m         Normal    Starting                    node/ip-10-26-16-126.ap-south-1.compute.internal   
30m         Normal    ControllerVersionNotice     node/ip-10-26-16-126.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
29m         Warning   Unsupported                 node/ip-10-26-16-126.ap-south-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
30m         Normal    NodeReady                   node/ip-10-26-16-126.ap-south-1.compute.internal   Node ip-10-26-16-126.ap-south-1.compute.internal status is now: NodeReady
30m         Normal    Ready                       node/ip-10-26-16-126.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
28m         Normal    RegisteredNode              node/ip-10-26-16-126.ap-south-1.compute.internal   Node ip-10-26-16-126.ap-south-1.compute.internal event: Registered Node ip-10-26-16-126.ap-south-1.compute.internal in Controller
28m         Normal    ControllerVersionNotice     node/ip-10-26-16-126.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Warning   Unsupported                 node/ip-10-26-16-126.ap-south-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
23m         Normal    RegisteredNode              node/ip-10-26-16-126.ap-south-1.compute.internal   Node ip-10-26-16-126.ap-south-1.compute.internal event: Registered Node ip-10-26-16-126.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-16-126.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
18m         Warning   Unsupported                 node/ip-10-26-16-126.ap-south-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
20m         Normal    NodeNotSchedulable          node/ip-10-26-16-126.ap-south-1.compute.internal   Node ip-10-26-16-126.ap-south-1.compute.internal status is now: NodeNotSchedulable
18m         Normal    NodeNotReady                node/ip-10-26-16-126.ap-south-1.compute.internal   Node ip-10-26-16-126.ap-south-1.compute.internal status is now: NodeNotReady
18m         Normal    MemoryPressure              node/ip-10-26-16-126.ap-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    DiskPressure                node/ip-10-26-16-126.ap-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    PIDPressure                 node/ip-10-26-16-126.ap-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    Ready                       node/ip-10-26-16-126.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    DeletingNode                node/ip-10-26-16-126.ap-south-1.compute.internal   Deleting node ip-10-26-16-126.ap-south-1.compute.internal because it does not exist in the cloud provider
18m         Normal    RemovingNode                node/ip-10-26-16-126.ap-south-1.compute.internal   Node ip-10-26-16-126.ap-south-1.compute.internal event: Removing Node ip-10-26-16-126.ap-south-1.compute.internal from Controller
24m         Normal    Starting                    node/ip-10-26-18-114.ap-south-1.compute.internal   Starting kubelet.
24m         Warning   InvalidDiskCapacity         node/ip-10-26-18-114.ap-south-1.compute.internal   invalid capacity 0 on image filesystem
24m         Normal    NodeHasSufficientMemory     node/ip-10-26-18-114.ap-south-1.compute.internal   Node ip-10-26-18-114.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
24m         Normal    NodeHasNoDiskPressure       node/ip-10-26-18-114.ap-south-1.compute.internal   Node ip-10-26-18-114.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
24m         Normal    NodeHasSufficientPID        node/ip-10-26-18-114.ap-south-1.compute.internal   Node ip-10-26-18-114.ap-south-1.compute.internal status is now: NodeHasSufficientPID
24m         Normal    NodeAllocatableEnforced     node/ip-10-26-18-114.ap-south-1.compute.internal   Updated Node Allocatable limit across pods
24m         Normal    Synced                      node/ip-10-26-18-114.ap-south-1.compute.internal   Node synced successfully
24m         Normal    RegisteredNode              node/ip-10-26-18-114.ap-south-1.compute.internal   Node ip-10-26-18-114.ap-south-1.compute.internal event: Registered Node ip-10-26-18-114.ap-south-1.compute.internal in Controller
24m         Normal    DisruptionBlocked           node/ip-10-26-18-114.ap-south-1.compute.internal   Node isn't initialized
24m         Normal    Starting                    node/ip-10-26-18-114.ap-south-1.compute.internal   
24m         Normal    ControllerVersionNotice     node/ip-10-26-18-114.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeReady                   node/ip-10-26-18-114.ap-south-1.compute.internal   Node ip-10-26-18-114.ap-south-1.compute.internal status is now: NodeReady
24m         Normal    Ready                       node/ip-10-26-18-114.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
24m         Normal    NodeTrunkInitiated          node/ip-10-26-18-114.ap-south-1.compute.internal   The node has trunk interface initialized successfully
23m         Normal    RegisteredNode              node/ip-10-26-18-114.ap-south-1.compute.internal   Node ip-10-26-18-114.ap-south-1.compute.internal event: Registered Node ip-10-26-18-114.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-18-114.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeTrunkInitiated          node/ip-10-26-18-114.ap-south-1.compute.internal   The node has trunk interface initialized successfully
18m         Normal    DisruptionBlocked           node/ip-10-26-18-114.ap-south-1.compute.internal   Node is nominated for a pending pod
15m         Normal    DisruptionBlocked           node/ip-10-26-18-114.ap-south-1.compute.internal   Node is nominated for a pending pod
75s         Normal    Unconsolidatable            node/ip-10-26-18-114.ap-south-1.compute.internal   Can't remove without creating 2 candidates
64m         Normal    Starting                    node/ip-10-26-18-124.ap-south-1.compute.internal   Starting kubelet.
64m         Warning   InvalidDiskCapacity         node/ip-10-26-18-124.ap-south-1.compute.internal   invalid capacity 0 on image filesystem
64m         Normal    NodeHasSufficientMemory     node/ip-10-26-18-124.ap-south-1.compute.internal   Node ip-10-26-18-124.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
64m         Normal    NodeHasNoDiskPressure       node/ip-10-26-18-124.ap-south-1.compute.internal   Node ip-10-26-18-124.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
64m         Normal    NodeHasSufficientPID        node/ip-10-26-18-124.ap-south-1.compute.internal   Node ip-10-26-18-124.ap-south-1.compute.internal status is now: NodeHasSufficientPID
64m         Normal    NodeAllocatableEnforced     node/ip-10-26-18-124.ap-south-1.compute.internal   Updated Node Allocatable limit across pods
64m         Normal    Synced                      node/ip-10-26-18-124.ap-south-1.compute.internal   Node synced successfully
64m         Normal    RegisteredNode              node/ip-10-26-18-124.ap-south-1.compute.internal   Node ip-10-26-18-124.ap-south-1.compute.internal event: Registered Node ip-10-26-18-124.ap-south-1.compute.internal in Controller
64m         Normal    Starting                    node/ip-10-26-18-124.ap-south-1.compute.internal   
64m         Normal    DisruptionBlocked           node/ip-10-26-18-124.ap-south-1.compute.internal   Node isn't initialized
64m         Normal    ControllerVersionNotice     node/ip-10-26-18-124.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
64m         Normal    NodeReady                   node/ip-10-26-18-124.ap-south-1.compute.internal   Node ip-10-26-18-124.ap-south-1.compute.internal status is now: NodeReady
64m         Normal    Ready                       node/ip-10-26-18-124.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
64m         Normal    NodeTrunkInitiated          node/ip-10-26-18-124.ap-south-1.compute.internal   The node has trunk interface initialized successfully
28m         Normal    Unconsolidatable            node/ip-10-26-18-124.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
38m         Normal    DisruptionBlocked           node/ip-10-26-18-124.ap-south-1.compute.internal   Node is nominated for a pending pod
28m         Normal    RegisteredNode              node/ip-10-26-18-124.ap-south-1.compute.internal   Node ip-10-26-18-124.ap-south-1.compute.internal event: Registered Node ip-10-26-18-124.ap-south-1.compute.internal in Controller
28m         Normal    ControllerVersionNotice     node/ip-10-26-18-124.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
28m         Normal    NodeTrunkInitiated          node/ip-10-26-18-124.ap-south-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked           node/ip-10-26-18-124.ap-south-1.compute.internal   Not all pods would schedule, orb-manager-external/orb-manager-external-6c6f4f8d69-8lrkn => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal orb-monitoring-service/orb-monitoring-service-6bcf9f4dd6-2qkll => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal
23m         Normal    RegisteredNode              node/ip-10-26-18-124.ap-south-1.compute.internal   Node ip-10-26-18-124.ap-south-1.compute.internal event: Registered Node ip-10-26-18-124.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-18-124.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeTrunkInitiated          node/ip-10-26-18-124.ap-south-1.compute.internal   The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked           node/ip-10-26-18-124.ap-south-1.compute.internal   Node is deleting or marked for deletion
22m         Normal    DisruptionTerminating       node/ip-10-26-18-124.ap-south-1.compute.internal   Disrupting Node: Drifted/Replace
22m         Warning   FailedDraining              node/ip-10-26-18-124.ap-south-1.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
21m         Warning   InstanceTerminating         node/ip-10-26-18-124.ap-south-1.compute.internal   Instance is terminating
21m         Normal    RemovingNode                node/ip-10-26-18-124.ap-south-1.compute.internal   Node ip-10-26-18-124.ap-south-1.compute.internal event: Removing Node ip-10-26-18-124.ap-south-1.compute.internal from Controller
90m         Warning   SpotInterrupted             node/ip-10-26-18-16.ap-south-1.compute.internal    Spot interruption warning was triggered
90m         Warning   TerminatingOnInterruption   node/ip-10-26-18-16.ap-south-1.compute.internal    Interruption triggered termination for the Node
90m         Warning   FailedDraining              node/ip-10-26-18-16.ap-south-1.compute.internal    Failed to drain node, 7 pods are waiting to be evicted
90m         Normal    DisruptionBlocked           node/ip-10-26-18-16.ap-south-1.compute.internal    Node is deleting or marked for deletion
89m         Warning   InstanceTerminating         node/ip-10-26-18-16.ap-south-1.compute.internal    Instance is terminating
88m         Normal    RemovingNode                node/ip-10-26-18-16.ap-south-1.compute.internal    Node ip-10-26-18-16.ap-south-1.compute.internal event: Removing Node ip-10-26-18-16.ap-south-1.compute.internal from Controller
20m         Normal    Starting                    node/ip-10-26-18-168.ap-south-1.compute.internal   Starting kubelet.
20m         Warning   InvalidDiskCapacity         node/ip-10-26-18-168.ap-south-1.compute.internal   invalid capacity 0 on image filesystem
20m         Normal    NodeHasSufficientMemory     node/ip-10-26-18-168.ap-south-1.compute.internal   Node ip-10-26-18-168.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
20m         Normal    NodeHasNoDiskPressure       node/ip-10-26-18-168.ap-south-1.compute.internal   Node ip-10-26-18-168.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
20m         Normal    NodeHasSufficientPID        node/ip-10-26-18-168.ap-south-1.compute.internal   Node ip-10-26-18-168.ap-south-1.compute.internal status is now: NodeHasSufficientPID
20m         Normal    NodeAllocatableEnforced     node/ip-10-26-18-168.ap-south-1.compute.internal   Updated Node Allocatable limit across pods
20m         Normal    Synced                      node/ip-10-26-18-168.ap-south-1.compute.internal   Node synced successfully
20m         Normal    RegisteredNode              node/ip-10-26-18-168.ap-south-1.compute.internal   Node ip-10-26-18-168.ap-south-1.compute.internal event: Registered Node ip-10-26-18-168.ap-south-1.compute.internal in Controller
20m         Normal    DisruptionBlocked           node/ip-10-26-18-168.ap-south-1.compute.internal   Node isn't initialized
20m         Normal    Starting                    node/ip-10-26-18-168.ap-south-1.compute.internal   
20m         Normal    ControllerVersionNotice     node/ip-10-26-18-168.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeReady                   node/ip-10-26-18-168.ap-south-1.compute.internal   Node ip-10-26-18-168.ap-south-1.compute.internal status is now: NodeReady
20m         Normal    Ready                       node/ip-10-26-18-168.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
20m         Normal    NodeTrunkInitiated          node/ip-10-26-18-168.ap-south-1.compute.internal   The node has trunk interface initialized successfully
17m         Normal    DisruptionBlocked           node/ip-10-26-18-168.ap-south-1.compute.internal   Node is nominated for a pending pod
76s         Normal    Unconsolidatable            node/ip-10-26-18-168.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
24m         Normal    Starting                    node/ip-10-26-18-17.ap-south-1.compute.internal    Starting kubelet.
24m         Warning   InvalidDiskCapacity         node/ip-10-26-18-17.ap-south-1.compute.internal    invalid capacity 0 on image filesystem
24m         Normal    NodeHasSufficientMemory     node/ip-10-26-18-17.ap-south-1.compute.internal    Node ip-10-26-18-17.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
24m         Normal    NodeHasNoDiskPressure       node/ip-10-26-18-17.ap-south-1.compute.internal    Node ip-10-26-18-17.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
24m         Normal    NodeHasSufficientPID        node/ip-10-26-18-17.ap-south-1.compute.internal    Node ip-10-26-18-17.ap-south-1.compute.internal status is now: NodeHasSufficientPID
24m         Normal    NodeAllocatableEnforced     node/ip-10-26-18-17.ap-south-1.compute.internal    Updated Node Allocatable limit across pods
24m         Normal    Synced                      node/ip-10-26-18-17.ap-south-1.compute.internal    Node synced successfully
24m         Normal    RegisteredNode              node/ip-10-26-18-17.ap-south-1.compute.internal    Node ip-10-26-18-17.ap-south-1.compute.internal event: Registered Node ip-10-26-18-17.ap-south-1.compute.internal in Controller
23m         Normal    DisruptionBlocked           node/ip-10-26-18-17.ap-south-1.compute.internal    Node isn't initialized
23m         Normal    Starting                    node/ip-10-26-18-17.ap-south-1.compute.internal    
23m         Normal    NodeReady                   node/ip-10-26-18-17.ap-south-1.compute.internal    Node ip-10-26-18-17.ap-south-1.compute.internal status is now: NodeReady
23m         Normal    Ready                       node/ip-10-26-18-17.ap-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
23m         Normal    RegisteredNode              node/ip-10-26-18-17.ap-south-1.compute.internal    Node ip-10-26-18-17.ap-south-1.compute.internal event: Registered Node ip-10-26-18-17.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-18-17.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeTrunkInitiated          node/ip-10-26-18-17.ap-south-1.compute.internal    The node has trunk interface initialized successfully
20m         Normal    DisruptionBlocked           node/ip-10-26-18-17.ap-south-1.compute.internal    Node is nominated for a pending pod
17m         Normal    DisruptionBlocked           node/ip-10-26-18-17.ap-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
14m         Normal    DisruptionBlocked           node/ip-10-26-18-17.ap-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
2m8s        Normal    DisruptionTerminating       node/ip-10-26-18-17.ap-south-1.compute.internal    Disrupting Node: Underutilized/Delete
2m8s        Normal    DisruptionBlocked           node/ip-10-26-18-17.ap-south-1.compute.internal    Node is deleting or marked for deletion
2m8s        Warning   FailedDraining              node/ip-10-26-18-17.ap-south-1.compute.internal    Failed to drain node, 3 pods are waiting to be evicted
91s         Warning   InstanceTerminating         node/ip-10-26-18-17.ap-south-1.compute.internal    Instance is terminating
43s         Normal    NodeNotReady                node/ip-10-26-18-17.ap-south-1.compute.internal    Node ip-10-26-18-17.ap-south-1.compute.internal status is now: NodeNotReady
43s         Normal    MemoryPressure              node/ip-10-26-18-17.ap-south-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
43s         Normal    DiskPressure                node/ip-10-26-18-17.ap-south-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
43s         Normal    PIDPressure                 node/ip-10-26-18-17.ap-south-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
43s         Normal    Ready                       node/ip-10-26-18-17.ap-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
33s         Normal    RemovingNode                node/ip-10-26-18-17.ap-south-1.compute.internal    Node ip-10-26-18-17.ap-south-1.compute.internal event: Removing Node ip-10-26-18-17.ap-south-1.compute.internal from Controller
65m         Normal    DisruptionBlocked           node/ip-10-26-18-174.ap-south-1.compute.internal   Node is nominated for a pending pod
73m         Normal    Unconsolidatable            node/ip-10-26-18-174.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
64m         Normal    DisruptionTerminating       node/ip-10-26-18-174.ap-south-1.compute.internal   Disrupting Node: Underutilized/Delete
64m         Warning   FailedDraining              node/ip-10-26-18-174.ap-south-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
63m         Warning   InstanceTerminating         node/ip-10-26-18-174.ap-south-1.compute.internal   Instance is terminating
63m         Normal    DisruptionBlocked           node/ip-10-26-18-174.ap-south-1.compute.internal   Node is deleting or marked for deletion
62m         Normal    RemovingNode                node/ip-10-26-18-174.ap-south-1.compute.internal   Node ip-10-26-18-174.ap-south-1.compute.internal event: Removing Node ip-10-26-18-174.ap-south-1.compute.internal from Controller
15m         Normal    Starting                    node/ip-10-26-18-184.ap-south-1.compute.internal   Starting kubelet.
15m         Warning   InvalidDiskCapacity         node/ip-10-26-18-184.ap-south-1.compute.internal   invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory     node/ip-10-26-18-184.ap-south-1.compute.internal   Node ip-10-26-18-184.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure       node/ip-10-26-18-184.ap-south-1.compute.internal   Node ip-10-26-18-184.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID        node/ip-10-26-18-184.ap-south-1.compute.internal   Node ip-10-26-18-184.ap-south-1.compute.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced     node/ip-10-26-18-184.ap-south-1.compute.internal   Updated Node Allocatable limit across pods
15m         Normal    Synced                      node/ip-10-26-18-184.ap-south-1.compute.internal   Node synced successfully
15m         Normal    DisruptionBlocked           node/ip-10-26-18-184.ap-south-1.compute.internal   Node isn't initialized
15m         Normal    RegisteredNode              node/ip-10-26-18-184.ap-south-1.compute.internal   Node ip-10-26-18-184.ap-south-1.compute.internal event: Registered Node ip-10-26-18-184.ap-south-1.compute.internal in Controller
15m         Normal    Starting                    node/ip-10-26-18-184.ap-south-1.compute.internal   
15m         Normal    ControllerVersionNotice     node/ip-10-26-18-184.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
15m         Normal    NodeReady                   node/ip-10-26-18-184.ap-south-1.compute.internal   Node ip-10-26-18-184.ap-south-1.compute.internal status is now: NodeReady
15m         Normal    Ready                       node/ip-10-26-18-184.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeTrunkInitiated          node/ip-10-26-18-184.ap-south-1.compute.internal   The node has trunk interface initialized successfully
12m         Normal    DisruptionBlocked           node/ip-10-26-18-184.ap-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
2m8s        Normal    DisruptionBlocked           node/ip-10-26-18-184.ap-south-1.compute.internal   Node is nominated for a pending pod
78m         Normal    Unconsolidatable            node/ip-10-26-18-218.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
64m         Normal    DisruptionBlocked           node/ip-10-26-18-218.ap-south-1.compute.internal   Node is nominated for a pending pod
62m         Normal    DisruptionTerminating       node/ip-10-26-18-218.ap-south-1.compute.internal   Disrupting Node: Underutilized/Delete
62m         Warning   FailedDraining              node/ip-10-26-18-218.ap-south-1.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
62m         Warning   InstanceTerminating         node/ip-10-26-18-218.ap-south-1.compute.internal   Instance is terminating
62m         Normal    DisruptionBlocked           node/ip-10-26-18-218.ap-south-1.compute.internal   Node is deleting or marked for deletion
61m         Normal    NodeNotReady                node/ip-10-26-18-218.ap-south-1.compute.internal   Node ip-10-26-18-218.ap-south-1.compute.internal status is now: NodeNotReady
61m         Normal    MemoryPressure              node/ip-10-26-18-218.ap-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
61m         Normal    DiskPressure                node/ip-10-26-18-218.ap-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
61m         Normal    PIDPressure                 node/ip-10-26-18-218.ap-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
61m         Normal    Ready                       node/ip-10-26-18-218.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
61m         Normal    RemovingNode                node/ip-10-26-18-218.ap-south-1.compute.internal   Node ip-10-26-18-218.ap-south-1.compute.internal event: Removing Node ip-10-26-18-218.ap-south-1.compute.internal from Controller
15m         Normal    Starting                    node/ip-10-26-18-33.ap-south-1.compute.internal    Starting kubelet.
15m         Warning   InvalidDiskCapacity         node/ip-10-26-18-33.ap-south-1.compute.internal    invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory     node/ip-10-26-18-33.ap-south-1.compute.internal    Node ip-10-26-18-33.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure       node/ip-10-26-18-33.ap-south-1.compute.internal    Node ip-10-26-18-33.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID        node/ip-10-26-18-33.ap-south-1.compute.internal    Node ip-10-26-18-33.ap-south-1.compute.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced     node/ip-10-26-18-33.ap-south-1.compute.internal    Updated Node Allocatable limit across pods
15m         Normal    Synced                      node/ip-10-26-18-33.ap-south-1.compute.internal    Node synced successfully
15m         Normal    DisruptionBlocked           node/ip-10-26-18-33.ap-south-1.compute.internal    Node isn't initialized
15m         Normal    RegisteredNode              node/ip-10-26-18-33.ap-south-1.compute.internal    Node ip-10-26-18-33.ap-south-1.compute.internal event: Registered Node ip-10-26-18-33.ap-south-1.compute.internal in Controller
14m         Normal    Starting                    node/ip-10-26-18-33.ap-south-1.compute.internal    
14m         Normal    ControllerVersionNotice     node/ip-10-26-18-33.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeReady                   node/ip-10-26-18-33.ap-south-1.compute.internal    Node ip-10-26-18-33.ap-south-1.compute.internal status is now: NodeReady
14m         Normal    Ready                       node/ip-10-26-18-33.ap-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeTrunkInitiated          node/ip-10-26-18-33.ap-south-1.compute.internal    The node has trunk interface initialized successfully
2m8s        Normal    DisruptionBlocked           node/ip-10-26-18-33.ap-south-1.compute.internal    Node is nominated for a pending pod
65m         Normal    Starting                    node/ip-10-26-18-43.ap-south-1.compute.internal    Starting kubelet.
65m         Warning   InvalidDiskCapacity         node/ip-10-26-18-43.ap-south-1.compute.internal    invalid capacity 0 on image filesystem
65m         Normal    NodeHasSufficientMemory     node/ip-10-26-18-43.ap-south-1.compute.internal    Node ip-10-26-18-43.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
65m         Normal    NodeHasNoDiskPressure       node/ip-10-26-18-43.ap-south-1.compute.internal    Node ip-10-26-18-43.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
65m         Normal    NodeHasSufficientPID        node/ip-10-26-18-43.ap-south-1.compute.internal    Node ip-10-26-18-43.ap-south-1.compute.internal status is now: NodeHasSufficientPID
65m         Normal    NodeAllocatableEnforced     node/ip-10-26-18-43.ap-south-1.compute.internal    Updated Node Allocatable limit across pods
65m         Normal    Synced                      node/ip-10-26-18-43.ap-south-1.compute.internal    Node synced successfully
65m         Normal    RegisteredNode              node/ip-10-26-18-43.ap-south-1.compute.internal    Node ip-10-26-18-43.ap-south-1.compute.internal event: Registered Node ip-10-26-18-43.ap-south-1.compute.internal in Controller
65m         Normal    DisruptionBlocked           node/ip-10-26-18-43.ap-south-1.compute.internal    Node isn't initialized
65m         Normal    Starting                    node/ip-10-26-18-43.ap-south-1.compute.internal    
65m         Normal    ControllerVersionNotice     node/ip-10-26-18-43.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
65m         Normal    NodeReady                   node/ip-10-26-18-43.ap-south-1.compute.internal    Node ip-10-26-18-43.ap-south-1.compute.internal status is now: NodeReady
65m         Normal    Ready                       node/ip-10-26-18-43.ap-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
65m         Normal    NodeTrunkInitiated          node/ip-10-26-18-43.ap-south-1.compute.internal    The node has trunk interface initialized successfully
32m         Normal    Unconsolidatable            node/ip-10-26-18-43.ap-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
28m         Normal    RegisteredNode              node/ip-10-26-18-43.ap-south-1.compute.internal    Node ip-10-26-18-43.ap-south-1.compute.internal event: Registered Node ip-10-26-18-43.ap-south-1.compute.internal in Controller
28m         Normal    ControllerVersionNotice     node/ip-10-26-18-43.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
28m         Normal    NodeTrunkInitiated          node/ip-10-26-18-43.ap-south-1.compute.internal    The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked           node/ip-10-26-18-43.ap-south-1.compute.internal    Not all pods would schedule, signup-service/signup-service-65775fddc4-twn6p => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal orb-manager-external/orb-manager-external-6c6f4f8d69-cx5hk => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal
23m         Normal    RegisteredNode              node/ip-10-26-18-43.ap-south-1.compute.internal    Node ip-10-26-18-43.ap-south-1.compute.internal event: Registered Node ip-10-26-18-43.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-18-43.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeTrunkInitiated          node/ip-10-26-18-43.ap-south-1.compute.internal    The node has trunk interface initialized successfully
19m         Normal    DisruptionBlocked           node/ip-10-26-18-43.ap-south-1.compute.internal    Node is deleting or marked for deletion
21m         Normal    DisruptionTerminating       node/ip-10-26-18-43.ap-south-1.compute.internal    Disrupting Node: Drifted/Replace
21m         Warning   FailedDraining              node/ip-10-26-18-43.ap-south-1.compute.internal    Failed to drain node, 3 pods are waiting to be evicted
20m         Warning   InstanceTerminating         node/ip-10-26-18-43.ap-south-1.compute.internal    Instance is terminating
19m         Normal    NodeNotReady                node/ip-10-26-18-43.ap-south-1.compute.internal    Node ip-10-26-18-43.ap-south-1.compute.internal status is now: NodeNotReady
19m         Normal    MemoryPressure              node/ip-10-26-18-43.ap-south-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DiskPressure                node/ip-10-26-18-43.ap-south-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    PIDPressure                 node/ip-10-26-18-43.ap-south-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    Ready                       node/ip-10-26-18-43.ap-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    RemovingNode                node/ip-10-26-18-43.ap-south-1.compute.internal    Node ip-10-26-18-43.ap-south-1.compute.internal event: Removing Node ip-10-26-18-43.ap-south-1.compute.internal from Controller
34m         Warning   Unsupported                 node/ip-10-26-18-84.ap-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    RegisteredNode              node/ip-10-26-18-84.ap-south-1.compute.internal    Node ip-10-26-18-84.ap-south-1.compute.internal event: Registered Node ip-10-26-18-84.ap-south-1.compute.internal in Controller
28m         Normal    ControllerVersionNotice     node/ip-10-26-18-84.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
23m         Warning   Unsupported                 node/ip-10-26-18-84.ap-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
27m         Normal    NodeNotSchedulable          node/ip-10-26-18-84.ap-south-1.compute.internal    Node ip-10-26-18-84.ap-south-1.compute.internal status is now: NodeNotSchedulable
23m         Normal    RegisteredNode              node/ip-10-26-18-84.ap-south-1.compute.internal    Node ip-10-26-18-84.ap-south-1.compute.internal event: Registered Node ip-10-26-18-84.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-18-84.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
21m         Warning   Unsupported                 node/ip-10-26-18-84.ap-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    NodeNotReady                node/ip-10-26-18-84.ap-south-1.compute.internal    Node ip-10-26-18-84.ap-south-1.compute.internal status is now: NodeNotReady
21m         Normal    MemoryPressure              node/ip-10-26-18-84.ap-south-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    DiskPressure                node/ip-10-26-18-84.ap-south-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    PIDPressure                 node/ip-10-26-18-84.ap-south-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    Ready                       node/ip-10-26-18-84.ap-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    DeletingNode                node/ip-10-26-18-84.ap-south-1.compute.internal    Deleting node ip-10-26-18-84.ap-south-1.compute.internal because it does not exist in the cloud provider
21m         Normal    RemovingNode                node/ip-10-26-18-84.ap-south-1.compute.internal    Node ip-10-26-18-84.ap-south-1.compute.internal event: Removing Node ip-10-26-18-84.ap-south-1.compute.internal from Controller
21m         Normal    Starting                    node/ip-10-26-19-152.ap-south-1.compute.internal   Starting kubelet.
21m         Warning   InvalidDiskCapacity         node/ip-10-26-19-152.ap-south-1.compute.internal   invalid capacity 0 on image filesystem
21m         Normal    NodeHasSufficientMemory     node/ip-10-26-19-152.ap-south-1.compute.internal   Node ip-10-26-19-152.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
21m         Normal    NodeHasNoDiskPressure       node/ip-10-26-19-152.ap-south-1.compute.internal   Node ip-10-26-19-152.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
21m         Normal    NodeHasSufficientPID        node/ip-10-26-19-152.ap-south-1.compute.internal   Node ip-10-26-19-152.ap-south-1.compute.internal status is now: NodeHasSufficientPID
21m         Normal    NodeAllocatableEnforced     node/ip-10-26-19-152.ap-south-1.compute.internal   Updated Node Allocatable limit across pods
21m         Normal    Synced                      node/ip-10-26-19-152.ap-south-1.compute.internal   Node synced successfully
21m         Normal    RegisteredNode              node/ip-10-26-19-152.ap-south-1.compute.internal   Node ip-10-26-19-152.ap-south-1.compute.internal event: Registered Node ip-10-26-19-152.ap-south-1.compute.internal in Controller
21m         Normal    DisruptionBlocked           node/ip-10-26-19-152.ap-south-1.compute.internal   Node isn't initialized
21m         Normal    Starting                    node/ip-10-26-19-152.ap-south-1.compute.internal   
21m         Normal    ControllerVersionNotice     node/ip-10-26-19-152.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeReady                   node/ip-10-26-19-152.ap-south-1.compute.internal   Node ip-10-26-19-152.ap-south-1.compute.internal status is now: NodeReady
21m         Normal    Ready                       node/ip-10-26-19-152.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    NodeTrunkInitiated          node/ip-10-26-19-152.ap-south-1.compute.internal   The node has trunk interface initialized successfully
17m         Normal    DisruptionBlocked           node/ip-10-26-19-152.ap-south-1.compute.internal   Node is nominated for a pending pod
38m         Normal    DisruptionBlocked           node/ip-10-26-19-194.ap-south-1.compute.internal   Node is nominated for a pending pod
69m         Normal    Unconsolidatable            node/ip-10-26-19-194.ap-south-1.compute.internal   Can't remove without creating 2 candidates
49m         Normal    Unconsolidatable            node/ip-10-26-19-194.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
90m         Normal    DisruptionBlocked           node/ip-10-26-19-194.ap-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
32m         Normal    DisruptionBlocked           node/ip-10-26-19-194.ap-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
28m         Normal    RegisteredNode              node/ip-10-26-19-194.ap-south-1.compute.internal   Node ip-10-26-19-194.ap-south-1.compute.internal event: Registered Node ip-10-26-19-194.ap-south-1.compute.internal in Controller
28m         Normal    ControllerVersionNotice     node/ip-10-26-19-194.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
28m         Normal    NodeTrunkInitiated          node/ip-10-26-19-194.ap-south-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked           node/ip-10-26-19-194.ap-south-1.compute.internal   Node is deleting or marked for deletion
24m         Normal    DisruptionBlocked           node/ip-10-26-19-194.ap-south-1.compute.internal   Not all pods would schedule, cluster-monitoring/cluster-monitoring-b5977fcf8-whnrw => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal cloudflared-tunnel/cloudflared-tunnel-746c5477d5-bl27q => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal signup-service/signup-service-65775fddc4-fpvft => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal orb-monitoring-service/orb-monitoring-service-6bcf9f4dd6-ncs7g => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal
23m         Normal    RegisteredNode              node/ip-10-26-19-194.ap-south-1.compute.internal   Node ip-10-26-19-194.ap-south-1.compute.internal event: Registered Node ip-10-26-19-194.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-19-194.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeTrunkInitiated          node/ip-10-26-19-194.ap-south-1.compute.internal   The node has trunk interface initialized successfully
20m         Normal    DisruptionBlocked           node/ip-10-26-19-194.ap-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-pdb)
15m         Normal    DisruptionBlocked           node/ip-10-26-19-194.ap-south-1.compute.internal   Node is deleting or marked for deletion
16m         Normal    DisruptionTerminating       node/ip-10-26-19-194.ap-south-1.compute.internal   Disrupting Node: Drifted/Delete
16m         Warning   FailedDraining              node/ip-10-26-19-194.ap-south-1.compute.internal   Failed to drain node, 6 pods are waiting to be evicted
15m         Warning   InstanceTerminating         node/ip-10-26-19-194.ap-south-1.compute.internal   Instance is terminating
14m         Normal    NodeNotReady                node/ip-10-26-19-194.ap-south-1.compute.internal   Node ip-10-26-19-194.ap-south-1.compute.internal status is now: NodeNotReady
14m         Normal    MemoryPressure              node/ip-10-26-19-194.ap-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure                node/ip-10-26-19-194.ap-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure                 node/ip-10-26-19-194.ap-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                       node/ip-10-26-19-194.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    RemovingNode                node/ip-10-26-19-194.ap-south-1.compute.internal   Node ip-10-26-19-194.ap-south-1.compute.internal event: Removing Node ip-10-26-19-194.ap-south-1.compute.internal from Controller
38m         Normal    Unconsolidatable            node/ip-10-26-19-242.ap-south-1.compute.internal   Can't remove without creating 2 candidates
90m         Normal    DisruptionBlocked           node/ip-10-26-19-242.ap-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
58m         Normal    Unconsolidatable            node/ip-10-26-19-242.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
28m         Normal    RegisteredNode              node/ip-10-26-19-242.ap-south-1.compute.internal   Node ip-10-26-19-242.ap-south-1.compute.internal event: Registered Node ip-10-26-19-242.ap-south-1.compute.internal in Controller
28m         Normal    ControllerVersionNotice     node/ip-10-26-19-242.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
28m         Normal    NodeTrunkInitiated          node/ip-10-26-19-242.ap-south-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked           node/ip-10-26-19-242.ap-south-1.compute.internal   Not all pods would schedule, traefik/traefik-7db66dc5fc-hp6zv => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal
23m         Normal    RegisteredNode              node/ip-10-26-19-242.ap-south-1.compute.internal   Node ip-10-26-19-242.ap-south-1.compute.internal event: Registered Node ip-10-26-19-242.ap-south-1.compute.internal in Controller
23m         Normal    DisruptionTerminating       node/ip-10-26-19-242.ap-south-1.compute.internal   Disrupting Node: Drifted/Replace
23m         Warning   FailedDraining              node/ip-10-26-19-242.ap-south-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
23m         Normal    ControllerVersionNotice     node/ip-10-26-19-242.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeTrunkInitiated          node/ip-10-26-19-242.ap-south-1.compute.internal   The node has trunk interface initialized successfully
22m         Warning   InstanceTerminating         node/ip-10-26-19-242.ap-south-1.compute.internal   Instance is terminating
22m         Normal    DisruptionBlocked           node/ip-10-26-19-242.ap-south-1.compute.internal   Node is deleting or marked for deletion
22m         Normal    NodeNotReady                node/ip-10-26-19-242.ap-south-1.compute.internal   Node ip-10-26-19-242.ap-south-1.compute.internal status is now: NodeNotReady
22m         Normal    MemoryPressure              node/ip-10-26-19-242.ap-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure                node/ip-10-26-19-242.ap-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure                 node/ip-10-26-19-242.ap-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                       node/ip-10-26-19-242.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    RemovingNode                node/ip-10-26-19-242.ap-south-1.compute.internal   Node ip-10-26-19-242.ap-south-1.compute.internal event: Removing Node ip-10-26-19-242.ap-south-1.compute.internal from Controller
22m         Normal    Starting                    node/ip-10-26-19-250.ap-south-1.compute.internal   Starting kubelet.
22m         Warning   InvalidDiskCapacity         node/ip-10-26-19-250.ap-south-1.compute.internal   invalid capacity 0 on image filesystem
22m         Normal    NodeHasSufficientMemory     node/ip-10-26-19-250.ap-south-1.compute.internal   Node ip-10-26-19-250.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
22m         Normal    NodeHasNoDiskPressure       node/ip-10-26-19-250.ap-south-1.compute.internal   Node ip-10-26-19-250.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
22m         Normal    NodeHasSufficientPID        node/ip-10-26-19-250.ap-south-1.compute.internal   Node ip-10-26-19-250.ap-south-1.compute.internal status is now: NodeHasSufficientPID
22m         Normal    NodeAllocatableEnforced     node/ip-10-26-19-250.ap-south-1.compute.internal   Updated Node Allocatable limit across pods
22m         Normal    Synced                      node/ip-10-26-19-250.ap-south-1.compute.internal   Node synced successfully
22m         Normal    DisruptionBlocked           node/ip-10-26-19-250.ap-south-1.compute.internal   Node isn't initialized
22m         Normal    RegisteredNode              node/ip-10-26-19-250.ap-south-1.compute.internal   Node ip-10-26-19-250.ap-south-1.compute.internal event: Registered Node ip-10-26-19-250.ap-south-1.compute.internal in Controller
22m         Normal    Starting                    node/ip-10-26-19-250.ap-south-1.compute.internal   
22m         Normal    ControllerVersionNotice     node/ip-10-26-19-250.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeReady                   node/ip-10-26-19-250.ap-south-1.compute.internal   Node ip-10-26-19-250.ap-south-1.compute.internal status is now: NodeReady
22m         Normal    Ready                       node/ip-10-26-19-250.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    NodeTrunkInitiated          node/ip-10-26-19-250.ap-south-1.compute.internal   The node has trunk interface initialized successfully
86s         Normal    Unconsolidatable            node/ip-10-26-19-250.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    Starting                    node/ip-10-26-19-251.ap-south-1.compute.internal   Starting kubelet.
29m         Warning   InvalidDiskCapacity         node/ip-10-26-19-251.ap-south-1.compute.internal   invalid capacity 0 on image filesystem
29m         Normal    NodeHasSufficientMemory     node/ip-10-26-19-251.ap-south-1.compute.internal   Node ip-10-26-19-251.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
29m         Normal    NodeHasNoDiskPressure       node/ip-10-26-19-251.ap-south-1.compute.internal   Node ip-10-26-19-251.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
29m         Normal    NodeHasSufficientPID        node/ip-10-26-19-251.ap-south-1.compute.internal   Node ip-10-26-19-251.ap-south-1.compute.internal status is now: NodeHasSufficientPID
29m         Normal    NodeAllocatableEnforced     node/ip-10-26-19-251.ap-south-1.compute.internal   Updated Node Allocatable limit across pods
29m         Normal    Synced                      node/ip-10-26-19-251.ap-south-1.compute.internal   Node synced successfully
29m         Normal    RegisteredNode              node/ip-10-26-19-251.ap-south-1.compute.internal   Node ip-10-26-19-251.ap-south-1.compute.internal event: Registered Node ip-10-26-19-251.ap-south-1.compute.internal in Controller
29m         Normal    Starting                    node/ip-10-26-19-251.ap-south-1.compute.internal   
29m         Normal    ControllerVersionNotice     node/ip-10-26-19-251.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
29m         Warning   Unsupported                 node/ip-10-26-19-251.ap-south-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
29m         Normal    NodeReady                   node/ip-10-26-19-251.ap-south-1.compute.internal   Node ip-10-26-19-251.ap-south-1.compute.internal status is now: NodeReady
29m         Normal    Ready                       node/ip-10-26-19-251.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
28m         Normal    RegisteredNode              node/ip-10-26-19-251.ap-south-1.compute.internal   Node ip-10-26-19-251.ap-south-1.compute.internal event: Registered Node ip-10-26-19-251.ap-south-1.compute.internal in Controller
28m         Normal    ControllerVersionNotice     node/ip-10-26-19-251.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Warning   Unsupported                 node/ip-10-26-19-251.ap-south-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
23m         Normal    RegisteredNode              node/ip-10-26-19-251.ap-south-1.compute.internal   Node ip-10-26-19-251.ap-south-1.compute.internal event: Registered Node ip-10-26-19-251.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-19-251.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
2m          Warning   Unsupported                 node/ip-10-26-19-251.ap-south-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
48m         Normal    Unconsolidatable            node/ip-10-26-19-89.ap-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
24m         Normal    DisruptionBlocked           node/ip-10-26-19-89.ap-south-1.compute.internal    Node is nominated for a pending pod
90m         Normal    DisruptionBlocked           node/ip-10-26-19-89.ap-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
28m         Normal    RegisteredNode              node/ip-10-26-19-89.ap-south-1.compute.internal    Node ip-10-26-19-89.ap-south-1.compute.internal event: Registered Node ip-10-26-19-89.ap-south-1.compute.internal in Controller
28m         Normal    ControllerVersionNotice     node/ip-10-26-19-89.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
28m         Normal    NodeTrunkInitiated          node/ip-10-26-19-89.ap-south-1.compute.internal    The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked           node/ip-10-26-19-89.ap-south-1.compute.internal    Not all pods would schedule, kyverno/kyverno-background-controller-5b56dc48bd-26fht => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal kyverno/kyverno-reports-controller-7c49c78b7b-vpk5w => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal kyverno/kyverno-cleanup-controller-56db757949-mjhqz => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal cluster-monitoring/cluster-monitoring-b5977fcf8-pmbzd => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal orb-fleet-backend-hpa-monitor/orb-fleet-backend-hpa-monitor-6ff44d575b-rm6k4 => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal  and 2 other(s)
23m         Normal    RegisteredNode              node/ip-10-26-19-89.ap-south-1.compute.internal    Node ip-10-26-19-89.ap-south-1.compute.internal event: Registered Node ip-10-26-19-89.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-19-89.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeTrunkInitiated          node/ip-10-26-19-89.ap-south-1.compute.internal    The node has trunk interface initialized successfully
20m         Normal    DisruptionBlocked           node/ip-10-26-19-89.ap-south-1.compute.internal    Node is deleting or marked for deletion
20m         Normal    DisruptionTerminating       node/ip-10-26-19-89.ap-south-1.compute.internal    Disrupting Node: Drifted/Delete
20m         Warning   FailedDraining              node/ip-10-26-19-89.ap-south-1.compute.internal    Failed to drain node, 15 pods are waiting to be evicted
18m         Warning   InstanceTerminating         node/ip-10-26-19-89.ap-south-1.compute.internal    Instance is terminating
18m         Normal    RemovingNode                node/ip-10-26-19-89.ap-south-1.compute.internal    Node ip-10-26-19-89.ap-south-1.compute.internal event: Removing Node ip-10-26-19-89.ap-south-1.compute.internal from Controller
58m         Normal    Unconsolidatable            node/ip-10-26-19-95.ap-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
38m         Normal    Unconsolidatable            node/ip-10-26-19-95.ap-south-1.compute.internal    Can't remove without creating 2 candidates
90m         Normal    DisruptionBlocked           node/ip-10-26-19-95.ap-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
28m         Normal    RegisteredNode              node/ip-10-26-19-95.ap-south-1.compute.internal    Node ip-10-26-19-95.ap-south-1.compute.internal event: Registered Node ip-10-26-19-95.ap-south-1.compute.internal in Controller
28m         Normal    ControllerVersionNotice     node/ip-10-26-19-95.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
28m         Normal    NodeTrunkInitiated          node/ip-10-26-19-95.ap-south-1.compute.internal    The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked           node/ip-10-26-19-95.ap-south-1.compute.internal    Not all pods would schedule, traefik/traefik-7db66dc5fc-rq9zp => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal
23m         Normal    RegisteredNode              node/ip-10-26-19-95.ap-south-1.compute.internal    Node ip-10-26-19-95.ap-south-1.compute.internal event: Registered Node ip-10-26-19-95.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-19-95.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeTrunkInitiated          node/ip-10-26-19-95.ap-south-1.compute.internal    The node has trunk interface initialized successfully
17m         Normal    DisruptionBlocked           node/ip-10-26-19-95.ap-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
17m         Normal    DisruptionBlocked           node/ip-10-26-19-95.ap-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
15m         Normal    DisruptionBlocked           node/ip-10-26-19-95.ap-south-1.compute.internal    Node is deleting or marked for deletion
14m         Normal    DisruptionTerminating       node/ip-10-26-19-95.ap-south-1.compute.internal    Disrupting Node: Drifted/Replace
14m         Warning   FailedDraining              node/ip-10-26-19-95.ap-south-1.compute.internal    Failed to drain node, 4 pods are waiting to be evicted
14m         Warning   InstanceTerminating         node/ip-10-26-19-95.ap-south-1.compute.internal    Instance is terminating
13m         Normal    RemovingNode                node/ip-10-26-19-95.ap-south-1.compute.internal    Node ip-10-26-19-95.ap-south-1.compute.internal event: Removing Node ip-10-26-19-95.ap-south-1.compute.internal from Controller
24m         Normal    Starting                    node/ip-10-26-20-104.ap-south-1.compute.internal   Starting kubelet.
24m         Warning   InvalidDiskCapacity         node/ip-10-26-20-104.ap-south-1.compute.internal   invalid capacity 0 on image filesystem
24m         Normal    NodeHasSufficientMemory     node/ip-10-26-20-104.ap-south-1.compute.internal   Node ip-10-26-20-104.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
24m         Normal    NodeHasNoDiskPressure       node/ip-10-26-20-104.ap-south-1.compute.internal   Node ip-10-26-20-104.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
24m         Normal    NodeHasSufficientPID        node/ip-10-26-20-104.ap-south-1.compute.internal   Node ip-10-26-20-104.ap-south-1.compute.internal status is now: NodeHasSufficientPID
24m         Normal    NodeAllocatableEnforced     node/ip-10-26-20-104.ap-south-1.compute.internal   Updated Node Allocatable limit across pods
24m         Normal    Synced                      node/ip-10-26-20-104.ap-south-1.compute.internal   Node synced successfully
24m         Normal    RegisteredNode              node/ip-10-26-20-104.ap-south-1.compute.internal   Node ip-10-26-20-104.ap-south-1.compute.internal event: Registered Node ip-10-26-20-104.ap-south-1.compute.internal in Controller
24m         Normal    DisruptionBlocked           node/ip-10-26-20-104.ap-south-1.compute.internal   Node isn't initialized
24m         Normal    Starting                    node/ip-10-26-20-104.ap-south-1.compute.internal   
24m         Normal    ControllerVersionNotice     node/ip-10-26-20-104.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeReady                   node/ip-10-26-20-104.ap-south-1.compute.internal   Node ip-10-26-20-104.ap-south-1.compute.internal status is now: NodeReady
24m         Normal    Ready                       node/ip-10-26-20-104.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
24m         Normal    NodeTrunkInitiated          node/ip-10-26-20-104.ap-south-1.compute.internal   The node has trunk interface initialized successfully
23m         Normal    RegisteredNode              node/ip-10-26-20-104.ap-south-1.compute.internal   Node ip-10-26-20-104.ap-south-1.compute.internal event: Registered Node ip-10-26-20-104.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-20-104.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeTrunkInitiated          node/ip-10-26-20-104.ap-south-1.compute.internal   The node has trunk interface initialized successfully
2m8s        Normal    Unconsolidatable            node/ip-10-26-20-104.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
32m         Warning   Unsupported                 node/ip-10-26-20-16.ap-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    RegisteredNode              node/ip-10-26-20-16.ap-south-1.compute.internal    Node ip-10-26-20-16.ap-south-1.compute.internal event: Registered Node ip-10-26-20-16.ap-south-1.compute.internal in Controller
28m         Normal    ControllerVersionNotice     node/ip-10-26-20-16.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
25m         Warning   Unsupported                 node/ip-10-26-20-16.ap-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
27m         Normal    NodeNotSchedulable          node/ip-10-26-20-16.ap-south-1.compute.internal    Node ip-10-26-20-16.ap-south-1.compute.internal status is now: NodeNotSchedulable
25m         Normal    NodeNotReady                node/ip-10-26-20-16.ap-south-1.compute.internal    Node ip-10-26-20-16.ap-south-1.compute.internal status is now: NodeNotReady
25m         Normal    MemoryPressure              node/ip-10-26-20-16.ap-south-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    DiskPressure                node/ip-10-26-20-16.ap-south-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    PIDPressure                 node/ip-10-26-20-16.ap-south-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    Ready                       node/ip-10-26-20-16.ap-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    DeletingNode                node/ip-10-26-20-16.ap-south-1.compute.internal    Deleting node ip-10-26-20-16.ap-south-1.compute.internal because it does not exist in the cloud provider
25m         Normal    RemovingNode                node/ip-10-26-20-16.ap-south-1.compute.internal    Node ip-10-26-20-16.ap-south-1.compute.internal event: Removing Node ip-10-26-20-16.ap-south-1.compute.internal from Controller
73m         Normal    Unconsolidatable            node/ip-10-26-20-181.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
65m         Normal    DisruptionBlocked           node/ip-10-26-20-181.ap-south-1.compute.internal   Node is deleting or marked for deletion
65m         Normal    DisruptionTerminating       node/ip-10-26-20-181.ap-south-1.compute.internal   Disrupting Node: Underutilized/Delete
65m         Warning   FailedDraining              node/ip-10-26-20-181.ap-south-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
64m         Warning   InstanceTerminating         node/ip-10-26-20-181.ap-south-1.compute.internal   Instance is terminating
64m         Normal    NodeNotReady                node/ip-10-26-20-181.ap-south-1.compute.internal   Node ip-10-26-20-181.ap-south-1.compute.internal status is now: NodeNotReady
64m         Normal    MemoryPressure              node/ip-10-26-20-181.ap-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
64m         Normal    DiskPressure                node/ip-10-26-20-181.ap-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
64m         Normal    PIDPressure                 node/ip-10-26-20-181.ap-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
64m         Normal    Ready                       node/ip-10-26-20-181.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
64m         Normal    DeletingNode                node/ip-10-26-20-181.ap-south-1.compute.internal   Deleting node ip-10-26-20-181.ap-south-1.compute.internal because it does not exist in the cloud provider
63m         Normal    RemovingNode                node/ip-10-26-20-181.ap-south-1.compute.internal   Node ip-10-26-20-181.ap-south-1.compute.internal event: Removing Node ip-10-26-20-181.ap-south-1.compute.internal from Controller
89m         Normal    Starting                    node/ip-10-26-20-35.ap-south-1.compute.internal    Starting kubelet.
89m         Warning   InvalidDiskCapacity         node/ip-10-26-20-35.ap-south-1.compute.internal    invalid capacity 0 on image filesystem
89m         Normal    NodeHasSufficientMemory     node/ip-10-26-20-35.ap-south-1.compute.internal    Node ip-10-26-20-35.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
89m         Normal    NodeHasNoDiskPressure       node/ip-10-26-20-35.ap-south-1.compute.internal    Node ip-10-26-20-35.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
89m         Normal    NodeHasSufficientPID        node/ip-10-26-20-35.ap-south-1.compute.internal    Node ip-10-26-20-35.ap-south-1.compute.internal status is now: NodeHasSufficientPID
89m         Normal    NodeAllocatableEnforced     node/ip-10-26-20-35.ap-south-1.compute.internal    Updated Node Allocatable limit across pods
89m         Normal    Synced                      node/ip-10-26-20-35.ap-south-1.compute.internal    Node synced successfully
89m         Normal    RegisteredNode              node/ip-10-26-20-35.ap-south-1.compute.internal    Node ip-10-26-20-35.ap-south-1.compute.internal event: Registered Node ip-10-26-20-35.ap-south-1.compute.internal in Controller
89m         Normal    DisruptionBlocked           node/ip-10-26-20-35.ap-south-1.compute.internal    Node isn't initialized
89m         Normal    Starting                    node/ip-10-26-20-35.ap-south-1.compute.internal    
89m         Normal    ControllerVersionNotice     node/ip-10-26-20-35.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
89m         Normal    NodeReady                   node/ip-10-26-20-35.ap-south-1.compute.internal    Node ip-10-26-20-35.ap-south-1.compute.internal status is now: NodeReady
89m         Normal    Ready                       node/ip-10-26-20-35.ap-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
89m         Normal    NodeTrunkInitiated          node/ip-10-26-20-35.ap-south-1.compute.internal    The node has trunk interface initialized successfully
43m         Normal    Unconsolidatable            node/ip-10-26-20-35.ap-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
28m         Normal    RegisteredNode              node/ip-10-26-20-35.ap-south-1.compute.internal    Node ip-10-26-20-35.ap-south-1.compute.internal event: Registered Node ip-10-26-20-35.ap-south-1.compute.internal in Controller
28m         Normal    ControllerVersionNotice     node/ip-10-26-20-35.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
28m         Normal    NodeTrunkInitiated          node/ip-10-26-20-35.ap-south-1.compute.internal    The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked           node/ip-10-26-20-35.ap-south-1.compute.internal    Not all pods would schedule, orb-fleet-backend-internal/orb-fleet-backend-internal-d9b5d7765-4jc2p => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal
23m         Normal    RegisteredNode              node/ip-10-26-20-35.ap-south-1.compute.internal    Node ip-10-26-20-35.ap-south-1.compute.internal event: Registered Node ip-10-26-20-35.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-20-35.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeTrunkInitiated          node/ip-10-26-20-35.ap-south-1.compute.internal    The node has trunk interface initialized successfully
18m         Normal    DisruptionBlocked           node/ip-10-26-20-35.ap-south-1.compute.internal    Node is deleting or marked for deletion
18m         Normal    DisruptionTerminating       node/ip-10-26-20-35.ap-south-1.compute.internal    Disrupting Node: Drifted/Replace
18m         Warning   FailedDraining              node/ip-10-26-20-35.ap-south-1.compute.internal    Failed to drain node, 7 pods are waiting to be evicted
17m         Warning   FailedDraining              node/ip-10-26-20-35.ap-south-1.compute.internal    Failed to drain node, 1 pods are waiting to be evicted
17m         Normal    DisruptionBlocked           node/ip-10-26-20-35.ap-south-1.compute.internal    Node is deleting or marked for deletion
17m         Warning   InstanceTerminating         node/ip-10-26-20-35.ap-south-1.compute.internal    Instance is terminating
16m         Normal    RemovingNode                node/ip-10-26-20-35.ap-south-1.compute.internal    Node ip-10-26-20-35.ap-south-1.compute.internal event: Removing Node ip-10-26-20-35.ap-south-1.compute.internal from Controller
18m         Normal    Starting                    node/ip-10-26-20-70.ap-south-1.compute.internal    Starting kubelet.
18m         Warning   InvalidDiskCapacity         node/ip-10-26-20-70.ap-south-1.compute.internal    invalid capacity 0 on image filesystem
18m         Normal    NodeHasSufficientMemory     node/ip-10-26-20-70.ap-south-1.compute.internal    Node ip-10-26-20-70.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
18m         Normal    NodeHasNoDiskPressure       node/ip-10-26-20-70.ap-south-1.compute.internal    Node ip-10-26-20-70.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
18m         Normal    NodeHasSufficientPID        node/ip-10-26-20-70.ap-south-1.compute.internal    Node ip-10-26-20-70.ap-south-1.compute.internal status is now: NodeHasSufficientPID
18m         Normal    NodeAllocatableEnforced     node/ip-10-26-20-70.ap-south-1.compute.internal    Updated Node Allocatable limit across pods
18m         Normal    Synced                      node/ip-10-26-20-70.ap-south-1.compute.internal    Node synced successfully
18m         Normal    RegisteredNode              node/ip-10-26-20-70.ap-south-1.compute.internal    Node ip-10-26-20-70.ap-south-1.compute.internal event: Registered Node ip-10-26-20-70.ap-south-1.compute.internal in Controller
18m         Normal    DisruptionBlocked           node/ip-10-26-20-70.ap-south-1.compute.internal    Node isn't initialized
18m         Normal    Starting                    node/ip-10-26-20-70.ap-south-1.compute.internal    
18m         Normal    ControllerVersionNotice     node/ip-10-26-20-70.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
18m         Normal    NodeReady                   node/ip-10-26-20-70.ap-south-1.compute.internal    Node ip-10-26-20-70.ap-south-1.compute.internal status is now: NodeReady
18m         Normal    Ready                       node/ip-10-26-20-70.ap-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
18m         Normal    NodeTrunkInitiated          node/ip-10-26-20-70.ap-south-1.compute.internal    The node has trunk interface initialized successfully
118s        Normal    DisruptionBlocked           node/ip-10-26-20-70.ap-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
75s         Normal    Unconsolidatable            node/ip-10-26-20-70.ap-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
15m         Normal    Starting                    node/ip-10-26-21-12.ap-south-1.compute.internal    Starting kubelet.
15m         Warning   InvalidDiskCapacity         node/ip-10-26-21-12.ap-south-1.compute.internal    invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory     node/ip-10-26-21-12.ap-south-1.compute.internal    Node ip-10-26-21-12.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure       node/ip-10-26-21-12.ap-south-1.compute.internal    Node ip-10-26-21-12.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID        node/ip-10-26-21-12.ap-south-1.compute.internal    Node ip-10-26-21-12.ap-south-1.compute.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced     node/ip-10-26-21-12.ap-south-1.compute.internal    Updated Node Allocatable limit across pods
15m         Normal    RegisteredNode              node/ip-10-26-21-12.ap-south-1.compute.internal    Node ip-10-26-21-12.ap-south-1.compute.internal event: Registered Node ip-10-26-21-12.ap-south-1.compute.internal in Controller
15m         Normal    Synced                      node/ip-10-26-21-12.ap-south-1.compute.internal    Node synced successfully
15m         Normal    Starting                    node/ip-10-26-21-12.ap-south-1.compute.internal    
15m         Normal    DisruptionBlocked           node/ip-10-26-21-12.ap-south-1.compute.internal    Node isn't initialized
15m         Normal    ControllerVersionNotice     node/ip-10-26-21-12.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
15m         Normal    NodeReady                   node/ip-10-26-21-12.ap-south-1.compute.internal    Node ip-10-26-21-12.ap-south-1.compute.internal status is now: NodeReady
15m         Normal    Ready                       node/ip-10-26-21-12.ap-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    NodeTrunkInitiated          node/ip-10-26-21-12.ap-south-1.compute.internal    The node has trunk interface initialized successfully
16m         Normal    Starting                    node/ip-10-26-21-122.ap-south-1.compute.internal   Starting kubelet.
16m         Warning   InvalidDiskCapacity         node/ip-10-26-21-122.ap-south-1.compute.internal   invalid capacity 0 on image filesystem
16m         Normal    NodeHasSufficientMemory     node/ip-10-26-21-122.ap-south-1.compute.internal   Node ip-10-26-21-122.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
16m         Normal    NodeHasNoDiskPressure       node/ip-10-26-21-122.ap-south-1.compute.internal   Node ip-10-26-21-122.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
16m         Normal    NodeHasSufficientPID        node/ip-10-26-21-122.ap-south-1.compute.internal   Node ip-10-26-21-122.ap-south-1.compute.internal status is now: NodeHasSufficientPID
16m         Normal    NodeAllocatableEnforced     node/ip-10-26-21-122.ap-south-1.compute.internal   Updated Node Allocatable limit across pods
16m         Normal    Synced                      node/ip-10-26-21-122.ap-south-1.compute.internal   Node synced successfully
16m         Normal    DisruptionBlocked           node/ip-10-26-21-122.ap-south-1.compute.internal   Node isn't initialized
16m         Normal    RegisteredNode              node/ip-10-26-21-122.ap-south-1.compute.internal   Node ip-10-26-21-122.ap-south-1.compute.internal event: Registered Node ip-10-26-21-122.ap-south-1.compute.internal in Controller
16m         Normal    Starting                    node/ip-10-26-21-122.ap-south-1.compute.internal   
16m         Normal    ControllerVersionNotice     node/ip-10-26-21-122.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
16m         Normal    NodeReady                   node/ip-10-26-21-122.ap-south-1.compute.internal   Node ip-10-26-21-122.ap-south-1.compute.internal status is now: NodeReady
16m         Normal    Ready                       node/ip-10-26-21-122.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
16m         Normal    NodeTrunkInitiated          node/ip-10-26-21-122.ap-south-1.compute.internal   The node has trunk interface initialized successfully
12m         Normal    DisruptionBlocked           node/ip-10-26-21-122.ap-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
23s         Normal    Unconsolidatable            node/ip-10-26-21-122.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
28m         Normal    Starting                    node/ip-10-26-21-242.ap-south-1.compute.internal   Starting kubelet.
28m         Warning   InvalidDiskCapacity         node/ip-10-26-21-242.ap-south-1.compute.internal   invalid capacity 0 on image filesystem
28m         Normal    NodeHasSufficientMemory     node/ip-10-26-21-242.ap-south-1.compute.internal   Node ip-10-26-21-242.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure       node/ip-10-26-21-242.ap-south-1.compute.internal   Node ip-10-26-21-242.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID        node/ip-10-26-21-242.ap-south-1.compute.internal   Node ip-10-26-21-242.ap-south-1.compute.internal status is now: NodeHasSufficientPID
28m         Normal    NodeAllocatableEnforced     node/ip-10-26-21-242.ap-south-1.compute.internal   Updated Node Allocatable limit across pods
28m         Normal    Synced                      node/ip-10-26-21-242.ap-south-1.compute.internal   Node synced successfully
28m         Normal    RegisteredNode              node/ip-10-26-21-242.ap-south-1.compute.internal   Node ip-10-26-21-242.ap-south-1.compute.internal event: Registered Node ip-10-26-21-242.ap-south-1.compute.internal in Controller
28m         Normal    Starting                    node/ip-10-26-21-242.ap-south-1.compute.internal   
28m         Normal    ControllerVersionNotice     node/ip-10-26-21-242.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Warning   Unsupported                 node/ip-10-26-21-242.ap-south-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    NodeReady                   node/ip-10-26-21-242.ap-south-1.compute.internal   Node ip-10-26-21-242.ap-south-1.compute.internal status is now: NodeReady
28m         Normal    Ready                       node/ip-10-26-21-242.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
23m         Normal    RegisteredNode              node/ip-10-26-21-242.ap-south-1.compute.internal   Node ip-10-26-21-242.ap-south-1.compute.internal event: Registered Node ip-10-26-21-242.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-21-242.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
15m         Warning   Unsupported                 node/ip-10-26-21-242.ap-south-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    NodeNotSchedulable          node/ip-10-26-21-242.ap-south-1.compute.internal   Node ip-10-26-21-242.ap-south-1.compute.internal status is now: NodeNotSchedulable
15m         Normal    NodeNotReady                node/ip-10-26-21-242.ap-south-1.compute.internal   Node ip-10-26-21-242.ap-south-1.compute.internal status is now: NodeNotReady
15m         Normal    MemoryPressure              node/ip-10-26-21-242.ap-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DiskPressure                node/ip-10-26-21-242.ap-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    PIDPressure                 node/ip-10-26-21-242.ap-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    Ready                       node/ip-10-26-21-242.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DeletingNode                node/ip-10-26-21-242.ap-south-1.compute.internal   Deleting node ip-10-26-21-242.ap-south-1.compute.internal because it does not exist in the cloud provider
15m         Normal    RemovingNode                node/ip-10-26-21-242.ap-south-1.compute.internal   Node ip-10-26-21-242.ap-south-1.compute.internal event: Removing Node ip-10-26-21-242.ap-south-1.compute.internal from Controller
84m         Normal    DisruptionBlocked           node/ip-10-26-21-254.ap-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
65m         Normal    DisruptionBlocked           node/ip-10-26-21-254.ap-south-1.compute.internal   Node is nominated for a pending pod
38m         Normal    DisruptionBlocked           node/ip-10-26-21-254.ap-south-1.compute.internal   Node is deleting or marked for deletion
38m         Normal    DisruptionTerminating       node/ip-10-26-21-254.ap-south-1.compute.internal   Disrupting Node: Underutilized/Delete
38m         Warning   FailedDraining              node/ip-10-26-21-254.ap-south-1.compute.internal   Failed to drain node, 10 pods are waiting to be evicted
37m         Warning   InstanceTerminating         node/ip-10-26-21-254.ap-south-1.compute.internal   Instance is terminating
36m         Normal    RemovingNode                node/ip-10-26-21-254.ap-south-1.compute.internal   Node ip-10-26-21-254.ap-south-1.compute.internal event: Removing Node ip-10-26-21-254.ap-south-1.compute.internal from Controller
64m         Normal    Starting                    node/ip-10-26-21-5.ap-south-1.compute.internal     Starting kubelet.
64m         Warning   InvalidDiskCapacity         node/ip-10-26-21-5.ap-south-1.compute.internal     invalid capacity 0 on image filesystem
64m         Normal    NodeHasSufficientMemory     node/ip-10-26-21-5.ap-south-1.compute.internal     Node ip-10-26-21-5.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
64m         Normal    NodeHasNoDiskPressure       node/ip-10-26-21-5.ap-south-1.compute.internal     Node ip-10-26-21-5.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
64m         Normal    NodeHasSufficientPID        node/ip-10-26-21-5.ap-south-1.compute.internal     Node ip-10-26-21-5.ap-south-1.compute.internal status is now: NodeHasSufficientPID
64m         Normal    NodeAllocatableEnforced     node/ip-10-26-21-5.ap-south-1.compute.internal     Updated Node Allocatable limit across pods
64m         Normal    Synced                      node/ip-10-26-21-5.ap-south-1.compute.internal     Node synced successfully
64m         Normal    RegisteredNode              node/ip-10-26-21-5.ap-south-1.compute.internal     Node ip-10-26-21-5.ap-south-1.compute.internal event: Registered Node ip-10-26-21-5.ap-south-1.compute.internal in Controller
64m         Normal    Starting                    node/ip-10-26-21-5.ap-south-1.compute.internal     
64m         Normal    DisruptionBlocked           node/ip-10-26-21-5.ap-south-1.compute.internal     Node isn't initialized
64m         Normal    ControllerVersionNotice     node/ip-10-26-21-5.ap-south-1.compute.internal     The node is managed by VPC resource controller version v1.7.9
64m         Normal    NodeReady                   node/ip-10-26-21-5.ap-south-1.compute.internal     Node ip-10-26-21-5.ap-south-1.compute.internal status is now: NodeReady
64m         Normal    Ready                       node/ip-10-26-21-5.ap-south-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
64m         Normal    NodeTrunkInitiated          node/ip-10-26-21-5.ap-south-1.compute.internal     The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked           node/ip-10-26-21-5.ap-south-1.compute.internal     Node is nominated for a pending pod
32m         Normal    DisruptionBlocked           node/ip-10-26-21-5.ap-south-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
28m         Normal    RegisteredNode              node/ip-10-26-21-5.ap-south-1.compute.internal     Node ip-10-26-21-5.ap-south-1.compute.internal event: Registered Node ip-10-26-21-5.ap-south-1.compute.internal in Controller
28m         Normal    ControllerVersionNotice     node/ip-10-26-21-5.ap-south-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
28m         Normal    NodeTrunkInitiated          node/ip-10-26-21-5.ap-south-1.compute.internal     The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked           node/ip-10-26-21-5.ap-south-1.compute.internal     Not all pods would schedule, cloudflared-tunnel/cloudflared-tunnel-746c5477d5-kpd6v => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal wiz/wiz-wiz-admission-controller-audit-log-collector-7dd88d879c2jbp => would schedule against uninitialized nodeclaim/main-amd64-zx8rq, node/ip-10-26-18-114.ap-south-1.compute.internal orb-data-service-external/orb-data-service-external-7fd4fcfdf5-h55sl => would schedule against uninitialized nodeclaim/main-arm64-tvbgf, node/ip-10-26-20-104.ap-south-1.compute.internal
24m         Normal    DisruptionTerminating       node/ip-10-26-21-5.ap-south-1.compute.internal     Disrupting Node: Drifted/Delete
24m         Warning   FailedDraining              node/ip-10-26-21-5.ap-south-1.compute.internal     Failed to drain node, 7 pods are waiting to be evicted
23m         Normal    RegisteredNode              node/ip-10-26-21-5.ap-south-1.compute.internal     Node ip-10-26-21-5.ap-south-1.compute.internal event: Registered Node ip-10-26-21-5.ap-south-1.compute.internal in Controller
23m         Normal    ControllerVersionNotice     node/ip-10-26-21-5.ap-south-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeTrunkInitiated          node/ip-10-26-21-5.ap-south-1.compute.internal     The node has trunk interface initialized successfully
23m         Warning   InstanceTerminating         node/ip-10-26-21-5.ap-south-1.compute.internal     Instance is terminating
22m         Normal    DisruptionBlocked           node/ip-10-26-21-5.ap-south-1.compute.internal     Node is deleting or marked for deletion
22m         Normal    NodeNotReady                node/ip-10-26-21-5.ap-south-1.compute.internal     Node ip-10-26-21-5.ap-south-1.compute.internal status is now: NodeNotReady
22m         Normal    MemoryPressure              node/ip-10-26-21-5.ap-south-1.compute.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure                node/ip-10-26-21-5.ap-south-1.compute.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure                 node/ip-10-26-21-5.ap-south-1.compute.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                       node/ip-10-26-21-5.ap-south-1.compute.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DeletingNode                node/ip-10-26-21-5.ap-south-1.compute.internal     Deleting node ip-10-26-21-5.ap-south-1.compute.internal because it does not exist in the cloud provider
22m         Normal    RemovingNode                node/ip-10-26-21-5.ap-south-1.compute.internal     Node ip-10-26-21-5.ap-south-1.compute.internal event: Removing Node ip-10-26-21-5.ap-south-1.compute.internal from Controller
```

Pods with issues
```
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-727ff                               0/1     CreateContainerConfigError   0          24m
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-vw569                               0/1     CreateContainerConfigError   0          16m
```

PodDisruptionBudgets
```
NAMESPACE                             NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                    cluster-monitoring-pdb                    N/A             1                 1                     298d
karpenter                             karpenter                                 N/A             1                 1                     2y96d
kube-system                           coredns                                   N/A             1                 1                     624d
kube-system                           ebs-csi-controller                        N/A             1                 1                     2y100d
kyverno                               kyverno-admission-controller              1               N/A               2                     606d
orb-fleet-backend-docs-server         orb-fleet-backend-docs-server-pdb         N/A             1                 0                     157d
orb-fleet-backend-event-server        orb-fleet-backend-event-server-pdb        N/A             1                 0                     185d
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     304d
orb-fleet-backend-internal            orb-fleet-backend-internal-pdb            N/A             1                 1                     304d
orb-fleet-backend-job-server          orb-fleet-backend-job-server-pdb          N/A             1                 0                     217d
orb-fleet-backend-monitoring-server   orb-fleet-backend-monitoring-server-pdb   N/A             1                 0                     217d
signup-service                        signup-service-pdb                        N/A             1                 1                     81d
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

Generated on: Tue Sep 23 14:09:24 CEST 2025
