# Cluster recon for tfh-internal-tools-infra,eu-central-1,teleport-tools-eu-central-1,tunnel-vpc-internal-tools-teleport-eu-central-1

TFH EKS login...
```console
2025/09/22 11:45:00 INFO Logging into AWS
2025/09/22 11:45:00 INFO Token found and valid
2025/09/22 11:45:01 INFO Switch WARP Virtual Network to name=tunnel-vpc-internal-tools-teleport-eu-central-1 id=b9f8004a-945f-4b03-94e5-0d1923d27e18
2025/09/22 11:45:03 INFO Active WARP Virtual Network id=b9f8004a-945f-4b03-94e5-0d1923d27e18
Updated context tfh-teleport-tools-eu-central-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "teleport-tools-eu-central-1",
        "arn": "arn:aws:eks:eu-central-1:507152310572:cluster/teleport-tools-eu-central-1",
        "createdAt": "2024-03-29T12:45:47.995000+01:00",
        "version": "1.33",
        "endpoint": "https://C75BC26EAE4A3375052FD06E216A2838.gr7.eu-central-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::507152310572:role/eks-cluster-teleport-tools-eu-central-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-01d9705e5c2ca730c",
                "subnet-087b44f5db4e151e3",
                "subnet-0088747e4b8e4ea32"
            ],
            "securityGroupIds": [
                "sg-0fe0687bd0296580f"
            ],
            "clusterSecurityGroupId": "sg-0805f3d29beb70b86",
            "vpcId": "vpc-065489b8deccee2f5",
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
                "issuer": "https://oidc.eks.eu-central-1.amazonaws.com/id/C75BC26EAE4A3375052FD06E216A2838"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJWGJERzFTWGUydjR3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TkRBek1qa3hNVFExTXpOYUZ3MHpOREF6TWpjeE1UVXdNek5hTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUNrQmxsYUNocHZyZS8rc2pnaVJqaWgvUTB2QytKRllabmF3cGRvMFlIMFlueUxyT3VVcGZrTWFDdysKam1iY2JHdkdPVThBbUF5QU1xQ08wSjNxbkNNbWFBSEYzejh2RXltK1RiWS9ZQTdKeTZzVjhFRzNNMS9vVVM0dwpxY2E2ZEZPYXVpR0orZ3pNcjlpQU5kRjNyTUNYenRuYXhzcFlzNVBaRE0rNlU3SGVhQTZPa1VieXFmb3JKMlR5Ck5UY1RpaDFnMDkvengzMUFuNHBjUFpFNzVodGtTOWNnZDNXU2lVVkRUcTJ1Nlc4R2MyNjVCR091UUE4dXdXWUgKd2t5K1RBZHVRS25GQjVjWUlVMzBkNTJ3clA3MElVZFFvSmNMejJTUWo4VHRLLytZenA1RW53dHhBaUltdmZMOQpJT0hGaGIraHdQY0pzTXBGN3Y4dTJFajNRZEI5QWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJScmJvNUgwUVF6VFFFV01FUFovTU5FRVVYbFlEQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQXhwRTNJUHNPUAo2bTFJZmdBSll2VzgzV2hVNkZyV1dhYXRTWSs4U2ZEOWIyR2NNUEVjZDNHZkRqOXZKamo1RHNqTTBLVXhEUWY5Ci9tTDdNTTRKUjR0NlJGbG5RTUpaZlVWblJLaDRLZjFtdHlSeVJtaVNJNjNpRlFTSmZLbzQrK2lhYkh5Yk4vbUQKQjlpdlJNeG1YL2V0Um1JMnllN0VRRnJsZUhQOHM3cEF4SjhGZW83SUVDODgxZWNFZXJ6cTZoN29PSSs2akJDawp6Z01LdW0rN3VDUnUvbk80OGhIR29iUHQzNjBpME90eWNlQ2VFZnVidFBreGVCdE1VU2ZZQytzV0d3Sk8xTEtsCkFmd2tvaHBPblRTMFRiVUI3eUJlYkJWVjlxTTAyazVVaDVWb0djTFk0WVk3RFpIMEFGWnBtdkZCaS96aWpCSWkKRXhNSUpnU1dEOTNJCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "teleport-tools-eu-central-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-central-1:507152310572:key/3cfbfc3f-dc63-4710-a160-d344ca2a35e9"
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
NAME                                             STATUS   ROLES    AGE   VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-53-225-49.eu-central-1.compute.internal    Ready    <none>   27m   v1.33.4-eks-99d6cc0   10.53.225.49    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-teleport-tools-eu-central-1
ip-10-53-227-119.eu-central-1.compute.internal   Ready    <none>   21m   v1.33.4-eks-99d6cc0   10.53.227.119   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-53-227-140.eu-central-1.compute.internal   Ready    <none>   21m   v1.33.4-eks-99d6cc0   10.53.227.140   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-53-227-99.eu-central-1.compute.internal    Ready    <none>   17m   v1.33.4-eks-99d6cc0   10.53.227.99    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-53-228-59.eu-central-1.compute.internal    Ready    <none>   28m   v1.33.4-eks-99d6cc0   10.53.228.59    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-teleport-tools-eu-central-1
ip-10-53-229-135.eu-central-1.compute.internal   Ready    <none>   22m   v1.33.4-eks-99d6cc0   10.53.229.135   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                             STATUS   ROLES    TAINTS
ip-10-53-225-49.eu-central-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-53-227-119.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-53-227-140.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-53-227-99.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-53-228-59.eu-central-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-53-229-135.eu-central-1.compute.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                                                MESSAGE
15m         Normal    Finalized                     node                                                  Finalized karpenter.sh/termination
31m         Warning   Unsupported                   node/ip-10-53-224-181.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    RegisteredNode                node/ip-10-53-224-181.eu-central-1.compute.internal   Node ip-10-53-224-181.eu-central-1.compute.internal event: Registered Node ip-10-53-224-181.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-53-224-181.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Warning   Unsupported                   node/ip-10-53-224-181.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    NodeNotSchedulable            node/ip-10-53-224-181.eu-central-1.compute.internal   Node ip-10-53-224-181.eu-central-1.compute.internal status is now: NodeNotSchedulable
22m         Normal    NodeNotReady                  node/ip-10-53-224-181.eu-central-1.compute.internal   Node ip-10-53-224-181.eu-central-1.compute.internal status is now: NodeNotReady
22m         Normal    MemoryPressure                node/ip-10-53-224-181.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure                  node/ip-10-53-224-181.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure                   node/ip-10-53-224-181.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                         node/ip-10-53-224-181.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DeletingNode                  node/ip-10-53-224-181.eu-central-1.compute.internal   Deleting node ip-10-53-224-181.eu-central-1.compute.internal because it does not exist in the cloud provider
22m         Normal    RemovingNode                  node/ip-10-53-224-181.eu-central-1.compute.internal   Node ip-10-53-224-181.eu-central-1.compute.internal event: Removing Node ip-10-53-224-181.eu-central-1.compute.internal from Controller
25m         Normal    Unconsolidatable              node/ip-10-53-224-206.eu-central-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
22m         Normal    DisruptionBlocked             node/ip-10-53-224-206.eu-central-1.compute.internal   Node is nominated for a pending pod
26m         Normal    RegisteredNode                node/ip-10-53-224-206.eu-central-1.compute.internal   Node ip-10-53-224-206.eu-central-1.compute.internal event: Registered Node ip-10-53-224-206.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-53-224-206.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated            node/ip-10-53-224-206.eu-central-1.compute.internal   The node has trunk interface initialized successfully
16m         Normal    DisruptionBlocked             node/ip-10-53-224-206.eu-central-1.compute.internal   Node is deleting or marked for deletion
21m         Normal    RegisteredNode                node/ip-10-53-224-206.eu-central-1.compute.internal   Node ip-10-53-224-206.eu-central-1.compute.internal event: Registered Node ip-10-53-224-206.eu-central-1.compute.internal in Controller
18m         Normal    DisruptionBlocked             node/ip-10-53-224-206.eu-central-1.compute.internal   Node is nominated for a pending pod
17m         Normal    DisruptionTerminating         node/ip-10-53-224-206.eu-central-1.compute.internal   Disrupting Node: Drifted/Replace
17m         Warning   FailedDraining                node/ip-10-53-224-206.eu-central-1.compute.internal   Failed to drain node, 11 pods are waiting to be evicted
16m         Warning   InstanceTerminating           node/ip-10-53-224-206.eu-central-1.compute.internal   Instance is terminating
15m         Normal    NodeNotReady                  node/ip-10-53-224-206.eu-central-1.compute.internal   Node ip-10-53-224-206.eu-central-1.compute.internal status is now: NodeNotReady
15m         Normal    MemoryPressure                node/ip-10-53-224-206.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DiskPressure                  node/ip-10-53-224-206.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    PIDPressure                   node/ip-10-53-224-206.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    Ready                         node/ip-10-53-224-206.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DeletingNode                  node/ip-10-53-224-206.eu-central-1.compute.internal   Deleting node ip-10-53-224-206.eu-central-1.compute.internal because it does not exist in the cloud provider
15m         Normal    RemovingNode                  node/ip-10-53-224-206.eu-central-1.compute.internal   Node ip-10-53-224-206.eu-central-1.compute.internal event: Removing Node ip-10-53-224-206.eu-central-1.compute.internal from Controller
27m         Normal    Starting                      node/ip-10-53-225-49.eu-central-1.compute.internal    Starting kubelet.
27m         Warning   InvalidDiskCapacity           node/ip-10-53-225-49.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory       node/ip-10-53-225-49.eu-central-1.compute.internal    Node ip-10-53-225-49.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure         node/ip-10-53-225-49.eu-central-1.compute.internal    Node ip-10-53-225-49.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID          node/ip-10-53-225-49.eu-central-1.compute.internal    Node ip-10-53-225-49.eu-central-1.compute.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced       node/ip-10-53-225-49.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
27m         Normal    Synced                        node/ip-10-53-225-49.eu-central-1.compute.internal    Node synced successfully
27m         Normal    RegisteredNode                node/ip-10-53-225-49.eu-central-1.compute.internal    Node ip-10-53-225-49.eu-central-1.compute.internal event: Registered Node ip-10-53-225-49.eu-central-1.compute.internal in Controller
27m         Normal    Starting                      node/ip-10-53-225-49.eu-central-1.compute.internal    
26m         Normal    ControllerVersionNotice       node/ip-10-53-225-49.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
26m         Warning   Unsupported                   node/ip-10-53-225-49.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    NodeReady                     node/ip-10-53-225-49.eu-central-1.compute.internal    Node ip-10-53-225-49.eu-central-1.compute.internal status is now: NodeReady
26m         Normal    Ready                         node/ip-10-53-225-49.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26m         Normal    RegisteredNode                node/ip-10-53-225-49.eu-central-1.compute.internal    Node ip-10-53-225-49.eu-central-1.compute.internal event: Registered Node ip-10-53-225-49.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-53-225-49.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
52s         Warning   Unsupported                   node/ip-10-53-225-49.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    RegisteredNode                node/ip-10-53-225-49.eu-central-1.compute.internal    Node ip-10-53-225-49.eu-central-1.compute.internal event: Registered Node ip-10-53-225-49.eu-central-1.compute.internal in Controller
26m         Normal    RegisteredNode                node/ip-10-53-226-133.eu-central-1.compute.internal   Node ip-10-53-226-133.eu-central-1.compute.internal event: Registered Node ip-10-53-226-133.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-53-226-133.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated            node/ip-10-53-226-133.eu-central-1.compute.internal   The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked             node/ip-10-53-226-133.eu-central-1.compute.internal   Node is nominated for a pending pod
22m         Normal    DisruptionBlocked             node/ip-10-53-226-133.eu-central-1.compute.internal   Node is nominated for a pending pod
21m         Normal    RegisteredNode                node/ip-10-53-226-133.eu-central-1.compute.internal   Node ip-10-53-226-133.eu-central-1.compute.internal event: Registered Node ip-10-53-226-133.eu-central-1.compute.internal in Controller
20m         Normal    DisruptionTerminating         node/ip-10-53-226-133.eu-central-1.compute.internal   Disrupting Node: Drifted/Delete
20m         Warning   FailedDraining                node/ip-10-53-226-133.eu-central-1.compute.internal   Failed to drain node, 6 pods are waiting to be evicted
20m         Normal    DisruptionBlocked             node/ip-10-53-226-133.eu-central-1.compute.internal   Node is deleting or marked for deletion
19m         Warning   InstanceTerminating           node/ip-10-53-226-133.eu-central-1.compute.internal   Instance is terminating
19m         Normal    RemovingNode                  node/ip-10-53-226-133.eu-central-1.compute.internal   Node ip-10-53-226-133.eu-central-1.compute.internal event: Removing Node ip-10-53-226-133.eu-central-1.compute.internal from Controller
31m         Warning   Unsupported                   node/ip-10-53-226-250.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    RegisteredNode                node/ip-10-53-226-250.eu-central-1.compute.internal   Node ip-10-53-226-250.eu-central-1.compute.internal event: Registered Node ip-10-53-226-250.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-53-226-250.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
19m         Warning   Unsupported                   node/ip-10-53-226-250.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    NodeNotSchedulable            node/ip-10-53-226-250.eu-central-1.compute.internal   Node ip-10-53-226-250.eu-central-1.compute.internal status is now: NodeNotSchedulable
21m         Normal    RegisteredNode                node/ip-10-53-226-250.eu-central-1.compute.internal   Node ip-10-53-226-250.eu-central-1.compute.internal event: Registered Node ip-10-53-226-250.eu-central-1.compute.internal in Controller
19m         Normal    NodeNotReady                  node/ip-10-53-226-250.eu-central-1.compute.internal   Node ip-10-53-226-250.eu-central-1.compute.internal status is now: NodeNotReady
19m         Normal    MemoryPressure                node/ip-10-53-226-250.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DiskPressure                  node/ip-10-53-226-250.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    PIDPressure                   node/ip-10-53-226-250.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    Ready                         node/ip-10-53-226-250.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DeletingNode                  node/ip-10-53-226-250.eu-central-1.compute.internal   Deleting node ip-10-53-226-250.eu-central-1.compute.internal because it does not exist in the cloud provider
19m         Normal    RemovingNode                  node/ip-10-53-226-250.eu-central-1.compute.internal   Node ip-10-53-226-250.eu-central-1.compute.internal event: Removing Node ip-10-53-226-250.eu-central-1.compute.internal from Controller
22m         Normal    DisruptionBlocked             node/ip-10-53-226-57.eu-central-1.compute.internal    Node is nominated for a pending pod
54m         Normal    Unconsolidatable              node/ip-10-53-226-57.eu-central-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
53m         Normal    SpotRebalanceRecommendation   node/ip-10-53-226-57.eu-central-1.compute.internal    Spot rebalance recommendation was triggered
26m         Normal    RegisteredNode                node/ip-10-53-226-57.eu-central-1.compute.internal    Node ip-10-53-226-57.eu-central-1.compute.internal event: Registered Node ip-10-53-226-57.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-53-226-57.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated            node/ip-10-53-226-57.eu-central-1.compute.internal    The node has trunk interface initialized successfully
20m         Normal    DisruptionBlocked             node/ip-10-53-226-57.eu-central-1.compute.internal    Node is deleting or marked for deletion
21m         Normal    RegisteredNode                node/ip-10-53-226-57.eu-central-1.compute.internal    Node ip-10-53-226-57.eu-central-1.compute.internal event: Registered Node ip-10-53-226-57.eu-central-1.compute.internal in Controller
21m         Normal    DisruptionTerminating         node/ip-10-53-226-57.eu-central-1.compute.internal    Disrupting Node: Drifted/Replace
21m         Warning   FailedDraining                node/ip-10-53-226-57.eu-central-1.compute.internal    Failed to drain node, 7 pods are waiting to be evicted
19m         Warning   InstanceTerminating           node/ip-10-53-226-57.eu-central-1.compute.internal    Instance is terminating
19m         Normal    RemovingNode                  node/ip-10-53-226-57.eu-central-1.compute.internal    Node ip-10-53-226-57.eu-central-1.compute.internal event: Removing Node ip-10-53-226-57.eu-central-1.compute.internal from Controller
26m         Normal    Starting                      node/ip-10-53-226-72.eu-central-1.compute.internal    Starting kubelet.
26m         Warning   InvalidDiskCapacity           node/ip-10-53-226-72.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
26m         Normal    NodeHasSufficientMemory       node/ip-10-53-226-72.eu-central-1.compute.internal    Node ip-10-53-226-72.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
26m         Normal    NodeHasNoDiskPressure         node/ip-10-53-226-72.eu-central-1.compute.internal    Node ip-10-53-226-72.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
26m         Normal    NodeHasSufficientPID          node/ip-10-53-226-72.eu-central-1.compute.internal    Node ip-10-53-226-72.eu-central-1.compute.internal status is now: NodeHasSufficientPID
26m         Normal    NodeAllocatableEnforced       node/ip-10-53-226-72.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
26m         Normal    Synced                        node/ip-10-53-226-72.eu-central-1.compute.internal    Node synced successfully
26m         Normal    RegisteredNode                node/ip-10-53-226-72.eu-central-1.compute.internal    Node ip-10-53-226-72.eu-central-1.compute.internal event: Registered Node ip-10-53-226-72.eu-central-1.compute.internal in Controller
26m         Normal    Starting                      node/ip-10-53-226-72.eu-central-1.compute.internal    
25m         Normal    ControllerVersionNotice       node/ip-10-53-226-72.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
14m         Warning   Unsupported                   node/ip-10-53-226-72.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    NodeReady                     node/ip-10-53-226-72.eu-central-1.compute.internal    Node ip-10-53-226-72.eu-central-1.compute.internal status is now: NodeReady
25m         Normal    Ready                         node/ip-10-53-226-72.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    RegisteredNode                node/ip-10-53-226-72.eu-central-1.compute.internal    Node ip-10-53-226-72.eu-central-1.compute.internal event: Registered Node ip-10-53-226-72.eu-central-1.compute.internal in Controller
16m         Normal    NodeNotSchedulable            node/ip-10-53-226-72.eu-central-1.compute.internal    Node ip-10-53-226-72.eu-central-1.compute.internal status is now: NodeNotSchedulable
14m         Normal    NodeNotReady                  node/ip-10-53-226-72.eu-central-1.compute.internal    Node ip-10-53-226-72.eu-central-1.compute.internal status is now: NodeNotReady
14m         Normal    MemoryPressure                node/ip-10-53-226-72.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure                  node/ip-10-53-226-72.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure                   node/ip-10-53-226-72.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                         node/ip-10-53-226-72.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DeletingNode                  node/ip-10-53-226-72.eu-central-1.compute.internal    Deleting node ip-10-53-226-72.eu-central-1.compute.internal because it does not exist in the cloud provider
14m         Normal    RemovingNode                  node/ip-10-53-226-72.eu-central-1.compute.internal    Node ip-10-53-226-72.eu-central-1.compute.internal event: Removing Node ip-10-53-226-72.eu-central-1.compute.internal from Controller
22m         Normal    Starting                      node/ip-10-53-227-119.eu-central-1.compute.internal   Starting kubelet.
22m         Warning   InvalidDiskCapacity           node/ip-10-53-227-119.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
22m         Normal    NodeHasSufficientMemory       node/ip-10-53-227-119.eu-central-1.compute.internal   Node ip-10-53-227-119.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
22m         Normal    NodeHasNoDiskPressure         node/ip-10-53-227-119.eu-central-1.compute.internal   Node ip-10-53-227-119.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
22m         Normal    NodeHasSufficientPID          node/ip-10-53-227-119.eu-central-1.compute.internal   Node ip-10-53-227-119.eu-central-1.compute.internal status is now: NodeHasSufficientPID
22m         Normal    NodeAllocatableEnforced       node/ip-10-53-227-119.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
21m         Normal    Synced                        node/ip-10-53-227-119.eu-central-1.compute.internal   Node synced successfully
21m         Normal    RegisteredNode                node/ip-10-53-227-119.eu-central-1.compute.internal   Node ip-10-53-227-119.eu-central-1.compute.internal event: Registered Node ip-10-53-227-119.eu-central-1.compute.internal in Controller
21m         Normal    DisruptionBlocked             node/ip-10-53-227-119.eu-central-1.compute.internal   Node isn't initialized
21m         Normal    Starting                      node/ip-10-53-227-119.eu-central-1.compute.internal   
21m         Normal    ControllerVersionNotice       node/ip-10-53-227-119.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeReady                     node/ip-10-53-227-119.eu-central-1.compute.internal   Node ip-10-53-227-119.eu-central-1.compute.internal status is now: NodeReady
21m         Normal    Ready                         node/ip-10-53-227-119.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    NodeTrunkInitiated            node/ip-10-53-227-119.eu-central-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    RegisteredNode                node/ip-10-53-227-119.eu-central-1.compute.internal   Node ip-10-53-227-119.eu-central-1.compute.internal event: Registered Node ip-10-53-227-119.eu-central-1.compute.internal in Controller
17m         Normal    DisruptionBlocked             node/ip-10-53-227-119.eu-central-1.compute.internal   Node is nominated for a pending pod
22m         Normal    Starting                      node/ip-10-53-227-140.eu-central-1.compute.internal   Starting kubelet.
22m         Warning   InvalidDiskCapacity           node/ip-10-53-227-140.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
22m         Normal    NodeHasSufficientMemory       node/ip-10-53-227-140.eu-central-1.compute.internal   Node ip-10-53-227-140.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
22m         Normal    NodeHasNoDiskPressure         node/ip-10-53-227-140.eu-central-1.compute.internal   Node ip-10-53-227-140.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
22m         Normal    NodeHasSufficientPID          node/ip-10-53-227-140.eu-central-1.compute.internal   Node ip-10-53-227-140.eu-central-1.compute.internal status is now: NodeHasSufficientPID
22m         Normal    NodeAllocatableEnforced       node/ip-10-53-227-140.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
21m         Normal    Synced                        node/ip-10-53-227-140.eu-central-1.compute.internal   Node synced successfully
21m         Normal    DisruptionBlocked             node/ip-10-53-227-140.eu-central-1.compute.internal   Node isn't initialized
21m         Normal    RegisteredNode                node/ip-10-53-227-140.eu-central-1.compute.internal   Node ip-10-53-227-140.eu-central-1.compute.internal event: Registered Node ip-10-53-227-140.eu-central-1.compute.internal in Controller
21m         Normal    Starting                      node/ip-10-53-227-140.eu-central-1.compute.internal   
21m         Normal    ControllerVersionNotice       node/ip-10-53-227-140.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeReady                     node/ip-10-53-227-140.eu-central-1.compute.internal   Node ip-10-53-227-140.eu-central-1.compute.internal status is now: NodeReady
21m         Normal    Ready                         node/ip-10-53-227-140.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    NodeTrunkInitiated            node/ip-10-53-227-140.eu-central-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    RegisteredNode                node/ip-10-53-227-140.eu-central-1.compute.internal   Node ip-10-53-227-140.eu-central-1.compute.internal event: Registered Node ip-10-53-227-140.eu-central-1.compute.internal in Controller
19m         Normal    SpotRebalanceRecommendation   node/ip-10-53-227-140.eu-central-1.compute.internal   Spot rebalance recommendation was triggered
17m         Normal    DisruptionBlocked             node/ip-10-53-227-140.eu-central-1.compute.internal   Node is nominated for a pending pod
3m5s        Normal    DisruptionBlocked             node/ip-10-53-227-140.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
17m         Normal    Starting                      node/ip-10-53-227-99.eu-central-1.compute.internal    Starting kubelet.
17m         Warning   InvalidDiskCapacity           node/ip-10-53-227-99.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
17m         Normal    NodeHasSufficientMemory       node/ip-10-53-227-99.eu-central-1.compute.internal    Node ip-10-53-227-99.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
17m         Normal    NodeHasNoDiskPressure         node/ip-10-53-227-99.eu-central-1.compute.internal    Node ip-10-53-227-99.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
17m         Normal    NodeHasSufficientPID          node/ip-10-53-227-99.eu-central-1.compute.internal    Node ip-10-53-227-99.eu-central-1.compute.internal status is now: NodeHasSufficientPID
17m         Normal    NodeAllocatableEnforced       node/ip-10-53-227-99.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
17m         Normal    DisruptionBlocked             node/ip-10-53-227-99.eu-central-1.compute.internal    Node isn't initialized
17m         Normal    Synced                        node/ip-10-53-227-99.eu-central-1.compute.internal    Node synced successfully
17m         Normal    RegisteredNode                node/ip-10-53-227-99.eu-central-1.compute.internal    Node ip-10-53-227-99.eu-central-1.compute.internal event: Registered Node ip-10-53-227-99.eu-central-1.compute.internal in Controller
17m         Normal    Starting                      node/ip-10-53-227-99.eu-central-1.compute.internal    
17m         Normal    ControllerVersionNotice       node/ip-10-53-227-99.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeReady                     node/ip-10-53-227-99.eu-central-1.compute.internal    Node ip-10-53-227-99.eu-central-1.compute.internal status is now: NodeReady
17m         Normal    Ready                         node/ip-10-53-227-99.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    NodeTrunkInitiated            node/ip-10-53-227-99.eu-central-1.compute.internal    The node has trunk interface initialized successfully
28m         Normal    Starting                      node/ip-10-53-228-59.eu-central-1.compute.internal    Starting kubelet.
28m         Warning   InvalidDiskCapacity           node/ip-10-53-228-59.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
28m         Normal    NodeHasSufficientMemory       node/ip-10-53-228-59.eu-central-1.compute.internal    Node ip-10-53-228-59.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure         node/ip-10-53-228-59.eu-central-1.compute.internal    Node ip-10-53-228-59.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID          node/ip-10-53-228-59.eu-central-1.compute.internal    Node ip-10-53-228-59.eu-central-1.compute.internal status is now: NodeHasSufficientPID
28m         Normal    NodeAllocatableEnforced       node/ip-10-53-228-59.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
28m         Normal    Synced                        node/ip-10-53-228-59.eu-central-1.compute.internal    Node synced successfully
28m         Normal    RegisteredNode                node/ip-10-53-228-59.eu-central-1.compute.internal    Node ip-10-53-228-59.eu-central-1.compute.internal event: Registered Node ip-10-53-228-59.eu-central-1.compute.internal in Controller
28m         Normal    Starting                      node/ip-10-53-228-59.eu-central-1.compute.internal    
28m         Normal    ControllerVersionNotice       node/ip-10-53-228-59.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
27m         Warning   Unsupported                   node/ip-10-53-228-59.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    NodeReady                     node/ip-10-53-228-59.eu-central-1.compute.internal    Node ip-10-53-228-59.eu-central-1.compute.internal status is now: NodeReady
28m         Normal    Ready                         node/ip-10-53-228-59.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26m         Normal    RegisteredNode                node/ip-10-53-228-59.eu-central-1.compute.internal    Node ip-10-53-228-59.eu-central-1.compute.internal event: Registered Node ip-10-53-228-59.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-53-228-59.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
2m39s       Warning   Unsupported                   node/ip-10-53-228-59.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    RegisteredNode                node/ip-10-53-228-59.eu-central-1.compute.internal    Node ip-10-53-228-59.eu-central-1.compute.internal event: Registered Node ip-10-53-228-59.eu-central-1.compute.internal in Controller
28m         Normal    Starting                      node/ip-10-53-229-124.eu-central-1.compute.internal   Starting kubelet.
28m         Warning   InvalidDiskCapacity           node/ip-10-53-229-124.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
28m         Normal    NodeHasSufficientMemory       node/ip-10-53-229-124.eu-central-1.compute.internal   Node ip-10-53-229-124.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure         node/ip-10-53-229-124.eu-central-1.compute.internal   Node ip-10-53-229-124.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID          node/ip-10-53-229-124.eu-central-1.compute.internal   Node ip-10-53-229-124.eu-central-1.compute.internal status is now: NodeHasSufficientPID
28m         Normal    NodeAllocatableEnforced       node/ip-10-53-229-124.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
28m         Normal    Synced                        node/ip-10-53-229-124.eu-central-1.compute.internal   Node synced successfully
28m         Normal    RegisteredNode                node/ip-10-53-229-124.eu-central-1.compute.internal   Node ip-10-53-229-124.eu-central-1.compute.internal event: Registered Node ip-10-53-229-124.eu-central-1.compute.internal in Controller
28m         Normal    Starting                      node/ip-10-53-229-124.eu-central-1.compute.internal   
28m         Normal    ControllerVersionNotice       node/ip-10-53-229-124.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
27m         Warning   Unsupported                   node/ip-10-53-229-124.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    NodeReady                     node/ip-10-53-229-124.eu-central-1.compute.internal   Node ip-10-53-229-124.eu-central-1.compute.internal status is now: NodeReady
28m         Normal    Ready                         node/ip-10-53-229-124.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26m         Normal    RegisteredNode                node/ip-10-53-229-124.eu-central-1.compute.internal   Node ip-10-53-229-124.eu-central-1.compute.internal event: Registered Node ip-10-53-229-124.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-53-229-124.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
17m         Warning   Unsupported                   node/ip-10-53-229-124.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    RegisteredNode                node/ip-10-53-229-124.eu-central-1.compute.internal   Node ip-10-53-229-124.eu-central-1.compute.internal event: Registered Node ip-10-53-229-124.eu-central-1.compute.internal in Controller
19m         Normal    NodeNotSchedulable            node/ip-10-53-229-124.eu-central-1.compute.internal   Node ip-10-53-229-124.eu-central-1.compute.internal status is now: NodeNotSchedulable
17m         Normal    NodeNotReady                  node/ip-10-53-229-124.eu-central-1.compute.internal   Node ip-10-53-229-124.eu-central-1.compute.internal status is now: NodeNotReady
17m         Normal    MemoryPressure                node/ip-10-53-229-124.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure                  node/ip-10-53-229-124.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure                   node/ip-10-53-229-124.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                         node/ip-10-53-229-124.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DeletingNode                  node/ip-10-53-229-124.eu-central-1.compute.internal   Deleting node ip-10-53-229-124.eu-central-1.compute.internal because it does not exist in the cloud provider
17m         Normal    RemovingNode                  node/ip-10-53-229-124.eu-central-1.compute.internal   Node ip-10-53-229-124.eu-central-1.compute.internal event: Removing Node ip-10-53-229-124.eu-central-1.compute.internal from Controller
22m         Normal    Starting                      node/ip-10-53-229-135.eu-central-1.compute.internal   Starting kubelet.
22m         Warning   InvalidDiskCapacity           node/ip-10-53-229-135.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
22m         Normal    NodeHasSufficientMemory       node/ip-10-53-229-135.eu-central-1.compute.internal   Node ip-10-53-229-135.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
22m         Normal    NodeHasNoDiskPressure         node/ip-10-53-229-135.eu-central-1.compute.internal   Node ip-10-53-229-135.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
22m         Normal    NodeHasSufficientPID          node/ip-10-53-229-135.eu-central-1.compute.internal   Node ip-10-53-229-135.eu-central-1.compute.internal status is now: NodeHasSufficientPID
22m         Normal    NodeAllocatableEnforced       node/ip-10-53-229-135.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
22m         Normal    Synced                        node/ip-10-53-229-135.eu-central-1.compute.internal   Node synced successfully
22m         Normal    RegisteredNode                node/ip-10-53-229-135.eu-central-1.compute.internal   Node ip-10-53-229-135.eu-central-1.compute.internal event: Registered Node ip-10-53-229-135.eu-central-1.compute.internal in Controller
22m         Normal    Starting                      node/ip-10-53-229-135.eu-central-1.compute.internal   
22m         Normal    DisruptionBlocked             node/ip-10-53-229-135.eu-central-1.compute.internal   Node isn't initialized
22m         Normal    ControllerVersionNotice       node/ip-10-53-229-135.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeReady                     node/ip-10-53-229-135.eu-central-1.compute.internal   Node ip-10-53-229-135.eu-central-1.compute.internal status is now: NodeReady
22m         Normal    Ready                         node/ip-10-53-229-135.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    NodeTrunkInitiated            node/ip-10-53-229-135.eu-central-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    RegisteredNode                node/ip-10-53-229-135.eu-central-1.compute.internal   Node ip-10-53-229-135.eu-central-1.compute.internal event: Registered Node ip-10-53-229-135.eu-central-1.compute.internal in Controller
19m         Normal    DisruptionBlocked             node/ip-10-53-229-135.eu-central-1.compute.internal   Node is nominated for a pending pod
2m44s       Normal    Unconsolidatable              node/ip-10-53-229-135.eu-central-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
54m         Normal    Unconsolidatable              node/ip-10-53-229-230.eu-central-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
26m         Normal    RegisteredNode                node/ip-10-53-229-230.eu-central-1.compute.internal   Node ip-10-53-229-230.eu-central-1.compute.internal event: Registered Node ip-10-53-229-230.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-53-229-230.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated            node/ip-10-53-229-230.eu-central-1.compute.internal   The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked             node/ip-10-53-229-230.eu-central-1.compute.internal   Node is deleting or marked for deletion
22m         Normal    DisruptionBlocked             node/ip-10-53-229-230.eu-central-1.compute.internal   Node is nominated for a pending pod
21m         Normal    RegisteredNode                node/ip-10-53-229-230.eu-central-1.compute.internal   Node ip-10-53-229-230.eu-central-1.compute.internal event: Registered Node ip-10-53-229-230.eu-central-1.compute.internal in Controller
17m         Normal    DisruptionBlocked             node/ip-10-53-229-230.eu-central-1.compute.internal   Node is deleting or marked for deletion
19m         Normal    DisruptionTerminating         node/ip-10-53-229-230.eu-central-1.compute.internal   Disrupting Node: Drifted/Delete
19m         Warning   FailedDraining                node/ip-10-53-229-230.eu-central-1.compute.internal   Failed to drain node, 18 pods are waiting to be evicted
18m         Warning   InstanceTerminating           node/ip-10-53-229-230.eu-central-1.compute.internal   Instance is terminating
17m         Normal    NodeNotReady                  node/ip-10-53-229-230.eu-central-1.compute.internal   Node ip-10-53-229-230.eu-central-1.compute.internal status is now: NodeNotReady
17m         Normal    MemoryPressure                node/ip-10-53-229-230.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure                  node/ip-10-53-229-230.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure                   node/ip-10-53-229-230.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                         node/ip-10-53-229-230.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    RemovingNode                  node/ip-10-53-229-230.eu-central-1.compute.internal   Node ip-10-53-229-230.eu-central-1.compute.internal event: Removing Node ip-10-53-229-230.eu-central-1.compute.internal from Controller
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE            NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring   cluster-monitoring-pdb         N/A             1                 1                     296d
karpenter            karpenter                      N/A             1                 1                     536d
kube-system          coredns                        N/A             1                 1                     541d
kube-system          ebs-csi-controller             N/A             1                 1                     541d
kyverno              kyverno-admission-controller   1               N/A               2                     536d
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

Generated on: Mon Sep 22 11:45:17 CEST 2025
