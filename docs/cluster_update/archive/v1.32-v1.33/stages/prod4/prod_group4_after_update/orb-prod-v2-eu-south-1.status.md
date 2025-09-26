# Cluster recon for tfh-orb-prod-infra,eu-south-1,orb-prod-v2-eu-south-1,tunnel-vpc-orb-prod-eu-south-1

TFH EKS login...
```console
2025/09/23 14:10:23 INFO Logging into AWS
2025/09/23 14:10:23 INFO Token found and valid
2025/09/23 14:10:25 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-prod-eu-south-1 id=898f0059-7316-4f08-ba47-14f3017b327b
2025/09/23 14:10:26 INFO Active WARP Virtual Network id=898f0059-7316-4f08-ba47-14f3017b327b
Updated context tfh-orb-prod-v2-eu-south-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "orb-prod-v2-eu-south-1",
        "arn": "arn:aws:eks:eu-south-1:573252405782:cluster/orb-prod-v2-eu-south-1",
        "createdAt": "2023-06-16T09:55:35.174000+02:00",
        "version": "1.33",
        "endpoint": "https://94101E01A8D8D186AA25A85FEBC3731C.sk1.eu-south-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::573252405782:role/eks-cluster-orb-prod-v2-eu-south-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-086b7afa02378db51",
                "subnet-0718550d58e14ea88",
                "subnet-0c8401bbfe7fb4ede"
            ],
            "securityGroupIds": [
                "sg-049d3f3b63e65d714"
            ],
            "clusterSecurityGroupId": "sg-0dadb1062fc6008df",
            "vpcId": "vpc-0c7d101e998cf043d",
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
                "issuer": "https://oidc.eks.eu-south-1.amazonaws.com/id/94101E01A8D8D186AA25A85FEBC3731C"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EWXhOakE0TURBeE5sb1hEVE16TURZeE16QTRNREF4Tmxvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTTJqClJWNktXRHR2dkhqOVB0YkJuUkFaV0VMZlduejErQlJQYktjWFozVnk3eGJRMlFLZW5NbS9wbldrTk50WFFjYW0KSzJkZ1BwbTFRVTVhL3oyeGVNL3ZIU2cveWY1dnp3R3RwaUNlQnlyZ1B6TWYzY1QreUJvWDBxanhERENreWN5SApYbG8yU2JvRVBlVnFPQmU0S2ZzdmczVTBxMXJMYUthY1VPSWlqT1ZOODJDeExrUDlOTjhEWlpNM2I2c05QaWUwCmdGQlIyUXZRbE5ydVZoQnJTb0wzL0ZtbGZwV2pxUjdpUzRJOXhBMExXODB0cExDSHFlSHhOM2pQTks1SXpGVVIKY3FFUVdBN3B0VENMdVgwY3Q5QjJ4RHVyNjhPdDE5dytTQW5XYXdlYUc0U0E4c01DcUo4Y1NPUW4zcHB4bUVCOQpUTkdnSXV2c1NUNGJETGRBTElVQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZPMDVwQXdxdTZrNEJuNU5vMnFCSkJiNXcxVDVNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBSXA1NHJKNjk3NXEyV2wvSEVmZApqSUQ1bEUwb1hLNllSaEZGc05GcmlpMW1ueXBoSzd1M1ZvMlFabWgyamZKWVV5VVVHYzA3TEV6UVE1TUwvV1ZOClk4ekJPMjJ2ZjV0ZEhDc1VNdGtBVlhNM0czcDg3cGdKRGgrMm5DYmxWY1JpYWpJdkp2RDVuWEJWMkFwZzkrRWkKRXNUQW00UlpydTBUMkNXUHZWSkNXRS9Sa1Y4MERMSFJWeTU5RkJOcXRMT1dIM0pwM045aEgwMHFTQ2l1WmprdAppcndTQlZLMEdlQjIzUUNVVkNZNW1IS3MzcUtETVQ1RU83UzBsbU56a3EvRjFqVkhiUTlzV0xHOXZaN3pZRkRsCndEei83UlZtY0lxYjczaXZWSUorUG1jUWhPaHVnZlJudldSRHVLVE9oRFZ4SDRmVXVpZUZMcmQ5TVJHVUVNWk4KdnMwPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-prod-v2-eu-south-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-south-1:573252405782:key/831c3b32-f9a7-492e-9495-c50d11ae2c5b"
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
ip-10-66-49-30.eu-south-1.compute.internal    Ready    <none>   30m   v1.33.4-eks-99d6cc0   10.66.49.30    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-eu-south-1
ip-10-66-52-128.eu-south-1.compute.internal   Ready    <none>   24m   v1.33.4-eks-99d6cc0   10.66.52.128   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-66-52-14.eu-south-1.compute.internal    Ready    <none>   26m   v1.33.4-eks-99d6cc0   10.66.52.14    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-66-52-148.eu-south-1.compute.internal   Ready    <none>   21m   v1.33.4-eks-99d6cc0   10.66.52.148   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-66-52-164.eu-south-1.compute.internal   Ready    <none>   26m   v1.33.4-eks-99d6cc0   10.66.52.164   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-66-52-74.eu-south-1.compute.internal    Ready    <none>   15m   v1.33.4-eks-99d6cc0   10.66.52.74    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-66-52-83.eu-south-1.compute.internal    Ready    <none>   17m   v1.33.4-eks-99d6cc0   10.66.52.83    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-66-53-5.eu-south-1.compute.internal     Ready    <none>   32m   v1.33.4-eks-99d6cc0   10.66.53.5     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-eu-south-1
ip-10-66-53-54.eu-south-1.compute.internal    Ready    <none>   18m   v1.33.4-eks-99d6cc0   10.66.53.54    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-66-53-64.eu-south-1.compute.internal    Ready    <none>   22m   v1.33.4-eks-99d6cc0   10.66.53.64    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-66-53-7.eu-south-1.compute.internal     Ready    <none>   19m   v1.33.4-eks-99d6cc0   10.66.53.7     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-66-53-79.eu-south-1.compute.internal    Ready    <none>   22m   v1.33.4-eks-99d6cc0   10.66.53.79    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                          STATUS   ROLES    TAINTS
ip-10-66-49-30.eu-south-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-66-52-128.eu-south-1.compute.internal   Ready    <none>   <none>
ip-10-66-52-14.eu-south-1.compute.internal    Ready    <none>   <none>
ip-10-66-52-148.eu-south-1.compute.internal   Ready    <none>   <none>
ip-10-66-52-164.eu-south-1.compute.internal   Ready    <none>   <none>
ip-10-66-52-74.eu-south-1.compute.internal    Ready    <none>   <none>
ip-10-66-52-83.eu-south-1.compute.internal    Ready    <none>   <none>
ip-10-66-53-5.eu-south-1.compute.internal     Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-66-53-54.eu-south-1.compute.internal    Ready    <none>   <none>
ip-10-66-53-64.eu-south-1.compute.internal    Ready    <none>   <none>
ip-10-66-53-7.eu-south-1.compute.internal     Ready    <none>   <none>
ip-10-66-53-79.eu-south-1.compute.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                                             MESSAGE
21m         Normal    Finalized                 node                                               Finalized karpenter.sh/termination
14m         Normal    Finalized                 node                                               Finalized karpenter.sh/termination
32m         Warning   Unsupported               node/ip-10-66-48-146.eu-south-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
30m         Normal    RegisteredNode            node/ip-10-66-48-146.eu-south-1.compute.internal   Node ip-10-66-48-146.eu-south-1.compute.internal event: Registered Node ip-10-66-48-146.eu-south-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice   node/ip-10-66-48-146.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Warning   Unsupported               node/ip-10-66-48-146.eu-south-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    NodeNotSchedulable        node/ip-10-66-48-146.eu-south-1.compute.internal   Node ip-10-66-48-146.eu-south-1.compute.internal status is now: NodeNotSchedulable
26m         Normal    RegisteredNode            node/ip-10-66-48-146.eu-south-1.compute.internal   Node ip-10-66-48-146.eu-south-1.compute.internal event: Registered Node ip-10-66-48-146.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-48-146.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Warning   Unsupported               node/ip-10-66-48-146.eu-south-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
22m         Normal    NodeNotReady              node/ip-10-66-48-146.eu-south-1.compute.internal   Node ip-10-66-48-146.eu-south-1.compute.internal status is now: NodeNotReady
22m         Normal    MemoryPressure            node/ip-10-66-48-146.eu-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure              node/ip-10-66-48-146.eu-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure               node/ip-10-66-48-146.eu-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                     node/ip-10-66-48-146.eu-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DeletingNode              node/ip-10-66-48-146.eu-south-1.compute.internal   Deleting node ip-10-66-48-146.eu-south-1.compute.internal because it does not exist in the cloud provider
22m         Normal    RemovingNode              node/ip-10-66-48-146.eu-south-1.compute.internal   Node ip-10-66-48-146.eu-south-1.compute.internal event: Removing Node ip-10-66-48-146.eu-south-1.compute.internal from Controller
30m         Normal    Starting                  node/ip-10-66-49-30.eu-south-1.compute.internal    Starting kubelet.
30m         Warning   InvalidDiskCapacity       node/ip-10-66-49-30.eu-south-1.compute.internal    invalid capacity 0 on image filesystem
30m         Normal    NodeHasSufficientMemory   node/ip-10-66-49-30.eu-south-1.compute.internal    Node ip-10-66-49-30.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
30m         Normal    NodeHasNoDiskPressure     node/ip-10-66-49-30.eu-south-1.compute.internal    Node ip-10-66-49-30.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
30m         Normal    NodeHasSufficientPID      node/ip-10-66-49-30.eu-south-1.compute.internal    Node ip-10-66-49-30.eu-south-1.compute.internal status is now: NodeHasSufficientPID
30m         Normal    NodeAllocatableEnforced   node/ip-10-66-49-30.eu-south-1.compute.internal    Updated Node Allocatable limit across pods
30m         Normal    Synced                    node/ip-10-66-49-30.eu-south-1.compute.internal    Node synced successfully
30m         Normal    RegisteredNode            node/ip-10-66-49-30.eu-south-1.compute.internal    Node ip-10-66-49-30.eu-south-1.compute.internal event: Registered Node ip-10-66-49-30.eu-south-1.compute.internal in Controller
30m         Normal    Starting                  node/ip-10-66-49-30.eu-south-1.compute.internal    
30m         Normal    NodeReady                 node/ip-10-66-49-30.eu-south-1.compute.internal    Node ip-10-66-49-30.eu-south-1.compute.internal status is now: NodeReady
30m         Normal    Ready                     node/ip-10-66-49-30.eu-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
30m         Normal    RegisteredNode            node/ip-10-66-49-30.eu-south-1.compute.internal    Node ip-10-66-49-30.eu-south-1.compute.internal event: Registered Node ip-10-66-49-30.eu-south-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice   node/ip-10-66-49-30.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Warning   Unsupported               node/ip-10-66-49-30.eu-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    RegisteredNode            node/ip-10-66-49-30.eu-south-1.compute.internal    Node ip-10-66-49-30.eu-south-1.compute.internal event: Registered Node ip-10-66-49-30.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-49-30.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
10s         Warning   Unsupported               node/ip-10-66-49-30.eu-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
33m         Normal    Unconsolidatable          node/ip-10-66-50-221.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
30m         Normal    RegisteredNode            node/ip-10-66-50-221.eu-south-1.compute.internal   Node ip-10-66-50-221.eu-south-1.compute.internal event: Registered Node ip-10-66-50-221.eu-south-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice   node/ip-10-66-50-221.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated        node/ip-10-66-50-221.eu-south-1.compute.internal   The node has trunk interface initialized successfully
28m         Normal    Unconsolidatable          node/ip-10-66-50-221.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
25m         Normal    DisruptionBlocked         node/ip-10-66-50-221.eu-south-1.compute.internal   Node is deleting or marked for deletion
26m         Normal    DisruptionTerminating     node/ip-10-66-50-221.eu-south-1.compute.internal   Disrupting Node: Drifted/Replace
26m         Warning   FailedDraining            node/ip-10-66-50-221.eu-south-1.compute.internal   Failed to drain node, 7 pods are waiting to be evicted
26m         Normal    RegisteredNode            node/ip-10-66-50-221.eu-south-1.compute.internal   Node ip-10-66-50-221.eu-south-1.compute.internal event: Registered Node ip-10-66-50-221.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-50-221.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
25m         Normal    NodeTrunkInitiated        node/ip-10-66-50-221.eu-south-1.compute.internal   The node has trunk interface initialized successfully
25m         Warning   FailedDraining            node/ip-10-66-50-221.eu-south-1.compute.internal   Failed to drain node, 1 pods are waiting to be evicted
25m         Normal    DisruptionBlocked         node/ip-10-66-50-221.eu-south-1.compute.internal   Node is deleting or marked for deletion
25m         Warning   InstanceTerminating       node/ip-10-66-50-221.eu-south-1.compute.internal   Instance is terminating
24m         Normal    NodeNotReady              node/ip-10-66-50-221.eu-south-1.compute.internal   Node ip-10-66-50-221.eu-south-1.compute.internal status is now: NodeNotReady
24m         Normal    MemoryPressure            node/ip-10-66-50-221.eu-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    DiskPressure              node/ip-10-66-50-221.eu-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    PIDPressure               node/ip-10-66-50-221.eu-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    Ready                     node/ip-10-66-50-221.eu-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    RemovingNode              node/ip-10-66-50-221.eu-south-1.compute.internal   Node ip-10-66-50-221.eu-south-1.compute.internal event: Removing Node ip-10-66-50-221.eu-south-1.compute.internal from Controller
29m         Normal    Starting                  node/ip-10-66-50-250.eu-south-1.compute.internal   Starting kubelet.
29m         Warning   InvalidDiskCapacity       node/ip-10-66-50-250.eu-south-1.compute.internal   invalid capacity 0 on image filesystem
29m         Normal    NodeHasSufficientMemory   node/ip-10-66-50-250.eu-south-1.compute.internal   Node ip-10-66-50-250.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
29m         Normal    NodeHasNoDiskPressure     node/ip-10-66-50-250.eu-south-1.compute.internal   Node ip-10-66-50-250.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
29m         Normal    NodeHasSufficientPID      node/ip-10-66-50-250.eu-south-1.compute.internal   Node ip-10-66-50-250.eu-south-1.compute.internal status is now: NodeHasSufficientPID
29m         Normal    NodeAllocatableEnforced   node/ip-10-66-50-250.eu-south-1.compute.internal   Updated Node Allocatable limit across pods
29m         Normal    Synced                    node/ip-10-66-50-250.eu-south-1.compute.internal   Node synced successfully
29m         Normal    RegisteredNode            node/ip-10-66-50-250.eu-south-1.compute.internal   Node ip-10-66-50-250.eu-south-1.compute.internal event: Registered Node ip-10-66-50-250.eu-south-1.compute.internal in Controller
29m         Normal    Starting                  node/ip-10-66-50-250.eu-south-1.compute.internal   
29m         Normal    ControllerVersionNotice   node/ip-10-66-50-250.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Warning   Unsupported               node/ip-10-66-50-250.eu-south-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
29m         Normal    NodeReady                 node/ip-10-66-50-250.eu-south-1.compute.internal   Node ip-10-66-50-250.eu-south-1.compute.internal status is now: NodeReady
29m         Normal    Ready                     node/ip-10-66-50-250.eu-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26m         Normal    RegisteredNode            node/ip-10-66-50-250.eu-south-1.compute.internal   Node ip-10-66-50-250.eu-south-1.compute.internal event: Registered Node ip-10-66-50-250.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-50-250.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
17m         Warning   Unsupported               node/ip-10-66-50-250.eu-south-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
19m         Normal    NodeNotSchedulable        node/ip-10-66-50-250.eu-south-1.compute.internal   Node ip-10-66-50-250.eu-south-1.compute.internal status is now: NodeNotSchedulable
18m         Normal    NodeNotReady              node/ip-10-66-50-250.eu-south-1.compute.internal   Node ip-10-66-50-250.eu-south-1.compute.internal status is now: NodeNotReady
18m         Normal    MemoryPressure            node/ip-10-66-50-250.eu-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    DiskPressure              node/ip-10-66-50-250.eu-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    PIDPressure               node/ip-10-66-50-250.eu-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    Ready                     node/ip-10-66-50-250.eu-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DeletingNode              node/ip-10-66-50-250.eu-south-1.compute.internal   Deleting node ip-10-66-50-250.eu-south-1.compute.internal because it does not exist in the cloud provider
17m         Normal    RemovingNode              node/ip-10-66-50-250.eu-south-1.compute.internal   Node ip-10-66-50-250.eu-south-1.compute.internal event: Removing Node ip-10-66-50-250.eu-south-1.compute.internal from Controller
43m         Normal    Unconsolidatable          node/ip-10-66-50-36.eu-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
30m         Normal    RegisteredNode            node/ip-10-66-50-36.eu-south-1.compute.internal    Node ip-10-66-50-36.eu-south-1.compute.internal event: Registered Node ip-10-66-50-36.eu-south-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice   node/ip-10-66-50-36.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated        node/ip-10-66-50-36.eu-south-1.compute.internal    The node has trunk interface initialized successfully
28m         Normal    Unconsolidatable          node/ip-10-66-50-36.eu-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
25m         Normal    DisruptionBlocked         node/ip-10-66-50-36.eu-south-1.compute.internal    Node is nominated for a pending pod
26m         Normal    RegisteredNode            node/ip-10-66-50-36.eu-south-1.compute.internal    Node ip-10-66-50-36.eu-south-1.compute.internal event: Registered Node ip-10-66-50-36.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-50-36.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
25m         Normal    NodeTrunkInitiated        node/ip-10-66-50-36.eu-south-1.compute.internal    The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked         node/ip-10-66-50-36.eu-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
20m         Normal    DisruptionBlocked         node/ip-10-66-50-36.eu-south-1.compute.internal    Node is deleting or marked for deletion
19m         Normal    DisruptionBlocked         node/ip-10-66-50-36.eu-south-1.compute.internal    Not all pods would schedule, orb-fleet-backend-internal/orb-fleet-backend-internal-94fb668fd-7cj8h => would schedule against uninitialized nodeclaim/main-amd64-7r87p, node/ip-10-66-53-7.eu-south-1.compute.internal
17m         Normal    DisruptionBlocked         node/ip-10-66-50-36.eu-south-1.compute.internal    Node is nominated for a pending pod
15m         Normal    DisruptionTerminating     node/ip-10-66-50-36.eu-south-1.compute.internal    Disrupting Node: Drifted/Replace
15m         Warning   FailedDraining            node/ip-10-66-50-36.eu-south-1.compute.internal    Failed to drain node, 6 pods are waiting to be evicted
15m         Normal    DisruptionBlocked         node/ip-10-66-50-36.eu-south-1.compute.internal    Node is deleting or marked for deletion
14m         Warning   InstanceTerminating       node/ip-10-66-50-36.eu-south-1.compute.internal    Instance is terminating
14m         Normal    RemovingNode              node/ip-10-66-50-36.eu-south-1.compute.internal    Node ip-10-66-50-36.eu-south-1.compute.internal event: Removing Node ip-10-66-50-36.eu-south-1.compute.internal from Controller
33m         Normal    Unconsolidatable          node/ip-10-66-51-154.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
30m         Normal    RegisteredNode            node/ip-10-66-51-154.eu-south-1.compute.internal   Node ip-10-66-51-154.eu-south-1.compute.internal event: Registered Node ip-10-66-51-154.eu-south-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice   node/ip-10-66-51-154.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated        node/ip-10-66-51-154.eu-south-1.compute.internal   The node has trunk interface initialized successfully
28m         Normal    Unconsolidatable          node/ip-10-66-51-154.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
25m         Normal    DisruptionBlocked         node/ip-10-66-51-154.eu-south-1.compute.internal   Node is nominated for a pending pod
26m         Normal    RegisteredNode            node/ip-10-66-51-154.eu-south-1.compute.internal   Node ip-10-66-51-154.eu-south-1.compute.internal event: Registered Node ip-10-66-51-154.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-51-154.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
25m         Normal    NodeTrunkInitiated        node/ip-10-66-51-154.eu-south-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked         node/ip-10-66-51-154.eu-south-1.compute.internal   Node is nominated for a pending pod
19m         Normal    DisruptionBlocked         node/ip-10-66-51-154.eu-south-1.compute.internal   Not all pods would schedule, orb-manager-external/orb-manager-external-6bb6f8888-5qkqh => would schedule against uninitialized nodeclaim/main-amd64-7r87p, node/ip-10-66-53-7.eu-south-1.compute.internal
18m         Normal    DisruptionTerminating     node/ip-10-66-51-154.eu-south-1.compute.internal   Disrupting Node: Drifted/Replace
18m         Warning   FailedDraining            node/ip-10-66-51-154.eu-south-1.compute.internal   Failed to drain node, 5 pods are waiting to be evicted
17m         Warning   InstanceTerminating       node/ip-10-66-51-154.eu-south-1.compute.internal   Instance is terminating
17m         Normal    DisruptionBlocked         node/ip-10-66-51-154.eu-south-1.compute.internal   Node is deleting or marked for deletion
16m         Normal    NodeNotReady              node/ip-10-66-51-154.eu-south-1.compute.internal   Node ip-10-66-51-154.eu-south-1.compute.internal status is now: NodeNotReady
16m         Normal    MemoryPressure            node/ip-10-66-51-154.eu-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    DiskPressure              node/ip-10-66-51-154.eu-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    PIDPressure               node/ip-10-66-51-154.eu-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    Ready                     node/ip-10-66-51-154.eu-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    RemovingNode              node/ip-10-66-51-154.eu-south-1.compute.internal   Node ip-10-66-51-154.eu-south-1.compute.internal event: Removing Node ip-10-66-51-154.eu-south-1.compute.internal from Controller
35m         Warning   Unsupported               node/ip-10-66-51-25.eu-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
30m         Normal    RegisteredNode            node/ip-10-66-51-25.eu-south-1.compute.internal    Node ip-10-66-51-25.eu-south-1.compute.internal event: Registered Node ip-10-66-51-25.eu-south-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice   node/ip-10-66-51-25.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Warning   Unsupported               node/ip-10-66-51-25.eu-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    NodeNotSchedulable        node/ip-10-66-51-25.eu-south-1.compute.internal    Node ip-10-66-51-25.eu-south-1.compute.internal status is now: NodeNotSchedulable
26m         Normal    RegisteredNode            node/ip-10-66-51-25.eu-south-1.compute.internal    Node ip-10-66-51-25.eu-south-1.compute.internal event: Registered Node ip-10-66-51-25.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-51-25.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
24m         Warning   Unsupported               node/ip-10-66-51-25.eu-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    NodeNotReady              node/ip-10-66-51-25.eu-south-1.compute.internal    Node ip-10-66-51-25.eu-south-1.compute.internal status is now: NodeNotReady
25m         Normal    MemoryPressure            node/ip-10-66-51-25.eu-south-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    DiskPressure              node/ip-10-66-51-25.eu-south-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    PIDPressure               node/ip-10-66-51-25.eu-south-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    Ready                     node/ip-10-66-51-25.eu-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    DeletingNode              node/ip-10-66-51-25.eu-south-1.compute.internal    Deleting node ip-10-66-51-25.eu-south-1.compute.internal because it does not exist in the cloud provider
24m         Normal    RemovingNode              node/ip-10-66-51-25.eu-south-1.compute.internal    Node ip-10-66-51-25.eu-south-1.compute.internal event: Removing Node ip-10-66-51-25.eu-south-1.compute.internal from Controller
43m         Normal    Unconsolidatable          node/ip-10-66-52-120.eu-south-1.compute.internal   Can't remove without creating 2 candidates
30m         Normal    RegisteredNode            node/ip-10-66-52-120.eu-south-1.compute.internal   Node ip-10-66-52-120.eu-south-1.compute.internal event: Registered Node ip-10-66-52-120.eu-south-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice   node/ip-10-66-52-120.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated        node/ip-10-66-52-120.eu-south-1.compute.internal   The node has trunk interface initialized successfully
28m         Normal    Unconsolidatable          node/ip-10-66-52-120.eu-south-1.compute.internal   Can't remove without creating 2 candidates
26m         Normal    RegisteredNode            node/ip-10-66-52-120.eu-south-1.compute.internal   Node ip-10-66-52-120.eu-south-1.compute.internal event: Registered Node ip-10-66-52-120.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-52-120.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
25m         Normal    NodeTrunkInitiated        node/ip-10-66-52-120.eu-south-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked         node/ip-10-66-52-120.eu-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
22m         Normal    DisruptionTerminating     node/ip-10-66-52-120.eu-south-1.compute.internal   Disrupting Node: Drifted/Replace
22m         Warning   FailedDraining            node/ip-10-66-52-120.eu-south-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
22m         Normal    DisruptionBlocked         node/ip-10-66-52-120.eu-south-1.compute.internal   Node is deleting or marked for deletion
21m         Warning   InstanceTerminating       node/ip-10-66-52-120.eu-south-1.compute.internal   Instance is terminating
21m         Normal    RemovingNode              node/ip-10-66-52-120.eu-south-1.compute.internal   Node ip-10-66-52-120.eu-south-1.compute.internal event: Removing Node ip-10-66-52-120.eu-south-1.compute.internal from Controller
24m         Normal    Starting                  node/ip-10-66-52-128.eu-south-1.compute.internal   Starting kubelet.
24m         Warning   InvalidDiskCapacity       node/ip-10-66-52-128.eu-south-1.compute.internal   invalid capacity 0 on image filesystem
24m         Normal    NodeHasSufficientMemory   node/ip-10-66-52-128.eu-south-1.compute.internal   Node ip-10-66-52-128.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
24m         Normal    NodeHasNoDiskPressure     node/ip-10-66-52-128.eu-south-1.compute.internal   Node ip-10-66-52-128.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
24m         Normal    NodeHasSufficientPID      node/ip-10-66-52-128.eu-south-1.compute.internal   Node ip-10-66-52-128.eu-south-1.compute.internal status is now: NodeHasSufficientPID
24m         Normal    NodeAllocatableEnforced   node/ip-10-66-52-128.eu-south-1.compute.internal   Updated Node Allocatable limit across pods
24m         Normal    Synced                    node/ip-10-66-52-128.eu-south-1.compute.internal   Node synced successfully
24m         Normal    DisruptionBlocked         node/ip-10-66-52-128.eu-south-1.compute.internal   Node isn't initialized
24m         Normal    RegisteredNode            node/ip-10-66-52-128.eu-south-1.compute.internal   Node ip-10-66-52-128.eu-south-1.compute.internal event: Registered Node ip-10-66-52-128.eu-south-1.compute.internal in Controller
24m         Normal    Starting                  node/ip-10-66-52-128.eu-south-1.compute.internal   
24m         Normal    ControllerVersionNotice   node/ip-10-66-52-128.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeReady                 node/ip-10-66-52-128.eu-south-1.compute.internal   Node ip-10-66-52-128.eu-south-1.compute.internal status is now: NodeReady
24m         Normal    Ready                     node/ip-10-66-52-128.eu-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
24m         Normal    NodeTrunkInitiated        node/ip-10-66-52-128.eu-south-1.compute.internal   The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked         node/ip-10-66-52-128.eu-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
20m         Normal    DisruptionBlocked         node/ip-10-66-52-128.eu-south-1.compute.internal   Node is nominated for a pending pod
14m         Normal    DisruptionBlocked         node/ip-10-66-52-128.eu-south-1.compute.internal   Node is nominated for a pending pod
63s         Normal    Unconsolidatable          node/ip-10-66-52-128.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
26m         Normal    Starting                  node/ip-10-66-52-14.eu-south-1.compute.internal    Starting kubelet.
26m         Warning   InvalidDiskCapacity       node/ip-10-66-52-14.eu-south-1.compute.internal    invalid capacity 0 on image filesystem
26m         Normal    NodeHasSufficientMemory   node/ip-10-66-52-14.eu-south-1.compute.internal    Node ip-10-66-52-14.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
26m         Normal    NodeHasNoDiskPressure     node/ip-10-66-52-14.eu-south-1.compute.internal    Node ip-10-66-52-14.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
26m         Normal    NodeHasSufficientPID      node/ip-10-66-52-14.eu-south-1.compute.internal    Node ip-10-66-52-14.eu-south-1.compute.internal status is now: NodeHasSufficientPID
26m         Normal    NodeAllocatableEnforced   node/ip-10-66-52-14.eu-south-1.compute.internal    Updated Node Allocatable limit across pods
26m         Normal    Synced                    node/ip-10-66-52-14.eu-south-1.compute.internal    Node synced successfully
26m         Normal    DisruptionBlocked         node/ip-10-66-52-14.eu-south-1.compute.internal    Node isn't initialized
26m         Normal    RegisteredNode            node/ip-10-66-52-14.eu-south-1.compute.internal    Node ip-10-66-52-14.eu-south-1.compute.internal event: Registered Node ip-10-66-52-14.eu-south-1.compute.internal in Controller
25m         Normal    Starting                  node/ip-10-66-52-14.eu-south-1.compute.internal    
25m         Normal    NodeReady                 node/ip-10-66-52-14.eu-south-1.compute.internal    Node ip-10-66-52-14.eu-south-1.compute.internal status is now: NodeReady
25m         Normal    Ready                     node/ip-10-66-52-14.eu-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
25m         Normal    ControllerVersionNotice   node/ip-10-66-52-14.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
25m         Normal    NodeTrunkInitiated        node/ip-10-66-52-14.eu-south-1.compute.internal    The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked         node/ip-10-66-52-14.eu-south-1.compute.internal    Node is nominated for a pending pod
17m         Normal    DisruptionBlocked         node/ip-10-66-52-14.eu-south-1.compute.internal    Node is nominated for a pending pod
63s         Normal    Unconsolidatable          node/ip-10-66-52-14.eu-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
43m         Normal    Unconsolidatable          node/ip-10-66-52-142.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
30m         Normal    RegisteredNode            node/ip-10-66-52-142.eu-south-1.compute.internal   Node ip-10-66-52-142.eu-south-1.compute.internal event: Registered Node ip-10-66-52-142.eu-south-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice   node/ip-10-66-52-142.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated        node/ip-10-66-52-142.eu-south-1.compute.internal   The node has trunk interface initialized successfully
28m         Normal    Unconsolidatable          node/ip-10-66-52-142.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
26m         Normal    RegisteredNode            node/ip-10-66-52-142.eu-south-1.compute.internal   Node ip-10-66-52-142.eu-south-1.compute.internal event: Registered Node ip-10-66-52-142.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-52-142.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
25m         Normal    NodeTrunkInitiated        node/ip-10-66-52-142.eu-south-1.compute.internal   The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked         node/ip-10-66-52-142.eu-south-1.compute.internal   Node is deleting or marked for deletion
24m         Normal    DisruptionTerminating     node/ip-10-66-52-142.eu-south-1.compute.internal   Disrupting Node: Drifted/Replace
24m         Warning   FailedDraining            node/ip-10-66-52-142.eu-south-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
23m         Warning   InstanceTerminating       node/ip-10-66-52-142.eu-south-1.compute.internal   Instance is terminating
22m         Normal    NodeNotReady              node/ip-10-66-52-142.eu-south-1.compute.internal   Node ip-10-66-52-142.eu-south-1.compute.internal status is now: NodeNotReady
22m         Normal    MemoryPressure            node/ip-10-66-52-142.eu-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure              node/ip-10-66-52-142.eu-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure               node/ip-10-66-52-142.eu-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                     node/ip-10-66-52-142.eu-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DeletingNode              node/ip-10-66-52-142.eu-south-1.compute.internal   Deleting node ip-10-66-52-142.eu-south-1.compute.internal because it does not exist in the cloud provider
22m         Normal    RemovingNode              node/ip-10-66-52-142.eu-south-1.compute.internal   Node ip-10-66-52-142.eu-south-1.compute.internal event: Removing Node ip-10-66-52-142.eu-south-1.compute.internal from Controller
37m         Normal    Unconsolidatable          node/ip-10-66-52-145.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
30m         Normal    RegisteredNode            node/ip-10-66-52-145.eu-south-1.compute.internal   Node ip-10-66-52-145.eu-south-1.compute.internal event: Registered Node ip-10-66-52-145.eu-south-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice   node/ip-10-66-52-145.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated        node/ip-10-66-52-145.eu-south-1.compute.internal   The node has trunk interface initialized successfully
28m         Normal    Unconsolidatable          node/ip-10-66-52-145.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
26m         Normal    DisruptionBlocked         node/ip-10-66-52-145.eu-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-pdb)
26m         Normal    RegisteredNode            node/ip-10-66-52-145.eu-south-1.compute.internal   Node ip-10-66-52-145.eu-south-1.compute.internal event: Registered Node ip-10-66-52-145.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-52-145.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
25m         Normal    NodeTrunkInitiated        node/ip-10-66-52-145.eu-south-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked         node/ip-10-66-52-145.eu-south-1.compute.internal   Node is deleting or marked for deletion
21m         Normal    DisruptionTerminating     node/ip-10-66-52-145.eu-south-1.compute.internal   Disrupting Node: Drifted/Replace
21m         Warning   FailedDraining            node/ip-10-66-52-145.eu-south-1.compute.internal   Failed to drain node, 5 pods are waiting to be evicted
20m         Warning   InstanceTerminating       node/ip-10-66-52-145.eu-south-1.compute.internal   Instance is terminating
19m         Normal    DisruptionBlocked         node/ip-10-66-52-145.eu-south-1.compute.internal   Node is deleting or marked for deletion
19m         Normal    NodeNotReady              node/ip-10-66-52-145.eu-south-1.compute.internal   Node ip-10-66-52-145.eu-south-1.compute.internal status is now: NodeNotReady
19m         Normal    MemoryPressure            node/ip-10-66-52-145.eu-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DiskPressure              node/ip-10-66-52-145.eu-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    PIDPressure               node/ip-10-66-52-145.eu-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    Ready                     node/ip-10-66-52-145.eu-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Warning   InstanceTerminating       node/ip-10-66-52-145.eu-south-1.compute.internal   Instance is terminating
19m         Normal    DeletingNode              node/ip-10-66-52-145.eu-south-1.compute.internal   Deleting node ip-10-66-52-145.eu-south-1.compute.internal because it does not exist in the cloud provider
19m         Normal    RemovingNode              node/ip-10-66-52-145.eu-south-1.compute.internal   Node ip-10-66-52-145.eu-south-1.compute.internal event: Removing Node ip-10-66-52-145.eu-south-1.compute.internal from Controller
21m         Normal    Starting                  node/ip-10-66-52-148.eu-south-1.compute.internal   Starting kubelet.
21m         Warning   InvalidDiskCapacity       node/ip-10-66-52-148.eu-south-1.compute.internal   invalid capacity 0 on image filesystem
21m         Normal    NodeHasSufficientMemory   node/ip-10-66-52-148.eu-south-1.compute.internal   Node ip-10-66-52-148.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
21m         Normal    NodeHasNoDiskPressure     node/ip-10-66-52-148.eu-south-1.compute.internal   Node ip-10-66-52-148.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
21m         Normal    NodeHasSufficientPID      node/ip-10-66-52-148.eu-south-1.compute.internal   Node ip-10-66-52-148.eu-south-1.compute.internal status is now: NodeHasSufficientPID
21m         Normal    NodeAllocatableEnforced   node/ip-10-66-52-148.eu-south-1.compute.internal   Updated Node Allocatable limit across pods
21m         Normal    Synced                    node/ip-10-66-52-148.eu-south-1.compute.internal   Node synced successfully
21m         Normal    RegisteredNode            node/ip-10-66-52-148.eu-south-1.compute.internal   Node ip-10-66-52-148.eu-south-1.compute.internal event: Registered Node ip-10-66-52-148.eu-south-1.compute.internal in Controller
21m         Normal    DisruptionBlocked         node/ip-10-66-52-148.eu-south-1.compute.internal   Node isn't initialized
21m         Normal    Starting                  node/ip-10-66-52-148.eu-south-1.compute.internal   
21m         Normal    ControllerVersionNotice   node/ip-10-66-52-148.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeReady                 node/ip-10-66-52-148.eu-south-1.compute.internal   Node ip-10-66-52-148.eu-south-1.compute.internal status is now: NodeReady
21m         Normal    Ready                     node/ip-10-66-52-148.eu-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    NodeTrunkInitiated        node/ip-10-66-52-148.eu-south-1.compute.internal   The node has trunk interface initialized successfully
17m         Normal    DisruptionBlocked         node/ip-10-66-52-148.eu-south-1.compute.internal   Node is nominated for a pending pod
63s         Normal    Unconsolidatable          node/ip-10-66-52-148.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
43m         Normal    Unconsolidatable          node/ip-10-66-52-151.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
30m         Normal    RegisteredNode            node/ip-10-66-52-151.eu-south-1.compute.internal   Node ip-10-66-52-151.eu-south-1.compute.internal event: Registered Node ip-10-66-52-151.eu-south-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice   node/ip-10-66-52-151.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated        node/ip-10-66-52-151.eu-south-1.compute.internal   The node has trunk interface initialized successfully
28m         Normal    Unconsolidatable          node/ip-10-66-52-151.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
27m         Normal    DisruptionBlocked         node/ip-10-66-52-151.eu-south-1.compute.internal   Node is nominated for a pending pod
26m         Normal    RegisteredNode            node/ip-10-66-52-151.eu-south-1.compute.internal   Node ip-10-66-52-151.eu-south-1.compute.internal event: Registered Node ip-10-66-52-151.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-52-151.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
25m         Normal    NodeTrunkInitiated        node/ip-10-66-52-151.eu-south-1.compute.internal   The node has trunk interface initialized successfully
19m         Normal    DisruptionBlocked         node/ip-10-66-52-151.eu-south-1.compute.internal   Node is deleting or marked for deletion
19m         Normal    DisruptionTerminating     node/ip-10-66-52-151.eu-south-1.compute.internal   Disrupting Node: Drifted/Delete
19m         Warning   FailedDraining            node/ip-10-66-52-151.eu-south-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
19m         Warning   InstanceTerminating       node/ip-10-66-52-151.eu-south-1.compute.internal   Instance is terminating
18m         Normal    RemovingNode              node/ip-10-66-52-151.eu-south-1.compute.internal   Node ip-10-66-52-151.eu-south-1.compute.internal event: Removing Node ip-10-66-52-151.eu-south-1.compute.internal from Controller
27m         Normal    Starting                  node/ip-10-66-52-164.eu-south-1.compute.internal   Starting kubelet.
27m         Warning   InvalidDiskCapacity       node/ip-10-66-52-164.eu-south-1.compute.internal   invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory   node/ip-10-66-52-164.eu-south-1.compute.internal   Node ip-10-66-52-164.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure     node/ip-10-66-52-164.eu-south-1.compute.internal   Node ip-10-66-52-164.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID      node/ip-10-66-52-164.eu-south-1.compute.internal   Node ip-10-66-52-164.eu-south-1.compute.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced   node/ip-10-66-52-164.eu-south-1.compute.internal   Updated Node Allocatable limit across pods
26m         Normal    Synced                    node/ip-10-66-52-164.eu-south-1.compute.internal   Node synced successfully
26m         Normal    RegisteredNode            node/ip-10-66-52-164.eu-south-1.compute.internal   Node ip-10-66-52-164.eu-south-1.compute.internal event: Registered Node ip-10-66-52-164.eu-south-1.compute.internal in Controller
26m         Normal    DisruptionBlocked         node/ip-10-66-52-164.eu-south-1.compute.internal   Node isn't initialized
26m         Normal    Starting                  node/ip-10-66-52-164.eu-south-1.compute.internal   
26m         Normal    ControllerVersionNotice   node/ip-10-66-52-164.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeReady                 node/ip-10-66-52-164.eu-south-1.compute.internal   Node ip-10-66-52-164.eu-south-1.compute.internal status is now: NodeReady
26m         Normal    Ready                     node/ip-10-66-52-164.eu-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26m         Normal    NodeTrunkInitiated        node/ip-10-66-52-164.eu-south-1.compute.internal   The node has trunk interface initialized successfully
26m         Normal    RegisteredNode            node/ip-10-66-52-164.eu-south-1.compute.internal   Node ip-10-66-52-164.eu-south-1.compute.internal event: Registered Node ip-10-66-52-164.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-52-164.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
25m         Normal    NodeTrunkInitiated        node/ip-10-66-52-164.eu-south-1.compute.internal   The node has trunk interface initialized successfully
92m         Normal    Unconsolidatable          node/ip-10-66-52-33.eu-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
33m         Normal    DisruptionBlocked         node/ip-10-66-52-33.eu-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
30m         Normal    RegisteredNode            node/ip-10-66-52-33.eu-south-1.compute.internal    Node ip-10-66-52-33.eu-south-1.compute.internal event: Registered Node ip-10-66-52-33.eu-south-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice   node/ip-10-66-52-33.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated        node/ip-10-66-52-33.eu-south-1.compute.internal    The node has trunk interface initialized successfully
26m         Normal    DisruptionBlocked         node/ip-10-66-52-33.eu-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-pdb)
26m         Normal    RegisteredNode            node/ip-10-66-52-33.eu-south-1.compute.internal    Node ip-10-66-52-33.eu-south-1.compute.internal event: Registered Node ip-10-66-52-33.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-52-33.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
25m         Normal    NodeTrunkInitiated        node/ip-10-66-52-33.eu-south-1.compute.internal    The node has trunk interface initialized successfully
20m         Normal    DisruptionBlocked         node/ip-10-66-52-33.eu-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
19m         Normal    DisruptionBlocked         node/ip-10-66-52-33.eu-south-1.compute.internal    Not all pods would schedule, orb-monitoring-service/orb-monitoring-service-659cf6df44-mthb7 => would schedule against uninitialized nodeclaim/main-amd64-7r87p, node/ip-10-66-53-7.eu-south-1.compute.internal
17m         Normal    DisruptionBlocked         node/ip-10-66-52-33.eu-south-1.compute.internal    Node is deleting or marked for deletion
16m         Normal    DisruptionTerminating     node/ip-10-66-52-33.eu-south-1.compute.internal    Disrupting Node: Drifted/Replace
16m         Warning   FailedDraining            node/ip-10-66-52-33.eu-south-1.compute.internal    Failed to drain node, 9 pods are waiting to be evicted
16m         Warning   InstanceTerminating       node/ip-10-66-52-33.eu-south-1.compute.internal    Instance is terminating
15m         Normal    RemovingNode              node/ip-10-66-52-33.eu-south-1.compute.internal    Node ip-10-66-52-33.eu-south-1.compute.internal event: Removing Node ip-10-66-52-33.eu-south-1.compute.internal from Controller
15m         Normal    Starting                  node/ip-10-66-52-74.eu-south-1.compute.internal    Starting kubelet.
15m         Warning   InvalidDiskCapacity       node/ip-10-66-52-74.eu-south-1.compute.internal    invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory   node/ip-10-66-52-74.eu-south-1.compute.internal    Node ip-10-66-52-74.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure     node/ip-10-66-52-74.eu-south-1.compute.internal    Node ip-10-66-52-74.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID      node/ip-10-66-52-74.eu-south-1.compute.internal    Node ip-10-66-52-74.eu-south-1.compute.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced   node/ip-10-66-52-74.eu-south-1.compute.internal    Updated Node Allocatable limit across pods
15m         Normal    Synced                    node/ip-10-66-52-74.eu-south-1.compute.internal    Node synced successfully
15m         Normal    DisruptionBlocked         node/ip-10-66-52-74.eu-south-1.compute.internal    Node isn't initialized
15m         Normal    RegisteredNode            node/ip-10-66-52-74.eu-south-1.compute.internal    Node ip-10-66-52-74.eu-south-1.compute.internal event: Registered Node ip-10-66-52-74.eu-south-1.compute.internal in Controller
15m         Normal    Starting                  node/ip-10-66-52-74.eu-south-1.compute.internal    
15m         Normal    ControllerVersionNotice   node/ip-10-66-52-74.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
15m         Normal    NodeReady                 node/ip-10-66-52-74.eu-south-1.compute.internal    Node ip-10-66-52-74.eu-south-1.compute.internal status is now: NodeReady
15m         Normal    Ready                     node/ip-10-66-52-74.eu-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    NodeTrunkInitiated        node/ip-10-66-52-74.eu-south-1.compute.internal    The node has trunk interface initialized successfully
33m         Normal    Unconsolidatable          node/ip-10-66-52-83.eu-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
30m         Normal    RegisteredNode            node/ip-10-66-52-83.eu-south-1.compute.internal    Node ip-10-66-52-83.eu-south-1.compute.internal event: Registered Node ip-10-66-52-83.eu-south-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice   node/ip-10-66-52-83.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated        node/ip-10-66-52-83.eu-south-1.compute.internal    The node has trunk interface initialized successfully
28m         Normal    Unconsolidatable          node/ip-10-66-52-83.eu-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
27m         Normal    DisruptionBlocked         node/ip-10-66-52-83.eu-south-1.compute.internal    Not all pods would schedule, orb-data-service-external/orb-data-service-external-7b5dc77765-4r2hq => would schedule against uninitialized nodeclaim/main-arm64-x872m kyverno/kyverno-reports-controller-7c49c78b7b-drjxz => would schedule against uninitialized nodeclaim/main-arm64-x872m
26m         Normal    DisruptionTerminating     node/ip-10-66-52-83.eu-south-1.compute.internal    Disrupting Node: Drifted/Delete
26m         Warning   FailedDraining            node/ip-10-66-52-83.eu-south-1.compute.internal    Failed to drain node, 13 pods are waiting to be evicted
26m         Normal    RegisteredNode            node/ip-10-66-52-83.eu-south-1.compute.internal    Node ip-10-66-52-83.eu-south-1.compute.internal event: Registered Node ip-10-66-52-83.eu-south-1.compute.internal in Controller
25m         Normal    DisruptionBlocked         node/ip-10-66-52-83.eu-south-1.compute.internal    Node is deleting or marked for deletion
17m         Normal    ControllerVersionNotice   node/ip-10-66-52-83.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeTrunkInitiated        node/ip-10-66-52-83.eu-south-1.compute.internal    The node has trunk interface initialized successfully
25m         Warning   InstanceTerminating       node/ip-10-66-52-83.eu-south-1.compute.internal    Instance is terminating
25m         Normal    DisruptionBlocked         node/ip-10-66-52-83.eu-south-1.compute.internal    Node is deleting or marked for deletion
24m         Normal    NodeNotReady              node/ip-10-66-52-83.eu-south-1.compute.internal    Node ip-10-66-52-83.eu-south-1.compute.internal status is now: NodeNotReady
24m         Normal    MemoryPressure            node/ip-10-66-52-83.eu-south-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    DiskPressure              node/ip-10-66-52-83.eu-south-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    PIDPressure               node/ip-10-66-52-83.eu-south-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    Ready                     node/ip-10-66-52-83.eu-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    DeletingNode              node/ip-10-66-52-83.eu-south-1.compute.internal    Deleting node ip-10-66-52-83.eu-south-1.compute.internal because it does not exist in the cloud provider
23m         Normal    RemovingNode              node/ip-10-66-52-83.eu-south-1.compute.internal    Node ip-10-66-52-83.eu-south-1.compute.internal event: Removing Node ip-10-66-52-83.eu-south-1.compute.internal from Controller
17m         Normal    Starting                  node/ip-10-66-52-83.eu-south-1.compute.internal    Starting kubelet.
17m         Warning   InvalidDiskCapacity       node/ip-10-66-52-83.eu-south-1.compute.internal    invalid capacity 0 on image filesystem
17m         Normal    NodeHasSufficientMemory   node/ip-10-66-52-83.eu-south-1.compute.internal    Node ip-10-66-52-83.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
17m         Normal    NodeHasNoDiskPressure     node/ip-10-66-52-83.eu-south-1.compute.internal    Node ip-10-66-52-83.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
17m         Normal    NodeHasSufficientPID      node/ip-10-66-52-83.eu-south-1.compute.internal    Node ip-10-66-52-83.eu-south-1.compute.internal status is now: NodeHasSufficientPID
17m         Normal    NodeAllocatableEnforced   node/ip-10-66-52-83.eu-south-1.compute.internal    Updated Node Allocatable limit across pods
17m         Normal    Synced                    node/ip-10-66-52-83.eu-south-1.compute.internal    Node synced successfully
17m         Normal    DisruptionBlocked         node/ip-10-66-52-83.eu-south-1.compute.internal    Node isn't initialized
17m         Normal    RegisteredNode            node/ip-10-66-52-83.eu-south-1.compute.internal    Node ip-10-66-52-83.eu-south-1.compute.internal event: Registered Node ip-10-66-52-83.eu-south-1.compute.internal in Controller
17m         Normal    Starting                  node/ip-10-66-52-83.eu-south-1.compute.internal    
17m         Normal    NodeReady                 node/ip-10-66-52-83.eu-south-1.compute.internal    Node ip-10-66-52-83.eu-south-1.compute.internal status is now: NodeReady
17m         Normal    Ready                     node/ip-10-66-52-83.eu-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
1s          Normal    Unconsolidatable          node/ip-10-66-52-83.eu-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
32m         Normal    Starting                  node/ip-10-66-53-39.eu-south-1.compute.internal    Starting kubelet.
32m         Warning   InvalidDiskCapacity       node/ip-10-66-53-39.eu-south-1.compute.internal    invalid capacity 0 on image filesystem
32m         Normal    NodeHasSufficientMemory   node/ip-10-66-53-39.eu-south-1.compute.internal    Node ip-10-66-53-39.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
32m         Normal    NodeHasNoDiskPressure     node/ip-10-66-53-39.eu-south-1.compute.internal    Node ip-10-66-53-39.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
32m         Normal    NodeHasSufficientPID      node/ip-10-66-53-39.eu-south-1.compute.internal    Node ip-10-66-53-39.eu-south-1.compute.internal status is now: NodeHasSufficientPID
32m         Normal    NodeAllocatableEnforced   node/ip-10-66-53-39.eu-south-1.compute.internal    Updated Node Allocatable limit across pods
32m         Normal    Synced                    node/ip-10-66-53-39.eu-south-1.compute.internal    Node synced successfully
32m         Normal    RegisteredNode            node/ip-10-66-53-39.eu-south-1.compute.internal    Node ip-10-66-53-39.eu-south-1.compute.internal event: Registered Node ip-10-66-53-39.eu-south-1.compute.internal in Controller
31m         Normal    Starting                  node/ip-10-66-53-39.eu-south-1.compute.internal    
31m         Normal    ControllerVersionNotice   node/ip-10-66-53-39.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
31m         Warning   Unsupported               node/ip-10-66-53-39.eu-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
31m         Normal    NodeReady                 node/ip-10-66-53-39.eu-south-1.compute.internal    Node ip-10-66-53-39.eu-south-1.compute.internal status is now: NodeReady
31m         Normal    Ready                     node/ip-10-66-53-39.eu-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
30m         Normal    RegisteredNode            node/ip-10-66-53-39.eu-south-1.compute.internal    Node ip-10-66-53-39.eu-south-1.compute.internal event: Registered Node ip-10-66-53-39.eu-south-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice   node/ip-10-66-53-39.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
26m         Warning   Unsupported               node/ip-10-66-53-39.eu-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    RegisteredNode            node/ip-10-66-53-39.eu-south-1.compute.internal    Node ip-10-66-53-39.eu-south-1.compute.internal event: Registered Node ip-10-66-53-39.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-53-39.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
19m         Warning   Unsupported               node/ip-10-66-53-39.eu-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    NodeNotSchedulable        node/ip-10-66-53-39.eu-south-1.compute.internal    Node ip-10-66-53-39.eu-south-1.compute.internal status is now: NodeNotSchedulable
19m         Normal    NodeNotReady              node/ip-10-66-53-39.eu-south-1.compute.internal    Node ip-10-66-53-39.eu-south-1.compute.internal status is now: NodeNotReady
19m         Normal    MemoryPressure            node/ip-10-66-53-39.eu-south-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DiskPressure              node/ip-10-66-53-39.eu-south-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    PIDPressure               node/ip-10-66-53-39.eu-south-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    Ready                     node/ip-10-66-53-39.eu-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DeletingNode              node/ip-10-66-53-39.eu-south-1.compute.internal    Deleting node ip-10-66-53-39.eu-south-1.compute.internal because it does not exist in the cloud provider
19m         Normal    RemovingNode              node/ip-10-66-53-39.eu-south-1.compute.internal    Node ip-10-66-53-39.eu-south-1.compute.internal event: Removing Node ip-10-66-53-39.eu-south-1.compute.internal from Controller
32m         Normal    Starting                  node/ip-10-66-53-5.eu-south-1.compute.internal     Starting kubelet.
32m         Warning   InvalidDiskCapacity       node/ip-10-66-53-5.eu-south-1.compute.internal     invalid capacity 0 on image filesystem
32m         Normal    NodeHasSufficientMemory   node/ip-10-66-53-5.eu-south-1.compute.internal     Node ip-10-66-53-5.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
32m         Normal    NodeHasNoDiskPressure     node/ip-10-66-53-5.eu-south-1.compute.internal     Node ip-10-66-53-5.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
32m         Normal    NodeHasSufficientPID      node/ip-10-66-53-5.eu-south-1.compute.internal     Node ip-10-66-53-5.eu-south-1.compute.internal status is now: NodeHasSufficientPID
32m         Normal    NodeAllocatableEnforced   node/ip-10-66-53-5.eu-south-1.compute.internal     Updated Node Allocatable limit across pods
32m         Normal    Synced                    node/ip-10-66-53-5.eu-south-1.compute.internal     Node synced successfully
32m         Normal    RegisteredNode            node/ip-10-66-53-5.eu-south-1.compute.internal     Node ip-10-66-53-5.eu-south-1.compute.internal event: Registered Node ip-10-66-53-5.eu-south-1.compute.internal in Controller
31m         Normal    Starting                  node/ip-10-66-53-5.eu-south-1.compute.internal     
31m         Normal    ControllerVersionNotice   node/ip-10-66-53-5.eu-south-1.compute.internal     The node is managed by VPC resource controller version v1.7.9
31m         Warning   Unsupported               node/ip-10-66-53-5.eu-south-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
31m         Normal    NodeReady                 node/ip-10-66-53-5.eu-south-1.compute.internal     Node ip-10-66-53-5.eu-south-1.compute.internal status is now: NodeReady
31m         Normal    Ready                     node/ip-10-66-53-5.eu-south-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
30m         Normal    RegisteredNode            node/ip-10-66-53-5.eu-south-1.compute.internal     Node ip-10-66-53-5.eu-south-1.compute.internal event: Registered Node ip-10-66-53-5.eu-south-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice   node/ip-10-66-53-5.eu-south-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
26m         Warning   Unsupported               node/ip-10-66-53-5.eu-south-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    RegisteredNode            node/ip-10-66-53-5.eu-south-1.compute.internal     Node ip-10-66-53-5.eu-south-1.compute.internal event: Registered Node ip-10-66-53-5.eu-south-1.compute.internal in Controller
25m         Normal    ControllerVersionNotice   node/ip-10-66-53-5.eu-south-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
20s         Warning   Unsupported               node/ip-10-66-53-5.eu-south-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
18m         Normal    Starting                  node/ip-10-66-53-54.eu-south-1.compute.internal    Starting kubelet.
18m         Warning   InvalidDiskCapacity       node/ip-10-66-53-54.eu-south-1.compute.internal    invalid capacity 0 on image filesystem
18m         Normal    NodeHasSufficientMemory   node/ip-10-66-53-54.eu-south-1.compute.internal    Node ip-10-66-53-54.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
18m         Normal    NodeHasNoDiskPressure     node/ip-10-66-53-54.eu-south-1.compute.internal    Node ip-10-66-53-54.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
18m         Normal    NodeHasSufficientPID      node/ip-10-66-53-54.eu-south-1.compute.internal    Node ip-10-66-53-54.eu-south-1.compute.internal status is now: NodeHasSufficientPID
18m         Normal    NodeAllocatableEnforced   node/ip-10-66-53-54.eu-south-1.compute.internal    Updated Node Allocatable limit across pods
18m         Normal    Synced                    node/ip-10-66-53-54.eu-south-1.compute.internal    Node synced successfully
18m         Normal    RegisteredNode            node/ip-10-66-53-54.eu-south-1.compute.internal    Node ip-10-66-53-54.eu-south-1.compute.internal event: Registered Node ip-10-66-53-54.eu-south-1.compute.internal in Controller
18m         Normal    DisruptionBlocked         node/ip-10-66-53-54.eu-south-1.compute.internal    Node isn't initialized
18m         Normal    Starting                  node/ip-10-66-53-54.eu-south-1.compute.internal    
18m         Normal    ControllerVersionNotice   node/ip-10-66-53-54.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
18m         Normal    NodeReady                 node/ip-10-66-53-54.eu-south-1.compute.internal    Node ip-10-66-53-54.eu-south-1.compute.internal status is now: NodeReady
18m         Normal    Ready                     node/ip-10-66-53-54.eu-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
18m         Normal    NodeTrunkInitiated        node/ip-10-66-53-54.eu-south-1.compute.internal    The node has trunk interface initialized successfully
16m         Normal    DisruptionBlocked         node/ip-10-66-53-54.eu-south-1.compute.internal    Node is nominated for a pending pod
63s         Normal    Unconsolidatable          node/ip-10-66-53-54.eu-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
22m         Normal    Starting                  node/ip-10-66-53-64.eu-south-1.compute.internal    Starting kubelet.
22m         Warning   InvalidDiskCapacity       node/ip-10-66-53-64.eu-south-1.compute.internal    invalid capacity 0 on image filesystem
22m         Normal    NodeHasSufficientMemory   node/ip-10-66-53-64.eu-south-1.compute.internal    Node ip-10-66-53-64.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
22m         Normal    NodeHasNoDiskPressure     node/ip-10-66-53-64.eu-south-1.compute.internal    Node ip-10-66-53-64.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
22m         Normal    NodeHasSufficientPID      node/ip-10-66-53-64.eu-south-1.compute.internal    Node ip-10-66-53-64.eu-south-1.compute.internal status is now: NodeHasSufficientPID
22m         Normal    NodeAllocatableEnforced   node/ip-10-66-53-64.eu-south-1.compute.internal    Updated Node Allocatable limit across pods
22m         Normal    Synced                    node/ip-10-66-53-64.eu-south-1.compute.internal    Node synced successfully
22m         Normal    RegisteredNode            node/ip-10-66-53-64.eu-south-1.compute.internal    Node ip-10-66-53-64.eu-south-1.compute.internal event: Registered Node ip-10-66-53-64.eu-south-1.compute.internal in Controller
22m         Normal    DisruptionBlocked         node/ip-10-66-53-64.eu-south-1.compute.internal    Node isn't initialized
22m         Normal    Starting                  node/ip-10-66-53-64.eu-south-1.compute.internal    
22m         Normal    ControllerVersionNotice   node/ip-10-66-53-64.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeReady                 node/ip-10-66-53-64.eu-south-1.compute.internal    Node ip-10-66-53-64.eu-south-1.compute.internal status is now: NodeReady
22m         Normal    Ready                     node/ip-10-66-53-64.eu-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    NodeTrunkInitiated        node/ip-10-66-53-64.eu-south-1.compute.internal    The node has trunk interface initialized successfully
15m         Normal    DisruptionBlocked         node/ip-10-66-53-64.eu-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
4m25s       Normal    Unconsolidatable          node/ip-10-66-53-64.eu-south-1.compute.internal    Can't remove without creating 2 candidates
19m         Normal    Starting                  node/ip-10-66-53-7.eu-south-1.compute.internal     Starting kubelet.
19m         Warning   InvalidDiskCapacity       node/ip-10-66-53-7.eu-south-1.compute.internal     invalid capacity 0 on image filesystem
19m         Normal    NodeHasSufficientMemory   node/ip-10-66-53-7.eu-south-1.compute.internal     Node ip-10-66-53-7.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
19m         Normal    NodeHasNoDiskPressure     node/ip-10-66-53-7.eu-south-1.compute.internal     Node ip-10-66-53-7.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
19m         Normal    NodeHasSufficientPID      node/ip-10-66-53-7.eu-south-1.compute.internal     Node ip-10-66-53-7.eu-south-1.compute.internal status is now: NodeHasSufficientPID
19m         Normal    NodeAllocatableEnforced   node/ip-10-66-53-7.eu-south-1.compute.internal     Updated Node Allocatable limit across pods
19m         Normal    Synced                    node/ip-10-66-53-7.eu-south-1.compute.internal     Node synced successfully
19m         Normal    RegisteredNode            node/ip-10-66-53-7.eu-south-1.compute.internal     Node ip-10-66-53-7.eu-south-1.compute.internal event: Registered Node ip-10-66-53-7.eu-south-1.compute.internal in Controller
19m         Normal    Starting                  node/ip-10-66-53-7.eu-south-1.compute.internal     
19m         Normal    ControllerVersionNotice   node/ip-10-66-53-7.eu-south-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
19m         Normal    DisruptionBlocked         node/ip-10-66-53-7.eu-south-1.compute.internal     Node isn't initialized
19m         Normal    NodeReady                 node/ip-10-66-53-7.eu-south-1.compute.internal     Node ip-10-66-53-7.eu-south-1.compute.internal status is now: NodeReady
19m         Normal    Ready                     node/ip-10-66-53-7.eu-south-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    NodeTrunkInitiated        node/ip-10-66-53-7.eu-south-1.compute.internal     The node has trunk interface initialized successfully
15m         Normal    DisruptionBlocked         node/ip-10-66-53-7.eu-south-1.compute.internal     Node is nominated for a pending pod
1s          Normal    Unconsolidatable          node/ip-10-66-53-7.eu-south-1.compute.internal     Can't remove without creating 2 candidates
22m         Normal    Starting                  node/ip-10-66-53-79.eu-south-1.compute.internal    Starting kubelet.
22m         Warning   InvalidDiskCapacity       node/ip-10-66-53-79.eu-south-1.compute.internal    invalid capacity 0 on image filesystem
22m         Normal    NodeHasSufficientMemory   node/ip-10-66-53-79.eu-south-1.compute.internal    Node ip-10-66-53-79.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
22m         Normal    NodeHasNoDiskPressure     node/ip-10-66-53-79.eu-south-1.compute.internal    Node ip-10-66-53-79.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
22m         Normal    NodeHasSufficientPID      node/ip-10-66-53-79.eu-south-1.compute.internal    Node ip-10-66-53-79.eu-south-1.compute.internal status is now: NodeHasSufficientPID
22m         Normal    NodeAllocatableEnforced   node/ip-10-66-53-79.eu-south-1.compute.internal    Updated Node Allocatable limit across pods
22m         Normal    Synced                    node/ip-10-66-53-79.eu-south-1.compute.internal    Node synced successfully
22m         Normal    RegisteredNode            node/ip-10-66-53-79.eu-south-1.compute.internal    Node ip-10-66-53-79.eu-south-1.compute.internal event: Registered Node ip-10-66-53-79.eu-south-1.compute.internal in Controller
22m         Normal    DisruptionBlocked         node/ip-10-66-53-79.eu-south-1.compute.internal    Node isn't initialized
22m         Normal    Starting                  node/ip-10-66-53-79.eu-south-1.compute.internal    
22m         Normal    ControllerVersionNotice   node/ip-10-66-53-79.eu-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeReady                 node/ip-10-66-53-79.eu-south-1.compute.internal    Node ip-10-66-53-79.eu-south-1.compute.internal status is now: NodeReady
22m         Normal    Ready                     node/ip-10-66-53-79.eu-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    NodeTrunkInitiated        node/ip-10-66-53-79.eu-south-1.compute.internal    The node has trunk interface initialized successfully
19m         Normal    DisruptionBlocked         node/ip-10-66-53-79.eu-south-1.compute.internal    Node is nominated for a pending pod
63s         Normal    DisruptionBlocked         node/ip-10-66-53-79.eu-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
```

Pods with issues
```
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-cqlrm                               0/1     CreateContainerConfigError   0             26m
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-ddvg6                               0/1     CreateContainerConfigError   0             22m
```

PodDisruptionBudgets
```
NAMESPACE                             NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                    cluster-monitoring-pdb                    N/A             1                 1                     298d
karpenter                             karpenter                                 N/A             1                 1                     2y97d
kube-system                           coredns                                   N/A             1                 1                     624d
kube-system                           ebs-csi-controller                        N/A             1                 1                     2y100d
kyverno                               kyverno-admission-controller              1               N/A               2                     606d
orb-fleet-backend-docs-server         orb-fleet-backend-docs-server-pdb         N/A             1                 0                     157d
orb-fleet-backend-event-server        orb-fleet-backend-event-server-pdb        N/A             1                 0                     185d
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     290d
orb-fleet-backend-internal            orb-fleet-backend-internal-pdb            N/A             1                 1                     290d
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

Generated on: Tue Sep 23 14:10:43 CEST 2025
