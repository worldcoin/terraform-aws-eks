# Cluster recon for tfh-df-enclave-prod-infra,us-east-1,df-enclave-prod-us-east-1,tunnel-vpc-df-enclave-prod-us-east-1

TFH EKS login...
```console
2025/09/22 18:20:48 INFO Logging into AWS
2025/09/22 18:20:48 INFO Token not found or expired error="no valid token found"
2025/09/22 18:20:48 INFO Attempting to automatically open the SSO authorization page in your default browser...
2025/09/22 18:21:04 INFO Token found and valid
2025/09/22 18:21:07 INFO Switch WARP Virtual Network to name=tunnel-vpc-df-enclave-prod-us-east-1 id=e0b8b81a-9cf4-4c72-b234-835a53089960
2025/09/22 18:21:08 INFO Active WARP Virtual Network id=e0b8b81a-9cf4-4c72-b234-835a53089960
Updated context tfh-df-enclave-prod-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "df-enclave-prod-us-east-1",
        "arn": "arn:aws:eks:us-east-1:222575009994:cluster/df-enclave-prod-us-east-1",
        "createdAt": "2025-09-05T12:47:39.977000+02:00",
        "version": "1.33",
        "endpoint": "https://D1821315A7FD2DDEBE821881D7B5C84D.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::222575009994:role/eks-cluster-df-enclave-prod-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0559f69a6b03032b2",
                "subnet-0e22b635e29dd2432",
                "subnet-0621318747f2cccab"
            ],
            "securityGroupIds": [
                "sg-063ff219a5c2ad250"
            ],
            "clusterSecurityGroupId": "sg-08da726f7f91fa67c",
            "vpcId": "vpc-088f5089b8919d23f",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/D1821315A7FD2DDEBE821881D7B5C84D"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJZVNmSUFRUm9qK013RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBNU1EVXhNRFEzTkRaYUZ3MHpOVEE1TURNeE1EVXlORFphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURpbkxVZkxYMTBEVDYzQ2w4ZTZzWERmaG9DeFRTVGd2WEYzbzBYSDJSLzBjVjlqeWNNTTBSdVRzQlYKM3ExVFplUjlOdW1XSHBPY2VWRENCeG1tWGgwcVZtbldUWXRXRGxNYm1VYlpJdVNOUXJDbUtteUF0dnZpaEEvTApLbnFDK2RQT1MyZWwxNm9XWWp2QlV5LzlSVHR2QXdRelZobFdmb08wZU1XdGdUZElUREI3cWZ4OSsxd2xWang0CjFVdEh4UnZLMTdkNW1VcUVUUkZ1VTVPN1V5bWo5QzZXenpOV3VuUnJXUWVadlJXOVhuTWZoV2Y0eUd5U0VPTG4KMithVEltNWdaYjBGU0YzYjNBKzZPS3BOU2hNdWpaaFRxZ3RRRitRVWM5REY2T25mL1ZCT0xSZWx5MTdjR3RWWQpOY0p6VUlVc25EVFo1NVE4dUZiVW9YanFRZ1VUQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJTeE52LzA1WmEwZENuUUJQQWxXNllnVDRXVCtqQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQ1lXNmZCZzB6QQp4aDdkTXU2Z0V3amZQYWJiZXo5VHV2MkVhcWE1SzlBSUNVeUN2ZFI2NGljNzZuTnllTUdzL0JyZStSNWlrYWhWCndVMlBYQWpZY2tzQ0ZoR1dhTnNyNkMwNTZTZG5mUFdER0d3R25ieDVYMDJVZm9mUDIxWjZqNGRieTVUdHE5QlMKVm5RWDd1SGovV2QvNnVnU2Y2ZVZ4SXczbVprcjNLVTNzS3pSTHBXNW9jdUhCbUNuQ3RFWGxTa2s5S25obzZIRQpQWjRWdWI5b1RPdkJ0NjdKbXhLOGs2NVFNSmNoRDhpUXNWWS9pRmcrbUtUWk1wdnp1T202NU1pdGVCWGpUSW1yCmxVUkVuQVRuY3Y3VU5KVytxaFEvS2s5a0I4eURaMUkyUTc5SlNGWmtMY21uYTRwK1IzZEQvRkNkMXpEVDRFLzcKVld1dEY0T3ZIbm1mCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "df-enclave-prod-us-east-1",
            "Team": "df-enclave",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:222575009994:key/a57f15d9-69e0-4029-b42a-c17b3d719236"
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
ip-10-0-112-179.ec2.internal   Ready    <none>   34m   v1.33.4-eks-99d6cc0   10.0.112.179   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-112-47.ec2.internal    Ready    <none>   32m   v1.33.4-eks-99d6cc0   10.0.112.47    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-114-130.ec2.internal   Ready    <none>   37m   v1.33.4-eks-99d6cc0   10.0.114.130   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-df-enclave-prod-us-east-1
ip-10-0-116-183.ec2.internal   Ready    <none>   39m   v1.33.4-eks-99d6cc0   10.0.116.183   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-df-enclave-prod-us-east-1
ip-10-0-117-112.ec2.internal   Ready    <none>   32m   v1.33.4-eks-99d6cc0   10.0.117.112   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                           STATUS   ROLES    TAINTS
ip-10-0-112-179.ec2.internal   Ready    <none>   <none>
ip-10-0-112-47.ec2.internal    Ready    <none>   <none>
ip-10-0-114-130.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-116-183.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-117-112.ec2.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                              MESSAGE
30m         Normal    Finalized                     node                                Finalized karpenter.sh/termination
18m         Normal    Finalized                     node                                Finalized karpenter.sh/termination
38m         Warning   Unsupported                   node/ip-10-0-112-107.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
37m         Normal    RegisteredNode                node/ip-10-0-112-107.ec2.internal   Node ip-10-0-112-107.ec2.internal event: Registered Node ip-10-0-112-107.ec2.internal in Controller
37m         Normal    ControllerVersionNotice       node/ip-10-0-112-107.ec2.internal   The node is managed by VPC resource controller version v1.7.11
32m         Warning   Unsupported                   node/ip-10-0-112-107.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
35m         Normal    NodeNotSchedulable            node/ip-10-0-112-107.ec2.internal   Node ip-10-0-112-107.ec2.internal status is now: NodeNotSchedulable
32m         Normal    NodeNotReady                  node/ip-10-0-112-107.ec2.internal   Node ip-10-0-112-107.ec2.internal status is now: NodeNotReady
32m         Normal    MemoryPressure                node/ip-10-0-112-107.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
32m         Normal    DiskPressure                  node/ip-10-0-112-107.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
32m         Normal    PIDPressure                   node/ip-10-0-112-107.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
32m         Normal    Ready                         node/ip-10-0-112-107.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
32m         Normal    DeletingNode                  node/ip-10-0-112-107.ec2.internal   Deleting node ip-10-0-112-107.ec2.internal because it does not exist in the cloud provider
32m         Normal    RemovingNode                  node/ip-10-0-112-107.ec2.internal   Node ip-10-0-112-107.ec2.internal event: Removing Node ip-10-0-112-107.ec2.internal from Controller
34m         Normal    Starting                      node/ip-10-0-112-179.ec2.internal   Starting kubelet.
34m         Warning   InvalidDiskCapacity           node/ip-10-0-112-179.ec2.internal   invalid capacity 0 on image filesystem
34m         Normal    NodeHasSufficientMemory       node/ip-10-0-112-179.ec2.internal   Node ip-10-0-112-179.ec2.internal status is now: NodeHasSufficientMemory
34m         Normal    NodeHasNoDiskPressure         node/ip-10-0-112-179.ec2.internal   Node ip-10-0-112-179.ec2.internal status is now: NodeHasNoDiskPressure
34m         Normal    NodeHasSufficientPID          node/ip-10-0-112-179.ec2.internal   Node ip-10-0-112-179.ec2.internal status is now: NodeHasSufficientPID
34m         Normal    NodeAllocatableEnforced       node/ip-10-0-112-179.ec2.internal   Updated Node Allocatable limit across pods
34m         Normal    Synced                        node/ip-10-0-112-179.ec2.internal   Node synced successfully
34m         Normal    RegisteredNode                node/ip-10-0-112-179.ec2.internal   Node ip-10-0-112-179.ec2.internal event: Registered Node ip-10-0-112-179.ec2.internal in Controller
34m         Normal    Starting                      node/ip-10-0-112-179.ec2.internal   
34m         Normal    DisruptionBlocked             node/ip-10-0-112-179.ec2.internal   Node isn't initialized
34m         Normal    ControllerVersionNotice       node/ip-10-0-112-179.ec2.internal   The node is managed by VPC resource controller version v1.7.11
34m         Normal    NodeReady                     node/ip-10-0-112-179.ec2.internal   Node ip-10-0-112-179.ec2.internal status is now: NodeReady
34m         Normal    Ready                         node/ip-10-0-112-179.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
34m         Normal    NodeTrunkInitiated            node/ip-10-0-112-179.ec2.internal   The node has trunk interface initialized successfully
31m         Normal    DisruptionBlocked             node/ip-10-0-112-179.ec2.internal   Node is nominated for a pending pod
20m         Normal    DisruptionBlocked             node/ip-10-0-112-179.ec2.internal   Node is nominated for a pending pod
5m7s        Normal    Unconsolidatable              node/ip-10-0-112-179.ec2.internal   Can't remove without creating 2 candidates
36m         Normal    Starting                      node/ip-10-0-112-189.ec2.internal   Starting kubelet.
36m         Warning   InvalidDiskCapacity           node/ip-10-0-112-189.ec2.internal   invalid capacity 0 on image filesystem
36m         Normal    NodeHasSufficientMemory       node/ip-10-0-112-189.ec2.internal   Node ip-10-0-112-189.ec2.internal status is now: NodeHasSufficientMemory
36m         Normal    NodeHasNoDiskPressure         node/ip-10-0-112-189.ec2.internal   Node ip-10-0-112-189.ec2.internal status is now: NodeHasNoDiskPressure
36m         Normal    NodeHasSufficientPID          node/ip-10-0-112-189.ec2.internal   Node ip-10-0-112-189.ec2.internal status is now: NodeHasSufficientPID
36m         Normal    NodeAllocatableEnforced       node/ip-10-0-112-189.ec2.internal   Updated Node Allocatable limit across pods
36m         Normal    Synced                        node/ip-10-0-112-189.ec2.internal   Node synced successfully
36m         Normal    RegisteredNode                node/ip-10-0-112-189.ec2.internal   Node ip-10-0-112-189.ec2.internal event: Registered Node ip-10-0-112-189.ec2.internal in Controller
36m         Normal    Starting                      node/ip-10-0-112-189.ec2.internal   
36m         Normal    ControllerVersionNotice       node/ip-10-0-112-189.ec2.internal   The node is managed by VPC resource controller version v1.7.11
23m         Warning   Unsupported                   node/ip-10-0-112-189.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
36m         Normal    NodeReady                     node/ip-10-0-112-189.ec2.internal   Node ip-10-0-112-189.ec2.internal status is now: NodeReady
36m         Normal    Ready                         node/ip-10-0-112-189.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
25m         Normal    NodeNotSchedulable            node/ip-10-0-112-189.ec2.internal   Node ip-10-0-112-189.ec2.internal status is now: NodeNotSchedulable
23m         Normal    NodeNotReady                  node/ip-10-0-112-189.ec2.internal   Node ip-10-0-112-189.ec2.internal status is now: NodeNotReady
23m         Normal    MemoryPressure                node/ip-10-0-112-189.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    DiskPressure                  node/ip-10-0-112-189.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    PIDPressure                   node/ip-10-0-112-189.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    Ready                         node/ip-10-0-112-189.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    DeletingNode                  node/ip-10-0-112-189.ec2.internal   Deleting node ip-10-0-112-189.ec2.internal because it does not exist in the cloud provider
23m         Normal    RemovingNode                  node/ip-10-0-112-189.ec2.internal   Node ip-10-0-112-189.ec2.internal event: Removing Node ip-10-0-112-189.ec2.internal from Controller
37m         Normal    RegisteredNode                node/ip-10-0-112-22.ec2.internal    Node ip-10-0-112-22.ec2.internal event: Registered Node ip-10-0-112-22.ec2.internal in Controller
37m         Normal    ControllerVersionNotice       node/ip-10-0-112-22.ec2.internal    The node is managed by VPC resource controller version v1.7.11
37m         Normal    NodeTrunkInitiated            node/ip-10-0-112-22.ec2.internal    The node has trunk interface initialized successfully
33m         Normal    DisruptionBlocked             node/ip-10-0-112-22.ec2.internal    Node is deleting or marked for deletion
34m         Normal    DisruptionTerminating         node/ip-10-0-112-22.ec2.internal    Disrupting Node: Drifted/Replace
34m         Warning   FailedDraining                node/ip-10-0-112-22.ec2.internal    Failed to drain node, 14 pods are waiting to be evicted
33m         Warning   InstanceTerminating           node/ip-10-0-112-22.ec2.internal    Instance is terminating
32m         Normal    DisruptionBlocked             node/ip-10-0-112-22.ec2.internal    Node is deleting or marked for deletion
32m         Normal    NodeNotReady                  node/ip-10-0-112-22.ec2.internal    Node ip-10-0-112-22.ec2.internal status is now: NodeNotReady
32m         Normal    MemoryPressure                node/ip-10-0-112-22.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
32m         Normal    DiskPressure                  node/ip-10-0-112-22.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
32m         Normal    PIDPressure                   node/ip-10-0-112-22.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
32m         Normal    Ready                         node/ip-10-0-112-22.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
32m         Warning   InstanceTerminating           node/ip-10-0-112-22.ec2.internal    Instance is terminating
31m         Normal    DeletingNode                  node/ip-10-0-112-22.ec2.internal    Deleting node ip-10-0-112-22.ec2.internal because it does not exist in the cloud provider
31m         Warning   DeletingNodeFailed            node/ip-10-0-112-22.ec2.internal    Failed deleting node ip-10-0-112-22.ec2.internal: nodes "ip-10-0-112-22.ec2.internal" not found
31m         Normal    RemovingNode                  node/ip-10-0-112-22.ec2.internal    Node ip-10-0-112-22.ec2.internal event: Removing Node ip-10-0-112-22.ec2.internal from Controller
32m         Normal    Starting                      node/ip-10-0-112-47.ec2.internal    Starting kubelet.
32m         Warning   InvalidDiskCapacity           node/ip-10-0-112-47.ec2.internal    invalid capacity 0 on image filesystem
32m         Normal    NodeHasSufficientMemory       node/ip-10-0-112-47.ec2.internal    Node ip-10-0-112-47.ec2.internal status is now: NodeHasSufficientMemory
32m         Normal    NodeHasNoDiskPressure         node/ip-10-0-112-47.ec2.internal    Node ip-10-0-112-47.ec2.internal status is now: NodeHasNoDiskPressure
32m         Normal    NodeHasSufficientPID          node/ip-10-0-112-47.ec2.internal    Node ip-10-0-112-47.ec2.internal status is now: NodeHasSufficientPID
32m         Normal    NodeAllocatableEnforced       node/ip-10-0-112-47.ec2.internal    Updated Node Allocatable limit across pods
32m         Normal    Synced                        node/ip-10-0-112-47.ec2.internal    Node synced successfully
32m         Normal    DisruptionBlocked             node/ip-10-0-112-47.ec2.internal    Node isn't initialized
32m         Normal    RegisteredNode                node/ip-10-0-112-47.ec2.internal    Node ip-10-0-112-47.ec2.internal event: Registered Node ip-10-0-112-47.ec2.internal in Controller
32m         Normal    Starting                      node/ip-10-0-112-47.ec2.internal    
32m         Normal    ControllerVersionNotice       node/ip-10-0-112-47.ec2.internal    The node is managed by VPC resource controller version v1.7.11
32m         Normal    NodeReady                     node/ip-10-0-112-47.ec2.internal    Node ip-10-0-112-47.ec2.internal status is now: NodeReady
32m         Normal    Ready                         node/ip-10-0-112-47.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
32m         Normal    NodeTrunkInitiated            node/ip-10-0-112-47.ec2.internal    The node has trunk interface initialized successfully
4m7s        Normal    DisruptionBlocked             node/ip-10-0-112-47.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
5m7s        Normal    Unconsolidatable              node/ip-10-0-112-47.ec2.internal    Can't remove without creating 2 candidates
37m         Normal    Starting                      node/ip-10-0-114-130.ec2.internal   Starting kubelet.
37m         Warning   InvalidDiskCapacity           node/ip-10-0-114-130.ec2.internal   invalid capacity 0 on image filesystem
37m         Normal    NodeHasSufficientMemory       node/ip-10-0-114-130.ec2.internal   Node ip-10-0-114-130.ec2.internal status is now: NodeHasSufficientMemory
37m         Normal    NodeHasNoDiskPressure         node/ip-10-0-114-130.ec2.internal   Node ip-10-0-114-130.ec2.internal status is now: NodeHasNoDiskPressure
37m         Normal    NodeHasSufficientPID          node/ip-10-0-114-130.ec2.internal   Node ip-10-0-114-130.ec2.internal status is now: NodeHasSufficientPID
37m         Normal    NodeAllocatableEnforced       node/ip-10-0-114-130.ec2.internal   Updated Node Allocatable limit across pods
37m         Normal    Synced                        node/ip-10-0-114-130.ec2.internal   Node synced successfully
37m         Normal    RegisteredNode                node/ip-10-0-114-130.ec2.internal   Node ip-10-0-114-130.ec2.internal event: Registered Node ip-10-0-114-130.ec2.internal in Controller
37m         Normal    Starting                      node/ip-10-0-114-130.ec2.internal   
37m         Normal    ControllerVersionNotice       node/ip-10-0-114-130.ec2.internal   The node is managed by VPC resource controller version v1.7.11
97s         Warning   Unsupported                   node/ip-10-0-114-130.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
37m         Normal    NodeReady                     node/ip-10-0-114-130.ec2.internal   Node ip-10-0-114-130.ec2.internal status is now: NodeReady
37m         Normal    Ready                         node/ip-10-0-114-130.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
40m         Normal    Unconsolidatable              node/ip-10-0-114-28.ec2.internal    Can't remove without creating 2 candidates
37m         Normal    RegisteredNode                node/ip-10-0-114-28.ec2.internal    Node ip-10-0-114-28.ec2.internal event: Registered Node ip-10-0-114-28.ec2.internal in Controller
37m         Normal    ControllerVersionNotice       node/ip-10-0-114-28.ec2.internal    The node is managed by VPC resource controller version v1.7.11
37m         Normal    NodeTrunkInitiated            node/ip-10-0-114-28.ec2.internal    The node has trunk interface initialized successfully
35m         Normal    Unconsolidatable              node/ip-10-0-114-28.ec2.internal    Can't remove without creating 2 candidates
34m         Normal    DisruptionBlocked             node/ip-10-0-114-28.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
32m         Normal    DisruptionBlocked             node/ip-10-0-114-28.ec2.internal    Not all pods would schedule, kube-ops/kube-ops-68b7cdf5dd-qxwbq => would schedule against uninitialized nodeclaim/main-amd64-tfzf9, node/ip-10-0-112-47.ec2.internal cluster-autoscaler/cluster-autoscaler-aws-cluster-autoscaler-66c9b7b7ff-kk85d => would schedule against uninitialized nodeclaim/main-amd64-tfzf9, node/ip-10-0-112-47.ec2.internal traefik-internal/traefik-internal-6cfffd9c99-jcqdf => would schedule against uninitialized nodeclaim/main-amd64-tfzf9, node/ip-10-0-112-47.ec2.internal cluster-monitoring/cluster-monitoring-b5977fcf8-wzcxm => would schedule against uninitialized nodeclaim/main-amd64-tfzf9, node/ip-10-0-112-47.ec2.internal
31m         Normal    DisruptionTerminating         node/ip-10-0-114-28.ec2.internal    Disrupting Node: Drifted/Delete
31m         Warning   FailedDraining                node/ip-10-0-114-28.ec2.internal    Failed to drain node, 12 pods are waiting to be evicted
31m         Warning   InstanceTerminating           node/ip-10-0-114-28.ec2.internal    Instance is terminating
30m         Normal    NodeNotReady                  node/ip-10-0-114-28.ec2.internal    Node ip-10-0-114-28.ec2.internal status is now: NodeNotReady
30m         Normal    MemoryPressure                node/ip-10-0-114-28.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
30m         Normal    DiskPressure                  node/ip-10-0-114-28.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
30m         Normal    PIDPressure                   node/ip-10-0-114-28.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
30m         Normal    Ready                         node/ip-10-0-114-28.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
30m         Normal    DisruptionBlocked             node/ip-10-0-114-28.ec2.internal    Node is deleting or marked for deletion
30m         Normal    RemovingNode                  node/ip-10-0-114-28.ec2.internal    Node ip-10-0-114-28.ec2.internal event: Removing Node ip-10-0-114-28.ec2.internal from Controller
40m         Warning   Unsupported                   node/ip-10-0-114-64.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
37m         Normal    RegisteredNode                node/ip-10-0-114-64.ec2.internal    Node ip-10-0-114-64.ec2.internal event: Registered Node ip-10-0-114-64.ec2.internal in Controller
37m         Normal    ControllerVersionNotice       node/ip-10-0-114-64.ec2.internal    The node is managed by VPC resource controller version v1.7.11
29m         Warning   Unsupported                   node/ip-10-0-114-64.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
35m         Normal    NodeNotSchedulable            node/ip-10-0-114-64.ec2.internal    Node ip-10-0-114-64.ec2.internal status is now: NodeNotSchedulable
29m         Normal    NodeNotReady                  node/ip-10-0-114-64.ec2.internal    Node ip-10-0-114-64.ec2.internal status is now: NodeNotReady
29m         Normal    MemoryPressure                node/ip-10-0-114-64.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
29m         Normal    DiskPressure                  node/ip-10-0-114-64.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
29m         Normal    PIDPressure                   node/ip-10-0-114-64.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
29m         Normal    Ready                         node/ip-10-0-114-64.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
29m         Normal    DeletingNode                  node/ip-10-0-114-64.ec2.internal    Deleting node ip-10-0-114-64.ec2.internal because it does not exist in the cloud provider
29m         Normal    RemovingNode                  node/ip-10-0-114-64.ec2.internal    Node ip-10-0-114-64.ec2.internal event: Removing Node ip-10-0-114-64.ec2.internal from Controller
39m         Normal    Starting                      node/ip-10-0-116-129.ec2.internal   Starting kubelet.
39m         Warning   InvalidDiskCapacity           node/ip-10-0-116-129.ec2.internal   invalid capacity 0 on image filesystem
39m         Normal    NodeHasSufficientMemory       node/ip-10-0-116-129.ec2.internal   Node ip-10-0-116-129.ec2.internal status is now: NodeHasSufficientMemory
39m         Normal    NodeHasNoDiskPressure         node/ip-10-0-116-129.ec2.internal   Node ip-10-0-116-129.ec2.internal status is now: NodeHasNoDiskPressure
39m         Normal    NodeHasSufficientPID          node/ip-10-0-116-129.ec2.internal   Node ip-10-0-116-129.ec2.internal status is now: NodeHasSufficientPID
39m         Normal    NodeAllocatableEnforced       node/ip-10-0-116-129.ec2.internal   Updated Node Allocatable limit across pods
39m         Normal    Synced                        node/ip-10-0-116-129.ec2.internal   Node synced successfully
39m         Normal    RegisteredNode                node/ip-10-0-116-129.ec2.internal   Node ip-10-0-116-129.ec2.internal event: Registered Node ip-10-0-116-129.ec2.internal in Controller
39m         Normal    Starting                      node/ip-10-0-116-129.ec2.internal   
39m         Normal    ControllerVersionNotice       node/ip-10-0-116-129.ec2.internal   The node is managed by VPC resource controller version v1.7.9
37m         Warning   Unsupported                   node/ip-10-0-116-129.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
39m         Normal    NodeReady                     node/ip-10-0-116-129.ec2.internal   Node ip-10-0-116-129.ec2.internal status is now: NodeReady
39m         Normal    Ready                         node/ip-10-0-116-129.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
37m         Normal    RegisteredNode                node/ip-10-0-116-129.ec2.internal   Node ip-10-0-116-129.ec2.internal event: Registered Node ip-10-0-116-129.ec2.internal in Controller
37m         Normal    ControllerVersionNotice       node/ip-10-0-116-129.ec2.internal   The node is managed by VPC resource controller version v1.7.11
26m         Warning   Unsupported                   node/ip-10-0-116-129.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    NodeNotSchedulable            node/ip-10-0-116-129.ec2.internal   Node ip-10-0-116-129.ec2.internal status is now: NodeNotSchedulable
26m         Normal    NodeNotReady                  node/ip-10-0-116-129.ec2.internal   Node ip-10-0-116-129.ec2.internal status is now: NodeNotReady
26m         Normal    MemoryPressure                node/ip-10-0-116-129.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    DiskPressure                  node/ip-10-0-116-129.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    PIDPressure                   node/ip-10-0-116-129.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    Ready                         node/ip-10-0-116-129.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    DeletingNode                  node/ip-10-0-116-129.ec2.internal   Deleting node ip-10-0-116-129.ec2.internal because it does not exist in the cloud provider
26m         Normal    RemovingNode                  node/ip-10-0-116-129.ec2.internal   Node ip-10-0-116-129.ec2.internal event: Removing Node ip-10-0-116-129.ec2.internal from Controller
40m         Normal    Unconsolidatable              node/ip-10-0-116-152.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
37m         Normal    RegisteredNode                node/ip-10-0-116-152.ec2.internal   Node ip-10-0-116-152.ec2.internal event: Registered Node ip-10-0-116-152.ec2.internal in Controller
37m         Normal    ControllerVersionNotice       node/ip-10-0-116-152.ec2.internal   The node is managed by VPC resource controller version v1.7.11
37m         Normal    NodeTrunkInitiated            node/ip-10-0-116-152.ec2.internal   The node has trunk interface initialized successfully
35m         Normal    Unconsolidatable              node/ip-10-0-116-152.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
35m         Normal    DisruptionBlocked             node/ip-10-0-116-152.ec2.internal   Node is nominated for a pending pod
34m         Normal    DisruptionTerminating         node/ip-10-0-116-152.ec2.internal   Disrupting Node: Drifted/Delete
34m         Warning   FailedDraining                node/ip-10-0-116-152.ec2.internal   Failed to drain node, 6 pods are waiting to be evicted
33m         Warning   InstanceTerminating           node/ip-10-0-116-152.ec2.internal   Instance is terminating
33m         Normal    DisruptionBlocked             node/ip-10-0-116-152.ec2.internal   Node is deleting or marked for deletion
32m         Normal    RemovingNode                  node/ip-10-0-116-152.ec2.internal   Node ip-10-0-116-152.ec2.internal event: Removing Node ip-10-0-116-152.ec2.internal from Controller
39m         Normal    Starting                      node/ip-10-0-116-183.ec2.internal   Starting kubelet.
39m         Warning   InvalidDiskCapacity           node/ip-10-0-116-183.ec2.internal   invalid capacity 0 on image filesystem
39m         Normal    NodeHasSufficientMemory       node/ip-10-0-116-183.ec2.internal   Node ip-10-0-116-183.ec2.internal status is now: NodeHasSufficientMemory
39m         Normal    NodeHasNoDiskPressure         node/ip-10-0-116-183.ec2.internal   Node ip-10-0-116-183.ec2.internal status is now: NodeHasNoDiskPressure
39m         Normal    NodeHasSufficientPID          node/ip-10-0-116-183.ec2.internal   Node ip-10-0-116-183.ec2.internal status is now: NodeHasSufficientPID
39m         Normal    NodeAllocatableEnforced       node/ip-10-0-116-183.ec2.internal   Updated Node Allocatable limit across pods
39m         Normal    Synced                        node/ip-10-0-116-183.ec2.internal   Node synced successfully
39m         Normal    RegisteredNode                node/ip-10-0-116-183.ec2.internal   Node ip-10-0-116-183.ec2.internal event: Registered Node ip-10-0-116-183.ec2.internal in Controller
39m         Normal    Starting                      node/ip-10-0-116-183.ec2.internal   
38m         Normal    ControllerVersionNotice       node/ip-10-0-116-183.ec2.internal   The node is managed by VPC resource controller version v1.7.9
37m         Warning   Unsupported                   node/ip-10-0-116-183.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
38m         Normal    NodeReady                     node/ip-10-0-116-183.ec2.internal   Node ip-10-0-116-183.ec2.internal status is now: NodeReady
38m         Normal    Ready                         node/ip-10-0-116-183.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
37m         Normal    RegisteredNode                node/ip-10-0-116-183.ec2.internal   Node ip-10-0-116-183.ec2.internal event: Registered Node ip-10-0-116-183.ec2.internal in Controller
37m         Normal    ControllerVersionNotice       node/ip-10-0-116-183.ec2.internal   The node is managed by VPC resource controller version v1.7.11
3m35s       Warning   Unsupported                   node/ip-10-0-116-183.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
32m         Normal    Starting                      node/ip-10-0-117-112.ec2.internal   Starting kubelet.
32m         Warning   InvalidDiskCapacity           node/ip-10-0-117-112.ec2.internal   invalid capacity 0 on image filesystem
32m         Normal    NodeHasSufficientMemory       node/ip-10-0-117-112.ec2.internal   Node ip-10-0-117-112.ec2.internal status is now: NodeHasSufficientMemory
32m         Normal    NodeHasNoDiskPressure         node/ip-10-0-117-112.ec2.internal   Node ip-10-0-117-112.ec2.internal status is now: NodeHasNoDiskPressure
32m         Normal    NodeHasSufficientPID          node/ip-10-0-117-112.ec2.internal   Node ip-10-0-117-112.ec2.internal status is now: NodeHasSufficientPID
32m         Normal    NodeAllocatableEnforced       node/ip-10-0-117-112.ec2.internal   Updated Node Allocatable limit across pods
32m         Normal    RegisteredNode                node/ip-10-0-117-112.ec2.internal   Node ip-10-0-117-112.ec2.internal event: Registered Node ip-10-0-117-112.ec2.internal in Controller
32m         Normal    Synced                        node/ip-10-0-117-112.ec2.internal   Node synced successfully
32m         Normal    DisruptionBlocked             node/ip-10-0-117-112.ec2.internal   Node isn't initialized
32m         Normal    Starting                      node/ip-10-0-117-112.ec2.internal   
32m         Normal    ControllerVersionNotice       node/ip-10-0-117-112.ec2.internal   The node is managed by VPC resource controller version v1.7.11
32m         Normal    NodeReady                     node/ip-10-0-117-112.ec2.internal   Node ip-10-0-117-112.ec2.internal status is now: NodeReady
32m         Normal    Ready                         node/ip-10-0-117-112.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
32m         Normal    NodeTrunkInitiated            node/ip-10-0-117-112.ec2.internal   The node has trunk interface initialized successfully
20m         Normal    DisruptionBlocked             node/ip-10-0-117-112.ec2.internal   Node is nominated for a pending pod
34m         Normal    Starting                      node/ip-10-0-117-148.ec2.internal   Starting kubelet.
34m         Warning   InvalidDiskCapacity           node/ip-10-0-117-148.ec2.internal   invalid capacity 0 on image filesystem
34m         Normal    NodeHasSufficientMemory       node/ip-10-0-117-148.ec2.internal   Node ip-10-0-117-148.ec2.internal status is now: NodeHasSufficientMemory
34m         Normal    NodeHasNoDiskPressure         node/ip-10-0-117-148.ec2.internal   Node ip-10-0-117-148.ec2.internal status is now: NodeHasNoDiskPressure
34m         Normal    NodeHasSufficientPID          node/ip-10-0-117-148.ec2.internal   Node ip-10-0-117-148.ec2.internal status is now: NodeHasSufficientPID
34m         Normal    NodeAllocatableEnforced       node/ip-10-0-117-148.ec2.internal   Updated Node Allocatable limit across pods
34m         Normal    Synced                        node/ip-10-0-117-148.ec2.internal   Node synced successfully
34m         Normal    DisruptionBlocked             node/ip-10-0-117-148.ec2.internal   Node isn't initialized
34m         Normal    RegisteredNode                node/ip-10-0-117-148.ec2.internal   Node ip-10-0-117-148.ec2.internal event: Registered Node ip-10-0-117-148.ec2.internal in Controller
34m         Normal    Starting                      node/ip-10-0-117-148.ec2.internal   
34m         Normal    ControllerVersionNotice       node/ip-10-0-117-148.ec2.internal   The node is managed by VPC resource controller version v1.7.11
34m         Normal    NodeReady                     node/ip-10-0-117-148.ec2.internal   Node ip-10-0-117-148.ec2.internal status is now: NodeReady
34m         Normal    Ready                         node/ip-10-0-117-148.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
34m         Normal    NodeTrunkInitiated            node/ip-10-0-117-148.ec2.internal   The node has trunk interface initialized successfully
20m         Normal    DisruptionBlocked             node/ip-10-0-117-148.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
20m         Normal    SpotRebalanceRecommendation   node/ip-10-0-117-148.ec2.internal   Spot rebalance recommendation was triggered
20m         Warning   SpotInterrupted               node/ip-10-0-117-148.ec2.internal   Spot interruption warning was triggered
20m         Warning   TerminatingOnInterruption     node/ip-10-0-117-148.ec2.internal   Interruption triggered termination for the Node
20m         Warning   FailedDraining                node/ip-10-0-117-148.ec2.internal   Failed to drain node, 11 pods are waiting to be evicted
19m         Warning   InstanceTerminating           node/ip-10-0-117-148.ec2.internal   Instance is terminating
18m         Normal    RemovingNode                  node/ip-10-0-117-148.ec2.internal   Node ip-10-0-117-148.ec2.internal event: Removing Node ip-10-0-117-148.ec2.internal from Controller
38m         Normal    Starting                      node/ip-10-0-117-55.ec2.internal    Starting kubelet.
38m         Warning   InvalidDiskCapacity           node/ip-10-0-117-55.ec2.internal    invalid capacity 0 on image filesystem
38m         Normal    NodeHasSufficientMemory       node/ip-10-0-117-55.ec2.internal    Node ip-10-0-117-55.ec2.internal status is now: NodeHasSufficientMemory
38m         Normal    NodeHasNoDiskPressure         node/ip-10-0-117-55.ec2.internal    Node ip-10-0-117-55.ec2.internal status is now: NodeHasNoDiskPressure
38m         Normal    NodeHasSufficientPID          node/ip-10-0-117-55.ec2.internal    Node ip-10-0-117-55.ec2.internal status is now: NodeHasSufficientPID
38m         Normal    NodeAllocatableEnforced       node/ip-10-0-117-55.ec2.internal    Updated Node Allocatable limit across pods
38m         Normal    Synced                        node/ip-10-0-117-55.ec2.internal    Node synced successfully
38m         Normal    RegisteredNode                node/ip-10-0-117-55.ec2.internal    Node ip-10-0-117-55.ec2.internal event: Registered Node ip-10-0-117-55.ec2.internal in Controller
38m         Normal    Starting                      node/ip-10-0-117-55.ec2.internal    
38m         Normal    ControllerVersionNotice       node/ip-10-0-117-55.ec2.internal    The node is managed by VPC resource controller version v1.7.9
38m         Normal    NodeReady                     node/ip-10-0-117-55.ec2.internal    Node ip-10-0-117-55.ec2.internal status is now: NodeReady
38m         Normal    Ready                         node/ip-10-0-117-55.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
38m         Normal    NodeTrunkInitiated            node/ip-10-0-117-55.ec2.internal    The node has trunk interface initialized successfully
37m         Normal    RegisteredNode                node/ip-10-0-117-55.ec2.internal    Node ip-10-0-117-55.ec2.internal event: Registered Node ip-10-0-117-55.ec2.internal in Controller
37m         Normal    ControllerVersionNotice       node/ip-10-0-117-55.ec2.internal    The node is managed by VPC resource controller version v1.7.11
37m         Normal    NodeTrunkInitiated            node/ip-10-0-117-55.ec2.internal    The node has trunk interface initialized successfully
20m         Normal    ScaleDown                     node/ip-10-0-117-55.ec2.internal    marked the node as toBeDeleted/unschedulable
19m         Normal    NodeNotReady                  node/ip-10-0-117-55.ec2.internal    Node ip-10-0-117-55.ec2.internal status is now: NodeNotReady
19m         Normal    MemoryPressure                node/ip-10-0-117-55.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DiskPressure                  node/ip-10-0-117-55.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    PIDPressure                   node/ip-10-0-117-55.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    Ready                         node/ip-10-0-117-55.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DeletingNode                  node/ip-10-0-117-55.ec2.internal    Deleting node ip-10-0-117-55.ec2.internal because it does not exist in the cloud provider
19m         Normal    RemovingNode                  node/ip-10-0-117-55.ec2.internal    Node ip-10-0-117-55.ec2.internal event: Removing Node ip-10-0-117-55.ec2.internal from Controller
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE            NAME                                        MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-autoscaler   cluster-autoscaler-aws-cluster-autoscaler   N/A             1                 1                     4d9h
cluster-monitoring   cluster-monitoring-pdb                      N/A             1                 1                     17d
karpenter            karpenter                                   N/A             1                 1                     17d
kube-system          coredns                                     N/A             1                 1                     17d
kube-system          ebs-csi-controller                          N/A             1                 1                     17d
kyverno              kyverno-admission-controller                1               N/A               2                     17d
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

Generated on: Mon Sep 22 18:21:29 CEST 2025
