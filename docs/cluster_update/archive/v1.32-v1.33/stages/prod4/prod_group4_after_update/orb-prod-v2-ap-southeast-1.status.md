# Cluster recon for tfh-orb-prod-infra,ap-southeast-1,orb-prod-v2-ap-southeast-1,tunnel-vpc-orb-prod-ap-southeast-1

TFH EKS login...
```console
2025/09/23 14:09:24 INFO Logging into AWS
2025/09/23 14:09:24 INFO Token found and valid
2025/09/23 14:09:27 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-prod-ap-southeast-1 id=efc3c31b-95de-40dc-bb6b-4e9656bd3176
2025/09/23 14:09:29 INFO Active WARP Virtual Network id=efc3c31b-95de-40dc-bb6b-4e9656bd3176
Updated context tfh-orb-prod-v2-ap-southeast-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "orb-prod-v2-ap-southeast-1",
        "arn": "arn:aws:eks:ap-southeast-1:573252405782:cluster/orb-prod-v2-ap-southeast-1",
        "createdAt": "2023-06-16T09:55:40.714000+02:00",
        "version": "1.33",
        "endpoint": "https://F25A6F0466CADDBD48437D251F04E91A.gr7.ap-southeast-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::573252405782:role/eks-cluster-orb-prod-v2-ap-southeast-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0168fd04693fd3a9b",
                "subnet-0d00886963b01715a",
                "subnet-04b43e6f5485e9c5b"
            ],
            "securityGroupIds": [
                "sg-023d7c4bbd1e8c395"
            ],
            "clusterSecurityGroupId": "sg-0d30ddbfcdb50aa3b",
            "vpcId": "vpc-072adef03cbafdb8c",
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
                "issuer": "https://oidc.eks.ap-southeast-1.amazonaws.com/id/F25A6F0466CADDBD48437D251F04E91A"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EWXhOakE0TURBek9Gb1hEVE16TURZeE16QTRNREF6T0Zvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTWdNClA0c0hiN1ErM3dLNkhUTVR3dVhkZldwbWdiRVpTZlFwM0hBRUszaXg1MFQwdGo5RXNBRWU3YnNQMXlBMjhOWUwKNU95WEdybnBFK3c5N1o2cmFRS0ZXVEFidkZRTFdaU2pCQ2xuMG9oNStNQWdCNG1xeVVCYnlwTld6VC9MVE9HeQpiYXNWODlHcnlrVTQxN2IwRHNRNnZ3VVFrcUpqVW5Kd2ZyMERxbDdVQTdNcDNmaUJZSnZ6VHFBSDRySVJCb3c3CmJBeWV4ak5VNE9KTnI2WTBnbWtzRDJ0YTlXYUtRQ0RLS2ZWcmNsb05QWHFlWlR1R004eW5HSWxlSkwxS2pqQUwKNUhTWGVtQXcrNDhBT1FnNDlrSEpkZ0s0eGdWY2UyQWd5Wm5SQzEvckd0RFZvc3V1SE16ZW1hZ2YxQzZ6YmhZYQpHOUxZRnBMUFhublUxL3RBNlRzQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZPWWNXazNvVW0vUEJ2TjhwWlBON0h4UXAzUXBNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBRUthK2trb1huYitmSEEwa2RaRgpsL1ZwTit2bDBkQUZnUnloMzl1Zy9GSTExKzdoK2ZqdG1rZXJoRVl0aDZ0eFpRY1Fza3NaQnRpV3lZazEzdmpmCkdEYmhEMnRHUjd2bDhmZ0c2aWNHdmt4aWRyVTZUQ3ZWdi9TSW4rTm1adDVUZEZUZFZsbWd6Tnd6c3Yvb1FpUFYKOUZDUS9pU1FBVVNLcDVXQUEvUElnVGRBNXBLQjkxdGdUNjVBYlVRZXpRcmFjelRNVnd5eXpHVkxJNnNtOGFDRQpyMVlha1RPa2tlK2dLaFBTcXhSVUJmTDhKWWtRandraEdsZnpwVFBpd25kWkJ2cmx0ay9DeHFTR2JHWFZoM3ZiCm5TMXVrNVpWdC9xb2NVWGlPUFY4Q3pjN09BYVFDWHFFOWdlbk1Jb3d3M3lxbjNXZVBEVUdlN0hNUGtxSzh3QkIKYkpZPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-prod-v2-ap-southeast-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:ap-southeast-1:573252405782:key/ada82ff4-3d49-4d0f-b9b5-053821a896cf"
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
NAME                                              STATUS   ROLES    AGE   VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-38-33-247.ap-southeast-1.compute.internal   Ready    <none>   17m   v1.33.4-eks-99d6cc0   10.38.33.247   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-34-160.ap-southeast-1.compute.internal   Ready    <none>   26m   v1.33.4-eks-99d6cc0   10.38.34.160   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-34-50.ap-southeast-1.compute.internal    Ready    <none>   20m   v1.33.4-eks-99d6cc0   10.38.34.50    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-35-0.ap-southeast-1.compute.internal     Ready    <none>   31m   v1.33.4-eks-99d6cc0   10.38.35.0     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-ap-southeast-1
ip-10-38-35-101.ap-southeast-1.compute.internal   Ready    <none>   27m   v1.33.4-eks-99d6cc0   10.38.35.101   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-36-114.ap-southeast-1.compute.internal   Ready    <none>   21m   v1.33.4-eks-99d6cc0   10.38.36.114   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-36-8.ap-southeast-1.compute.internal     Ready    <none>   30m   v1.33.4-eks-99d6cc0   10.38.36.8     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-ap-southeast-1
ip-10-38-36-93.ap-southeast-1.compute.internal    Ready    <none>   15m   v1.33.4-eks-99d6cc0   10.38.36.93    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-37-151.ap-southeast-1.compute.internal   Ready    <none>   25m   v1.33.4-eks-99d6cc0   10.38.37.151   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-37-182.ap-southeast-1.compute.internal   Ready    <none>   24m   v1.33.4-eks-99d6cc0   10.38.37.182   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-37-235.ap-southeast-1.compute.internal   Ready    <none>   27m   v1.33.4-eks-99d6cc0   10.38.37.235   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-38-37-50.ap-southeast-1.compute.internal    Ready    <none>   23m   v1.33.4-eks-99d6cc0   10.38.37.50    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-37-97.ap-southeast-1.compute.internal    Ready    <none>   15m   v1.33.4-eks-99d6cc0   10.38.37.97    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                              STATUS   ROLES    TAINTS
ip-10-38-33-247.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-38-34-160.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-38-34-50.ap-southeast-1.compute.internal    Ready    <none>   <none>
ip-10-38-35-0.ap-southeast-1.compute.internal     Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-38-35-101.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-38-36-114.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-38-36-8.ap-southeast-1.compute.internal     Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-38-36-93.ap-southeast-1.compute.internal    Ready    <none>   <none>
ip-10-38-37-151.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-38-37-182.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-38-37-235.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-38-37-50.ap-southeast-1.compute.internal    Ready    <none>   <none>
ip-10-38-37-97.ap-southeast-1.compute.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                                                 MESSAGE
29m         Normal    Finalized                     node                                                   Finalized karpenter.sh/termination
22m         Normal    Finalized                     node                                                   Finalized karpenter.sh/termination
13m         Normal    Finalized                     node                                                   Finalized karpenter.sh/termination
33m         Normal    Unconsolidatable              node/ip-10-38-32-109.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
28m         Normal    DisruptionBlocked             node/ip-10-38-32-109.ap-southeast-1.compute.internal   Node is nominated for a pending pod
29m         Normal    RegisteredNode                node/ip-10-38-32-109.ap-southeast-1.compute.internal   Node ip-10-38-32-109.ap-southeast-1.compute.internal event: Registered Node ip-10-38-32-109.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-32-109.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-38-32-109.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    RegisteredNode                node/ip-10-38-32-109.ap-southeast-1.compute.internal   Node ip-10-38-32-109.ap-southeast-1.compute.internal event: Registered Node ip-10-38-32-109.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-32-109.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeTrunkInitiated            node/ip-10-38-32-109.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked             node/ip-10-38-32-109.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
22m         Normal    DisruptionTerminating         node/ip-10-38-32-109.ap-southeast-1.compute.internal   Disrupting Node: Drifted/Replace
22m         Warning   FailedDraining                node/ip-10-38-32-109.ap-southeast-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
22m         Warning   InstanceTerminating           node/ip-10-38-32-109.ap-southeast-1.compute.internal   Instance is terminating
21m         Normal    NodeNotReady                  node/ip-10-38-32-109.ap-southeast-1.compute.internal   Node ip-10-38-32-109.ap-southeast-1.compute.internal status is now: NodeNotReady
21m         Normal    DisruptionBlocked             node/ip-10-38-32-109.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
20m         Warning   InstanceTerminating           node/ip-10-38-32-109.ap-southeast-1.compute.internal   Instance is terminating
20m         Normal    DeletingNode                  node/ip-10-38-32-109.ap-southeast-1.compute.internal   Deleting node ip-10-38-32-109.ap-southeast-1.compute.internal because it does not exist in the cloud provider
20m         Normal    RemovingNode                  node/ip-10-38-32-109.ap-southeast-1.compute.internal   Node ip-10-38-32-109.ap-southeast-1.compute.internal event: Removing Node ip-10-38-32-109.ap-southeast-1.compute.internal from Controller
29m         Normal    Starting                      node/ip-10-38-32-154.ap-southeast-1.compute.internal   Starting kubelet.
29m         Warning   InvalidDiskCapacity           node/ip-10-38-32-154.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
29m         Normal    NodeHasSufficientMemory       node/ip-10-38-32-154.ap-southeast-1.compute.internal   Node ip-10-38-32-154.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
29m         Normal    NodeHasNoDiskPressure         node/ip-10-38-32-154.ap-southeast-1.compute.internal   Node ip-10-38-32-154.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
29m         Normal    NodeHasSufficientPID          node/ip-10-38-32-154.ap-southeast-1.compute.internal   Node ip-10-38-32-154.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
29m         Normal    NodeAllocatableEnforced       node/ip-10-38-32-154.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
29m         Normal    Synced                        node/ip-10-38-32-154.ap-southeast-1.compute.internal   Node synced successfully
29m         Normal    RegisteredNode                node/ip-10-38-32-154.ap-southeast-1.compute.internal   Node ip-10-38-32-154.ap-southeast-1.compute.internal event: Registered Node ip-10-38-32-154.ap-southeast-1.compute.internal in Controller
29m         Normal    Starting                      node/ip-10-38-32-154.ap-southeast-1.compute.internal   
29m         Normal    ControllerVersionNotice       node/ip-10-38-32-154.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Warning   Unsupported                   node/ip-10-38-32-154.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
29m         Normal    NodeReady                     node/ip-10-38-32-154.ap-southeast-1.compute.internal   Node ip-10-38-32-154.ap-southeast-1.compute.internal status is now: NodeReady
29m         Normal    Ready                         node/ip-10-38-32-154.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
24m         Normal    RegisteredNode                node/ip-10-38-32-154.ap-southeast-1.compute.internal   Node ip-10-38-32-154.ap-southeast-1.compute.internal event: Registered Node ip-10-38-32-154.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-32-154.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
16m         Warning   Unsupported                   node/ip-10-38-32-154.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
18m         Normal    NodeNotSchedulable            node/ip-10-38-32-154.ap-southeast-1.compute.internal   Node ip-10-38-32-154.ap-southeast-1.compute.internal status is now: NodeNotSchedulable
16m         Normal    NodeNotReady                  node/ip-10-38-32-154.ap-southeast-1.compute.internal   Node ip-10-38-32-154.ap-southeast-1.compute.internal status is now: NodeNotReady
16m         Normal    MemoryPressure                node/ip-10-38-32-154.ap-southeast-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    DiskPressure                  node/ip-10-38-32-154.ap-southeast-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    PIDPressure                   node/ip-10-38-32-154.ap-southeast-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    Ready                         node/ip-10-38-32-154.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    DeletingNode                  node/ip-10-38-32-154.ap-southeast-1.compute.internal   Deleting node ip-10-38-32-154.ap-southeast-1.compute.internal because it does not exist in the cloud provider
16m         Normal    RemovingNode                  node/ip-10-38-32-154.ap-southeast-1.compute.internal   Node ip-10-38-32-154.ap-southeast-1.compute.internal event: Removing Node ip-10-38-32-154.ap-southeast-1.compute.internal from Controller
43m         Normal    Unconsolidatable              node/ip-10-38-32-5.ap-southeast-1.compute.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
32m         Normal    SpotRebalanceRecommendation   node/ip-10-38-32-5.ap-southeast-1.compute.internal     Spot rebalance recommendation was triggered
32m         Warning   SpotInterrupted               node/ip-10-38-32-5.ap-southeast-1.compute.internal     Spot interruption warning was triggered
32m         Warning   TerminatingOnInterruption     node/ip-10-38-32-5.ap-southeast-1.compute.internal     Interruption triggered termination for the Node
32m         Warning   FailedDraining                node/ip-10-38-32-5.ap-southeast-1.compute.internal     Failed to drain node, 11 pods are waiting to be evicted
29m         Normal    DisruptionBlocked             node/ip-10-38-32-5.ap-southeast-1.compute.internal     Node is deleting or marked for deletion
30m         Warning   InstanceTerminating           node/ip-10-38-32-5.ap-southeast-1.compute.internal     Instance is terminating
29m         Normal    NodeNotReady                  node/ip-10-38-32-5.ap-southeast-1.compute.internal     Node ip-10-38-32-5.ap-southeast-1.compute.internal status is now: NodeNotReady
29m         Normal    MemoryPressure                node/ip-10-38-32-5.ap-southeast-1.compute.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
29m         Normal    DiskPressure                  node/ip-10-38-32-5.ap-southeast-1.compute.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
29m         Normal    PIDPressure                   node/ip-10-38-32-5.ap-southeast-1.compute.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
29m         Normal    Ready                         node/ip-10-38-32-5.ap-southeast-1.compute.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
29m         Normal    DeletingNode                  node/ip-10-38-32-5.ap-southeast-1.compute.internal     Deleting node ip-10-38-32-5.ap-southeast-1.compute.internal because it does not exist in the cloud provider
29m         Normal    RemovingNode                  node/ip-10-38-32-5.ap-southeast-1.compute.internal     Node ip-10-38-32-5.ap-southeast-1.compute.internal event: Removing Node ip-10-38-32-5.ap-southeast-1.compute.internal from Controller
33m         Normal    Unconsolidatable              node/ip-10-38-32-50.ap-southeast-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
28m         Normal    DisruptionBlocked             node/ip-10-38-32-50.ap-southeast-1.compute.internal    Node is nominated for a pending pod
69m         Normal    Unconsolidatable              node/ip-10-38-32-50.ap-southeast-1.compute.internal    Can't remove without creating 2 candidates
29m         Normal    RegisteredNode                node/ip-10-38-32-50.ap-southeast-1.compute.internal    Node ip-10-38-32-50.ap-southeast-1.compute.internal event: Registered Node ip-10-38-32-50.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-32-50.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-38-32-50.ap-southeast-1.compute.internal    The node has trunk interface initialized successfully
24m         Normal    RegisteredNode                node/ip-10-38-32-50.ap-southeast-1.compute.internal    Node ip-10-38-32-50.ap-southeast-1.compute.internal event: Registered Node ip-10-38-32-50.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-32-50.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeTrunkInitiated            node/ip-10-38-32-50.ap-southeast-1.compute.internal    The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked             node/ip-10-38-32-50.ap-southeast-1.compute.internal    Node is nominated for a pending pod
21m         Normal    DisruptionBlocked             node/ip-10-38-32-50.ap-southeast-1.compute.internal    Node is nominated for a pending pod
20m         Normal    DisruptionTerminating         node/ip-10-38-32-50.ap-southeast-1.compute.internal    Disrupting Node: Drifted/Delete
20m         Warning   FailedDraining                node/ip-10-38-32-50.ap-southeast-1.compute.internal    Failed to drain node, 10 pods are waiting to be evicted
20m         Warning   InstanceTerminating           node/ip-10-38-32-50.ap-southeast-1.compute.internal    Instance is terminating
19m         Normal    NodeNotReady                  node/ip-10-38-32-50.ap-southeast-1.compute.internal    Node ip-10-38-32-50.ap-southeast-1.compute.internal status is now: NodeNotReady
19m         Normal    MemoryPressure                node/ip-10-38-32-50.ap-southeast-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DiskPressure                  node/ip-10-38-32-50.ap-southeast-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    PIDPressure                   node/ip-10-38-32-50.ap-southeast-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    Ready                         node/ip-10-38-32-50.ap-southeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DisruptionBlocked             node/ip-10-38-32-50.ap-southeast-1.compute.internal    Node is deleting or marked for deletion
18m         Normal    DeletingNode                  node/ip-10-38-32-50.ap-southeast-1.compute.internal    Deleting node ip-10-38-32-50.ap-southeast-1.compute.internal because it does not exist in the cloud provider
18m         Normal    RemovingNode                  node/ip-10-38-32-50.ap-southeast-1.compute.internal    Node ip-10-38-32-50.ap-southeast-1.compute.internal event: Removing Node ip-10-38-32-50.ap-southeast-1.compute.internal from Controller
34m         Warning   Unsupported                   node/ip-10-38-33-163.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
29m         Normal    RegisteredNode                node/ip-10-38-33-163.ap-southeast-1.compute.internal   Node ip-10-38-33-163.ap-southeast-1.compute.internal event: Registered Node ip-10-38-33-163.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-33-163.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
25m         Warning   Unsupported                   node/ip-10-38-33-163.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    NodeNotSchedulable            node/ip-10-38-33-163.ap-southeast-1.compute.internal   Node ip-10-38-33-163.ap-southeast-1.compute.internal status is now: NodeNotSchedulable
26m         Normal    NodeNotReady                  node/ip-10-38-33-163.ap-southeast-1.compute.internal   Node ip-10-38-33-163.ap-southeast-1.compute.internal status is now: NodeNotReady
26m         Normal    MemoryPressure                node/ip-10-38-33-163.ap-southeast-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    DiskPressure                  node/ip-10-38-33-163.ap-southeast-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    PIDPressure                   node/ip-10-38-33-163.ap-southeast-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    Ready                         node/ip-10-38-33-163.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    DeletingNode                  node/ip-10-38-33-163.ap-southeast-1.compute.internal   Deleting node ip-10-38-33-163.ap-southeast-1.compute.internal because it does not exist in the cloud provider
25m         Normal    RemovingNode                  node/ip-10-38-33-163.ap-southeast-1.compute.internal   Node ip-10-38-33-163.ap-southeast-1.compute.internal event: Removing Node ip-10-38-33-163.ap-southeast-1.compute.internal from Controller
17m         Normal    Starting                      node/ip-10-38-33-247.ap-southeast-1.compute.internal   Starting kubelet.
17m         Warning   InvalidDiskCapacity           node/ip-10-38-33-247.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
17m         Normal    NodeHasSufficientMemory       node/ip-10-38-33-247.ap-southeast-1.compute.internal   Node ip-10-38-33-247.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
17m         Normal    NodeHasNoDiskPressure         node/ip-10-38-33-247.ap-southeast-1.compute.internal   Node ip-10-38-33-247.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
17m         Normal    NodeHasSufficientPID          node/ip-10-38-33-247.ap-southeast-1.compute.internal   Node ip-10-38-33-247.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
17m         Normal    NodeAllocatableEnforced       node/ip-10-38-33-247.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
17m         Normal    Synced                        node/ip-10-38-33-247.ap-southeast-1.compute.internal   Node synced successfully
17m         Normal    DisruptionBlocked             node/ip-10-38-33-247.ap-southeast-1.compute.internal   Node isn't initialized
17m         Normal    RegisteredNode                node/ip-10-38-33-247.ap-southeast-1.compute.internal   Node ip-10-38-33-247.ap-southeast-1.compute.internal event: Registered Node ip-10-38-33-247.ap-southeast-1.compute.internal in Controller
17m         Normal    Starting                      node/ip-10-38-33-247.ap-southeast-1.compute.internal   
17m         Normal    ControllerVersionNotice       node/ip-10-38-33-247.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeReady                     node/ip-10-38-33-247.ap-southeast-1.compute.internal   Node ip-10-38-33-247.ap-southeast-1.compute.internal status is now: NodeReady
17m         Normal    Ready                         node/ip-10-38-33-247.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    NodeTrunkInitiated            node/ip-10-38-33-247.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
15m         Normal    DisruptionBlocked             node/ip-10-38-33-247.ap-southeast-1.compute.internal   Node is nominated for a pending pod
31m         Normal    DisruptionBlocked             node/ip-10-38-34-142.ap-southeast-1.compute.internal   Node is nominated for a pending pod
33m         Normal    Unconsolidatable              node/ip-10-38-34-142.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    RegisteredNode                node/ip-10-38-34-142.ap-southeast-1.compute.internal   Node ip-10-38-34-142.ap-southeast-1.compute.internal event: Registered Node ip-10-38-34-142.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-34-142.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-38-34-142.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    RegisteredNode                node/ip-10-38-34-142.ap-southeast-1.compute.internal   Node ip-10-38-34-142.ap-southeast-1.compute.internal event: Registered Node ip-10-38-34-142.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-34-142.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeTrunkInitiated            node/ip-10-38-34-142.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked             node/ip-10-38-34-142.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-pdb)
21m         Normal    DisruptionBlocked             node/ip-10-38-34-142.ap-southeast-1.compute.internal   Node is nominated for a pending pod
18m         Normal    DisruptionBlocked             node/ip-10-38-34-142.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
18m         Normal    DisruptionTerminating         node/ip-10-38-34-142.ap-southeast-1.compute.internal   Disrupting Node: Drifted/Delete
18m         Warning   FailedDraining                node/ip-10-38-34-142.ap-southeast-1.compute.internal   Failed to drain node, 7 pods are waiting to be evicted
18m         Warning   InstanceTerminating           node/ip-10-38-34-142.ap-southeast-1.compute.internal   Instance is terminating
17m         Normal    RemovingNode                  node/ip-10-38-34-142.ap-southeast-1.compute.internal   Node ip-10-38-34-142.ap-southeast-1.compute.internal event: Removing Node ip-10-38-34-142.ap-southeast-1.compute.internal from Controller
27m         Normal    Starting                      node/ip-10-38-34-160.ap-southeast-1.compute.internal   Starting kubelet.
27m         Warning   InvalidDiskCapacity           node/ip-10-38-34-160.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory       node/ip-10-38-34-160.ap-southeast-1.compute.internal   Node ip-10-38-34-160.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure         node/ip-10-38-34-160.ap-southeast-1.compute.internal   Node ip-10-38-34-160.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID          node/ip-10-38-34-160.ap-southeast-1.compute.internal   Node ip-10-38-34-160.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced       node/ip-10-38-34-160.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
27m         Normal    Synced                        node/ip-10-38-34-160.ap-southeast-1.compute.internal   Node synced successfully
27m         Normal    RegisteredNode                node/ip-10-38-34-160.ap-southeast-1.compute.internal   Node ip-10-38-34-160.ap-southeast-1.compute.internal event: Registered Node ip-10-38-34-160.ap-southeast-1.compute.internal in Controller
26m         Normal    DisruptionBlocked             node/ip-10-38-34-160.ap-southeast-1.compute.internal   Node isn't initialized
26m         Normal    Starting                      node/ip-10-38-34-160.ap-southeast-1.compute.internal   
26m         Normal    ControllerVersionNotice       node/ip-10-38-34-160.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeReady                     node/ip-10-38-34-160.ap-southeast-1.compute.internal   Node ip-10-38-34-160.ap-southeast-1.compute.internal status is now: NodeReady
26m         Normal    Ready                         node/ip-10-38-34-160.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26m         Normal    NodeTrunkInitiated            node/ip-10-38-34-160.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-38-34-160.ap-southeast-1.compute.internal   Node is nominated for a pending pod
24m         Normal    RegisteredNode                node/ip-10-38-34-160.ap-southeast-1.compute.internal   Node ip-10-38-34-160.ap-southeast-1.compute.internal event: Registered Node ip-10-38-34-160.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-34-160.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeTrunkInitiated            node/ip-10-38-34-160.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
18m         Normal    DisruptionBlocked             node/ip-10-38-34-160.ap-southeast-1.compute.internal   Node is nominated for a pending pod
16m         Normal    DisruptionBlocked             node/ip-10-38-34-160.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
13m         Normal    DisruptionBlocked             node/ip-10-38-34-160.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
38m         Normal    Unconsolidatable              node/ip-10-38-34-192.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
31m         Normal    DisruptionBlocked             node/ip-10-38-34-192.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
29m         Normal    RegisteredNode                node/ip-10-38-34-192.ap-southeast-1.compute.internal   Node ip-10-38-34-192.ap-southeast-1.compute.internal event: Registered Node ip-10-38-34-192.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-34-192.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-38-34-192.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-38-34-192.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
27m         Normal    DisruptionTerminating         node/ip-10-38-34-192.ap-southeast-1.compute.internal   Disrupting Node: Drifted/Replace
27m         Warning   FailedDraining                node/ip-10-38-34-192.ap-southeast-1.compute.internal   Failed to drain node, 6 pods are waiting to be evicted
26m         Warning   InstanceTerminating           node/ip-10-38-34-192.ap-southeast-1.compute.internal   Instance is terminating
25m         Normal    DisruptionBlocked             node/ip-10-38-34-192.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
25m         Normal    NodeNotReady                  node/ip-10-38-34-192.ap-southeast-1.compute.internal   Node ip-10-38-34-192.ap-southeast-1.compute.internal status is now: NodeNotReady
25m         Normal    MemoryPressure                node/ip-10-38-34-192.ap-southeast-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    DiskPressure                  node/ip-10-38-34-192.ap-southeast-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    PIDPressure                   node/ip-10-38-34-192.ap-southeast-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    Ready                         node/ip-10-38-34-192.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Warning   InstanceTerminating           node/ip-10-38-34-192.ap-southeast-1.compute.internal   Instance is terminating
25m         Normal    DeletingNode                  node/ip-10-38-34-192.ap-southeast-1.compute.internal   Deleting node ip-10-38-34-192.ap-southeast-1.compute.internal because it does not exist in the cloud provider
25m         Normal    RemovingNode                  node/ip-10-38-34-192.ap-southeast-1.compute.internal   Node ip-10-38-34-192.ap-southeast-1.compute.internal event: Removing Node ip-10-38-34-192.ap-southeast-1.compute.internal from Controller
85m         Normal    Unconsolidatable              node/ip-10-38-34-215.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
31m         Normal    DisruptionBlocked             node/ip-10-38-34-215.ap-southeast-1.compute.internal   Node is nominated for a pending pod
27m         Normal    DisruptionBlocked             node/ip-10-38-34-215.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
29m         Normal    RegisteredNode                node/ip-10-38-34-215.ap-southeast-1.compute.internal   Node ip-10-38-34-215.ap-southeast-1.compute.internal event: Registered Node ip-10-38-34-215.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-34-215.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-38-34-215.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    RegisteredNode                node/ip-10-38-34-215.ap-southeast-1.compute.internal   Node ip-10-38-34-215.ap-southeast-1.compute.internal event: Registered Node ip-10-38-34-215.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-34-215.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeTrunkInitiated            node/ip-10-38-34-215.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
19m         Normal    DisruptionBlocked             node/ip-10-38-34-215.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
20m         Normal    SpotRebalanceRecommendation   node/ip-10-38-34-215.ap-southeast-1.compute.internal   Spot rebalance recommendation was triggered
20m         Warning   SpotInterrupted               node/ip-10-38-34-215.ap-southeast-1.compute.internal   Spot interruption warning was triggered
20m         Warning   TerminatingOnInterruption     node/ip-10-38-34-215.ap-southeast-1.compute.internal   Interruption triggered termination for the Node
20m         Warning   FailedDraining                node/ip-10-38-34-215.ap-southeast-1.compute.internal   Failed to drain node, 9 pods are waiting to be evicted
18m         Warning   InstanceTerminating           node/ip-10-38-34-215.ap-southeast-1.compute.internal   Instance is terminating
18m         Normal    RemovingNode                  node/ip-10-38-34-215.ap-southeast-1.compute.internal   Node ip-10-38-34-215.ap-southeast-1.compute.internal event: Removing Node ip-10-38-34-215.ap-southeast-1.compute.internal from Controller
20m         Normal    Starting                      node/ip-10-38-34-50.ap-southeast-1.compute.internal    Starting kubelet.
20m         Warning   InvalidDiskCapacity           node/ip-10-38-34-50.ap-southeast-1.compute.internal    invalid capacity 0 on image filesystem
20m         Normal    NodeHasSufficientMemory       node/ip-10-38-34-50.ap-southeast-1.compute.internal    Node ip-10-38-34-50.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
20m         Normal    NodeHasNoDiskPressure         node/ip-10-38-34-50.ap-southeast-1.compute.internal    Node ip-10-38-34-50.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
20m         Normal    NodeHasSufficientPID          node/ip-10-38-34-50.ap-southeast-1.compute.internal    Node ip-10-38-34-50.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
20m         Normal    NodeAllocatableEnforced       node/ip-10-38-34-50.ap-southeast-1.compute.internal    Updated Node Allocatable limit across pods
20m         Normal    Synced                        node/ip-10-38-34-50.ap-southeast-1.compute.internal    Node synced successfully
20m         Normal    RegisteredNode                node/ip-10-38-34-50.ap-southeast-1.compute.internal    Node ip-10-38-34-50.ap-southeast-1.compute.internal event: Registered Node ip-10-38-34-50.ap-southeast-1.compute.internal in Controller
20m         Normal    DisruptionBlocked             node/ip-10-38-34-50.ap-southeast-1.compute.internal    Node isn't initialized
20m         Normal    Starting                      node/ip-10-38-34-50.ap-southeast-1.compute.internal    
20m         Normal    ControllerVersionNotice       node/ip-10-38-34-50.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeReady                     node/ip-10-38-34-50.ap-southeast-1.compute.internal    Node ip-10-38-34-50.ap-southeast-1.compute.internal status is now: NodeReady
20m         Normal    Ready                         node/ip-10-38-34-50.ap-southeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
20m         Normal    NodeTrunkInitiated            node/ip-10-38-34-50.ap-southeast-1.compute.internal    The node has trunk interface initialized successfully
18m         Normal    DisruptionBlocked             node/ip-10-38-34-50.ap-southeast-1.compute.internal    Node is nominated for a pending pod
16m         Normal    DisruptionBlocked             node/ip-10-38-34-50.ap-southeast-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
31m         Normal    Starting                      node/ip-10-38-34-51.ap-southeast-1.compute.internal    Starting kubelet.
31m         Warning   InvalidDiskCapacity           node/ip-10-38-34-51.ap-southeast-1.compute.internal    invalid capacity 0 on image filesystem
31m         Normal    NodeHasSufficientMemory       node/ip-10-38-34-51.ap-southeast-1.compute.internal    Node ip-10-38-34-51.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
31m         Normal    NodeHasNoDiskPressure         node/ip-10-38-34-51.ap-southeast-1.compute.internal    Node ip-10-38-34-51.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
31m         Normal    NodeHasSufficientPID          node/ip-10-38-34-51.ap-southeast-1.compute.internal    Node ip-10-38-34-51.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
31m         Normal    NodeAllocatableEnforced       node/ip-10-38-34-51.ap-southeast-1.compute.internal    Updated Node Allocatable limit across pods
31m         Normal    Synced                        node/ip-10-38-34-51.ap-southeast-1.compute.internal    Node synced successfully
31m         Normal    RegisteredNode                node/ip-10-38-34-51.ap-southeast-1.compute.internal    Node ip-10-38-34-51.ap-southeast-1.compute.internal event: Registered Node ip-10-38-34-51.ap-southeast-1.compute.internal in Controller
31m         Normal    Starting                      node/ip-10-38-34-51.ap-southeast-1.compute.internal    
31m         Normal    ControllerVersionNotice       node/ip-10-38-34-51.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
30m         Warning   Unsupported                   node/ip-10-38-34-51.ap-southeast-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
31m         Normal    NodeReady                     node/ip-10-38-34-51.ap-southeast-1.compute.internal    Node ip-10-38-34-51.ap-southeast-1.compute.internal status is now: NodeReady
31m         Normal    Ready                         node/ip-10-38-34-51.ap-southeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
29m         Normal    RegisteredNode                node/ip-10-38-34-51.ap-southeast-1.compute.internal    Node ip-10-38-34-51.ap-southeast-1.compute.internal event: Registered Node ip-10-38-34-51.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-34-51.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
25m         Warning   Unsupported                   node/ip-10-38-34-51.ap-southeast-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
24m         Normal    RegisteredNode                node/ip-10-38-34-51.ap-southeast-1.compute.internal    Node ip-10-38-34-51.ap-southeast-1.compute.internal event: Registered Node ip-10-38-34-51.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-34-51.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
19m         Warning   Unsupported                   node/ip-10-38-34-51.ap-southeast-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    NodeNotSchedulable            node/ip-10-38-34-51.ap-southeast-1.compute.internal    Node ip-10-38-34-51.ap-southeast-1.compute.internal status is now: NodeNotSchedulable
19m         Normal    NodeNotReady                  node/ip-10-38-34-51.ap-southeast-1.compute.internal    Node ip-10-38-34-51.ap-southeast-1.compute.internal status is now: NodeNotReady
19m         Normal    MemoryPressure                node/ip-10-38-34-51.ap-southeast-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DiskPressure                  node/ip-10-38-34-51.ap-southeast-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    PIDPressure                   node/ip-10-38-34-51.ap-southeast-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    Ready                         node/ip-10-38-34-51.ap-southeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DeletingNode                  node/ip-10-38-34-51.ap-southeast-1.compute.internal    Deleting node ip-10-38-34-51.ap-southeast-1.compute.internal because it does not exist in the cloud provider
19m         Normal    RemovingNode                  node/ip-10-38-34-51.ap-southeast-1.compute.internal    Node ip-10-38-34-51.ap-southeast-1.compute.internal event: Removing Node ip-10-38-34-51.ap-southeast-1.compute.internal from Controller
31m         Normal    Starting                      node/ip-10-38-35-0.ap-southeast-1.compute.internal     Starting kubelet.
31m         Warning   InvalidDiskCapacity           node/ip-10-38-35-0.ap-southeast-1.compute.internal     invalid capacity 0 on image filesystem
31m         Normal    NodeHasSufficientMemory       node/ip-10-38-35-0.ap-southeast-1.compute.internal     Node ip-10-38-35-0.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
31m         Normal    NodeHasNoDiskPressure         node/ip-10-38-35-0.ap-southeast-1.compute.internal     Node ip-10-38-35-0.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
31m         Normal    NodeHasSufficientPID          node/ip-10-38-35-0.ap-southeast-1.compute.internal     Node ip-10-38-35-0.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
31m         Normal    NodeAllocatableEnforced       node/ip-10-38-35-0.ap-southeast-1.compute.internal     Updated Node Allocatable limit across pods
31m         Normal    Synced                        node/ip-10-38-35-0.ap-southeast-1.compute.internal     Node synced successfully
31m         Normal    RegisteredNode                node/ip-10-38-35-0.ap-southeast-1.compute.internal     Node ip-10-38-35-0.ap-southeast-1.compute.internal event: Registered Node ip-10-38-35-0.ap-southeast-1.compute.internal in Controller
31m         Normal    Starting                      node/ip-10-38-35-0.ap-southeast-1.compute.internal     
31m         Normal    ControllerVersionNotice       node/ip-10-38-35-0.ap-southeast-1.compute.internal     The node is managed by VPC resource controller version v1.7.9
29m         Warning   Unsupported                   node/ip-10-38-35-0.ap-southeast-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
31m         Normal    NodeReady                     node/ip-10-38-35-0.ap-southeast-1.compute.internal     Node ip-10-38-35-0.ap-southeast-1.compute.internal status is now: NodeReady
31m         Normal    Ready                         node/ip-10-38-35-0.ap-southeast-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
29m         Normal    RegisteredNode                node/ip-10-38-35-0.ap-southeast-1.compute.internal     Node ip-10-38-35-0.ap-southeast-1.compute.internal event: Registered Node ip-10-38-35-0.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-35-0.ap-southeast-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
25m         Warning   Unsupported                   node/ip-10-38-35-0.ap-southeast-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
24m         Normal    RegisteredNode                node/ip-10-38-35-0.ap-southeast-1.compute.internal     Node ip-10-38-35-0.ap-southeast-1.compute.internal event: Registered Node ip-10-38-35-0.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-35-0.ap-southeast-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
39s         Warning   Unsupported                   node/ip-10-38-35-0.ap-southeast-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
27m         Normal    Starting                      node/ip-10-38-35-101.ap-southeast-1.compute.internal   Starting kubelet.
27m         Warning   InvalidDiskCapacity           node/ip-10-38-35-101.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory       node/ip-10-38-35-101.ap-southeast-1.compute.internal   Node ip-10-38-35-101.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure         node/ip-10-38-35-101.ap-southeast-1.compute.internal   Node ip-10-38-35-101.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID          node/ip-10-38-35-101.ap-southeast-1.compute.internal   Node ip-10-38-35-101.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced       node/ip-10-38-35-101.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
27m         Normal    Synced                        node/ip-10-38-35-101.ap-southeast-1.compute.internal   Node synced successfully
27m         Normal    RegisteredNode                node/ip-10-38-35-101.ap-southeast-1.compute.internal   Node ip-10-38-35-101.ap-southeast-1.compute.internal event: Registered Node ip-10-38-35-101.ap-southeast-1.compute.internal in Controller
27m         Normal    DisruptionBlocked             node/ip-10-38-35-101.ap-southeast-1.compute.internal   Node isn't initialized
27m         Normal    Starting                      node/ip-10-38-35-101.ap-southeast-1.compute.internal   
27m         Normal    ControllerVersionNotice       node/ip-10-38-35-101.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeReady                     node/ip-10-38-35-101.ap-southeast-1.compute.internal   Node ip-10-38-35-101.ap-southeast-1.compute.internal status is now: NodeReady
27m         Normal    Ready                         node/ip-10-38-35-101.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
27m         Normal    NodeTrunkInitiated            node/ip-10-38-35-101.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-38-35-101.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
24m         Normal    RegisteredNode                node/ip-10-38-35-101.ap-southeast-1.compute.internal   Node ip-10-38-35-101.ap-southeast-1.compute.internal event: Registered Node ip-10-38-35-101.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-35-101.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeTrunkInitiated            node/ip-10-38-35-101.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
17m         Normal    DisruptionBlocked             node/ip-10-38-35-101.ap-southeast-1.compute.internal   Node is nominated for a pending pod
15m         Normal    DisruptionBlocked             node/ip-10-38-35-101.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
33m         Normal    Unconsolidatable              node/ip-10-38-35-218.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
27m         Normal    DisruptionBlocked             node/ip-10-38-35-218.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
29m         Normal    RegisteredNode                node/ip-10-38-35-218.ap-southeast-1.compute.internal   Node ip-10-38-35-218.ap-southeast-1.compute.internal event: Registered Node ip-10-38-35-218.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-35-218.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-38-35-218.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    RegisteredNode                node/ip-10-38-35-218.ap-southeast-1.compute.internal   Node ip-10-38-35-218.ap-southeast-1.compute.internal event: Registered Node ip-10-38-35-218.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-35-218.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeTrunkInitiated            node/ip-10-38-35-218.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked             node/ip-10-38-35-218.ap-southeast-1.compute.internal   Not all pods would schedule, orb-fleet-backend-external/orb-fleet-backend-external-5c44dd8f6d-ghd5k => would schedule against uninitialized nodeclaim/main-amd64-zcvhx
15m         Normal    DisruptionBlocked             node/ip-10-38-35-218.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
17m         Normal    DisruptionTerminating         node/ip-10-38-35-218.ap-southeast-1.compute.internal   Disrupting Node: Drifted/Replace
17m         Warning   FailedDraining                node/ip-10-38-35-218.ap-southeast-1.compute.internal   Failed to drain node, 6 pods are waiting to be evicted
16m         Warning   InstanceTerminating           node/ip-10-38-35-218.ap-southeast-1.compute.internal   Instance is terminating
15m         Normal    NodeNotReady                  node/ip-10-38-35-218.ap-southeast-1.compute.internal   Node ip-10-38-35-218.ap-southeast-1.compute.internal status is now: NodeNotReady
15m         Normal    MemoryPressure                node/ip-10-38-35-218.ap-southeast-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DiskPressure                  node/ip-10-38-35-218.ap-southeast-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    PIDPressure                   node/ip-10-38-35-218.ap-southeast-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    Ready                         node/ip-10-38-35-218.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DeletingNode                  node/ip-10-38-35-218.ap-southeast-1.compute.internal   Deleting node ip-10-38-35-218.ap-southeast-1.compute.internal because it does not exist in the cloud provider
15m         Normal    RemovingNode                  node/ip-10-38-35-218.ap-southeast-1.compute.internal   Node ip-10-38-35-218.ap-southeast-1.compute.internal event: Removing Node ip-10-38-35-218.ap-southeast-1.compute.internal from Controller
21m         Normal    Starting                      node/ip-10-38-36-114.ap-southeast-1.compute.internal   Starting kubelet.
21m         Warning   InvalidDiskCapacity           node/ip-10-38-36-114.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
21m         Normal    NodeHasSufficientMemory       node/ip-10-38-36-114.ap-southeast-1.compute.internal   Node ip-10-38-36-114.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
21m         Normal    NodeHasNoDiskPressure         node/ip-10-38-36-114.ap-southeast-1.compute.internal   Node ip-10-38-36-114.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
21m         Normal    NodeHasSufficientPID          node/ip-10-38-36-114.ap-southeast-1.compute.internal   Node ip-10-38-36-114.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
21m         Normal    NodeAllocatableEnforced       node/ip-10-38-36-114.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
21m         Normal    Synced                        node/ip-10-38-36-114.ap-southeast-1.compute.internal   Node synced successfully
21m         Normal    DisruptionBlocked             node/ip-10-38-36-114.ap-southeast-1.compute.internal   Node isn't initialized
21m         Normal    RegisteredNode                node/ip-10-38-36-114.ap-southeast-1.compute.internal   Node ip-10-38-36-114.ap-southeast-1.compute.internal event: Registered Node ip-10-38-36-114.ap-southeast-1.compute.internal in Controller
21m         Normal    Starting                      node/ip-10-38-36-114.ap-southeast-1.compute.internal   
21m         Normal    ControllerVersionNotice       node/ip-10-38-36-114.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeReady                     node/ip-10-38-36-114.ap-southeast-1.compute.internal   Node ip-10-38-36-114.ap-southeast-1.compute.internal status is now: NodeReady
21m         Normal    NodeTrunkInitiated            node/ip-10-38-36-114.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
17m         Normal    DisruptionBlocked             node/ip-10-38-36-114.ap-southeast-1.compute.internal   Node is nominated for a pending pod
39m         Normal    Unconsolidatable              node/ip-10-38-36-248.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    RegisteredNode                node/ip-10-38-36-248.ap-southeast-1.compute.internal   Node ip-10-38-36-248.ap-southeast-1.compute.internal event: Registered Node ip-10-38-36-248.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-36-248.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-38-36-248.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked             node/ip-10-38-36-248.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
24m         Normal    RegisteredNode                node/ip-10-38-36-248.ap-southeast-1.compute.internal   Node ip-10-38-36-248.ap-southeast-1.compute.internal event: Registered Node ip-10-38-36-248.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-36-248.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeTrunkInitiated            node/ip-10-38-36-248.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    DisruptionTerminating         node/ip-10-38-36-248.ap-southeast-1.compute.internal   Disrupting Node: Drifted/Replace
24m         Warning   FailedDraining                node/ip-10-38-36-248.ap-southeast-1.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
23m         Warning   InstanceTerminating           node/ip-10-38-36-248.ap-southeast-1.compute.internal   Instance is terminating
22m         Normal    NodeNotReady                  node/ip-10-38-36-248.ap-southeast-1.compute.internal   Node ip-10-38-36-248.ap-southeast-1.compute.internal status is now: NodeNotReady
22m         Normal    MemoryPressure                node/ip-10-38-36-248.ap-southeast-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure                  node/ip-10-38-36-248.ap-southeast-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure                   node/ip-10-38-36-248.ap-southeast-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                         node/ip-10-38-36-248.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    RemovingNode                  node/ip-10-38-36-248.ap-southeast-1.compute.internal   Node ip-10-38-36-248.ap-southeast-1.compute.internal event: Removing Node ip-10-38-36-248.ap-southeast-1.compute.internal from Controller
39m         Normal    Unconsolidatable              node/ip-10-38-36-26.ap-southeast-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
31m         Normal    DisruptionBlocked             node/ip-10-38-36-26.ap-southeast-1.compute.internal    Node is deleting or marked for deletion
31m         Normal    DisruptionTerminating         node/ip-10-38-36-26.ap-southeast-1.compute.internal    Disrupting Node: Underutilized/Delete
31m         Warning   FailedDraining                node/ip-10-38-36-26.ap-southeast-1.compute.internal    Failed to drain node, 3 pods are waiting to be evicted
30m         Warning   InstanceTerminating           node/ip-10-38-36-26.ap-southeast-1.compute.internal    Instance is terminating
30m         Normal    RemovingNode                  node/ip-10-38-36-26.ap-southeast-1.compute.internal    Node ip-10-38-36-26.ap-southeast-1.compute.internal event: Removing Node ip-10-38-36-26.ap-southeast-1.compute.internal from Controller
30m         Normal    Starting                      node/ip-10-38-36-8.ap-southeast-1.compute.internal     Starting kubelet.
30m         Warning   InvalidDiskCapacity           node/ip-10-38-36-8.ap-southeast-1.compute.internal     invalid capacity 0 on image filesystem
30m         Normal    NodeHasSufficientMemory       node/ip-10-38-36-8.ap-southeast-1.compute.internal     Node ip-10-38-36-8.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
30m         Normal    NodeHasNoDiskPressure         node/ip-10-38-36-8.ap-southeast-1.compute.internal     Node ip-10-38-36-8.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
30m         Normal    NodeHasSufficientPID          node/ip-10-38-36-8.ap-southeast-1.compute.internal     Node ip-10-38-36-8.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
30m         Normal    NodeAllocatableEnforced       node/ip-10-38-36-8.ap-southeast-1.compute.internal     Updated Node Allocatable limit across pods
30m         Normal    Synced                        node/ip-10-38-36-8.ap-southeast-1.compute.internal     Node synced successfully
30m         Normal    RegisteredNode                node/ip-10-38-36-8.ap-southeast-1.compute.internal     Node ip-10-38-36-8.ap-southeast-1.compute.internal event: Registered Node ip-10-38-36-8.ap-southeast-1.compute.internal in Controller
30m         Normal    Starting                      node/ip-10-38-36-8.ap-southeast-1.compute.internal     
30m         Normal    ControllerVersionNotice       node/ip-10-38-36-8.ap-southeast-1.compute.internal     The node is managed by VPC resource controller version v1.7.9
29m         Warning   Unsupported                   node/ip-10-38-36-8.ap-southeast-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
30m         Normal    NodeReady                     node/ip-10-38-36-8.ap-southeast-1.compute.internal     Node ip-10-38-36-8.ap-southeast-1.compute.internal status is now: NodeReady
30m         Normal    Ready                         node/ip-10-38-36-8.ap-southeast-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
29m         Normal    RegisteredNode                node/ip-10-38-36-8.ap-southeast-1.compute.internal     Node ip-10-38-36-8.ap-southeast-1.compute.internal event: Registered Node ip-10-38-36-8.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-36-8.ap-southeast-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
24m         Warning   Unsupported                   node/ip-10-38-36-8.ap-southeast-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
24m         Normal    RegisteredNode                node/ip-10-38-36-8.ap-southeast-1.compute.internal     Node ip-10-38-36-8.ap-southeast-1.compute.internal event: Registered Node ip-10-38-36-8.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-36-8.ap-southeast-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
2m25s       Warning   Unsupported                   node/ip-10-38-36-8.ap-southeast-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
15m         Normal    Starting                      node/ip-10-38-36-93.ap-southeast-1.compute.internal    Starting kubelet.
15m         Warning   InvalidDiskCapacity           node/ip-10-38-36-93.ap-southeast-1.compute.internal    invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory       node/ip-10-38-36-93.ap-southeast-1.compute.internal    Node ip-10-38-36-93.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure         node/ip-10-38-36-93.ap-southeast-1.compute.internal    Node ip-10-38-36-93.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID          node/ip-10-38-36-93.ap-southeast-1.compute.internal    Node ip-10-38-36-93.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced       node/ip-10-38-36-93.ap-southeast-1.compute.internal    Updated Node Allocatable limit across pods
15m         Normal    Synced                        node/ip-10-38-36-93.ap-southeast-1.compute.internal    Node synced successfully
15m         Normal    DisruptionBlocked             node/ip-10-38-36-93.ap-southeast-1.compute.internal    Node isn't initialized
15m         Normal    RegisteredNode                node/ip-10-38-36-93.ap-southeast-1.compute.internal    Node ip-10-38-36-93.ap-southeast-1.compute.internal event: Registered Node ip-10-38-36-93.ap-southeast-1.compute.internal in Controller
15m         Normal    Starting                      node/ip-10-38-36-93.ap-southeast-1.compute.internal    
15m         Normal    ControllerVersionNotice       node/ip-10-38-36-93.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
15m         Normal    NodeReady                     node/ip-10-38-36-93.ap-southeast-1.compute.internal    Node ip-10-38-36-93.ap-southeast-1.compute.internal status is now: NodeReady
15m         Normal    Ready                         node/ip-10-38-36-93.ap-southeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    NodeTrunkInitiated            node/ip-10-38-36-93.ap-southeast-1.compute.internal    The node has trunk interface initialized successfully
25m         Normal    Starting                      node/ip-10-38-37-151.ap-southeast-1.compute.internal   Starting kubelet.
25m         Warning   InvalidDiskCapacity           node/ip-10-38-37-151.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
25m         Normal    NodeHasSufficientMemory       node/ip-10-38-37-151.ap-southeast-1.compute.internal   Node ip-10-38-37-151.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
25m         Normal    NodeHasNoDiskPressure         node/ip-10-38-37-151.ap-southeast-1.compute.internal   Node ip-10-38-37-151.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
25m         Normal    NodeHasSufficientPID          node/ip-10-38-37-151.ap-southeast-1.compute.internal   Node ip-10-38-37-151.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
25m         Normal    NodeAllocatableEnforced       node/ip-10-38-37-151.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
25m         Normal    Synced                        node/ip-10-38-37-151.ap-southeast-1.compute.internal   Node synced successfully
25m         Normal    RegisteredNode                node/ip-10-38-37-151.ap-southeast-1.compute.internal   Node ip-10-38-37-151.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-151.ap-southeast-1.compute.internal in Controller
25m         Normal    Starting                      node/ip-10-38-37-151.ap-southeast-1.compute.internal   
25m         Normal    ControllerVersionNotice       node/ip-10-38-37-151.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
25m         Normal    NodeReady                     node/ip-10-38-37-151.ap-southeast-1.compute.internal   Node ip-10-38-37-151.ap-southeast-1.compute.internal status is now: NodeReady
25m         Normal    NodeTrunkInitiated            node/ip-10-38-37-151.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-38-37-151.ap-southeast-1.compute.internal   Node is nominated for a pending pod
24m         Normal    RegisteredNode                node/ip-10-38-37-151.ap-southeast-1.compute.internal   Node ip-10-38-37-151.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-151.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-37-151.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeTrunkInitiated            node/ip-10-38-37-151.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked             node/ip-10-38-37-151.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-pdb)
20m         Normal    DisruptionBlocked             node/ip-10-38-37-151.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
18m         Normal    DisruptionBlocked             node/ip-10-38-37-151.ap-southeast-1.compute.internal   Node is nominated for a pending pod
3m52s       Normal    Unconsolidatable              node/ip-10-38-37-151.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
39m         Normal    Unconsolidatable              node/ip-10-38-37-154.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
27m         Normal    DisruptionBlocked             node/ip-10-38-37-154.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
29m         Normal    RegisteredNode                node/ip-10-38-37-154.ap-southeast-1.compute.internal   Node ip-10-38-37-154.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-154.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-37-154.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-38-37-154.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-38-37-154.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
25m         Normal    DisruptionTerminating         node/ip-10-38-37-154.ap-southeast-1.compute.internal   Disrupting Node: Drifted/Delete
25m         Warning   FailedDraining                node/ip-10-38-37-154.ap-southeast-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
24m         Warning   InstanceTerminating           node/ip-10-38-37-154.ap-southeast-1.compute.internal   Instance is terminating
24m         Normal    RegisteredNode                node/ip-10-38-37-154.ap-southeast-1.compute.internal   Node ip-10-38-37-154.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-154.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-37-154.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeTrunkInitiated            node/ip-10-38-37-154.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
23m         Normal    RemovingNode                  node/ip-10-38-37-154.ap-southeast-1.compute.internal   Node ip-10-38-37-154.ap-southeast-1.compute.internal event: Removing Node ip-10-38-37-154.ap-southeast-1.compute.internal from Controller
24m         Normal    Starting                      node/ip-10-38-37-182.ap-southeast-1.compute.internal   Starting kubelet.
24m         Warning   InvalidDiskCapacity           node/ip-10-38-37-182.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
24m         Normal    NodeHasSufficientMemory       node/ip-10-38-37-182.ap-southeast-1.compute.internal   Node ip-10-38-37-182.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
24m         Normal    NodeHasNoDiskPressure         node/ip-10-38-37-182.ap-southeast-1.compute.internal   Node ip-10-38-37-182.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
24m         Normal    NodeHasSufficientPID          node/ip-10-38-37-182.ap-southeast-1.compute.internal   Node ip-10-38-37-182.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
24m         Normal    NodeAllocatableEnforced       node/ip-10-38-37-182.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
24m         Normal    Synced                        node/ip-10-38-37-182.ap-southeast-1.compute.internal   Node synced successfully
24m         Normal    RegisteredNode                node/ip-10-38-37-182.ap-southeast-1.compute.internal   Node ip-10-38-37-182.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-182.ap-southeast-1.compute.internal in Controller
24m         Normal    DisruptionBlocked             node/ip-10-38-37-182.ap-southeast-1.compute.internal   Node isn't initialized
24m         Normal    Starting                      node/ip-10-38-37-182.ap-southeast-1.compute.internal   
24m         Normal    ControllerVersionNotice       node/ip-10-38-37-182.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeReady                     node/ip-10-38-37-182.ap-southeast-1.compute.internal   Node ip-10-38-37-182.ap-southeast-1.compute.internal status is now: NodeReady
24m         Normal    Ready                         node/ip-10-38-37-182.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
24m         Normal    NodeTrunkInitiated            node/ip-10-38-37-182.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
29m         Warning   Unsupported                   node/ip-10-38-37-215.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
29m         Normal    RegisteredNode                node/ip-10-38-37-215.ap-southeast-1.compute.internal   Node ip-10-38-37-215.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-215.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-37-215.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Warning   Unsupported                   node/ip-10-38-37-215.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    NodeNotSchedulable            node/ip-10-38-37-215.ap-southeast-1.compute.internal   Node ip-10-38-37-215.ap-southeast-1.compute.internal status is now: NodeNotSchedulable
24m         Normal    RegisteredNode                node/ip-10-38-37-215.ap-southeast-1.compute.internal   Node ip-10-38-37-215.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-215.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-37-215.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Warning   Unsupported                   node/ip-10-38-37-215.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
22m         Normal    NodeNotReady                  node/ip-10-38-37-215.ap-southeast-1.compute.internal   Node ip-10-38-37-215.ap-southeast-1.compute.internal status is now: NodeNotReady
22m         Normal    MemoryPressure                node/ip-10-38-37-215.ap-southeast-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure                  node/ip-10-38-37-215.ap-southeast-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure                   node/ip-10-38-37-215.ap-southeast-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                         node/ip-10-38-37-215.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DeletingNode                  node/ip-10-38-37-215.ap-southeast-1.compute.internal   Deleting node ip-10-38-37-215.ap-southeast-1.compute.internal because it does not exist in the cloud provider
22m         Normal    RemovingNode                  node/ip-10-38-37-215.ap-southeast-1.compute.internal   Node ip-10-38-37-215.ap-southeast-1.compute.internal event: Removing Node ip-10-38-37-215.ap-southeast-1.compute.internal from Controller
27m         Normal    Starting                      node/ip-10-38-37-235.ap-southeast-1.compute.internal   Starting kubelet.
27m         Warning   InvalidDiskCapacity           node/ip-10-38-37-235.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory       node/ip-10-38-37-235.ap-southeast-1.compute.internal   Node ip-10-38-37-235.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure         node/ip-10-38-37-235.ap-southeast-1.compute.internal   Node ip-10-38-37-235.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID          node/ip-10-38-37-235.ap-southeast-1.compute.internal   Node ip-10-38-37-235.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced       node/ip-10-38-37-235.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
27m         Normal    Synced                        node/ip-10-38-37-235.ap-southeast-1.compute.internal   Node synced successfully
27m         Normal    DisruptionBlocked             node/ip-10-38-37-235.ap-southeast-1.compute.internal   Node isn't initialized
27m         Normal    RegisteredNode                node/ip-10-38-37-235.ap-southeast-1.compute.internal   Node ip-10-38-37-235.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-235.ap-southeast-1.compute.internal in Controller
27m         Normal    Starting                      node/ip-10-38-37-235.ap-southeast-1.compute.internal   
27m         Normal    ControllerVersionNotice       node/ip-10-38-37-235.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeReady                     node/ip-10-38-37-235.ap-southeast-1.compute.internal   Node ip-10-38-37-235.ap-southeast-1.compute.internal status is now: NodeReady
27m         Normal    Ready                         node/ip-10-38-37-235.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
27m         Normal    NodeTrunkInitiated            node/ip-10-38-37-235.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    RegisteredNode                node/ip-10-38-37-235.ap-southeast-1.compute.internal   Node ip-10-38-37-235.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-235.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-37-235.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeTrunkInitiated            node/ip-10-38-37-235.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
18m         Normal    DisruptionBlocked             node/ip-10-38-37-235.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kyverno/kyverno-admission-controller)
31m         Normal    Starting                      node/ip-10-38-37-45.ap-southeast-1.compute.internal    Starting kubelet.
31m         Warning   InvalidDiskCapacity           node/ip-10-38-37-45.ap-southeast-1.compute.internal    invalid capacity 0 on image filesystem
31m         Normal    NodeHasSufficientMemory       node/ip-10-38-37-45.ap-southeast-1.compute.internal    Node ip-10-38-37-45.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
31m         Normal    NodeHasNoDiskPressure         node/ip-10-38-37-45.ap-southeast-1.compute.internal    Node ip-10-38-37-45.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
31m         Normal    NodeHasSufficientPID          node/ip-10-38-37-45.ap-southeast-1.compute.internal    Node ip-10-38-37-45.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
31m         Normal    NodeAllocatableEnforced       node/ip-10-38-37-45.ap-southeast-1.compute.internal    Updated Node Allocatable limit across pods
31m         Normal    Synced                        node/ip-10-38-37-45.ap-southeast-1.compute.internal    Node synced successfully
31m         Normal    RegisteredNode                node/ip-10-38-37-45.ap-southeast-1.compute.internal    Node ip-10-38-37-45.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-45.ap-southeast-1.compute.internal in Controller
31m         Normal    DisruptionBlocked             node/ip-10-38-37-45.ap-southeast-1.compute.internal    Node isn't initialized
31m         Normal    Starting                      node/ip-10-38-37-45.ap-southeast-1.compute.internal    
31m         Normal    ControllerVersionNotice       node/ip-10-38-37-45.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
31m         Normal    NodeReady                     node/ip-10-38-37-45.ap-southeast-1.compute.internal    Node ip-10-38-37-45.ap-southeast-1.compute.internal status is now: NodeReady
31m         Normal    Ready                         node/ip-10-38-37-45.ap-southeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
31m         Normal    NodeTrunkInitiated            node/ip-10-38-37-45.ap-southeast-1.compute.internal    The node has trunk interface initialized successfully
29m         Normal    RegisteredNode                node/ip-10-38-37-45.ap-southeast-1.compute.internal    Node ip-10-38-37-45.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-45.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-37-45.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-38-37-45.ap-southeast-1.compute.internal    The node has trunk interface initialized successfully
27m         Normal    DisruptionBlocked             node/ip-10-38-37-45.ap-southeast-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
25m         Normal    DisruptionBlocked             node/ip-10-38-37-45.ap-southeast-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
24m         Normal    RegisteredNode                node/ip-10-38-37-45.ap-southeast-1.compute.internal    Node ip-10-38-37-45.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-45.ap-southeast-1.compute.internal in Controller
24m         Normal    ControllerVersionNotice       node/ip-10-38-37-45.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeTrunkInitiated            node/ip-10-38-37-45.ap-southeast-1.compute.internal    The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked             node/ip-10-38-37-45.ap-southeast-1.compute.internal    Node is deleting or marked for deletion
21m         Normal    DisruptionBlocked             node/ip-10-38-37-45.ap-southeast-1.compute.internal    Not all pods would schedule, orb-fleet-backend-internal/orb-fleet-backend-internal-6f8cdbcb55-8n8hn => would schedule against uninitialized nodeclaim/main-amd64-zcvhx
14m         Normal    DisruptionBlocked             node/ip-10-38-37-45.ap-southeast-1.compute.internal    Node is deleting or marked for deletion
15m         Normal    DisruptionTerminating         node/ip-10-38-37-45.ap-southeast-1.compute.internal    Disrupting Node: Drifted/Replace
15m         Warning   FailedDraining                node/ip-10-38-37-45.ap-southeast-1.compute.internal    Failed to drain node, 4 pods are waiting to be evicted
14m         Warning   InstanceTerminating           node/ip-10-38-37-45.ap-southeast-1.compute.internal    Instance is terminating
13m         Normal    RemovingNode                  node/ip-10-38-37-45.ap-southeast-1.compute.internal    Node ip-10-38-37-45.ap-southeast-1.compute.internal event: Removing Node ip-10-38-37-45.ap-southeast-1.compute.internal from Controller
23m         Normal    Starting                      node/ip-10-38-37-50.ap-southeast-1.compute.internal    Starting kubelet.
23m         Warning   InvalidDiskCapacity           node/ip-10-38-37-50.ap-southeast-1.compute.internal    invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory       node/ip-10-38-37-50.ap-southeast-1.compute.internal    Node ip-10-38-37-50.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure         node/ip-10-38-37-50.ap-southeast-1.compute.internal    Node ip-10-38-37-50.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID          node/ip-10-38-37-50.ap-southeast-1.compute.internal    Node ip-10-38-37-50.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced       node/ip-10-38-37-50.ap-southeast-1.compute.internal    Updated Node Allocatable limit across pods
23m         Normal    Synced                        node/ip-10-38-37-50.ap-southeast-1.compute.internal    Node synced successfully
23m         Normal    RegisteredNode                node/ip-10-38-37-50.ap-southeast-1.compute.internal    Node ip-10-38-37-50.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-50.ap-southeast-1.compute.internal in Controller
23m         Normal    DisruptionBlocked             node/ip-10-38-37-50.ap-southeast-1.compute.internal    Node isn't initialized
23m         Normal    Starting                      node/ip-10-38-37-50.ap-southeast-1.compute.internal    
23m         Normal    ControllerVersionNotice       node/ip-10-38-37-50.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeReady                     node/ip-10-38-37-50.ap-southeast-1.compute.internal    Node ip-10-38-37-50.ap-southeast-1.compute.internal status is now: NodeReady
23m         Normal    Ready                         node/ip-10-38-37-50.ap-southeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    NodeTrunkInitiated            node/ip-10-38-37-50.ap-southeast-1.compute.internal    The node has trunk interface initialized successfully
18m         Normal    DisruptionBlocked             node/ip-10-38-37-50.ap-southeast-1.compute.internal    Node is nominated for a pending pod
33m         Normal    Unconsolidatable              node/ip-10-38-37-75.ap-southeast-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
31m         Normal    DisruptionBlocked             node/ip-10-38-37-75.ap-southeast-1.compute.internal    Node is nominated for a pending pod
29m         Normal    RegisteredNode                node/ip-10-38-37-75.ap-southeast-1.compute.internal    Node ip-10-38-37-75.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-75.ap-southeast-1.compute.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-38-37-75.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-38-37-75.ap-southeast-1.compute.internal    The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-38-37-75.ap-southeast-1.compute.internal    Node is deleting or marked for deletion
27m         Normal    DisruptionTerminating         node/ip-10-38-37-75.ap-southeast-1.compute.internal    Disrupting Node: Drifted/Replace
27m         Warning   FailedDraining                node/ip-10-38-37-75.ap-southeast-1.compute.internal    Failed to drain node, 4 pods are waiting to be evicted
26m         Warning   InstanceTerminating           node/ip-10-38-37-75.ap-southeast-1.compute.internal    Instance is terminating
25m         Normal    NodeNotReady                  node/ip-10-38-37-75.ap-southeast-1.compute.internal    Node ip-10-38-37-75.ap-southeast-1.compute.internal status is now: NodeNotReady
25m         Normal    MemoryPressure                node/ip-10-38-37-75.ap-southeast-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    DiskPressure                  node/ip-10-38-37-75.ap-southeast-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    PIDPressure                   node/ip-10-38-37-75.ap-southeast-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    Ready                         node/ip-10-38-37-75.ap-southeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    RemovingNode                  node/ip-10-38-37-75.ap-southeast-1.compute.internal    Node ip-10-38-37-75.ap-southeast-1.compute.internal event: Removing Node ip-10-38-37-75.ap-southeast-1.compute.internal from Controller
15m         Normal    Starting                      node/ip-10-38-37-97.ap-southeast-1.compute.internal    Starting kubelet.
15m         Warning   InvalidDiskCapacity           node/ip-10-38-37-97.ap-southeast-1.compute.internal    invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory       node/ip-10-38-37-97.ap-southeast-1.compute.internal    Node ip-10-38-37-97.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure         node/ip-10-38-37-97.ap-southeast-1.compute.internal    Node ip-10-38-37-97.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID          node/ip-10-38-37-97.ap-southeast-1.compute.internal    Node ip-10-38-37-97.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced       node/ip-10-38-37-97.ap-southeast-1.compute.internal    Updated Node Allocatable limit across pods
15m         Normal    Synced                        node/ip-10-38-37-97.ap-southeast-1.compute.internal    Node synced successfully
15m         Normal    DisruptionBlocked             node/ip-10-38-37-97.ap-southeast-1.compute.internal    Node isn't initialized
15m         Normal    RegisteredNode                node/ip-10-38-37-97.ap-southeast-1.compute.internal    Node ip-10-38-37-97.ap-southeast-1.compute.internal event: Registered Node ip-10-38-37-97.ap-southeast-1.compute.internal in Controller
15m         Normal    Starting                      node/ip-10-38-37-97.ap-southeast-1.compute.internal    
15m         Normal    ControllerVersionNotice       node/ip-10-38-37-97.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
15m         Normal    NodeReady                     node/ip-10-38-37-97.ap-southeast-1.compute.internal    Node ip-10-38-37-97.ap-southeast-1.compute.internal status is now: NodeReady
15m         Normal    Ready                         node/ip-10-38-37-97.ap-southeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    NodeTrunkInitiated            node/ip-10-38-37-97.ap-southeast-1.compute.internal    The node has trunk interface initialized successfully
13m         Normal    DisruptionBlocked             node/ip-10-38-37-97.ap-southeast-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
```

Pods with issues
```
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-cm979                               0/1     CreateContainerConfigError   0             18m
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-pvshl                               0/1     CreateContainerConfigError   0             15m
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
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     279d
orb-fleet-backend-internal            orb-fleet-backend-internal-pdb            N/A             1                 1                     279d
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

Generated on: Tue Sep 23 14:10:00 CEST 2025
