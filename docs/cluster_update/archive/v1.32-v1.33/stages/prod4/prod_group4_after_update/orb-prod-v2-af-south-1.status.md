# Cluster recon for tfh-orb-prod-infra,af-south-1,orb-prod-v2-af-south-1,tunnel-vpc-orb-prod-af-south-1

TFH EKS login...
```console
2025/09/23 14:08:20 INFO Logging into AWS
2025/09/23 14:08:20 INFO Token found and valid
2025/09/23 14:08:23 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-prod-af-south-1 id=e5e74117-f2e3-4207-b0b7-f483e538e489
2025/09/23 14:08:24 INFO Active WARP Virtual Network id=e5e74117-f2e3-4207-b0b7-f483e538e489
Updated context tfh-orb-prod-v2-af-south-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "orb-prod-v2-af-south-1",
        "arn": "arn:aws:eks:af-south-1:573252405782:cluster/orb-prod-v2-af-south-1",
        "createdAt": "2023-06-16T09:55:41.093000+02:00",
        "version": "1.33",
        "endpoint": "https://ABFCA820594A1C34559B37258614F570.gr7.af-south-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::573252405782:role/eks-cluster-orb-prod-v2-af-south-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-06eea5c708e4b6cf7",
                "subnet-047f42aabd40084b7",
                "subnet-0c532db20ee6ea85c"
            ],
            "securityGroupIds": [
                "sg-04c54b076914e2632"
            ],
            "clusterSecurityGroupId": "sg-0c3f01801a9372ef5",
            "vpcId": "vpc-02187f690bd6c4f53",
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
                "issuer": "https://oidc.eks.af-south-1.amazonaws.com/id/ABFCA820594A1C34559B37258614F570"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EWXhOakE0TURBeU5Wb1hEVE16TURZeE16QTRNREF5TlZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTWVoCjNieE9CYmVGbUlLN0kyd01McGM3d3dubFJHRW1rL0N4UGpmUWdBWFB3TWpYMFZ1a2gxc1NuZFNBSTdmR0lkV2QKcFg0eERibGorRHlnaG1rMU9QYWo1ZHVoUzI5M0c2SkxkOElEbGVnOGNrVmZGcFFNQUF6OFpWdlljaU9TMFBLdApwc1p6SXdTRzRnRFhxTk94WHNsdHMwODJlbTdwSm51YVo4STBsdjRuMmJxcVUvTjlNVVpFWWV0SkxhVGRYcXVSCmUwNEM0ZVkrU3J2MFFBeG5NOEcxaVNWbkJYemF4NU5NVTJhVXErUkoxWGltOFYwU2NWVE9VSTdJcHY0OUlueSsKa0NCNVVlN1UwcUdiUDdnSnRSdHYwUGxrNXZJY0I4dVZJSktIaG5iWm05ZVgxV2tmeDh2VXpPUlFPSjdMK1RCRgpadGRkeE5INXVDcjRpZVd0SXZNQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZOTEZpUUFYTHpJZUFzdXZ2N2YrSVdBK0RCRWRNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBSkVVcHkyQ2xiWmM0Ui9ENEF1NgpCVlRaUDdwb01pWENHTjhobUNsUkhHUHREM2tXeGpvNE5WWEhSSm5IUTRmcHB4VGtFOHNPRURDMEUvb1BaK2JkCjlpWXExTVlDWVdjOFNsQlFIN1NnbnVHbzlTYitWT2k0Sm9UOExZUlQzckwzTFFjekZvYktqeFNIVVRibVZwTUIKU1JGSlV0cEhYYlFXR2lCdWwrNk9jYk1aa0MycVkxWGE4Y0JUY1R1T0ZTc2M1cm1aZGdWczEyQktKenlJQWkzQgpZdmJWNGxmakp4azFacEo1Nk1RVE5OUWltTC9LNzB3SHhLYXg5RkNCNzRrNzZ2Y0JXVHluZXEvOVVEaDdEWlorCldiNHZUak9BVVVlejNqV0xaak1pTTEvditoTlE5U05FcjFnK0xiSis1L2JScklnaDZ6S2JTNTBXVGVHYW5SSXoKUWk0PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-prod-v2-af-south-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:af-south-1:573252405782:key/1ad0a6fe-7df2-44f5-b565-a529b96b41aa"
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
NAME                                         STATUS   ROLES    AGE   VERSION               INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-18-0-39.af-south-1.compute.internal    Ready    <none>   21m   v1.33.4-eks-99d6cc0   10.18.0.39    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-18-1-144.af-south-1.compute.internal   Ready    <none>   26m   v1.33.4-eks-99d6cc0   10.18.1.144   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-18-1-16.af-south-1.compute.internal    Ready    <none>   19m   v1.33.4-eks-99d6cc0   10.18.1.16    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-18-1-57.af-south-1.compute.internal    Ready    <none>   24m   v1.33.4-eks-99d6cc0   10.18.1.57    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-18-3-119.af-south-1.compute.internal   Ready    <none>   22m   v1.33.4-eks-99d6cc0   10.18.3.119   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-18-3-16.af-south-1.compute.internal    Ready    <none>   26m   v1.33.4-eks-99d6cc0   10.18.3.16    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-18-3-173.af-south-1.compute.internal   Ready    <none>   27m   v1.33.4-eks-99d6cc0   10.18.3.173   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-18-3-190.af-south-1.compute.internal   Ready    <none>   27m   v1.33.4-eks-99d6cc0   10.18.3.190   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-18-3-69.af-south-1.compute.internal    Ready    <none>   22m   v1.33.4-eks-99d6cc0   10.18.3.69    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-af-south-1
ip-10-18-4-164.af-south-1.compute.internal   Ready    <none>   23m   v1.33.4-eks-99d6cc0   10.18.4.164   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-af-south-1
```

Nodes and their taints
```
NAME                                         STATUS   ROLES    TAINTS
ip-10-18-0-39.af-south-1.compute.internal    Ready    <none>   <none>
ip-10-18-1-144.af-south-1.compute.internal   Ready    <none>   <none>
ip-10-18-1-16.af-south-1.compute.internal    Ready    <none>   <none>
ip-10-18-1-57.af-south-1.compute.internal    Ready    <none>   <none>
ip-10-18-3-119.af-south-1.compute.internal   Ready    <none>   <none>
ip-10-18-3-16.af-south-1.compute.internal    Ready    <none>   <none>
ip-10-18-3-173.af-south-1.compute.internal   Ready    <none>   <none>
ip-10-18-3-190.af-south-1.compute.internal   Ready    <none>   <none>
ip-10-18-3-69.af-south-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-18-4-164.af-south-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                                            MESSAGE
21m         Normal    Finalized                     node                                              Finalized karpenter.sh/termination
19m         Normal    Finalized                     node                                              Finalized karpenter.sh/termination
17m         Normal    Finalized                     node                                              Finalized karpenter.sh/termination
28m         Warning   Unsupported                   node/ip-10-18-0-113.af-south-1.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    RegisteredNode                node/ip-10-18-0-113.af-south-1.compute.internal   Node ip-10-18-0-113.af-south-1.compute.internal event: Registered Node ip-10-18-0-113.af-south-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-18-0-113.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
23m         Warning   Unsupported                   node/ip-10-18-0-113.af-south-1.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
22m         Normal    ControllerVersionNotice       node/ip-10-18-0-113.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
17m         Warning   Unsupported                   node/ip-10-18-0-113.af-south-1.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
20m         Normal    NodeNotSchedulable            node/ip-10-18-0-113.af-south-1.compute.internal   Node ip-10-18-0-113.af-south-1.compute.internal status is now: NodeNotSchedulable
17m         Normal    NodeNotReady                  node/ip-10-18-0-113.af-south-1.compute.internal   Node ip-10-18-0-113.af-south-1.compute.internal status is now: NodeNotReady
17m         Normal    DeletingNode                  node/ip-10-18-0-113.af-south-1.compute.internal   Deleting node ip-10-18-0-113.af-south-1.compute.internal because it does not exist in the cloud provider
17m         Normal    RemovingNode                  node/ip-10-18-0-113.af-south-1.compute.internal   Node ip-10-18-0-113.af-south-1.compute.internal event: Removing Node ip-10-18-0-113.af-south-1.compute.internal from Controller
38m         Normal    Unconsolidatable              node/ip-10-18-0-159.af-south-1.compute.internal   Can't remove without creating 2 candidates
64m         Normal    DisruptionBlocked             node/ip-10-18-0-159.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
72m         Normal    Unconsolidatable              node/ip-10-18-0-159.af-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
58m         Normal    DisruptionBlocked             node/ip-10-18-0-159.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
28m         Normal    DisruptionBlocked             node/ip-10-18-0-159.af-south-1.compute.internal   Not all pods would schedule, cloudflared-tunnel/cloudflared-tunnel-746c5477d5-8psgv => would schedule against uninitialized nodeclaim/main-arm64-r7czn
28m         Normal    RegisteredNode                node/ip-10-18-0-159.af-south-1.compute.internal   Node ip-10-18-0-159.af-south-1.compute.internal event: Registered Node ip-10-18-0-159.af-south-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-18-0-159.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-18-0-159.af-south-1.compute.internal   The node has trunk interface initialized successfully
26m         Normal    DisruptionBlocked             node/ip-10-18-0-159.af-south-1.compute.internal   Node is deleting or marked for deletion
25m         Normal    DisruptionTerminating         node/ip-10-18-0-159.af-south-1.compute.internal   Disrupting Node: Drifted/Replace
25m         Warning   FailedDraining                node/ip-10-18-0-159.af-south-1.compute.internal   Failed to drain node, 7 pods are waiting to be evicted
25m         Warning   InstanceTerminating           node/ip-10-18-0-159.af-south-1.compute.internal   Instance is terminating
24m         Normal    NodeNotReady                  node/ip-10-18-0-159.af-south-1.compute.internal   Node ip-10-18-0-159.af-south-1.compute.internal status is now: NodeNotReady
24m         Normal    MemoryPressure                node/ip-10-18-0-159.af-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    DiskPressure                  node/ip-10-18-0-159.af-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    PIDPressure                   node/ip-10-18-0-159.af-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    Ready                         node/ip-10-18-0-159.af-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    RemovingNode                  node/ip-10-18-0-159.af-south-1.compute.internal   Node ip-10-18-0-159.af-south-1.compute.internal event: Removing Node ip-10-18-0-159.af-south-1.compute.internal from Controller
21m         Normal    Starting                      node/ip-10-18-0-39.af-south-1.compute.internal    Starting kubelet.
21m         Warning   InvalidDiskCapacity           node/ip-10-18-0-39.af-south-1.compute.internal    invalid capacity 0 on image filesystem
21m         Normal    NodeHasSufficientMemory       node/ip-10-18-0-39.af-south-1.compute.internal    Node ip-10-18-0-39.af-south-1.compute.internal status is now: NodeHasSufficientMemory
21m         Normal    NodeHasNoDiskPressure         node/ip-10-18-0-39.af-south-1.compute.internal    Node ip-10-18-0-39.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
21m         Normal    NodeHasSufficientPID          node/ip-10-18-0-39.af-south-1.compute.internal    Node ip-10-18-0-39.af-south-1.compute.internal status is now: NodeHasSufficientPID
21m         Normal    NodeAllocatableEnforced       node/ip-10-18-0-39.af-south-1.compute.internal    Updated Node Allocatable limit across pods
21m         Normal    Synced                        node/ip-10-18-0-39.af-south-1.compute.internal    Node synced successfully
21m         Normal    RegisteredNode                node/ip-10-18-0-39.af-south-1.compute.internal    Node ip-10-18-0-39.af-south-1.compute.internal event: Registered Node ip-10-18-0-39.af-south-1.compute.internal in Controller
21m         Normal    DisruptionBlocked             node/ip-10-18-0-39.af-south-1.compute.internal    Node isn't initialized
21m         Normal    Starting                      node/ip-10-18-0-39.af-south-1.compute.internal    
21m         Normal    ControllerVersionNotice       node/ip-10-18-0-39.af-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeReady                     node/ip-10-18-0-39.af-south-1.compute.internal    Node ip-10-18-0-39.af-south-1.compute.internal status is now: NodeReady
21m         Normal    Ready                         node/ip-10-18-0-39.af-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    NodeTrunkInitiated            node/ip-10-18-0-39.af-south-1.compute.internal    The node has trunk interface initialized successfully
19m         Normal    DisruptionBlocked             node/ip-10-18-0-39.af-south-1.compute.internal    Node is nominated for a pending pod
65m         Normal    Starting                      node/ip-10-18-1-115.af-south-1.compute.internal   Starting kubelet.
65m         Warning   InvalidDiskCapacity           node/ip-10-18-1-115.af-south-1.compute.internal   invalid capacity 0 on image filesystem
65m         Normal    NodeHasSufficientMemory       node/ip-10-18-1-115.af-south-1.compute.internal   Node ip-10-18-1-115.af-south-1.compute.internal status is now: NodeHasSufficientMemory
65m         Normal    NodeHasNoDiskPressure         node/ip-10-18-1-115.af-south-1.compute.internal   Node ip-10-18-1-115.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
65m         Normal    NodeHasSufficientPID          node/ip-10-18-1-115.af-south-1.compute.internal   Node ip-10-18-1-115.af-south-1.compute.internal status is now: NodeHasSufficientPID
65m         Normal    NodeAllocatableEnforced       node/ip-10-18-1-115.af-south-1.compute.internal   Updated Node Allocatable limit across pods
65m         Normal    Synced                        node/ip-10-18-1-115.af-south-1.compute.internal   Node synced successfully
65m         Normal    RegisteredNode                node/ip-10-18-1-115.af-south-1.compute.internal   Node ip-10-18-1-115.af-south-1.compute.internal event: Registered Node ip-10-18-1-115.af-south-1.compute.internal in Controller
65m         Normal    Starting                      node/ip-10-18-1-115.af-south-1.compute.internal   
65m         Normal    DisruptionBlocked             node/ip-10-18-1-115.af-south-1.compute.internal   Node isn't initialized
65m         Normal    ControllerVersionNotice       node/ip-10-18-1-115.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
65m         Normal    NodeReady                     node/ip-10-18-1-115.af-south-1.compute.internal   Node ip-10-18-1-115.af-south-1.compute.internal status is now: NodeReady
65m         Normal    Ready                         node/ip-10-18-1-115.af-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
64m         Normal    NodeTrunkInitiated            node/ip-10-18-1-115.af-south-1.compute.internal   The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-18-1-115.af-south-1.compute.internal   Node is nominated for a pending pod
42m         Normal    Unconsolidatable              node/ip-10-18-1-115.af-south-1.compute.internal   Can't remove without creating 2 candidates
28m         Normal    RegisteredNode                node/ip-10-18-1-115.af-south-1.compute.internal   Node ip-10-18-1-115.af-south-1.compute.internal event: Registered Node ip-10-18-1-115.af-south-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-18-1-115.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-18-1-115.af-south-1.compute.internal   The node has trunk interface initialized successfully
27m         Normal    DisruptionBlocked             node/ip-10-18-1-115.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-pdb)
22m         Normal    DisruptionBlocked             node/ip-10-18-1-115.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
22m         Normal    ControllerVersionNotice       node/ip-10-18-1-115.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeTrunkInitiated            node/ip-10-18-1-115.af-south-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    DisruptionTerminating         node/ip-10-18-1-115.af-south-1.compute.internal   Disrupting Node: Drifted/Replace
21m         Warning   FailedDraining                node/ip-10-18-1-115.af-south-1.compute.internal   Failed to drain node, 7 pods are waiting to be evicted
20m         Warning   FailedDraining                node/ip-10-18-1-115.af-south-1.compute.internal   Failed to drain node, 1 pods are waiting to be evicted
20m         Normal    DisruptionBlocked             node/ip-10-18-1-115.af-south-1.compute.internal   Node is deleting or marked for deletion
20m         Warning   InstanceTerminating           node/ip-10-18-1-115.af-south-1.compute.internal   Instance is terminating
19m         Normal    RemovingNode                  node/ip-10-18-1-115.af-south-1.compute.internal   Node ip-10-18-1-115.af-south-1.compute.internal event: Removing Node ip-10-18-1-115.af-south-1.compute.internal from Controller
26m         Normal    Starting                      node/ip-10-18-1-144.af-south-1.compute.internal   Starting kubelet.
26m         Warning   InvalidDiskCapacity           node/ip-10-18-1-144.af-south-1.compute.internal   invalid capacity 0 on image filesystem
26m         Normal    NodeHasSufficientMemory       node/ip-10-18-1-144.af-south-1.compute.internal   Node ip-10-18-1-144.af-south-1.compute.internal status is now: NodeHasSufficientMemory
26m         Normal    NodeHasNoDiskPressure         node/ip-10-18-1-144.af-south-1.compute.internal   Node ip-10-18-1-144.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
26m         Normal    NodeHasSufficientPID          node/ip-10-18-1-144.af-south-1.compute.internal   Node ip-10-18-1-144.af-south-1.compute.internal status is now: NodeHasSufficientPID
26m         Normal    NodeAllocatableEnforced       node/ip-10-18-1-144.af-south-1.compute.internal   Updated Node Allocatable limit across pods
26m         Normal    Synced                        node/ip-10-18-1-144.af-south-1.compute.internal   Node synced successfully
26m         Normal    RegisteredNode                node/ip-10-18-1-144.af-south-1.compute.internal   Node ip-10-18-1-144.af-south-1.compute.internal event: Registered Node ip-10-18-1-144.af-south-1.compute.internal in Controller
26m         Normal    DisruptionBlocked             node/ip-10-18-1-144.af-south-1.compute.internal   Node isn't initialized
26m         Normal    Starting                      node/ip-10-18-1-144.af-south-1.compute.internal   
26m         Normal    ControllerVersionNotice       node/ip-10-18-1-144.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeReady                     node/ip-10-18-1-144.af-south-1.compute.internal   Node ip-10-18-1-144.af-south-1.compute.internal status is now: NodeReady
26m         Normal    Ready                         node/ip-10-18-1-144.af-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26m         Normal    NodeTrunkInitiated            node/ip-10-18-1-144.af-south-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked             node/ip-10-18-1-144.af-south-1.compute.internal   Node is nominated for a pending pod
22m         Normal    ControllerVersionNotice       node/ip-10-18-1-144.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Normal    DisruptionBlocked             node/ip-10-18-1-144.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
22m         Normal    NodeTrunkInitiated            node/ip-10-18-1-144.af-south-1.compute.internal   The node has trunk interface initialized successfully
19m         Normal    DisruptionBlocked             node/ip-10-18-1-144.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
6m28s       Normal    DisruptionBlocked             node/ip-10-18-1-144.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
19m         Normal    Starting                      node/ip-10-18-1-16.af-south-1.compute.internal    Starting kubelet.
19m         Warning   InvalidDiskCapacity           node/ip-10-18-1-16.af-south-1.compute.internal    invalid capacity 0 on image filesystem
19m         Normal    NodeHasSufficientMemory       node/ip-10-18-1-16.af-south-1.compute.internal    Node ip-10-18-1-16.af-south-1.compute.internal status is now: NodeHasSufficientMemory
19m         Normal    NodeHasNoDiskPressure         node/ip-10-18-1-16.af-south-1.compute.internal    Node ip-10-18-1-16.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
19m         Normal    NodeHasSufficientPID          node/ip-10-18-1-16.af-south-1.compute.internal    Node ip-10-18-1-16.af-south-1.compute.internal status is now: NodeHasSufficientPID
19m         Normal    NodeAllocatableEnforced       node/ip-10-18-1-16.af-south-1.compute.internal    Updated Node Allocatable limit across pods
19m         Normal    RegisteredNode                node/ip-10-18-1-16.af-south-1.compute.internal    Node ip-10-18-1-16.af-south-1.compute.internal event: Registered Node ip-10-18-1-16.af-south-1.compute.internal in Controller
19m         Normal    Synced                        node/ip-10-18-1-16.af-south-1.compute.internal    Node synced successfully
19m         Normal    Starting                      node/ip-10-18-1-16.af-south-1.compute.internal    
19m         Normal    DisruptionBlocked             node/ip-10-18-1-16.af-south-1.compute.internal    Node isn't initialized
19m         Normal    ControllerVersionNotice       node/ip-10-18-1-16.af-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
19m         Normal    NodeReady                     node/ip-10-18-1-16.af-south-1.compute.internal    Node ip-10-18-1-16.af-south-1.compute.internal status is now: NodeReady
19m         Normal    Ready                         node/ip-10-18-1-16.af-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    NodeTrunkInitiated            node/ip-10-18-1-16.af-south-1.compute.internal    The node has trunk interface initialized successfully
26m         Normal    DisruptionBlocked             node/ip-10-18-1-169.af-south-1.compute.internal   Node is nominated for a pending pod
32m         Normal    Unconsolidatable              node/ip-10-18-1-169.af-south-1.compute.internal   Can't remove without creating 2 candidates
72m         Normal    Unconsolidatable              node/ip-10-18-1-169.af-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
28m         Normal    RegisteredNode                node/ip-10-18-1-169.af-south-1.compute.internal   Node ip-10-18-1-169.af-south-1.compute.internal event: Registered Node ip-10-18-1-169.af-south-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-18-1-169.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-18-1-169.af-south-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    DisruptionTerminating         node/ip-10-18-1-169.af-south-1.compute.internal   Disrupting Node: Drifted/Replace
24m         Warning   FailedDraining                node/ip-10-18-1-169.af-south-1.compute.internal   Failed to drain node, 12 pods are waiting to be evicted
24m         Normal    DisruptionBlocked             node/ip-10-18-1-169.af-south-1.compute.internal   Node is deleting or marked for deletion
23m         Warning   InstanceTerminating           node/ip-10-18-1-169.af-south-1.compute.internal   Instance is terminating
22m         Normal    MemoryPressure                node/ip-10-18-1-169.af-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure                  node/ip-10-18-1-169.af-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure                   node/ip-10-18-1-169.af-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                         node/ip-10-18-1-169.af-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    NodeNotReady                  node/ip-10-18-1-169.af-south-1.compute.internal   Node ip-10-18-1-169.af-south-1.compute.internal status is now: NodeNotReady
22m         Normal    DeletingNode                  node/ip-10-18-1-169.af-south-1.compute.internal   Deleting node ip-10-18-1-169.af-south-1.compute.internal because it does not exist in the cloud provider
22m         Normal    RemovingNode                  node/ip-10-18-1-169.af-south-1.compute.internal   Node ip-10-18-1-169.af-south-1.compute.internal event: Removing Node ip-10-18-1-169.af-south-1.compute.internal from Controller
64m         Normal    Starting                      node/ip-10-18-1-252.af-south-1.compute.internal   Starting kubelet.
64m         Warning   InvalidDiskCapacity           node/ip-10-18-1-252.af-south-1.compute.internal   invalid capacity 0 on image filesystem
64m         Normal    NodeHasSufficientMemory       node/ip-10-18-1-252.af-south-1.compute.internal   Node ip-10-18-1-252.af-south-1.compute.internal status is now: NodeHasSufficientMemory
64m         Normal    NodeHasNoDiskPressure         node/ip-10-18-1-252.af-south-1.compute.internal   Node ip-10-18-1-252.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
64m         Normal    NodeHasSufficientPID          node/ip-10-18-1-252.af-south-1.compute.internal   Node ip-10-18-1-252.af-south-1.compute.internal status is now: NodeHasSufficientPID
64m         Normal    NodeAllocatableEnforced       node/ip-10-18-1-252.af-south-1.compute.internal   Updated Node Allocatable limit across pods
64m         Normal    Synced                        node/ip-10-18-1-252.af-south-1.compute.internal   Node synced successfully
64m         Normal    RegisteredNode                node/ip-10-18-1-252.af-south-1.compute.internal   Node ip-10-18-1-252.af-south-1.compute.internal event: Registered Node ip-10-18-1-252.af-south-1.compute.internal in Controller
64m         Normal    Starting                      node/ip-10-18-1-252.af-south-1.compute.internal   
64m         Normal    DisruptionBlocked             node/ip-10-18-1-252.af-south-1.compute.internal   Node isn't initialized
64m         Normal    ControllerVersionNotice       node/ip-10-18-1-252.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
64m         Normal    NodeReady                     node/ip-10-18-1-252.af-south-1.compute.internal   Node ip-10-18-1-252.af-south-1.compute.internal status is now: NodeReady
64m         Normal    Ready                         node/ip-10-18-1-252.af-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
63m         Normal    NodeTrunkInitiated            node/ip-10-18-1-252.af-south-1.compute.internal   The node has trunk interface initialized successfully
28m         Normal    RegisteredNode                node/ip-10-18-1-252.af-south-1.compute.internal   Node ip-10-18-1-252.af-south-1.compute.internal event: Registered Node ip-10-18-1-252.af-south-1.compute.internal in Controller
28m         Normal    DisruptionBlocked             node/ip-10-18-1-252.af-south-1.compute.internal   Node is nominated for a pending pod
27m         Normal    ControllerVersionNotice       node/ip-10-18-1-252.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-18-1-252.af-south-1.compute.internal   The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-18-1-252.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
23m         Normal    DisruptionBlocked             node/ip-10-18-1-252.af-south-1.compute.internal   Node is deleting or marked for deletion
22m         Normal    DisruptionTerminating         node/ip-10-18-1-252.af-south-1.compute.internal   Disrupting Node: Drifted/Replace
22m         Warning   FailedDraining                node/ip-10-18-1-252.af-south-1.compute.internal   Failed to drain node, 7 pods are waiting to be evicted
22m         Normal    ControllerVersionNotice       node/ip-10-18-1-252.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeTrunkInitiated            node/ip-10-18-1-252.af-south-1.compute.internal   The node has trunk interface initialized successfully
21m         Warning   InstanceTerminating           node/ip-10-18-1-252.af-south-1.compute.internal   Instance is terminating
21m         Normal    RemovingNode                  node/ip-10-18-1-252.af-south-1.compute.internal   Node ip-10-18-1-252.af-south-1.compute.internal event: Removing Node ip-10-18-1-252.af-south-1.compute.internal from Controller
24m         Normal    Starting                      node/ip-10-18-1-57.af-south-1.compute.internal    Starting kubelet.
24m         Warning   InvalidDiskCapacity           node/ip-10-18-1-57.af-south-1.compute.internal    invalid capacity 0 on image filesystem
24m         Normal    NodeHasSufficientMemory       node/ip-10-18-1-57.af-south-1.compute.internal    Node ip-10-18-1-57.af-south-1.compute.internal status is now: NodeHasSufficientMemory
24m         Normal    NodeHasNoDiskPressure         node/ip-10-18-1-57.af-south-1.compute.internal    Node ip-10-18-1-57.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
24m         Normal    NodeHasSufficientPID          node/ip-10-18-1-57.af-south-1.compute.internal    Node ip-10-18-1-57.af-south-1.compute.internal status is now: NodeHasSufficientPID
24m         Normal    NodeAllocatableEnforced       node/ip-10-18-1-57.af-south-1.compute.internal    Updated Node Allocatable limit across pods
24m         Normal    Synced                        node/ip-10-18-1-57.af-south-1.compute.internal    Node synced successfully
24m         Normal    DisruptionBlocked             node/ip-10-18-1-57.af-south-1.compute.internal    Node isn't initialized
24m         Normal    RegisteredNode                node/ip-10-18-1-57.af-south-1.compute.internal    Node ip-10-18-1-57.af-south-1.compute.internal event: Registered Node ip-10-18-1-57.af-south-1.compute.internal in Controller
24m         Normal    Starting                      node/ip-10-18-1-57.af-south-1.compute.internal    
24m         Normal    ControllerVersionNotice       node/ip-10-18-1-57.af-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeReady                     node/ip-10-18-1-57.af-south-1.compute.internal    Node ip-10-18-1-57.af-south-1.compute.internal status is now: NodeReady
24m         Normal    Ready                         node/ip-10-18-1-57.af-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
24m         Normal    NodeTrunkInitiated            node/ip-10-18-1-57.af-south-1.compute.internal    The node has trunk interface initialized successfully
22m         Normal    ControllerVersionNotice       node/ip-10-18-1-57.af-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeTrunkInitiated            node/ip-10-18-1-57.af-south-1.compute.internal    The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked             node/ip-10-18-1-57.af-south-1.compute.internal    Node is nominated for a pending pod
2m16s       Normal    Unconsolidatable              node/ip-10-18-1-57.af-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
21m         Normal    Starting                      node/ip-10-18-1-69.af-south-1.compute.internal    Starting kubelet.
21m         Warning   InvalidDiskCapacity           node/ip-10-18-1-69.af-south-1.compute.internal    invalid capacity 0 on image filesystem
21m         Normal    NodeHasSufficientMemory       node/ip-10-18-1-69.af-south-1.compute.internal    Node ip-10-18-1-69.af-south-1.compute.internal status is now: NodeHasSufficientMemory
21m         Normal    NodeHasNoDiskPressure         node/ip-10-18-1-69.af-south-1.compute.internal    Node ip-10-18-1-69.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
21m         Normal    NodeHasSufficientPID          node/ip-10-18-1-69.af-south-1.compute.internal    Node ip-10-18-1-69.af-south-1.compute.internal status is now: NodeHasSufficientPID
21m         Normal    NodeAllocatableEnforced       node/ip-10-18-1-69.af-south-1.compute.internal    Updated Node Allocatable limit across pods
21m         Normal    Synced                        node/ip-10-18-1-69.af-south-1.compute.internal    Node synced successfully
21m         Normal    RegisteredNode                node/ip-10-18-1-69.af-south-1.compute.internal    Node ip-10-18-1-69.af-south-1.compute.internal event: Registered Node ip-10-18-1-69.af-south-1.compute.internal in Controller
21m         Normal    Starting                      node/ip-10-18-1-69.af-south-1.compute.internal    
21m         Normal    ControllerVersionNotice       node/ip-10-18-1-69.af-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
8m27s       Warning   Unsupported                   node/ip-10-18-1-69.af-south-1.compute.internal    The instance type t3.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    NodeReady                     node/ip-10-18-1-69.af-south-1.compute.internal    Node ip-10-18-1-69.af-south-1.compute.internal status is now: NodeReady
21m         Normal    Ready                         node/ip-10-18-1-69.af-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
10m         Normal    NodeNotSchedulable            node/ip-10-18-1-69.af-south-1.compute.internal    Node ip-10-18-1-69.af-south-1.compute.internal status is now: NodeNotSchedulable
8m33s       Normal    NodeNotReady                  node/ip-10-18-1-69.af-south-1.compute.internal    Node ip-10-18-1-69.af-south-1.compute.internal status is now: NodeNotReady
8m33s       Normal    MemoryPressure                node/ip-10-18-1-69.af-south-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m33s       Normal    DiskPressure                  node/ip-10-18-1-69.af-south-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m33s       Normal    PIDPressure                   node/ip-10-18-1-69.af-south-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m33s       Normal    Ready                         node/ip-10-18-1-69.af-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m6s        Normal    DeletingNode                  node/ip-10-18-1-69.af-south-1.compute.internal    Deleting node ip-10-18-1-69.af-south-1.compute.internal because it does not exist in the cloud provider
8m3s        Normal    RemovingNode                  node/ip-10-18-1-69.af-south-1.compute.internal    Node ip-10-18-1-69.af-south-1.compute.internal event: Removing Node ip-10-18-1-69.af-south-1.compute.internal from Controller
68m         Normal    Unconsolidatable              node/ip-10-18-2-217.af-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
64m         Normal    SpotRebalanceRecommendation   node/ip-10-18-2-217.af-south-1.compute.internal   Spot rebalance recommendation was triggered
64m         Warning   SpotInterrupted               node/ip-10-18-2-217.af-south-1.compute.internal   Spot interruption warning was triggered
64m         Warning   TerminatingOnInterruption     node/ip-10-18-2-217.af-south-1.compute.internal   Interruption triggered termination for the Node
64m         Warning   FailedDraining                node/ip-10-18-2-217.af-south-1.compute.internal   Failed to drain node, 9 pods are waiting to be evicted
64m         Normal    DisruptionBlocked             node/ip-10-18-2-217.af-south-1.compute.internal   Node is deleting or marked for deletion
63m         Warning   InstanceTerminating           node/ip-10-18-2-217.af-south-1.compute.internal   Instance is terminating
62m         Normal    RemovingNode                  node/ip-10-18-2-217.af-south-1.compute.internal   Node ip-10-18-2-217.af-south-1.compute.internal event: Removing Node ip-10-18-2-217.af-south-1.compute.internal from Controller
34m         Warning   Unsupported                   node/ip-10-18-2-49.af-south-1.compute.internal    The instance type t3.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    RegisteredNode                node/ip-10-18-2-49.af-south-1.compute.internal    Node ip-10-18-2-49.af-south-1.compute.internal event: Registered Node ip-10-18-2-49.af-south-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-18-2-49.af-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
25m         Warning   Unsupported                   node/ip-10-18-2-49.af-south-1.compute.internal    The instance type t3.large is not supported for trunk interface (Security Group for Pods)
22m         Normal    ControllerVersionNotice       node/ip-10-18-2-49.af-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
14m         Warning   Unsupported                   node/ip-10-18-2-49.af-south-1.compute.internal    The instance type t3.large is not supported for trunk interface (Security Group for Pods)
20m         Normal    NodeNotSchedulable            node/ip-10-18-2-49.af-south-1.compute.internal    Node ip-10-18-2-49.af-south-1.compute.internal status is now: NodeNotSchedulable
14m         Normal    NodeNotReady                  node/ip-10-18-2-49.af-south-1.compute.internal    Node ip-10-18-2-49.af-south-1.compute.internal status is now: NodeNotReady
14m         Normal    MemoryPressure                node/ip-10-18-2-49.af-south-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure                  node/ip-10-18-2-49.af-south-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure                   node/ip-10-18-2-49.af-south-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                         node/ip-10-18-2-49.af-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DeletingNode                  node/ip-10-18-2-49.af-south-1.compute.internal    Deleting node ip-10-18-2-49.af-south-1.compute.internal because it does not exist in the cloud provider
14m         Normal    RemovingNode                  node/ip-10-18-2-49.af-south-1.compute.internal    Node ip-10-18-2-49.af-south-1.compute.internal event: Removing Node ip-10-18-2-49.af-south-1.compute.internal from Controller
86m         Normal    Starting                      node/ip-10-18-2-6.af-south-1.compute.internal     Starting kubelet.
86m         Warning   InvalidDiskCapacity           node/ip-10-18-2-6.af-south-1.compute.internal     invalid capacity 0 on image filesystem
86m         Normal    NodeHasSufficientMemory       node/ip-10-18-2-6.af-south-1.compute.internal     Node ip-10-18-2-6.af-south-1.compute.internal status is now: NodeHasSufficientMemory
86m         Normal    NodeHasNoDiskPressure         node/ip-10-18-2-6.af-south-1.compute.internal     Node ip-10-18-2-6.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
86m         Normal    NodeHasSufficientPID          node/ip-10-18-2-6.af-south-1.compute.internal     Node ip-10-18-2-6.af-south-1.compute.internal status is now: NodeHasSufficientPID
86m         Normal    NodeAllocatableEnforced       node/ip-10-18-2-6.af-south-1.compute.internal     Updated Node Allocatable limit across pods
86m         Normal    Synced                        node/ip-10-18-2-6.af-south-1.compute.internal     Node synced successfully
86m         Normal    RegisteredNode                node/ip-10-18-2-6.af-south-1.compute.internal     Node ip-10-18-2-6.af-south-1.compute.internal event: Registered Node ip-10-18-2-6.af-south-1.compute.internal in Controller
85m         Normal    DisruptionBlocked             node/ip-10-18-2-6.af-south-1.compute.internal     Node isn't initialized
85m         Normal    Starting                      node/ip-10-18-2-6.af-south-1.compute.internal     
85m         Normal    ControllerVersionNotice       node/ip-10-18-2-6.af-south-1.compute.internal     The node is managed by VPC resource controller version v1.7.9
85m         Normal    NodeReady                     node/ip-10-18-2-6.af-south-1.compute.internal     Node ip-10-18-2-6.af-south-1.compute.internal status is now: NodeReady
85m         Normal    Ready                         node/ip-10-18-2-6.af-south-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
85m         Normal    NodeTrunkInitiated            node/ip-10-18-2-6.af-south-1.compute.internal     The node has trunk interface initialized successfully
62m         Normal    DisruptionBlocked             node/ip-10-18-2-6.af-south-1.compute.internal     Node is nominated for a pending pod
58m         Normal    DisruptionBlocked             node/ip-10-18-2-6.af-south-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
42m         Normal    Unconsolidatable              node/ip-10-18-2-6.af-south-1.compute.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
26m         Normal    DisruptionBlocked             node/ip-10-18-2-6.af-south-1.compute.internal     Node is deleting or marked for deletion
28m         Normal    RegisteredNode                node/ip-10-18-2-6.af-south-1.compute.internal     Node ip-10-18-2-6.af-south-1.compute.internal event: Registered Node ip-10-18-2-6.af-south-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-18-2-6.af-south-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-18-2-6.af-south-1.compute.internal     The node has trunk interface initialized successfully
27m         Normal    DisruptionTerminating         node/ip-10-18-2-6.af-south-1.compute.internal     Disrupting Node: Drifted/Replace
27m         Warning   FailedDraining                node/ip-10-18-2-6.af-south-1.compute.internal     Failed to drain node, 7 pods are waiting to be evicted
26m         Warning   InstanceTerminating           node/ip-10-18-2-6.af-south-1.compute.internal     Instance is terminating
25m         Normal    RemovingNode                  node/ip-10-18-2-6.af-south-1.compute.internal     Node ip-10-18-2-6.af-south-1.compute.internal event: Removing Node ip-10-18-2-6.af-south-1.compute.internal from Controller
68m         Normal    Unconsolidatable              node/ip-10-18-2-76.af-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
62m         Normal    DisruptionBlocked             node/ip-10-18-2-76.af-south-1.compute.internal    Node is deleting or marked for deletion
62m         Normal    DisruptionTerminating         node/ip-10-18-2-76.af-south-1.compute.internal    Disrupting Node: Underutilized/Delete
62m         Warning   FailedDraining                node/ip-10-18-2-76.af-south-1.compute.internal    Failed to drain node, 4 pods are waiting to be evicted
62m         Warning   InstanceTerminating           node/ip-10-18-2-76.af-south-1.compute.internal    Instance is terminating
61m         Normal    NodeNotReady                  node/ip-10-18-2-76.af-south-1.compute.internal    Node ip-10-18-2-76.af-south-1.compute.internal status is now: NodeNotReady
61m         Normal    MemoryPressure                node/ip-10-18-2-76.af-south-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
61m         Normal    DiskPressure                  node/ip-10-18-2-76.af-south-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
61m         Normal    PIDPressure                   node/ip-10-18-2-76.af-south-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
61m         Normal    Ready                         node/ip-10-18-2-76.af-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
61m         Normal    DeletingNode                  node/ip-10-18-2-76.af-south-1.compute.internal    Deleting node ip-10-18-2-76.af-south-1.compute.internal because it does not exist in the cloud provider
60m         Normal    RemovingNode                  node/ip-10-18-2-76.af-south-1.compute.internal    Node ip-10-18-2-76.af-south-1.compute.internal event: Removing Node ip-10-18-2-76.af-south-1.compute.internal from Controller
32m         Normal    Unconsolidatable              node/ip-10-18-3-112.af-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
64m         Normal    DisruptionBlocked             node/ip-10-18-3-112.af-south-1.compute.internal   Node is nominated for a pending pod
26m         Normal    DisruptionBlocked             node/ip-10-18-3-112.af-south-1.compute.internal   Node is deleting or marked for deletion
28m         Normal    RegisteredNode                node/ip-10-18-3-112.af-south-1.compute.internal   Node ip-10-18-3-112.af-south-1.compute.internal event: Registered Node ip-10-18-3-112.af-south-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-18-3-112.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-18-3-112.af-south-1.compute.internal   The node has trunk interface initialized successfully
27m         Normal    DisruptionTerminating         node/ip-10-18-3-112.af-south-1.compute.internal   Disrupting Node: Drifted/Replace
27m         Warning   FailedDraining                node/ip-10-18-3-112.af-south-1.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
26m         Warning   InstanceTerminating           node/ip-10-18-3-112.af-south-1.compute.internal   Instance is terminating
26m         Normal    NodeNotReady                  node/ip-10-18-3-112.af-south-1.compute.internal   Node ip-10-18-3-112.af-south-1.compute.internal status is now: NodeNotReady
26m         Normal    MemoryPressure                node/ip-10-18-3-112.af-south-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    DiskPressure                  node/ip-10-18-3-112.af-south-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    PIDPressure                   node/ip-10-18-3-112.af-south-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    Ready                         node/ip-10-18-3-112.af-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    DeletingNode                  node/ip-10-18-3-112.af-south-1.compute.internal   Deleting node ip-10-18-3-112.af-south-1.compute.internal because it does not exist in the cloud provider
25m         Normal    RemovingNode                  node/ip-10-18-3-112.af-south-1.compute.internal   Node ip-10-18-3-112.af-south-1.compute.internal event: Removing Node ip-10-18-3-112.af-south-1.compute.internal from Controller
22m         Normal    Starting                      node/ip-10-18-3-119.af-south-1.compute.internal   Starting kubelet.
22m         Warning   InvalidDiskCapacity           node/ip-10-18-3-119.af-south-1.compute.internal   invalid capacity 0 on image filesystem
22m         Normal    NodeHasSufficientMemory       node/ip-10-18-3-119.af-south-1.compute.internal   Node ip-10-18-3-119.af-south-1.compute.internal status is now: NodeHasSufficientMemory
22m         Normal    NodeHasNoDiskPressure         node/ip-10-18-3-119.af-south-1.compute.internal   Node ip-10-18-3-119.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
22m         Normal    NodeHasSufficientPID          node/ip-10-18-3-119.af-south-1.compute.internal   Node ip-10-18-3-119.af-south-1.compute.internal status is now: NodeHasSufficientPID
22m         Normal    NodeAllocatableEnforced       node/ip-10-18-3-119.af-south-1.compute.internal   Updated Node Allocatable limit across pods
22m         Normal    RegisteredNode                node/ip-10-18-3-119.af-south-1.compute.internal   Node ip-10-18-3-119.af-south-1.compute.internal event: Registered Node ip-10-18-3-119.af-south-1.compute.internal in Controller
22m         Normal    Synced                        node/ip-10-18-3-119.af-south-1.compute.internal   Node synced successfully
22m         Normal    DisruptionBlocked             node/ip-10-18-3-119.af-south-1.compute.internal   Node isn't initialized
22m         Normal    Starting                      node/ip-10-18-3-119.af-south-1.compute.internal   
22m         Normal    NodeReady                     node/ip-10-18-3-119.af-south-1.compute.internal   Node ip-10-18-3-119.af-south-1.compute.internal status is now: NodeReady
22m         Normal    Ready                         node/ip-10-18-3-119.af-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    ControllerVersionNotice       node/ip-10-18-3-119.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeTrunkInitiated            node/ip-10-18-3-119.af-south-1.compute.internal   The node has trunk interface initialized successfully
20m         Normal    DisruptionBlocked             node/ip-10-18-3-119.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
19m         Normal    DisruptionBlocked             node/ip-10-18-3-119.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
8m21s       Normal    SpotRebalanceRecommendation   node/ip-10-18-3-119.af-south-1.compute.internal   Spot rebalance recommendation was triggered
62m         Normal    DisruptionBlocked             node/ip-10-18-3-137.af-south-1.compute.internal   Node is deleting or marked for deletion
62m         Normal    DisruptionTerminating         node/ip-10-18-3-137.af-south-1.compute.internal   Disrupting Node: Underutilized/Delete
62m         Warning   FailedDraining                node/ip-10-18-3-137.af-south-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
61m         Warning   InstanceTerminating           node/ip-10-18-3-137.af-south-1.compute.internal   Instance is terminating
60m         Normal    RemovingNode                  node/ip-10-18-3-137.af-south-1.compute.internal   Node ip-10-18-3-137.af-south-1.compute.internal event: Removing Node ip-10-18-3-137.af-south-1.compute.internal from Controller
26m         Normal    Starting                      node/ip-10-18-3-16.af-south-1.compute.internal    Starting kubelet.
26m         Warning   InvalidDiskCapacity           node/ip-10-18-3-16.af-south-1.compute.internal    invalid capacity 0 on image filesystem
26m         Normal    NodeHasSufficientMemory       node/ip-10-18-3-16.af-south-1.compute.internal    Node ip-10-18-3-16.af-south-1.compute.internal status is now: NodeHasSufficientMemory
26m         Normal    NodeHasNoDiskPressure         node/ip-10-18-3-16.af-south-1.compute.internal    Node ip-10-18-3-16.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
26m         Normal    NodeHasSufficientPID          node/ip-10-18-3-16.af-south-1.compute.internal    Node ip-10-18-3-16.af-south-1.compute.internal status is now: NodeHasSufficientPID
26m         Normal    NodeAllocatableEnforced       node/ip-10-18-3-16.af-south-1.compute.internal    Updated Node Allocatable limit across pods
26m         Normal    Synced                        node/ip-10-18-3-16.af-south-1.compute.internal    Node synced successfully
26m         Normal    RegisteredNode                node/ip-10-18-3-16.af-south-1.compute.internal    Node ip-10-18-3-16.af-south-1.compute.internal event: Registered Node ip-10-18-3-16.af-south-1.compute.internal in Controller
26m         Normal    DisruptionBlocked             node/ip-10-18-3-16.af-south-1.compute.internal    Node isn't initialized
26m         Normal    Starting                      node/ip-10-18-3-16.af-south-1.compute.internal    
26m         Normal    ControllerVersionNotice       node/ip-10-18-3-16.af-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeReady                     node/ip-10-18-3-16.af-south-1.compute.internal    Node ip-10-18-3-16.af-south-1.compute.internal status is now: NodeReady
26m         Normal    Ready                         node/ip-10-18-3-16.af-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26m         Normal    NodeTrunkInitiated            node/ip-10-18-3-16.af-south-1.compute.internal    The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked             node/ip-10-18-3-16.af-south-1.compute.internal    Node is nominated for a pending pod
22m         Normal    ControllerVersionNotice       node/ip-10-18-3-16.af-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeTrunkInitiated            node/ip-10-18-3-16.af-south-1.compute.internal    The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked             node/ip-10-18-3-16.af-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
6m28s       Normal    DisruptionBlocked             node/ip-10-18-3-16.af-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
28m         Normal    Starting                      node/ip-10-18-3-173.af-south-1.compute.internal   Starting kubelet.
28m         Warning   InvalidDiskCapacity           node/ip-10-18-3-173.af-south-1.compute.internal   invalid capacity 0 on image filesystem
28m         Normal    NodeHasSufficientMemory       node/ip-10-18-3-173.af-south-1.compute.internal   Node ip-10-18-3-173.af-south-1.compute.internal status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure         node/ip-10-18-3-173.af-south-1.compute.internal   Node ip-10-18-3-173.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID          node/ip-10-18-3-173.af-south-1.compute.internal   Node ip-10-18-3-173.af-south-1.compute.internal status is now: NodeHasSufficientPID
28m         Normal    NodeAllocatableEnforced       node/ip-10-18-3-173.af-south-1.compute.internal   Updated Node Allocatable limit across pods
28m         Normal    RegisteredNode                node/ip-10-18-3-173.af-south-1.compute.internal   Node ip-10-18-3-173.af-south-1.compute.internal event: Registered Node ip-10-18-3-173.af-south-1.compute.internal in Controller
27m         Normal    Starting                      node/ip-10-18-3-173.af-south-1.compute.internal   
27m         Normal    DisruptionBlocked             node/ip-10-18-3-173.af-south-1.compute.internal   Node isn't initialized
27m         Normal    ControllerVersionNotice       node/ip-10-18-3-173.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeReady                     node/ip-10-18-3-173.af-south-1.compute.internal   Node ip-10-18-3-173.af-south-1.compute.internal status is now: NodeReady
27m         Normal    Ready                         node/ip-10-18-3-173.af-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
27m         Normal    Synced                        node/ip-10-18-3-173.af-south-1.compute.internal   Node synced successfully
27m         Normal    NodeTrunkInitiated            node/ip-10-18-3-173.af-south-1.compute.internal   The node has trunk interface initialized successfully
22m         Normal    ControllerVersionNotice       node/ip-10-18-3-173.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeTrunkInitiated            node/ip-10-18-3-173.af-south-1.compute.internal   The node has trunk interface initialized successfully
27m         Normal    Starting                      node/ip-10-18-3-190.af-south-1.compute.internal   Starting kubelet.
27m         Warning   InvalidDiskCapacity           node/ip-10-18-3-190.af-south-1.compute.internal   invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory       node/ip-10-18-3-190.af-south-1.compute.internal   Node ip-10-18-3-190.af-south-1.compute.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure         node/ip-10-18-3-190.af-south-1.compute.internal   Node ip-10-18-3-190.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID          node/ip-10-18-3-190.af-south-1.compute.internal   Node ip-10-18-3-190.af-south-1.compute.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced       node/ip-10-18-3-190.af-south-1.compute.internal   Updated Node Allocatable limit across pods
27m         Normal    RegisteredNode                node/ip-10-18-3-190.af-south-1.compute.internal   Node ip-10-18-3-190.af-south-1.compute.internal event: Registered Node ip-10-18-3-190.af-south-1.compute.internal in Controller
27m         Normal    Synced                        node/ip-10-18-3-190.af-south-1.compute.internal   Node synced successfully
27m         Normal    Starting                      node/ip-10-18-3-190.af-south-1.compute.internal   
27m         Normal    DisruptionBlocked             node/ip-10-18-3-190.af-south-1.compute.internal   Node isn't initialized
27m         Normal    ControllerVersionNotice       node/ip-10-18-3-190.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeReady                     node/ip-10-18-3-190.af-south-1.compute.internal   Node ip-10-18-3-190.af-south-1.compute.internal status is now: NodeReady
27m         Normal    Ready                         node/ip-10-18-3-190.af-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
27m         Normal    NodeTrunkInitiated            node/ip-10-18-3-190.af-south-1.compute.internal   The node has trunk interface initialized successfully
22m         Normal    ControllerVersionNotice       node/ip-10-18-3-190.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeTrunkInitiated            node/ip-10-18-3-190.af-south-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked             node/ip-10-18-3-190.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-pdb)
97m         Warning   InstanceTerminating           node/ip-10-18-3-69.af-south-1.compute.internal    Instance is terminating
96m         Normal    RemovingNode                  node/ip-10-18-3-69.af-south-1.compute.internal    Node ip-10-18-3-69.af-south-1.compute.internal event: Removing Node ip-10-18-3-69.af-south-1.compute.internal from Controller
22m         Normal    Starting                      node/ip-10-18-3-69.af-south-1.compute.internal    Starting kubelet.
22m         Warning   InvalidDiskCapacity           node/ip-10-18-3-69.af-south-1.compute.internal    invalid capacity 0 on image filesystem
22m         Normal    NodeHasSufficientMemory       node/ip-10-18-3-69.af-south-1.compute.internal    Node ip-10-18-3-69.af-south-1.compute.internal status is now: NodeHasSufficientMemory
22m         Normal    NodeHasNoDiskPressure         node/ip-10-18-3-69.af-south-1.compute.internal    Node ip-10-18-3-69.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
22m         Normal    NodeHasSufficientPID          node/ip-10-18-3-69.af-south-1.compute.internal    Node ip-10-18-3-69.af-south-1.compute.internal status is now: NodeHasSufficientPID
22m         Normal    NodeAllocatableEnforced       node/ip-10-18-3-69.af-south-1.compute.internal    Updated Node Allocatable limit across pods
22m         Normal    Synced                        node/ip-10-18-3-69.af-south-1.compute.internal    Node synced successfully
22m         Normal    RegisteredNode                node/ip-10-18-3-69.af-south-1.compute.internal    Node ip-10-18-3-69.af-south-1.compute.internal event: Registered Node ip-10-18-3-69.af-south-1.compute.internal in Controller
22m         Normal    Starting                      node/ip-10-18-3-69.af-south-1.compute.internal    
22m         Normal    ControllerVersionNotice       node/ip-10-18-3-69.af-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
96s         Warning   Unsupported                   node/ip-10-18-3-69.af-south-1.compute.internal    The instance type t3.large is not supported for trunk interface (Security Group for Pods)
22m         Normal    NodeReady                     node/ip-10-18-3-69.af-south-1.compute.internal    Node ip-10-18-3-69.af-south-1.compute.internal status is now: NodeReady
22m         Normal    Ready                         node/ip-10-18-3-69.af-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
38m         Normal    Unconsolidatable              node/ip-10-18-3-90.af-south-1.compute.internal    Can't remove without creating 2 candidates
72m         Normal    Unconsolidatable              node/ip-10-18-3-90.af-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
22m         Normal    DisruptionBlocked             node/ip-10-18-3-90.af-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
28m         Normal    RegisteredNode                node/ip-10-18-3-90.af-south-1.compute.internal    Node ip-10-18-3-90.af-south-1.compute.internal event: Registered Node ip-10-18-3-90.af-south-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-18-3-90.af-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-18-3-90.af-south-1.compute.internal    The node has trunk interface initialized successfully
22m         Normal    ControllerVersionNotice       node/ip-10-18-3-90.af-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeTrunkInitiated            node/ip-10-18-3-90.af-south-1.compute.internal    The node has trunk interface initialized successfully
17m         Normal    DisruptionBlocked             node/ip-10-18-3-90.af-south-1.compute.internal    Node is deleting or marked for deletion
19m         Normal    DisruptionTerminating         node/ip-10-18-3-90.af-south-1.compute.internal    Disrupting Node: Drifted/Replace
19m         Warning   FailedDraining                node/ip-10-18-3-90.af-south-1.compute.internal    Failed to drain node, 6 pods are waiting to be evicted
18m         Warning   InstanceTerminating           node/ip-10-18-3-90.af-south-1.compute.internal    Instance is terminating
17m         Normal    NodeNotReady                  node/ip-10-18-3-90.af-south-1.compute.internal    Node ip-10-18-3-90.af-south-1.compute.internal status is now: NodeNotReady
17m         Normal    MemoryPressure                node/ip-10-18-3-90.af-south-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure                  node/ip-10-18-3-90.af-south-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure                   node/ip-10-18-3-90.af-south-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                         node/ip-10-18-3-90.af-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DeletingNode                  node/ip-10-18-3-90.af-south-1.compute.internal    Deleting node ip-10-18-3-90.af-south-1.compute.internal because it does not exist in the cloud provider
17m         Warning   InstanceTerminating           node/ip-10-18-3-90.af-south-1.compute.internal    Instance is terminating
17m         Normal    RemovingNode                  node/ip-10-18-3-90.af-south-1.compute.internal    Node ip-10-18-3-90.af-south-1.compute.internal event: Removing Node ip-10-18-3-90.af-south-1.compute.internal from Controller
23m         Normal    Starting                      node/ip-10-18-4-164.af-south-1.compute.internal   Starting kubelet.
23m         Warning   InvalidDiskCapacity           node/ip-10-18-4-164.af-south-1.compute.internal   invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory       node/ip-10-18-4-164.af-south-1.compute.internal   Node ip-10-18-4-164.af-south-1.compute.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure         node/ip-10-18-4-164.af-south-1.compute.internal   Node ip-10-18-4-164.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID          node/ip-10-18-4-164.af-south-1.compute.internal   Node ip-10-18-4-164.af-south-1.compute.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced       node/ip-10-18-4-164.af-south-1.compute.internal   Updated Node Allocatable limit across pods
23m         Normal    Synced                        node/ip-10-18-4-164.af-south-1.compute.internal   Node synced successfully
23m         Normal    RegisteredNode                node/ip-10-18-4-164.af-south-1.compute.internal   Node ip-10-18-4-164.af-south-1.compute.internal event: Registered Node ip-10-18-4-164.af-south-1.compute.internal in Controller
23m         Normal    Starting                      node/ip-10-18-4-164.af-south-1.compute.internal   
23m         Normal    ControllerVersionNotice       node/ip-10-18-4-164.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
23m         Warning   Unsupported                   node/ip-10-18-4-164.af-south-1.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
23m         Normal    NodeReady                     node/ip-10-18-4-164.af-south-1.compute.internal   Node ip-10-18-4-164.af-south-1.compute.internal status is now: NodeReady
23m         Normal    Ready                         node/ip-10-18-4-164.af-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    ControllerVersionNotice       node/ip-10-18-4-164.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
2m13s       Warning   Unsupported                   node/ip-10-18-4-164.af-south-1.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
23m         Normal    Starting                      node/ip-10-18-4-94.af-south-1.compute.internal    Starting kubelet.
23m         Warning   InvalidDiskCapacity           node/ip-10-18-4-94.af-south-1.compute.internal    invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory       node/ip-10-18-4-94.af-south-1.compute.internal    Node ip-10-18-4-94.af-south-1.compute.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure         node/ip-10-18-4-94.af-south-1.compute.internal    Node ip-10-18-4-94.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID          node/ip-10-18-4-94.af-south-1.compute.internal    Node ip-10-18-4-94.af-south-1.compute.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced       node/ip-10-18-4-94.af-south-1.compute.internal    Updated Node Allocatable limit across pods
23m         Normal    Synced                        node/ip-10-18-4-94.af-south-1.compute.internal    Node synced successfully
23m         Normal    RegisteredNode                node/ip-10-18-4-94.af-south-1.compute.internal    Node ip-10-18-4-94.af-south-1.compute.internal event: Registered Node ip-10-18-4-94.af-south-1.compute.internal in Controller
23m         Normal    Starting                      node/ip-10-18-4-94.af-south-1.compute.internal    
23m         Normal    ControllerVersionNotice       node/ip-10-18-4-94.af-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
22m         Warning   Unsupported                   node/ip-10-18-4-94.af-south-1.compute.internal    The instance type t3.large is not supported for trunk interface (Security Group for Pods)
23m         Normal    NodeReady                     node/ip-10-18-4-94.af-south-1.compute.internal    Node ip-10-18-4-94.af-south-1.compute.internal status is now: NodeReady
23m         Normal    Ready                         node/ip-10-18-4-94.af-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    ControllerVersionNotice       node/ip-10-18-4-94.af-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
11m         Warning   Unsupported                   node/ip-10-18-4-94.af-south-1.compute.internal    The instance type t3.large is not supported for trunk interface (Security Group for Pods)
13m         Normal    NodeNotSchedulable            node/ip-10-18-4-94.af-south-1.compute.internal    Node ip-10-18-4-94.af-south-1.compute.internal status is now: NodeNotSchedulable
11m         Normal    NodeNotReady                  node/ip-10-18-4-94.af-south-1.compute.internal    Node ip-10-18-4-94.af-south-1.compute.internal status is now: NodeNotReady
11m         Normal    MemoryPressure                node/ip-10-18-4-94.af-south-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DiskPressure                  node/ip-10-18-4-94.af-south-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    PIDPressure                   node/ip-10-18-4-94.af-south-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    Ready                         node/ip-10-18-4-94.af-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DeletingNode                  node/ip-10-18-4-94.af-south-1.compute.internal    Deleting node ip-10-18-4-94.af-south-1.compute.internal because it does not exist in the cloud provider
11m         Normal    RemovingNode                  node/ip-10-18-4-94.af-south-1.compute.internal    Node ip-10-18-4-94.af-south-1.compute.internal event: Removing Node ip-10-18-4-94.af-south-1.compute.internal from Controller
```

Pods with issues
```
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-kpbcs                               0/1     CreateContainerConfigError   0          25m
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-tgv28                               0/1     CreateContainerConfigError   0          27m
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
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     279d
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

Generated on: Tue Sep 23 14:08:53 CEST 2025
