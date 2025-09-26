# Cluster recon for tfh-orb-prod-infra,sa-east-1,orb-prod-v2-sa-east-1,tunnel-vpc-orb-prod-sa-east-1

TFH EKS login...
```console
2025/09/23 14:10:43 INFO Logging into AWS
2025/09/23 14:10:43 INFO Token found and valid
2025/09/23 14:10:45 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-prod-sa-east-1 id=b472fd31-abc3-49ba-a6d6-66a897d01771
2025/09/23 14:10:47 INFO Active WARP Virtual Network id=b472fd31-abc3-49ba-a6d6-66a897d01771
Updated context tfh-orb-prod-v2-sa-east-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "orb-prod-v2-sa-east-1",
        "arn": "arn:aws:eks:sa-east-1:573252405782:cluster/orb-prod-v2-sa-east-1",
        "createdAt": "2023-06-16T09:55:34.679000+02:00",
        "version": "1.33",
        "endpoint": "https://782C2C34DCEB34712D151148123AE8C0.sk1.sa-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::573252405782:role/eks-cluster-orb-prod-v2-sa-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0d6521ad24ea827ad",
                "subnet-0fce81b2ba92d5ae8",
                "subnet-0e71a4e4cc09e31f1"
            ],
            "securityGroupIds": [
                "sg-06b6cdfe6c9fea1bf"
            ],
            "clusterSecurityGroupId": "sg-0a0e768bfb94e5eb2",
            "vpcId": "vpc-07b02f7440f869abe",
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
                "issuer": "https://oidc.eks.sa-east-1.amazonaws.com/id/782C2C34DCEB34712D151148123AE8C0"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EWXhOakE0TURBeU5Wb1hEVE16TURZeE16QTRNREF5TlZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTHE2Ci9STzAvUEoxbTgwTVdwNjFLYy8zTU0wVm5xbzdXOVdBRnFiUTlnRTNvMk1xdDdlT2orQmVmQUVwWDNGR1Viam0Kam9PcjFNSkg2enp3dFRPQjU1K3huOUpwRGM0UnB2TXdkRG9BKzRRL2hMQTNrRzh1ci9UcnhoczNsV2FtRitYZApJTittNi8zWVdyWUdQbkVXWkF2eUZFY2syQWZmZi9yYmpkQWpGWkVWRXg5R08yM1pTT0kwTUxuVFBrdHM3R3E3CmN6OUZFdDF5eEhrdWJIcTVqWUxtTEpRTmNmS3c4OHo1a0lpcGE3anBQMkNaYkhuVFdHUlhiUzVvUXZrSFlDR3kKOWltTlJZQ3l1SHJCd0dmTDlnYVVsZ0VWZ1FEZ2F2R3dLVFQ2elJpakVUMjJtNGZxKzYxTnltWDE0bURYVDg0NgpNb1VSenA3d0VOTVk2UTJnQVFVQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZQU0V2ckdSb1JxVXRGU3RYZkk1R1dGNEQwQU1NQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBSzdjbEhhV1RpT29obEZ3TXVvZQoyVUx6cExBMWhBU1RhaWloWTdjeUw0WWU0cnVlNkZsMXZ2ZzdMell5WkJVdExVTFRNd3p5VnR0L0d6cFhEK2UyCkRIZ1dkRlZNc3hqU2E2bjZTQUY2OEZKYlR4VlFBUWFLU0hHa2lxZW1KcGZhbGVTVW1vWEc2UDR3MDJ2SVl4ZXIKT2QwL0VRNVgvd1Q5cDRzVzVjcTA0d2IvQ1hqZXFoSitJSWlaY3k4MmxaNzY2QXNLNXRMNGhxNHFGKzRjaHB4Rgp5UmtIQTVxYlNFcHVvUmQ3K1ZwN1RaL0xkcmVLcGNhQ09KenhoMWoyRkJHMXFvcVJUVGlWVnNjcnFwU3hZOTI3CndubmZYQldEOFdYK3hTUUdGZHZ4RUY3bnFqT0FhRGVOWjA5TVFkaXpRbGxFNnNNdkx2R1BkNjJtem5nNjllVTgKaUhvPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-prod-v2-sa-east-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:sa-east-1:573252405782:key/a582e775-f7e9-475d-9af1-977980146113"
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
NAME                                         STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-82-65-156.sa-east-1.compute.internal   Ready    <none>   25m     v1.33.4-eks-99d6cc0   10.82.65.156   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-sa-east-1
ip-10-82-66-131.sa-east-1.compute.internal   Ready    <none>   28m     v1.33.4-eks-99d6cc0   10.82.66.131   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-82-66-147.sa-east-1.compute.internal   Ready    <none>   18m     v1.33.4-eks-99d6cc0   10.82.66.147   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-82-66-184.sa-east-1.compute.internal   Ready    <none>   27m     v1.33.4-eks-99d6cc0   10.82.66.184   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-66-221.sa-east-1.compute.internal   Ready    <none>   7m14s   v1.33.4-eks-99d6cc0   10.82.66.221   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-67-167.sa-east-1.compute.internal   Ready    <none>   19m     v1.33.4-eks-99d6cc0   10.82.67.167   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-67-192.sa-east-1.compute.internal   Ready    <none>   23m     v1.33.4-eks-99d6cc0   10.82.67.192   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-67-84.sa-east-1.compute.internal    Ready    <none>   28m     v1.33.4-eks-99d6cc0   10.82.67.84    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-68-127.sa-east-1.compute.internal   Ready    <none>   27m     v1.33.4-eks-99d6cc0   10.82.68.127   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-sa-east-1
ip-10-82-68-175.sa-east-1.compute.internal   Ready    <none>   26m     v1.33.4-eks-99d6cc0   10.82.68.175   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-68-228.sa-east-1.compute.internal   Ready    <none>   18m     v1.33.4-eks-99d6cc0   10.82.68.228   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-68-27.sa-east-1.compute.internal    Ready    <none>   16m     v1.33.4-eks-99d6cc0   10.82.68.27    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                                         STATUS   ROLES    TAINTS
ip-10-82-65-156.sa-east-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-82-66-131.sa-east-1.compute.internal   Ready    <none>   <none>
ip-10-82-66-147.sa-east-1.compute.internal   Ready    <none>   <none>
ip-10-82-66-184.sa-east-1.compute.internal   Ready    <none>   <none>
ip-10-82-66-221.sa-east-1.compute.internal   Ready    <none>   <none>
ip-10-82-67-167.sa-east-1.compute.internal   Ready    <none>   <none>
ip-10-82-67-192.sa-east-1.compute.internal   Ready    <none>   <none>
ip-10-82-67-84.sa-east-1.compute.internal    Ready    <none>   <none>
ip-10-82-68-127.sa-east-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-82-68-175.sa-east-1.compute.internal   Ready    <none>   <none>
ip-10-82-68-228.sa-east-1.compute.internal   Ready    <none>   <none>
ip-10-82-68-27.sa-east-1.compute.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                                            MESSAGE
22m         Normal    Finalized                     node                                              Finalized karpenter.sh/termination
18m         Normal    Finalized                     node                                              Finalized karpenter.sh/termination
5m55s       Normal    Finalized                     node                                              Finalized karpenter.sh/termination
31m         Warning   Unsupported                   node/ip-10-82-64-255.sa-east-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
30m         Normal    RegisteredNode                node/ip-10-82-64-255.sa-east-1.compute.internal   Node ip-10-82-64-255.sa-east-1.compute.internal event: Registered Node ip-10-82-64-255.sa-east-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice       node/ip-10-82-64-255.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
17m         Warning   Unsupported                   node/ip-10-82-64-255.sa-east-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
23m         Normal    NodeNotSchedulable            node/ip-10-82-64-255.sa-east-1.compute.internal   Node ip-10-82-64-255.sa-east-1.compute.internal status is now: NodeNotSchedulable
17m         Normal    NodeNotReady                  node/ip-10-82-64-255.sa-east-1.compute.internal   Node ip-10-82-64-255.sa-east-1.compute.internal status is now: NodeNotReady
17m         Normal    MemoryPressure                node/ip-10-82-64-255.sa-east-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure                  node/ip-10-82-64-255.sa-east-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure                   node/ip-10-82-64-255.sa-east-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                         node/ip-10-82-64-255.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DeletingNode                  node/ip-10-82-64-255.sa-east-1.compute.internal   Deleting node ip-10-82-64-255.sa-east-1.compute.internal because it does not exist in the cloud provider
17m         Normal    RemovingNode                  node/ip-10-82-64-255.sa-east-1.compute.internal   Node ip-10-82-64-255.sa-east-1.compute.internal event: Removing Node ip-10-82-64-255.sa-east-1.compute.internal from Controller
25m         Normal    Starting                      node/ip-10-82-65-156.sa-east-1.compute.internal   Starting kubelet.
25m         Warning   InvalidDiskCapacity           node/ip-10-82-65-156.sa-east-1.compute.internal   invalid capacity 0 on image filesystem
25m         Normal    NodeHasSufficientMemory       node/ip-10-82-65-156.sa-east-1.compute.internal   Node ip-10-82-65-156.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
25m         Normal    NodeHasNoDiskPressure         node/ip-10-82-65-156.sa-east-1.compute.internal   Node ip-10-82-65-156.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
25m         Normal    NodeHasSufficientPID          node/ip-10-82-65-156.sa-east-1.compute.internal   Node ip-10-82-65-156.sa-east-1.compute.internal status is now: NodeHasSufficientPID
25m         Normal    NodeAllocatableEnforced       node/ip-10-82-65-156.sa-east-1.compute.internal   Updated Node Allocatable limit across pods
25m         Normal    Synced                        node/ip-10-82-65-156.sa-east-1.compute.internal   Node synced successfully
25m         Normal    RegisteredNode                node/ip-10-82-65-156.sa-east-1.compute.internal   Node ip-10-82-65-156.sa-east-1.compute.internal event: Registered Node ip-10-82-65-156.sa-east-1.compute.internal in Controller
25m         Normal    Starting                      node/ip-10-82-65-156.sa-east-1.compute.internal   
25m         Normal    ControllerVersionNotice       node/ip-10-82-65-156.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
4m43s       Warning   Unsupported                   node/ip-10-82-65-156.sa-east-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    NodeReady                     node/ip-10-82-65-156.sa-east-1.compute.internal   Node ip-10-82-65-156.sa-east-1.compute.internal status is now: NodeReady
25m         Normal    Ready                         node/ip-10-82-65-156.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
35m         Normal    Unconsolidatable              node/ip-10-82-65-250.sa-east-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
30m         Normal    RegisteredNode                node/ip-10-82-65-250.sa-east-1.compute.internal   Node ip-10-82-65-250.sa-east-1.compute.internal event: Registered Node ip-10-82-65-250.sa-east-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice       node/ip-10-82-65-250.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated            node/ip-10-82-65-250.sa-east-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked             node/ip-10-82-65-250.sa-east-1.compute.internal   Node is nominated for a pending pod
20m         Normal    DisruptionBlocked             node/ip-10-82-65-250.sa-east-1.compute.internal   Not all pods would schedule, orb-manager-external/orb-manager-external-655bf66c8b-w7dgr => would schedule against uninitialized nodeclaim/main-amd64-f96vt orb-monitoring-service/orb-monitoring-service-5547bdfddb-24gxz => would schedule against uninitialized nodeclaim/main-amd64-f96vt
14m         Normal    DisruptionBlocked             node/ip-10-82-65-250.sa-east-1.compute.internal   Node is deleting or marked for deletion
16m         Normal    DisruptionTerminating         node/ip-10-82-65-250.sa-east-1.compute.internal   Disrupting Node: Drifted/Delete
16m         Warning   FailedDraining                node/ip-10-82-65-250.sa-east-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
15m         Warning   InstanceTerminating           node/ip-10-82-65-250.sa-east-1.compute.internal   Instance is terminating
14m         Normal    NodeNotReady                  node/ip-10-82-65-250.sa-east-1.compute.internal   Node ip-10-82-65-250.sa-east-1.compute.internal status is now: NodeNotReady
14m         Normal    MemoryPressure                node/ip-10-82-65-250.sa-east-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure                  node/ip-10-82-65-250.sa-east-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure                   node/ip-10-82-65-250.sa-east-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                         node/ip-10-82-65-250.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DeletingNode                  node/ip-10-82-65-250.sa-east-1.compute.internal   Deleting node ip-10-82-65-250.sa-east-1.compute.internal because it does not exist in the cloud provider
14m         Normal    RemovingNode                  node/ip-10-82-65-250.sa-east-1.compute.internal   Node ip-10-82-65-250.sa-east-1.compute.internal event: Removing Node ip-10-82-65-250.sa-east-1.compute.internal from Controller
41m         Normal    Unconsolidatable              node/ip-10-82-65-60.sa-east-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
57m         Normal    DisruptionBlocked             node/ip-10-82-65-60.sa-east-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-pdb)
38m         Normal    SpotRebalanceRecommendation   node/ip-10-82-65-60.sa-east-1.compute.internal    Spot rebalance recommendation was triggered
30m         Normal    RegisteredNode                node/ip-10-82-65-60.sa-east-1.compute.internal    Node ip-10-82-65-60.sa-east-1.compute.internal event: Registered Node ip-10-82-65-60.sa-east-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice       node/ip-10-82-65-60.sa-east-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated            node/ip-10-82-65-60.sa-east-1.compute.internal    The node has trunk interface initialized successfully
28m         Normal    DisruptionBlocked             node/ip-10-82-65-60.sa-east-1.compute.internal    Node is deleting or marked for deletion
27m         Normal    DisruptionTerminating         node/ip-10-82-65-60.sa-east-1.compute.internal    Disrupting Node: Drifted/Replace
27m         Warning   FailedDraining                node/ip-10-82-65-60.sa-east-1.compute.internal    Failed to drain node, 6 pods are waiting to be evicted
27m         Warning   InstanceTerminating           node/ip-10-82-65-60.sa-east-1.compute.internal    Instance is terminating
26m         Normal    RemovingNode                  node/ip-10-82-65-60.sa-east-1.compute.internal    Node ip-10-82-65-60.sa-east-1.compute.internal event: Removing Node ip-10-82-65-60.sa-east-1.compute.internal from Controller
27m         Normal    DisruptionBlocked             node/ip-10-82-65-93.sa-east-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
25m         Normal    DisruptionBlocked             node/ip-10-82-65-93.sa-east-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
35m         Normal    Unconsolidatable              node/ip-10-82-65-93.sa-east-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
30m         Normal    RegisteredNode                node/ip-10-82-65-93.sa-east-1.compute.internal    Node ip-10-82-65-93.sa-east-1.compute.internal event: Registered Node ip-10-82-65-93.sa-east-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice       node/ip-10-82-65-93.sa-east-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated            node/ip-10-82-65-93.sa-east-1.compute.internal    The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked             node/ip-10-82-65-93.sa-east-1.compute.internal    Node is deleting or marked for deletion
23m         Normal    SpotRebalanceRecommendation   node/ip-10-82-65-93.sa-east-1.compute.internal    Spot rebalance recommendation was triggered
22m         Normal    DisruptionTerminating         node/ip-10-82-65-93.sa-east-1.compute.internal    Disrupting Node: Drifted/Replace
22m         Warning   FailedDraining                node/ip-10-82-65-93.sa-east-1.compute.internal    Failed to drain node, 5 pods are waiting to be evicted
21m         Warning   InstanceTerminating           node/ip-10-82-65-93.sa-east-1.compute.internal    Instance is terminating
20m         Normal    NodeNotReady                  node/ip-10-82-65-93.sa-east-1.compute.internal    Node ip-10-82-65-93.sa-east-1.compute.internal status is now: NodeNotReady
20m         Normal    MemoryPressure                node/ip-10-82-65-93.sa-east-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    DiskPressure                  node/ip-10-82-65-93.sa-east-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    PIDPressure                   node/ip-10-82-65-93.sa-east-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    Ready                         node/ip-10-82-65-93.sa-east-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    DeletingNode                  node/ip-10-82-65-93.sa-east-1.compute.internal    Deleting node ip-10-82-65-93.sa-east-1.compute.internal because it does not exist in the cloud provider
20m         Normal    RemovingNode                  node/ip-10-82-65-93.sa-east-1.compute.internal    Node ip-10-82-65-93.sa-east-1.compute.internal event: Removing Node ip-10-82-65-93.sa-east-1.compute.internal from Controller
28m         Normal    Starting                      node/ip-10-82-66-131.sa-east-1.compute.internal   Starting kubelet.
28m         Warning   InvalidDiskCapacity           node/ip-10-82-66-131.sa-east-1.compute.internal   invalid capacity 0 on image filesystem
28m         Normal    NodeHasSufficientMemory       node/ip-10-82-66-131.sa-east-1.compute.internal   Node ip-10-82-66-131.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure         node/ip-10-82-66-131.sa-east-1.compute.internal   Node ip-10-82-66-131.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID          node/ip-10-82-66-131.sa-east-1.compute.internal   Node ip-10-82-66-131.sa-east-1.compute.internal status is now: NodeHasSufficientPID
28m         Normal    NodeAllocatableEnforced       node/ip-10-82-66-131.sa-east-1.compute.internal   Updated Node Allocatable limit across pods
28m         Normal    Synced                        node/ip-10-82-66-131.sa-east-1.compute.internal   Node synced successfully
28m         Normal    RegisteredNode                node/ip-10-82-66-131.sa-east-1.compute.internal   Node ip-10-82-66-131.sa-east-1.compute.internal event: Registered Node ip-10-82-66-131.sa-east-1.compute.internal in Controller
28m         Normal    DisruptionBlocked             node/ip-10-82-66-131.sa-east-1.compute.internal   Node isn't initialized
28m         Normal    Starting                      node/ip-10-82-66-131.sa-east-1.compute.internal   
28m         Normal    ControllerVersionNotice       node/ip-10-82-66-131.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
28m         Normal    NodeReady                     node/ip-10-82-66-131.sa-east-1.compute.internal   Node ip-10-82-66-131.sa-east-1.compute.internal status is now: NodeReady
28m         Normal    Ready                         node/ip-10-82-66-131.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
28m         Normal    NodeTrunkInitiated            node/ip-10-82-66-131.sa-east-1.compute.internal   The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked             node/ip-10-82-66-131.sa-east-1.compute.internal   Node is nominated for a pending pod
20m         Normal    DisruptionBlocked             node/ip-10-82-66-131.sa-east-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
18m         Normal    DisruptionBlocked             node/ip-10-82-66-131.sa-east-1.compute.internal   Node is nominated for a pending pod
17m         Normal    DisruptionBlocked             node/ip-10-82-66-131.sa-east-1.compute.internal   Node is nominated for a pending pod
17s         Normal    DisruptionBlocked             node/ip-10-82-66-131.sa-east-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
57m         Normal    Starting                      node/ip-10-82-66-14.sa-east-1.compute.internal    Starting kubelet.
57m         Warning   InvalidDiskCapacity           node/ip-10-82-66-14.sa-east-1.compute.internal    invalid capacity 0 on image filesystem
57m         Normal    NodeHasSufficientMemory       node/ip-10-82-66-14.sa-east-1.compute.internal    Node ip-10-82-66-14.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
57m         Normal    NodeHasNoDiskPressure         node/ip-10-82-66-14.sa-east-1.compute.internal    Node ip-10-82-66-14.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
57m         Normal    NodeHasSufficientPID          node/ip-10-82-66-14.sa-east-1.compute.internal    Node ip-10-82-66-14.sa-east-1.compute.internal status is now: NodeHasSufficientPID
57m         Normal    NodeAllocatableEnforced       node/ip-10-82-66-14.sa-east-1.compute.internal    Updated Node Allocatable limit across pods
57m         Normal    RegisteredNode                node/ip-10-82-66-14.sa-east-1.compute.internal    Node ip-10-82-66-14.sa-east-1.compute.internal event: Registered Node ip-10-82-66-14.sa-east-1.compute.internal in Controller
57m         Normal    Synced                        node/ip-10-82-66-14.sa-east-1.compute.internal    Node synced successfully
57m         Normal    Starting                      node/ip-10-82-66-14.sa-east-1.compute.internal    
57m         Normal    DisruptionBlocked             node/ip-10-82-66-14.sa-east-1.compute.internal    Node isn't initialized
57m         Normal    ControllerVersionNotice       node/ip-10-82-66-14.sa-east-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
57m         Normal    NodeReady                     node/ip-10-82-66-14.sa-east-1.compute.internal    Node ip-10-82-66-14.sa-east-1.compute.internal status is now: NodeReady
57m         Normal    Ready                         node/ip-10-82-66-14.sa-east-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
57m         Normal    NodeTrunkInitiated            node/ip-10-82-66-14.sa-east-1.compute.internal    The node has trunk interface initialized successfully
53m         Normal    DisruptionBlocked             node/ip-10-82-66-14.sa-east-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
30m         Normal    RegisteredNode                node/ip-10-82-66-14.sa-east-1.compute.internal    Node ip-10-82-66-14.sa-east-1.compute.internal event: Registered Node ip-10-82-66-14.sa-east-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice       node/ip-10-82-66-14.sa-east-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated            node/ip-10-82-66-14.sa-east-1.compute.internal    The node has trunk interface initialized successfully
28m         Normal    DisruptionBlocked             node/ip-10-82-66-14.sa-east-1.compute.internal    Node is deleting or marked for deletion
28m         Normal    DisruptionTerminating         node/ip-10-82-66-14.sa-east-1.compute.internal    Disrupting Node: Drifted/Replace
28m         Warning   FailedDraining                node/ip-10-82-66-14.sa-east-1.compute.internal    Failed to drain node, 3 pods are waiting to be evicted
27m         Warning   InstanceTerminating           node/ip-10-82-66-14.sa-east-1.compute.internal    Instance is terminating
26m         Normal    RemovingNode                  node/ip-10-82-66-14.sa-east-1.compute.internal    Node ip-10-82-66-14.sa-east-1.compute.internal event: Removing Node ip-10-82-66-14.sa-east-1.compute.internal from Controller
18m         Normal    Starting                      node/ip-10-82-66-147.sa-east-1.compute.internal   Starting kubelet.
18m         Warning   InvalidDiskCapacity           node/ip-10-82-66-147.sa-east-1.compute.internal   invalid capacity 0 on image filesystem
18m         Normal    NodeHasSufficientMemory       node/ip-10-82-66-147.sa-east-1.compute.internal   Node ip-10-82-66-147.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
18m         Normal    NodeHasNoDiskPressure         node/ip-10-82-66-147.sa-east-1.compute.internal   Node ip-10-82-66-147.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
18m         Normal    NodeHasSufficientPID          node/ip-10-82-66-147.sa-east-1.compute.internal   Node ip-10-82-66-147.sa-east-1.compute.internal status is now: NodeHasSufficientPID
18m         Normal    NodeAllocatableEnforced       node/ip-10-82-66-147.sa-east-1.compute.internal   Updated Node Allocatable limit across pods
18m         Normal    Synced                        node/ip-10-82-66-147.sa-east-1.compute.internal   Node synced successfully
18m         Normal    RegisteredNode                node/ip-10-82-66-147.sa-east-1.compute.internal   Node ip-10-82-66-147.sa-east-1.compute.internal event: Registered Node ip-10-82-66-147.sa-east-1.compute.internal in Controller
18m         Normal    Starting                      node/ip-10-82-66-147.sa-east-1.compute.internal   
18m         Normal    ControllerVersionNotice       node/ip-10-82-66-147.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
18m         Normal    DisruptionBlocked             node/ip-10-82-66-147.sa-east-1.compute.internal   Node isn't initialized
18m         Normal    NodeReady                     node/ip-10-82-66-147.sa-east-1.compute.internal   Node ip-10-82-66-147.sa-east-1.compute.internal status is now: NodeReady
18m         Normal    Ready                         node/ip-10-82-66-147.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
18m         Normal    NodeTrunkInitiated            node/ip-10-82-66-147.sa-east-1.compute.internal   The node has trunk interface initialized successfully
31m         Warning   Unsupported                   node/ip-10-82-66-163.sa-east-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
30m         Normal    RegisteredNode                node/ip-10-82-66-163.sa-east-1.compute.internal   Node ip-10-82-66-163.sa-east-1.compute.internal event: Registered Node ip-10-82-66-163.sa-east-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice       node/ip-10-82-66-163.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
20m         Warning   Unsupported                   node/ip-10-82-66-163.sa-east-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
23m         Normal    NodeNotSchedulable            node/ip-10-82-66-163.sa-east-1.compute.internal   Node ip-10-82-66-163.sa-east-1.compute.internal status is now: NodeNotSchedulable
20m         Normal    NodeNotReady                  node/ip-10-82-66-163.sa-east-1.compute.internal   Node ip-10-82-66-163.sa-east-1.compute.internal status is now: NodeNotReady
20m         Normal    MemoryPressure                node/ip-10-82-66-163.sa-east-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    DiskPressure                  node/ip-10-82-66-163.sa-east-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    PIDPressure                   node/ip-10-82-66-163.sa-east-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    Ready                         node/ip-10-82-66-163.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    DeletingNode                  node/ip-10-82-66-163.sa-east-1.compute.internal   Deleting node ip-10-82-66-163.sa-east-1.compute.internal because it does not exist in the cloud provider
20m         Normal    RemovingNode                  node/ip-10-82-66-163.sa-east-1.compute.internal   Node ip-10-82-66-163.sa-east-1.compute.internal event: Removing Node ip-10-82-66-163.sa-east-1.compute.internal from Controller
27m         Normal    Starting                      node/ip-10-82-66-184.sa-east-1.compute.internal   Starting kubelet.
27m         Warning   InvalidDiskCapacity           node/ip-10-82-66-184.sa-east-1.compute.internal   invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory       node/ip-10-82-66-184.sa-east-1.compute.internal   Node ip-10-82-66-184.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure         node/ip-10-82-66-184.sa-east-1.compute.internal   Node ip-10-82-66-184.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID          node/ip-10-82-66-184.sa-east-1.compute.internal   Node ip-10-82-66-184.sa-east-1.compute.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced       node/ip-10-82-66-184.sa-east-1.compute.internal   Updated Node Allocatable limit across pods
27m         Normal    RegisteredNode                node/ip-10-82-66-184.sa-east-1.compute.internal   Node ip-10-82-66-184.sa-east-1.compute.internal event: Registered Node ip-10-82-66-184.sa-east-1.compute.internal in Controller
27m         Normal    Synced                        node/ip-10-82-66-184.sa-east-1.compute.internal   Node synced successfully
27m         Normal    DisruptionBlocked             node/ip-10-82-66-184.sa-east-1.compute.internal   Node isn't initialized
27m         Normal    Starting                      node/ip-10-82-66-184.sa-east-1.compute.internal   
27m         Normal    ControllerVersionNotice       node/ip-10-82-66-184.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeReady                     node/ip-10-82-66-184.sa-east-1.compute.internal   Node ip-10-82-66-184.sa-east-1.compute.internal status is now: NodeReady
27m         Normal    Ready                         node/ip-10-82-66-184.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
27m         Normal    NodeTrunkInitiated            node/ip-10-82-66-184.sa-east-1.compute.internal   The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-82-66-184.sa-east-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
22m         Normal    DisruptionBlocked             node/ip-10-82-66-184.sa-east-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
19m         Normal    DisruptionBlocked             node/ip-10-82-66-184.sa-east-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
7m43s       Normal    DisruptionBlocked             node/ip-10-82-66-184.sa-east-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
119s        Normal    Unconsolidatable              node/ip-10-82-66-184.sa-east-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
7m21s       Normal    Starting                      node/ip-10-82-66-221.sa-east-1.compute.internal   Starting kubelet.
7m21s       Warning   InvalidDiskCapacity           node/ip-10-82-66-221.sa-east-1.compute.internal   invalid capacity 0 on image filesystem
7m20s       Normal    NodeHasSufficientMemory       node/ip-10-82-66-221.sa-east-1.compute.internal   Node ip-10-82-66-221.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
7m20s       Normal    NodeHasNoDiskPressure         node/ip-10-82-66-221.sa-east-1.compute.internal   Node ip-10-82-66-221.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
7m20s       Normal    NodeHasSufficientPID          node/ip-10-82-66-221.sa-east-1.compute.internal   Node ip-10-82-66-221.sa-east-1.compute.internal status is now: NodeHasSufficientPID
7m20s       Normal    NodeAllocatableEnforced       node/ip-10-82-66-221.sa-east-1.compute.internal   Updated Node Allocatable limit across pods
7m17s       Normal    Synced                        node/ip-10-82-66-221.sa-east-1.compute.internal   Node synced successfully
7m16s       Normal    RegisteredNode                node/ip-10-82-66-221.sa-east-1.compute.internal   Node ip-10-82-66-221.sa-east-1.compute.internal event: Registered Node ip-10-82-66-221.sa-east-1.compute.internal in Controller
7m12s       Normal    DisruptionBlocked             node/ip-10-82-66-221.sa-east-1.compute.internal   Node isn't initialized
7m12s       Normal    Starting                      node/ip-10-82-66-221.sa-east-1.compute.internal   
7m7s        Normal    ControllerVersionNotice       node/ip-10-82-66-221.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
7m7s        Normal    NodeReady                     node/ip-10-82-66-221.sa-east-1.compute.internal   Node ip-10-82-66-221.sa-east-1.compute.internal status is now: NodeReady
7m6s        Normal    Ready                         node/ip-10-82-66-221.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
7m4s        Normal    NodeTrunkInitiated            node/ip-10-82-66-221.sa-east-1.compute.internal   The node has trunk interface initialized successfully
35m         Normal    Unconsolidatable              node/ip-10-82-67-15.sa-east-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
30m         Normal    RegisteredNode                node/ip-10-82-67-15.sa-east-1.compute.internal    Node ip-10-82-67-15.sa-east-1.compute.internal event: Registered Node ip-10-82-67-15.sa-east-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice       node/ip-10-82-67-15.sa-east-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated            node/ip-10-82-67-15.sa-east-1.compute.internal    The node has trunk interface initialized successfully
27m         Normal    DisruptionBlocked             node/ip-10-82-67-15.sa-east-1.compute.internal    Node is deleting or marked for deletion
27m         Normal    DisruptionTerminating         node/ip-10-82-67-15.sa-east-1.compute.internal    Disrupting Node: Drifted/Delete
27m         Warning   FailedDraining                node/ip-10-82-67-15.sa-east-1.compute.internal    Failed to drain node, 5 pods are waiting to be evicted
26m         Warning   InstanceTerminating           node/ip-10-82-67-15.sa-east-1.compute.internal    Instance is terminating
25m         Normal    RemovingNode                  node/ip-10-82-67-15.sa-east-1.compute.internal    Node ip-10-82-67-15.sa-east-1.compute.internal event: Removing Node ip-10-82-67-15.sa-east-1.compute.internal from Controller
19m         Normal    Starting                      node/ip-10-82-67-167.sa-east-1.compute.internal   Starting kubelet.
19m         Warning   InvalidDiskCapacity           node/ip-10-82-67-167.sa-east-1.compute.internal   invalid capacity 0 on image filesystem
19m         Normal    NodeHasSufficientMemory       node/ip-10-82-67-167.sa-east-1.compute.internal   Node ip-10-82-67-167.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
19m         Normal    NodeHasNoDiskPressure         node/ip-10-82-67-167.sa-east-1.compute.internal   Node ip-10-82-67-167.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
19m         Normal    NodeHasSufficientPID          node/ip-10-82-67-167.sa-east-1.compute.internal   Node ip-10-82-67-167.sa-east-1.compute.internal status is now: NodeHasSufficientPID
19m         Normal    NodeAllocatableEnforced       node/ip-10-82-67-167.sa-east-1.compute.internal   Updated Node Allocatable limit across pods
19m         Normal    Synced                        node/ip-10-82-67-167.sa-east-1.compute.internal   Node synced successfully
19m         Normal    DisruptionBlocked             node/ip-10-82-67-167.sa-east-1.compute.internal   Node isn't initialized
19m         Normal    RegisteredNode                node/ip-10-82-67-167.sa-east-1.compute.internal   Node ip-10-82-67-167.sa-east-1.compute.internal event: Registered Node ip-10-82-67-167.sa-east-1.compute.internal in Controller
19m         Normal    Starting                      node/ip-10-82-67-167.sa-east-1.compute.internal   
19m         Normal    ControllerVersionNotice       node/ip-10-82-67-167.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
19m         Normal    NodeReady                     node/ip-10-82-67-167.sa-east-1.compute.internal   Node ip-10-82-67-167.sa-east-1.compute.internal status is now: NodeReady
19m         Normal    Ready                         node/ip-10-82-67-167.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    NodeTrunkInitiated            node/ip-10-82-67-167.sa-east-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    Starting                      node/ip-10-82-67-184.sa-east-1.compute.internal   Starting kubelet.
24m         Warning   InvalidDiskCapacity           node/ip-10-82-67-184.sa-east-1.compute.internal   invalid capacity 0 on image filesystem
24m         Normal    NodeHasSufficientMemory       node/ip-10-82-67-184.sa-east-1.compute.internal   Node ip-10-82-67-184.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
24m         Normal    NodeHasNoDiskPressure         node/ip-10-82-67-184.sa-east-1.compute.internal   Node ip-10-82-67-184.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
24m         Normal    NodeHasSufficientPID          node/ip-10-82-67-184.sa-east-1.compute.internal   Node ip-10-82-67-184.sa-east-1.compute.internal status is now: NodeHasSufficientPID
24m         Normal    NodeAllocatableEnforced       node/ip-10-82-67-184.sa-east-1.compute.internal   Updated Node Allocatable limit across pods
24m         Normal    Synced                        node/ip-10-82-67-184.sa-east-1.compute.internal   Node synced successfully
24m         Normal    RegisteredNode                node/ip-10-82-67-184.sa-east-1.compute.internal   Node ip-10-82-67-184.sa-east-1.compute.internal event: Registered Node ip-10-82-67-184.sa-east-1.compute.internal in Controller
24m         Normal    Starting                      node/ip-10-82-67-184.sa-east-1.compute.internal   
24m         Normal    ControllerVersionNotice       node/ip-10-82-67-184.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
13m         Warning   Unsupported                   node/ip-10-82-67-184.sa-east-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
24m         Normal    NodeReady                     node/ip-10-82-67-184.sa-east-1.compute.internal   Node ip-10-82-67-184.sa-east-1.compute.internal status is now: NodeReady
24m         Normal    Ready                         node/ip-10-82-67-184.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    NodeNotSchedulable            node/ip-10-82-67-184.sa-east-1.compute.internal   Node ip-10-82-67-184.sa-east-1.compute.internal status is now: NodeNotSchedulable
13m         Normal    NodeNotReady                  node/ip-10-82-67-184.sa-east-1.compute.internal   Node ip-10-82-67-184.sa-east-1.compute.internal status is now: NodeNotReady
13m         Normal    MemoryPressure                node/ip-10-82-67-184.sa-east-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DiskPressure                  node/ip-10-82-67-184.sa-east-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    PIDPressure                   node/ip-10-82-67-184.sa-east-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    Ready                         node/ip-10-82-67-184.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DeletingNode                  node/ip-10-82-67-184.sa-east-1.compute.internal   Deleting node ip-10-82-67-184.sa-east-1.compute.internal because it does not exist in the cloud provider
13m         Normal    RemovingNode                  node/ip-10-82-67-184.sa-east-1.compute.internal   Node ip-10-82-67-184.sa-east-1.compute.internal event: Removing Node ip-10-82-67-184.sa-east-1.compute.internal from Controller
23m         Normal    Starting                      node/ip-10-82-67-192.sa-east-1.compute.internal   Starting kubelet.
23m         Warning   InvalidDiskCapacity           node/ip-10-82-67-192.sa-east-1.compute.internal   invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory       node/ip-10-82-67-192.sa-east-1.compute.internal   Node ip-10-82-67-192.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure         node/ip-10-82-67-192.sa-east-1.compute.internal   Node ip-10-82-67-192.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID          node/ip-10-82-67-192.sa-east-1.compute.internal   Node ip-10-82-67-192.sa-east-1.compute.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced       node/ip-10-82-67-192.sa-east-1.compute.internal   Updated Node Allocatable limit across pods
23m         Normal    Synced                        node/ip-10-82-67-192.sa-east-1.compute.internal   Node synced successfully
23m         Normal    DisruptionBlocked             node/ip-10-82-67-192.sa-east-1.compute.internal   Node isn't initialized
23m         Normal    RegisteredNode                node/ip-10-82-67-192.sa-east-1.compute.internal   Node ip-10-82-67-192.sa-east-1.compute.internal event: Registered Node ip-10-82-67-192.sa-east-1.compute.internal in Controller
23m         Normal    Starting                      node/ip-10-82-67-192.sa-east-1.compute.internal   
22m         Normal    ControllerVersionNotice       node/ip-10-82-67-192.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeReady                     node/ip-10-82-67-192.sa-east-1.compute.internal   Node ip-10-82-67-192.sa-east-1.compute.internal status is now: NodeReady
22m         Normal    Ready                         node/ip-10-82-67-192.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    NodeTrunkInitiated            node/ip-10-82-67-192.sa-east-1.compute.internal   The node has trunk interface initialized successfully
19m         Normal    DisruptionBlocked             node/ip-10-82-67-192.sa-east-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
28m         Normal    Starting                      node/ip-10-82-67-84.sa-east-1.compute.internal    Starting kubelet.
28m         Warning   InvalidDiskCapacity           node/ip-10-82-67-84.sa-east-1.compute.internal    invalid capacity 0 on image filesystem
28m         Normal    NodeHasSufficientMemory       node/ip-10-82-67-84.sa-east-1.compute.internal    Node ip-10-82-67-84.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure         node/ip-10-82-67-84.sa-east-1.compute.internal    Node ip-10-82-67-84.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID          node/ip-10-82-67-84.sa-east-1.compute.internal    Node ip-10-82-67-84.sa-east-1.compute.internal status is now: NodeHasSufficientPID
28m         Normal    NodeAllocatableEnforced       node/ip-10-82-67-84.sa-east-1.compute.internal    Updated Node Allocatable limit across pods
28m         Normal    Synced                        node/ip-10-82-67-84.sa-east-1.compute.internal    Node synced successfully
28m         Normal    RegisteredNode                node/ip-10-82-67-84.sa-east-1.compute.internal    Node ip-10-82-67-84.sa-east-1.compute.internal event: Registered Node ip-10-82-67-84.sa-east-1.compute.internal in Controller
28m         Normal    DisruptionBlocked             node/ip-10-82-67-84.sa-east-1.compute.internal    Node isn't initialized
28m         Normal    Starting                      node/ip-10-82-67-84.sa-east-1.compute.internal    
28m         Normal    ControllerVersionNotice       node/ip-10-82-67-84.sa-east-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
28m         Normal    NodeReady                     node/ip-10-82-67-84.sa-east-1.compute.internal    Node ip-10-82-67-84.sa-east-1.compute.internal status is now: NodeReady
28m         Normal    Ready                         node/ip-10-82-67-84.sa-east-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
28m         Normal    NodeTrunkInitiated            node/ip-10-82-67-84.sa-east-1.compute.internal    The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked             node/ip-10-82-67-84.sa-east-1.compute.internal    Node is nominated for a pending pod
17m         Normal    DisruptionBlocked             node/ip-10-82-67-84.sa-east-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
7m43s       Normal    DisruptionBlocked             node/ip-10-82-67-84.sa-east-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
73m         Normal    Unconsolidatable              node/ip-10-82-68-122.sa-east-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
57m         Normal    SpotRebalanceRecommendation   node/ip-10-82-68-122.sa-east-1.compute.internal   Spot rebalance recommendation was triggered
57m         Warning   SpotInterrupted               node/ip-10-82-68-122.sa-east-1.compute.internal   Spot interruption warning was triggered
57m         Warning   TerminatingOnInterruption     node/ip-10-82-68-122.sa-east-1.compute.internal   Interruption triggered termination for the Node
57m         Warning   FailedDraining                node/ip-10-82-68-122.sa-east-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
57m         Normal    DisruptionBlocked             node/ip-10-82-68-122.sa-east-1.compute.internal   Node is deleting or marked for deletion
57m         Warning   InstanceTerminating           node/ip-10-82-68-122.sa-east-1.compute.internal   Instance is terminating
56m         Normal    NodeNotReady                  node/ip-10-82-68-122.sa-east-1.compute.internal   Node ip-10-82-68-122.sa-east-1.compute.internal status is now: NodeNotReady
56m         Normal    MemoryPressure                node/ip-10-82-68-122.sa-east-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
56m         Normal    DiskPressure                  node/ip-10-82-68-122.sa-east-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
56m         Normal    PIDPressure                   node/ip-10-82-68-122.sa-east-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
56m         Normal    Ready                         node/ip-10-82-68-122.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
56m         Normal    RemovingNode                  node/ip-10-82-68-122.sa-east-1.compute.internal   Node ip-10-82-68-122.sa-east-1.compute.internal event: Removing Node ip-10-82-68-122.sa-east-1.compute.internal from Controller
27m         Normal    Starting                      node/ip-10-82-68-127.sa-east-1.compute.internal   Starting kubelet.
27m         Warning   InvalidDiskCapacity           node/ip-10-82-68-127.sa-east-1.compute.internal   invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory       node/ip-10-82-68-127.sa-east-1.compute.internal   Node ip-10-82-68-127.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure         node/ip-10-82-68-127.sa-east-1.compute.internal   Node ip-10-82-68-127.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID          node/ip-10-82-68-127.sa-east-1.compute.internal   Node ip-10-82-68-127.sa-east-1.compute.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced       node/ip-10-82-68-127.sa-east-1.compute.internal   Updated Node Allocatable limit across pods
27m         Normal    Synced                        node/ip-10-82-68-127.sa-east-1.compute.internal   Node synced successfully
27m         Normal    RegisteredNode                node/ip-10-82-68-127.sa-east-1.compute.internal   Node ip-10-82-68-127.sa-east-1.compute.internal event: Registered Node ip-10-82-68-127.sa-east-1.compute.internal in Controller
26m         Normal    Starting                      node/ip-10-82-68-127.sa-east-1.compute.internal   
26m         Normal    ControllerVersionNotice       node/ip-10-82-68-127.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
82s         Warning   Unsupported                   node/ip-10-82-68-127.sa-east-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    NodeReady                     node/ip-10-82-68-127.sa-east-1.compute.internal   Node ip-10-82-68-127.sa-east-1.compute.internal status is now: NodeReady
26m         Normal    Ready                         node/ip-10-82-68-127.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
25m         Normal    DisruptionBlocked             node/ip-10-82-68-163.sa-east-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
35m         Normal    Unconsolidatable              node/ip-10-82-68-163.sa-east-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
30m         Normal    RegisteredNode                node/ip-10-82-68-163.sa-east-1.compute.internal   Node ip-10-82-68-163.sa-east-1.compute.internal event: Registered Node ip-10-82-68-163.sa-east-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice       node/ip-10-82-68-163.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated            node/ip-10-82-68-163.sa-east-1.compute.internal   The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked             node/ip-10-82-68-163.sa-east-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
20m         Normal    DisruptionBlocked             node/ip-10-82-68-163.sa-east-1.compute.internal   Node is deleting or marked for deletion
19m         Normal    DisruptionTerminating         node/ip-10-82-68-163.sa-east-1.compute.internal   Disrupting Node: Drifted/Delete
19m         Warning   FailedDraining                node/ip-10-82-68-163.sa-east-1.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
18m         Warning   InstanceTerminating           node/ip-10-82-68-163.sa-east-1.compute.internal   Instance is terminating
18m         Normal    RemovingNode                  node/ip-10-82-68-163.sa-east-1.compute.internal   Node ip-10-82-68-163.sa-east-1.compute.internal event: Removing Node ip-10-82-68-163.sa-east-1.compute.internal from Controller
26m         Normal    Starting                      node/ip-10-82-68-175.sa-east-1.compute.internal   Starting kubelet.
26m         Warning   InvalidDiskCapacity           node/ip-10-82-68-175.sa-east-1.compute.internal   invalid capacity 0 on image filesystem
26m         Normal    NodeHasSufficientMemory       node/ip-10-82-68-175.sa-east-1.compute.internal   Node ip-10-82-68-175.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
26m         Normal    NodeHasNoDiskPressure         node/ip-10-82-68-175.sa-east-1.compute.internal   Node ip-10-82-68-175.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
26m         Normal    NodeHasSufficientPID          node/ip-10-82-68-175.sa-east-1.compute.internal   Node ip-10-82-68-175.sa-east-1.compute.internal status is now: NodeHasSufficientPID
26m         Normal    NodeAllocatableEnforced       node/ip-10-82-68-175.sa-east-1.compute.internal   Updated Node Allocatable limit across pods
26m         Normal    Synced                        node/ip-10-82-68-175.sa-east-1.compute.internal   Node synced successfully
26m         Normal    RegisteredNode                node/ip-10-82-68-175.sa-east-1.compute.internal   Node ip-10-82-68-175.sa-east-1.compute.internal event: Registered Node ip-10-82-68-175.sa-east-1.compute.internal in Controller
26m         Normal    DisruptionBlocked             node/ip-10-82-68-175.sa-east-1.compute.internal   Node isn't initialized
26m         Normal    Starting                      node/ip-10-82-68-175.sa-east-1.compute.internal   
26m         Normal    ControllerVersionNotice       node/ip-10-82-68-175.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeReady                     node/ip-10-82-68-175.sa-east-1.compute.internal   Node ip-10-82-68-175.sa-east-1.compute.internal status is now: NodeReady
26m         Normal    Ready                         node/ip-10-82-68-175.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26m         Normal    NodeTrunkInitiated            node/ip-10-82-68-175.sa-east-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked             node/ip-10-82-68-175.sa-east-1.compute.internal   Node is nominated for a pending pod
7m43s       Normal    DisruptionBlocked             node/ip-10-82-68-175.sa-east-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
17s         Normal    DisruptionBlocked             node/ip-10-82-68-175.sa-east-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
19m         Normal    Starting                      node/ip-10-82-68-228.sa-east-1.compute.internal   Starting kubelet.
19m         Warning   InvalidDiskCapacity           node/ip-10-82-68-228.sa-east-1.compute.internal   invalid capacity 0 on image filesystem
18m         Normal    NodeHasSufficientMemory       node/ip-10-82-68-228.sa-east-1.compute.internal   Node ip-10-82-68-228.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
18m         Normal    NodeHasNoDiskPressure         node/ip-10-82-68-228.sa-east-1.compute.internal   Node ip-10-82-68-228.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
18m         Normal    NodeHasSufficientPID          node/ip-10-82-68-228.sa-east-1.compute.internal   Node ip-10-82-68-228.sa-east-1.compute.internal status is now: NodeHasSufficientPID
18m         Normal    NodeAllocatableEnforced       node/ip-10-82-68-228.sa-east-1.compute.internal   Updated Node Allocatable limit across pods
18m         Normal    Synced                        node/ip-10-82-68-228.sa-east-1.compute.internal   Node synced successfully
18m         Normal    RegisteredNode                node/ip-10-82-68-228.sa-east-1.compute.internal   Node ip-10-82-68-228.sa-east-1.compute.internal event: Registered Node ip-10-82-68-228.sa-east-1.compute.internal in Controller
18m         Normal    DisruptionBlocked             node/ip-10-82-68-228.sa-east-1.compute.internal   Node isn't initialized
18m         Normal    Starting                      node/ip-10-82-68-228.sa-east-1.compute.internal   
18m         Normal    ControllerVersionNotice       node/ip-10-82-68-228.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
18m         Normal    NodeReady                     node/ip-10-82-68-228.sa-east-1.compute.internal   Node ip-10-82-68-228.sa-east-1.compute.internal status is now: NodeReady
18m         Normal    Ready                         node/ip-10-82-68-228.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
18m         Normal    NodeTrunkInitiated            node/ip-10-82-68-228.sa-east-1.compute.internal   The node has trunk interface initialized successfully
17m         Normal    DisruptionBlocked             node/ip-10-82-68-228.sa-east-1.compute.internal   Node is nominated for a pending pod
7m43s       Normal    DisruptionBlocked             node/ip-10-82-68-228.sa-east-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
16m         Normal    Starting                      node/ip-10-82-68-27.sa-east-1.compute.internal    Starting kubelet.
16m         Warning   InvalidDiskCapacity           node/ip-10-82-68-27.sa-east-1.compute.internal    invalid capacity 0 on image filesystem
16m         Normal    NodeHasSufficientMemory       node/ip-10-82-68-27.sa-east-1.compute.internal    Node ip-10-82-68-27.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
16m         Normal    NodeHasNoDiskPressure         node/ip-10-82-68-27.sa-east-1.compute.internal    Node ip-10-82-68-27.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
16m         Normal    NodeHasSufficientPID          node/ip-10-82-68-27.sa-east-1.compute.internal    Node ip-10-82-68-27.sa-east-1.compute.internal status is now: NodeHasSufficientPID
16m         Normal    NodeAllocatableEnforced       node/ip-10-82-68-27.sa-east-1.compute.internal    Updated Node Allocatable limit across pods
16m         Normal    Synced                        node/ip-10-82-68-27.sa-east-1.compute.internal    Node synced successfully
16m         Normal    RegisteredNode                node/ip-10-82-68-27.sa-east-1.compute.internal    Node ip-10-82-68-27.sa-east-1.compute.internal event: Registered Node ip-10-82-68-27.sa-east-1.compute.internal in Controller
16m         Normal    DisruptionBlocked             node/ip-10-82-68-27.sa-east-1.compute.internal    Node isn't initialized
16m         Normal    Starting                      node/ip-10-82-68-27.sa-east-1.compute.internal    
16m         Normal    ControllerVersionNotice       node/ip-10-82-68-27.sa-east-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
16m         Normal    NodeReady                     node/ip-10-82-68-27.sa-east-1.compute.internal    Node ip-10-82-68-27.sa-east-1.compute.internal status is now: NodeReady
16m         Normal    Ready                         node/ip-10-82-68-27.sa-east-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
16m         Normal    NodeTrunkInitiated            node/ip-10-82-68-27.sa-east-1.compute.internal    The node has trunk interface initialized successfully
58s         Normal    Unconsolidatable              node/ip-10-82-68-27.sa-east-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
35m         Normal    Unconsolidatable              node/ip-10-82-68-58.sa-east-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
27m         Normal    DisruptionBlocked             node/ip-10-82-68-58.sa-east-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-pdb)
30m         Normal    RegisteredNode                node/ip-10-82-68-58.sa-east-1.compute.internal    Node ip-10-82-68-58.sa-east-1.compute.internal event: Registered Node ip-10-82-68-58.sa-east-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice       node/ip-10-82-68-58.sa-east-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated            node/ip-10-82-68-58.sa-east-1.compute.internal    The node has trunk interface initialized successfully
26m         Normal    DisruptionTerminating         node/ip-10-82-68-58.sa-east-1.compute.internal    Disrupting Node: Drifted/Replace
26m         Warning   FailedDraining                node/ip-10-82-68-58.sa-east-1.compute.internal    Failed to drain node, 12 pods are waiting to be evicted
25m         Normal    DisruptionBlocked             node/ip-10-82-68-58.sa-east-1.compute.internal    Node is deleting or marked for deletion
24m         Warning   InstanceTerminating           node/ip-10-82-68-58.sa-east-1.compute.internal    Instance is terminating
24m         Normal    NodeNotReady                  node/ip-10-82-68-58.sa-east-1.compute.internal    Node ip-10-82-68-58.sa-east-1.compute.internal status is now: NodeNotReady
24m         Normal    MemoryPressure                node/ip-10-82-68-58.sa-east-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    DiskPressure                  node/ip-10-82-68-58.sa-east-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    PIDPressure                   node/ip-10-82-68-58.sa-east-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    Ready                         node/ip-10-82-68-58.sa-east-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    RemovingNode                  node/ip-10-82-68-58.sa-east-1.compute.internal    Node ip-10-82-68-58.sa-east-1.compute.internal event: Removing Node ip-10-82-68-58.sa-east-1.compute.internal from Controller
35m         Normal    Unconsolidatable              node/ip-10-82-68-92.sa-east-1.compute.internal    Can't remove without creating 2 candidates
77m         Normal    Unconsolidatable              node/ip-10-82-68-92.sa-east-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
21m         Normal    DisruptionBlocked             node/ip-10-82-68-92.sa-east-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
26m         Normal    DisruptionBlocked             node/ip-10-82-68-92.sa-east-1.compute.internal    Node is nominated for a pending pod
30m         Normal    RegisteredNode                node/ip-10-82-68-92.sa-east-1.compute.internal    Node ip-10-82-68-92.sa-east-1.compute.internal event: Registered Node ip-10-82-68-92.sa-east-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice       node/ip-10-82-68-92.sa-east-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated            node/ip-10-82-68-92.sa-east-1.compute.internal    The node has trunk interface initialized successfully
20m         Normal    DisruptionBlocked             node/ip-10-82-68-92.sa-east-1.compute.internal    Not all pods would schedule, orb-monitoring-service/orb-monitoring-service-5547bdfddb-mwpd9 => would schedule against uninitialized nodeclaim/main-amd64-f96vt
17m         Normal    DisruptionBlocked             node/ip-10-82-68-92.sa-east-1.compute.internal    Node is deleting or marked for deletion
17m         Normal    DisruptionTerminating         node/ip-10-82-68-92.sa-east-1.compute.internal    Disrupting Node: Drifted/Replace
17m         Warning   FailedDraining                node/ip-10-82-68-92.sa-east-1.compute.internal    Failed to drain node, 7 pods are waiting to be evicted
17m         Warning   InstanceTerminating           node/ip-10-82-68-92.sa-east-1.compute.internal    Instance is terminating
17m         Normal    DisruptionBlocked             node/ip-10-82-68-92.sa-east-1.compute.internal    Node is deleting or marked for deletion
16m         Normal    NodeNotReady                  node/ip-10-82-68-92.sa-east-1.compute.internal    Node ip-10-82-68-92.sa-east-1.compute.internal status is now: NodeNotReady
16m         Normal    MemoryPressure                node/ip-10-82-68-92.sa-east-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    DiskPressure                  node/ip-10-82-68-92.sa-east-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    PIDPressure                   node/ip-10-82-68-92.sa-east-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    Ready                         node/ip-10-82-68-92.sa-east-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DeletingNode                  node/ip-10-82-68-92.sa-east-1.compute.internal    Deleting node ip-10-82-68-92.sa-east-1.compute.internal because it does not exist in the cloud provider
15m         Normal    RemovingNode                  node/ip-10-82-68-92.sa-east-1.compute.internal    Node ip-10-82-68-92.sa-east-1.compute.internal event: Removing Node ip-10-82-68-92.sa-east-1.compute.internal from Controller
41m         Normal    Unconsolidatable              node/ip-10-82-69-103.sa-east-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
30m         Normal    RegisteredNode                node/ip-10-82-69-103.sa-east-1.compute.internal   Node ip-10-82-69-103.sa-east-1.compute.internal event: Registered Node ip-10-82-69-103.sa-east-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice       node/ip-10-82-69-103.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated            node/ip-10-82-69-103.sa-east-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked             node/ip-10-82-69-103.sa-east-1.compute.internal   Node is deleting or marked for deletion
24m         Normal    DisruptionTerminating         node/ip-10-82-69-103.sa-east-1.compute.internal   Disrupting Node: Drifted/Replace
24m         Warning   FailedDraining                node/ip-10-82-69-103.sa-east-1.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
23m         Warning   InstanceTerminating           node/ip-10-82-69-103.sa-east-1.compute.internal   Instance is terminating
22m         Normal    NodeNotReady                  node/ip-10-82-69-103.sa-east-1.compute.internal   Node ip-10-82-69-103.sa-east-1.compute.internal status is now: NodeNotReady
22m         Normal    MemoryPressure                node/ip-10-82-69-103.sa-east-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure                  node/ip-10-82-69-103.sa-east-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure                   node/ip-10-82-69-103.sa-east-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                         node/ip-10-82-69-103.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DeletingNode                  node/ip-10-82-69-103.sa-east-1.compute.internal   Deleting node ip-10-82-69-103.sa-east-1.compute.internal because it does not exist in the cloud provider
22m         Normal    RemovingNode                  node/ip-10-82-69-103.sa-east-1.compute.internal   Node ip-10-82-69-103.sa-east-1.compute.internal event: Removing Node ip-10-82-69-103.sa-east-1.compute.internal from Controller
22m         Normal    Starting                      node/ip-10-82-69-114.sa-east-1.compute.internal   Starting kubelet.
22m         Warning   InvalidDiskCapacity           node/ip-10-82-69-114.sa-east-1.compute.internal   invalid capacity 0 on image filesystem
22m         Normal    NodeHasSufficientMemory       node/ip-10-82-69-114.sa-east-1.compute.internal   Node ip-10-82-69-114.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
22m         Normal    NodeHasNoDiskPressure         node/ip-10-82-69-114.sa-east-1.compute.internal   Node ip-10-82-69-114.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
22m         Normal    NodeHasSufficientPID          node/ip-10-82-69-114.sa-east-1.compute.internal   Node ip-10-82-69-114.sa-east-1.compute.internal status is now: NodeHasSufficientPID
22m         Normal    NodeAllocatableEnforced       node/ip-10-82-69-114.sa-east-1.compute.internal   Updated Node Allocatable limit across pods
22m         Normal    Synced                        node/ip-10-82-69-114.sa-east-1.compute.internal   Node synced successfully
22m         Normal    RegisteredNode                node/ip-10-82-69-114.sa-east-1.compute.internal   Node ip-10-82-69-114.sa-east-1.compute.internal event: Registered Node ip-10-82-69-114.sa-east-1.compute.internal in Controller
22m         Normal    DisruptionBlocked             node/ip-10-82-69-114.sa-east-1.compute.internal   Node isn't initialized
22m         Normal    Starting                      node/ip-10-82-69-114.sa-east-1.compute.internal   
22m         Normal    ControllerVersionNotice       node/ip-10-82-69-114.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeReady                     node/ip-10-82-69-114.sa-east-1.compute.internal   Node ip-10-82-69-114.sa-east-1.compute.internal status is now: NodeReady
22m         Normal    Ready                         node/ip-10-82-69-114.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    NodeTrunkInitiated            node/ip-10-82-69-114.sa-east-1.compute.internal   The node has trunk interface initialized successfully
19m         Normal    DisruptionBlocked             node/ip-10-82-69-114.sa-east-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
7m46s       Normal    SpotRebalanceRecommendation   node/ip-10-82-69-114.sa-east-1.compute.internal   Spot rebalance recommendation was triggered
7m44s       Warning   SpotInterrupted               node/ip-10-82-69-114.sa-east-1.compute.internal   Spot interruption warning was triggered
7m44s       Warning   TerminatingOnInterruption     node/ip-10-82-69-114.sa-east-1.compute.internal   Interruption triggered termination for the Node
7m44s       Warning   FailedDraining                node/ip-10-82-69-114.sa-east-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
7m43s       Normal    DisruptionBlocked             node/ip-10-82-69-114.sa-east-1.compute.internal   Node is deleting or marked for deletion
7m8s        Warning   InstanceTerminating           node/ip-10-82-69-114.sa-east-1.compute.internal   Instance is terminating
6m15s       Normal    NodeNotReady                  node/ip-10-82-69-114.sa-east-1.compute.internal   Node ip-10-82-69-114.sa-east-1.compute.internal status is now: NodeNotReady
6m15s       Normal    MemoryPressure                node/ip-10-82-69-114.sa-east-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m15s       Normal    DiskPressure                  node/ip-10-82-69-114.sa-east-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m15s       Normal    PIDPressure                   node/ip-10-82-69-114.sa-east-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m15s       Normal    Ready                         node/ip-10-82-69-114.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
5m56s       Normal    DeletingNode                  node/ip-10-82-69-114.sa-east-1.compute.internal   Deleting node ip-10-82-69-114.sa-east-1.compute.internal because it does not exist in the cloud provider
5m54s       Normal    RemovingNode                  node/ip-10-82-69-114.sa-east-1.compute.internal   Node ip-10-82-69-114.sa-east-1.compute.internal event: Removing Node ip-10-82-69-114.sa-east-1.compute.internal from Controller
27m         Normal    Starting                      node/ip-10-82-69-144.sa-east-1.compute.internal   Starting kubelet.
27m         Warning   InvalidDiskCapacity           node/ip-10-82-69-144.sa-east-1.compute.internal   invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory       node/ip-10-82-69-144.sa-east-1.compute.internal   Node ip-10-82-69-144.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure         node/ip-10-82-69-144.sa-east-1.compute.internal   Node ip-10-82-69-144.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID          node/ip-10-82-69-144.sa-east-1.compute.internal   Node ip-10-82-69-144.sa-east-1.compute.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced       node/ip-10-82-69-144.sa-east-1.compute.internal   Updated Node Allocatable limit across pods
27m         Normal    Synced                        node/ip-10-82-69-144.sa-east-1.compute.internal   Node synced successfully
27m         Normal    RegisteredNode                node/ip-10-82-69-144.sa-east-1.compute.internal   Node ip-10-82-69-144.sa-east-1.compute.internal event: Registered Node ip-10-82-69-144.sa-east-1.compute.internal in Controller
26m         Normal    Starting                      node/ip-10-82-69-144.sa-east-1.compute.internal   
26m         Normal    ControllerVersionNotice       node/ip-10-82-69-144.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
15m         Warning   Unsupported                   node/ip-10-82-69-144.sa-east-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    NodeReady                     node/ip-10-82-69-144.sa-east-1.compute.internal   Node ip-10-82-69-144.sa-east-1.compute.internal status is now: NodeReady
26m         Normal    Ready                         node/ip-10-82-69-144.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    NodeNotSchedulable            node/ip-10-82-69-144.sa-east-1.compute.internal   Node ip-10-82-69-144.sa-east-1.compute.internal status is now: NodeNotSchedulable
15m         Normal    NodeNotReady                  node/ip-10-82-69-144.sa-east-1.compute.internal   Node ip-10-82-69-144.sa-east-1.compute.internal status is now: NodeNotReady
15m         Normal    MemoryPressure                node/ip-10-82-69-144.sa-east-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DiskPressure                  node/ip-10-82-69-144.sa-east-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    PIDPressure                   node/ip-10-82-69-144.sa-east-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    Ready                         node/ip-10-82-69-144.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DeletingNode                  node/ip-10-82-69-144.sa-east-1.compute.internal   Deleting node ip-10-82-69-144.sa-east-1.compute.internal because it does not exist in the cloud provider
15m         Normal    RemovingNode                  node/ip-10-82-69-144.sa-east-1.compute.internal   Node ip-10-82-69-144.sa-east-1.compute.internal event: Removing Node ip-10-82-69-144.sa-east-1.compute.internal from Controller
93m         Normal    Unconsolidatable              node/ip-10-82-69-220.sa-east-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
45m         Normal    Unconsolidatable              node/ip-10-82-69-220.sa-east-1.compute.internal   Can't remove without creating 2 candidates
27m         Normal    DisruptionBlocked             node/ip-10-82-69-220.sa-east-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
30m         Normal    RegisteredNode                node/ip-10-82-69-220.sa-east-1.compute.internal   Node ip-10-82-69-220.sa-east-1.compute.internal event: Registered Node ip-10-82-69-220.sa-east-1.compute.internal in Controller
30m         Normal    ControllerVersionNotice       node/ip-10-82-69-220.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
30m         Normal    NodeTrunkInitiated            node/ip-10-82-69-220.sa-east-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    DisruptionTerminating         node/ip-10-82-69-220.sa-east-1.compute.internal   Disrupting Node: Drifted/Delete
21m         Normal    DisruptionBlocked             node/ip-10-82-69-220.sa-east-1.compute.internal   Node is deleting or marked for deletion
21m         Warning   FailedDraining                node/ip-10-82-69-220.sa-east-1.compute.internal   Failed to drain node, 10 pods are waiting to be evicted
20m         Warning   FailedDraining                node/ip-10-82-69-220.sa-east-1.compute.internal   Failed to drain node, 1 pods are waiting to be evicted
20m         Normal    DisruptionBlocked             node/ip-10-82-69-220.sa-east-1.compute.internal   Node is deleting or marked for deletion
20m         Warning   InstanceTerminating           node/ip-10-82-69-220.sa-east-1.compute.internal   Instance is terminating
19m         Normal    NodeNotReady                  node/ip-10-82-69-220.sa-east-1.compute.internal   Node ip-10-82-69-220.sa-east-1.compute.internal status is now: NodeNotReady
19m         Normal    MemoryPressure                node/ip-10-82-69-220.sa-east-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DiskPressure                  node/ip-10-82-69-220.sa-east-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    PIDPressure                   node/ip-10-82-69-220.sa-east-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    Ready                         node/ip-10-82-69-220.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DeletingNode                  node/ip-10-82-69-220.sa-east-1.compute.internal   Deleting node ip-10-82-69-220.sa-east-1.compute.internal because it does not exist in the cloud provider
19m         Normal    RemovingNode                  node/ip-10-82-69-220.sa-east-1.compute.internal   Node ip-10-82-69-220.sa-east-1.compute.internal event: Removing Node ip-10-82-69-220.sa-east-1.compute.internal from Controller
24m         Normal    Starting                      node/ip-10-82-69-52.sa-east-1.compute.internal    Starting kubelet.
24m         Warning   InvalidDiskCapacity           node/ip-10-82-69-52.sa-east-1.compute.internal    invalid capacity 0 on image filesystem
24m         Normal    NodeHasSufficientMemory       node/ip-10-82-69-52.sa-east-1.compute.internal    Node ip-10-82-69-52.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
24m         Normal    NodeHasNoDiskPressure         node/ip-10-82-69-52.sa-east-1.compute.internal    Node ip-10-82-69-52.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
24m         Normal    NodeHasSufficientPID          node/ip-10-82-69-52.sa-east-1.compute.internal    Node ip-10-82-69-52.sa-east-1.compute.internal status is now: NodeHasSufficientPID
24m         Normal    NodeAllocatableEnforced       node/ip-10-82-69-52.sa-east-1.compute.internal    Updated Node Allocatable limit across pods
24m         Normal    Synced                        node/ip-10-82-69-52.sa-east-1.compute.internal    Node synced successfully
24m         Normal    DisruptionBlocked             node/ip-10-82-69-52.sa-east-1.compute.internal    Node isn't initialized
24m         Normal    RegisteredNode                node/ip-10-82-69-52.sa-east-1.compute.internal    Node ip-10-82-69-52.sa-east-1.compute.internal event: Registered Node ip-10-82-69-52.sa-east-1.compute.internal in Controller
24m         Normal    Starting                      node/ip-10-82-69-52.sa-east-1.compute.internal    
24m         Normal    ControllerVersionNotice       node/ip-10-82-69-52.sa-east-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeReady                     node/ip-10-82-69-52.sa-east-1.compute.internal    Node ip-10-82-69-52.sa-east-1.compute.internal status is now: NodeReady
24m         Normal    Ready                         node/ip-10-82-69-52.sa-east-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
24m         Normal    NodeTrunkInitiated            node/ip-10-82-69-52.sa-east-1.compute.internal    The node has trunk interface initialized successfully
7m44s       Normal    SpotRebalanceRecommendation   node/ip-10-82-69-52.sa-east-1.compute.internal    Spot rebalance recommendation was triggered
7m42s       Warning   SpotInterrupted               node/ip-10-82-69-52.sa-east-1.compute.internal    Spot interruption warning was triggered
7m42s       Warning   TerminatingOnInterruption     node/ip-10-82-69-52.sa-east-1.compute.internal    Interruption triggered termination for the Node
7m42s       Warning   FailedDraining                node/ip-10-82-69-52.sa-east-1.compute.internal    Failed to drain node, 3 pods are waiting to be evicted
7m33s       Normal    DisruptionBlocked             node/ip-10-82-69-52.sa-east-1.compute.internal    Node is deleting or marked for deletion
7m18s       Warning   InstanceTerminating           node/ip-10-82-69-52.sa-east-1.compute.internal    Instance is terminating
6m30s       Normal    NodeNotReady                  node/ip-10-82-69-52.sa-east-1.compute.internal    Node ip-10-82-69-52.sa-east-1.compute.internal status is now: NodeNotReady
6m30s       Normal    MemoryPressure                node/ip-10-82-69-52.sa-east-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m30s       Normal    DiskPressure                  node/ip-10-82-69-52.sa-east-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m30s       Normal    PIDPressure                   node/ip-10-82-69-52.sa-east-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m30s       Normal    Ready                         node/ip-10-82-69-52.sa-east-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m17s       Normal    DeletingNode                  node/ip-10-82-69-52.sa-east-1.compute.internal    Deleting node ip-10-82-69-52.sa-east-1.compute.internal because it does not exist in the cloud provider
6m15s       Normal    RemovingNode                  node/ip-10-82-69-52.sa-east-1.compute.internal    Node ip-10-82-69-52.sa-east-1.compute.internal event: Removing Node ip-10-82-69-52.sa-east-1.compute.internal from Controller
```

Pods with issues
```
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-57cpk                               0/1     CreateContainerConfigError   0          7m45s
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-bnjg2                               0/1     CreateContainerConfigError   0          27m
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

Generated on: Tue Sep 23 14:11:14 CEST 2025
