# Cluster recon for tfh-orb-prod-infra,us-east-1,orb-prod-v2-us-east-1,tunnel-vpc-orb-prod-us-east-1

TFH EKS login...
```console
2025/09/23 14:11:14 INFO Logging into AWS
2025/09/23 14:11:14 INFO Token found and valid
2025/09/23 14:11:16 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-prod-us-east-1 id=7599e212-34d0-4509-95b2-43c482692c20
2025/09/23 14:11:18 INFO Active WARP Virtual Network id=7599e212-34d0-4509-95b2-43c482692c20
Updated context tfh-orb-prod-v2-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "orb-prod-v2-us-east-1",
        "arn": "arn:aws:eks:us-east-1:573252405782:cluster/orb-prod-v2-us-east-1",
        "createdAt": "2023-06-16T09:55:31.552000+02:00",
        "version": "1.33",
        "endpoint": "https://6B76BF9055C7EF0E646F2AE8B33D4970.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::573252405782:role/eks-cluster-orb-prod-v2-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0d6e9a1f67d90593e",
                "subnet-0d55f8238b96decac",
                "subnet-02d31ea0e899b133b"
            ],
            "securityGroupIds": [
                "sg-0187d0caacf22e438"
            ],
            "clusterSecurityGroupId": "sg-020a34715dcd352d9",
            "vpcId": "vpc-08f3971f114afe74a",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/6B76BF9055C7EF0E646F2AE8B33D4970"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EWXhOakE0TURFeE1Wb1hEVE16TURZeE16QTRNREV4TVZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBT29CCmcySVR0RzlQaC9NMEd3RG45UmU2RUdxQi9jRTVkaUJhKzFLVmkzVWVZakloaTRXSEJLdkJNYjlQTWowM0xkWHIKUm5UL2JwOGZOREdFZVQzWjVXQVNLNGlkeG5SUDZMaUYrM0lmOFhuK1lxcXlTN2xRdi9qcE4zSHdxZmFvV2kzTAozWk9NRTZHbm9ubWxGQlNlY2NvU3V0eTlMdnY2U0hVVmt2eG1WNzN6RjYwak42M014K1NDU3U1R0dackNsRlcyCjlyWkw4RGMveDUzWnVGZ011MCtRUmpSVXlBazNFdGJLUjNpZWwySjlaU3JGamV0SE8yYVh2VEpmenh6bTNkRE4KMEFEc3lvekZDcnpuZGp4MkZ6MjJCWHRNajJZaytUUjNjU2MwUVBjbGk5TVMzaElmb2tMS3ZvdWpKb3UzWjNtagpIWHI0Um5uTWZPOFJ0QTlTdk1VQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZOUFk5SHdnUVRMa2dqN2VwZEFxL21MMDIweWRNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBRmJZL2RadFV5ak1TbVN2NnBDYQpZMEt4TWgwbEVFclhCQlRtK3o4a0J6VUZEV0lZZU1TZlJ5UjhOdWZEdTFkSW5pVE9yZE1sL012Z3dyWGlzYjBGCjJGNFIvNGU0VjgxTGtrZ1MvMTJ1b0swNFB4cFdpclZnMGtRaWl1UmxYbjBwZUhMRlBOQWsrSHZxQndXVkRjSzgKODVPd2lYeUs2Sm5obi9xdDk5bmVsSm50SnRGanpxNTIzMXF4ZDh4Y0R2K1FzTVdTNUpwcUxqWno4by90bUVDWQprU1ZFNmVyV29aYXFFbVBQeWZ3WHRrV1NZeTlObktUdFJIejlGZFV6MnNMMVlGYWdKVmJOU0NoZDhrRytSc3JnCm5jNjRQN2pGajhpeGlMdnlTdkZRYkNMYUJJak45Q2VDTndMMnhDSUlCN1B4MTY4UzJlUlZIYUZRMndmVCtjeUMKVnRVPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-prod-v2-us-east-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:573252405782:key/1d172c69-c28b-4072-846b-a2a97eea6a91"
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
NAME                          STATUS   ROLES    AGE     VERSION               INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-2-80-145.ec2.internal   Ready    <none>   14m     v1.33.4-eks-99d6cc0   10.2.80.145   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-80-153.ec2.internal   Ready    <none>   10m     v1.33.4-eks-99d6cc0   10.2.80.153   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-80-162.ec2.internal   Ready    <none>   16m     v1.33.4-eks-99d6cc0   10.2.80.162   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-80-180.ec2.internal   Ready    <none>   18m     v1.33.4-eks-99d6cc0   10.2.80.180   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-80-214.ec2.internal   Ready    <none>   12m     v1.33.4-eks-99d6cc0   10.2.80.214   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-80-225.ec2.internal   Ready    <none>   21m     v1.33.4-eks-99d6cc0   10.2.80.225   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-80-35.ec2.internal    Ready    <none>   8m51s   v1.33.4-eks-99d6cc0   10.2.80.35    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-80-45.ec2.internal    Ready    <none>   7m58s   v1.33.4-eks-99d6cc0   10.2.80.45    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-81-187.ec2.internal   Ready    <none>   17m     v1.33.4-eks-99d6cc0   10.2.81.187   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-81-208.ec2.internal   Ready    <none>   32m     v1.33.4-eks-99d6cc0   10.2.81.208   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-us-east-1
ip-10-2-81-51.ec2.internal    Ready    <none>   12m     v1.33.4-eks-99d6cc0   10.2.81.51    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-82-136.ec2.internal   Ready    <none>   14m     v1.33.4-eks-99d6cc0   10.2.82.136   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-2-82-255.ec2.internal   Ready    <none>   21m     v1.33.4-eks-99d6cc0   10.2.82.255   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-82-27.ec2.internal    Ready    <none>   25m     v1.33.4-eks-99d6cc0   10.2.82.27    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-83-194.ec2.internal   Ready    <none>   30m     v1.33.4-eks-99d6cc0   10.2.83.194   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-us-east-1
ip-10-2-83-79.ec2.internal    Ready    <none>   14m     v1.33.4-eks-99d6cc0   10.2.83.79    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                          STATUS   ROLES    TAINTS
ip-10-2-80-145.ec2.internal   Ready    <none>   <none>
ip-10-2-80-153.ec2.internal   Ready    <none>   <none>
ip-10-2-80-162.ec2.internal   Ready    <none>   <none>
ip-10-2-80-180.ec2.internal   Ready    <none>   <none>
ip-10-2-80-214.ec2.internal   Ready    <none>   <none>
ip-10-2-80-225.ec2.internal   Ready    <none>   <none>
ip-10-2-80-35.ec2.internal    Ready    <none>   <none>
ip-10-2-80-45.ec2.internal    Ready    <none>   <none>
ip-10-2-81-187.ec2.internal   Ready    <none>   <none>
ip-10-2-81-208.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-2-81-51.ec2.internal    Ready    <none>   <none>
ip-10-2-82-136.ec2.internal   Ready    <none>   <none>
ip-10-2-82-255.ec2.internal   Ready    <none>   <none>
ip-10-2-82-27.ec2.internal    Ready    <none>   <none>
ip-10-2-83-194.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-2-83-79.ec2.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                             MESSAGE
23m         Normal    Finalized                     node                               Finalized karpenter.sh/termination
20m         Normal    Finalized                     node                               Finalized karpenter.sh/termination
6m22s       Normal    Finalized                     node                               Finalized karpenter.sh/termination
26m         Normal    DisruptionBlocked             node/ip-10-2-80-110.ec2.internal   Node is nominated for a pending pod
35m         Normal    Unconsolidatable              node/ip-10-2-80-110.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    RegisteredNode                node/ip-10-2-80-110.ec2.internal   Node ip-10-2-80-110.ec2.internal event: Registered Node ip-10-2-80-110.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-80-110.ec2.internal   The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-2-80-110.ec2.internal   The node has trunk interface initialized successfully
25m         Normal    RegisteredNode                node/ip-10-2-80-110.ec2.internal   Node ip-10-2-80-110.ec2.internal event: Registered Node ip-10-2-80-110.ec2.internal in Controller
24m         Normal    DisruptionBlocked             node/ip-10-2-80-110.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
21m         Normal    DisruptionBlocked             node/ip-10-2-80-110.ec2.internal   Node is nominated for a pending pod
17m         Normal    DisruptionBlocked             node/ip-10-2-80-110.ec2.internal   Node is nominated for a pending pod
15m         Normal    DisruptionTerminating         node/ip-10-2-80-110.ec2.internal   Disrupting Node: Drifted/Replace
15m         Warning   FailedDraining                node/ip-10-2-80-110.ec2.internal   Failed to drain node, 7 pods are waiting to be evicted
15m         Warning   InstanceTerminating           node/ip-10-2-80-110.ec2.internal   Instance is terminating
14m         Normal    DisruptionBlocked             node/ip-10-2-80-110.ec2.internal   Node is deleting or marked for deletion
14m         Normal    NodeNotReady                  node/ip-10-2-80-110.ec2.internal   Node ip-10-2-80-110.ec2.internal status is now: NodeNotReady
14m         Normal    MemoryPressure                node/ip-10-2-80-110.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure                  node/ip-10-2-80-110.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure                   node/ip-10-2-80-110.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                         node/ip-10-2-80-110.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    RemovingNode                  node/ip-10-2-80-110.ec2.internal   Node ip-10-2-80-110.ec2.internal event: Removing Node ip-10-2-80-110.ec2.internal from Controller
30m         Normal    Unconsolidatable              node/ip-10-2-80-141.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    RegisteredNode                node/ip-10-2-80-141.ec2.internal   Node ip-10-2-80-141.ec2.internal event: Registered Node ip-10-2-80-141.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-80-141.ec2.internal   The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-2-80-141.ec2.internal   The node has trunk interface initialized successfully
25m         Normal    RegisteredNode                node/ip-10-2-80-141.ec2.internal   Node ip-10-2-80-141.ec2.internal event: Registered Node ip-10-2-80-141.ec2.internal in Controller
21m         Normal    DisruptionBlocked             node/ip-10-2-80-141.ec2.internal   Not all pods would schedule, orb-manager-internal/orb-manager-internal-58f48d467c-jkscq => would schedule against uninitialized nodeclaim/main-amd64-gkcpg
17m         Normal    DisruptionBlocked             node/ip-10-2-80-141.ec2.internal   Node is deleting or marked for deletion
17m         Normal    DisruptionTerminating         node/ip-10-2-80-141.ec2.internal   Disrupting Node: Drifted/Replace
17m         Warning   FailedDraining                node/ip-10-2-80-141.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
16m         Warning   InstanceTerminating           node/ip-10-2-80-141.ec2.internal   Instance is terminating
16m         Normal    RemovingNode                  node/ip-10-2-80-141.ec2.internal   Node ip-10-2-80-141.ec2.internal event: Removing Node ip-10-2-80-141.ec2.internal from Controller
14m         Normal    Starting                      node/ip-10-2-80-145.ec2.internal   Starting kubelet.
14m         Warning   InvalidDiskCapacity           node/ip-10-2-80-145.ec2.internal   invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory       node/ip-10-2-80-145.ec2.internal   Node ip-10-2-80-145.ec2.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure         node/ip-10-2-80-145.ec2.internal   Node ip-10-2-80-145.ec2.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID          node/ip-10-2-80-145.ec2.internal   Node ip-10-2-80-145.ec2.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced       node/ip-10-2-80-145.ec2.internal   Updated Node Allocatable limit across pods
14m         Normal    Synced                        node/ip-10-2-80-145.ec2.internal   Node synced successfully
14m         Normal    RegisteredNode                node/ip-10-2-80-145.ec2.internal   Node ip-10-2-80-145.ec2.internal event: Registered Node ip-10-2-80-145.ec2.internal in Controller
14m         Normal    DisruptionBlocked             node/ip-10-2-80-145.ec2.internal   Node isn't initialized
14m         Normal    Starting                      node/ip-10-2-80-145.ec2.internal   
14m         Normal    ControllerVersionNotice       node/ip-10-2-80-145.ec2.internal   The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeReady                     node/ip-10-2-80-145.ec2.internal   Node ip-10-2-80-145.ec2.internal status is now: NodeReady
14m         Normal    Ready                         node/ip-10-2-80-145.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeTrunkInitiated            node/ip-10-2-80-145.ec2.internal   The node has trunk interface initialized successfully
7m54s       Normal    DisruptionBlocked             node/ip-10-2-80-145.ec2.internal   Node is nominated for a pending pod
11m         Normal    Starting                      node/ip-10-2-80-153.ec2.internal   Starting kubelet.
11m         Warning   InvalidDiskCapacity           node/ip-10-2-80-153.ec2.internal   invalid capacity 0 on image filesystem
11m         Normal    NodeHasSufficientMemory       node/ip-10-2-80-153.ec2.internal   Node ip-10-2-80-153.ec2.internal status is now: NodeHasSufficientMemory
11m         Normal    NodeHasNoDiskPressure         node/ip-10-2-80-153.ec2.internal   Node ip-10-2-80-153.ec2.internal status is now: NodeHasNoDiskPressure
11m         Normal    NodeHasSufficientPID          node/ip-10-2-80-153.ec2.internal   Node ip-10-2-80-153.ec2.internal status is now: NodeHasSufficientPID
11m         Normal    NodeAllocatableEnforced       node/ip-10-2-80-153.ec2.internal   Updated Node Allocatable limit across pods
11m         Normal    Synced                        node/ip-10-2-80-153.ec2.internal   Node synced successfully
10m         Normal    RegisteredNode                node/ip-10-2-80-153.ec2.internal   Node ip-10-2-80-153.ec2.internal event: Registered Node ip-10-2-80-153.ec2.internal in Controller
10m         Normal    Starting                      node/ip-10-2-80-153.ec2.internal   
10m         Normal    DisruptionBlocked             node/ip-10-2-80-153.ec2.internal   Node isn't initialized
10m         Normal    ControllerVersionNotice       node/ip-10-2-80-153.ec2.internal   The node is managed by VPC resource controller version v1.7.11
10m         Normal    NodeReady                     node/ip-10-2-80-153.ec2.internal   Node ip-10-2-80-153.ec2.internal status is now: NodeReady
10m         Normal    Ready                         node/ip-10-2-80-153.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
10m         Normal    NodeTrunkInitiated            node/ip-10-2-80-153.ec2.internal   The node has trunk interface initialized successfully
8m45s       Normal    DisruptionBlocked             node/ip-10-2-80-153.ec2.internal   Node is nominated for a pending pod
16m         Normal    Starting                      node/ip-10-2-80-162.ec2.internal   Starting kubelet.
16m         Warning   InvalidDiskCapacity           node/ip-10-2-80-162.ec2.internal   invalid capacity 0 on image filesystem
16m         Normal    NodeHasSufficientMemory       node/ip-10-2-80-162.ec2.internal   Node ip-10-2-80-162.ec2.internal status is now: NodeHasSufficientMemory
16m         Normal    NodeHasNoDiskPressure         node/ip-10-2-80-162.ec2.internal   Node ip-10-2-80-162.ec2.internal status is now: NodeHasNoDiskPressure
16m         Normal    NodeHasSufficientPID          node/ip-10-2-80-162.ec2.internal   Node ip-10-2-80-162.ec2.internal status is now: NodeHasSufficientPID
16m         Normal    NodeAllocatableEnforced       node/ip-10-2-80-162.ec2.internal   Updated Node Allocatable limit across pods
16m         Normal    Synced                        node/ip-10-2-80-162.ec2.internal   Node synced successfully
16m         Normal    DisruptionBlocked             node/ip-10-2-80-162.ec2.internal   Node isn't initialized
16m         Normal    RegisteredNode                node/ip-10-2-80-162.ec2.internal   Node ip-10-2-80-162.ec2.internal event: Registered Node ip-10-2-80-162.ec2.internal in Controller
16m         Normal    Starting                      node/ip-10-2-80-162.ec2.internal   
15m         Normal    ControllerVersionNotice       node/ip-10-2-80-162.ec2.internal   The node is managed by VPC resource controller version v1.7.11
15m         Normal    NodeReady                     node/ip-10-2-80-162.ec2.internal   Node ip-10-2-80-162.ec2.internal status is now: NodeReady
15m         Normal    Ready                         node/ip-10-2-80-162.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    NodeTrunkInitiated            node/ip-10-2-80-162.ec2.internal   The node has trunk interface initialized successfully
9m15s       Normal    DisruptionBlocked             node/ip-10-2-80-162.ec2.internal   Node is nominated for a pending pod
7m13s       Normal    DisruptionBlocked             node/ip-10-2-80-162.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
18m         Normal    Starting                      node/ip-10-2-80-180.ec2.internal   Starting kubelet.
18m         Warning   InvalidDiskCapacity           node/ip-10-2-80-180.ec2.internal   invalid capacity 0 on image filesystem
18m         Normal    NodeHasSufficientMemory       node/ip-10-2-80-180.ec2.internal   Node ip-10-2-80-180.ec2.internal status is now: NodeHasSufficientMemory
18m         Normal    NodeHasNoDiskPressure         node/ip-10-2-80-180.ec2.internal   Node ip-10-2-80-180.ec2.internal status is now: NodeHasNoDiskPressure
18m         Normal    NodeHasSufficientPID          node/ip-10-2-80-180.ec2.internal   Node ip-10-2-80-180.ec2.internal status is now: NodeHasSufficientPID
18m         Normal    NodeAllocatableEnforced       node/ip-10-2-80-180.ec2.internal   Updated Node Allocatable limit across pods
18m         Normal    Synced                        node/ip-10-2-80-180.ec2.internal   Node synced successfully
18m         Normal    RegisteredNode                node/ip-10-2-80-180.ec2.internal   Node ip-10-2-80-180.ec2.internal event: Registered Node ip-10-2-80-180.ec2.internal in Controller
18m         Normal    Starting                      node/ip-10-2-80-180.ec2.internal   
18m         Normal    DisruptionBlocked             node/ip-10-2-80-180.ec2.internal   Node isn't initialized
18m         Normal    ControllerVersionNotice       node/ip-10-2-80-180.ec2.internal   The node is managed by VPC resource controller version v1.7.11
18m         Normal    NodeReady                     node/ip-10-2-80-180.ec2.internal   Node ip-10-2-80-180.ec2.internal status is now: NodeReady
18m         Normal    Ready                         node/ip-10-2-80-180.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
18m         Normal    NodeTrunkInitiated            node/ip-10-2-80-180.ec2.internal   The node has trunk interface initialized successfully
9m15s       Normal    DisruptionBlocked             node/ip-10-2-80-180.ec2.internal   Node is nominated for a pending pod
2m15s       Normal    Unconsolidatable              node/ip-10-2-80-180.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
13m         Normal    Starting                      node/ip-10-2-80-214.ec2.internal   Starting kubelet.
13m         Warning   InvalidDiskCapacity           node/ip-10-2-80-214.ec2.internal   invalid capacity 0 on image filesystem
13m         Normal    NodeHasSufficientMemory       node/ip-10-2-80-214.ec2.internal   Node ip-10-2-80-214.ec2.internal status is now: NodeHasSufficientMemory
13m         Normal    NodeHasNoDiskPressure         node/ip-10-2-80-214.ec2.internal   Node ip-10-2-80-214.ec2.internal status is now: NodeHasNoDiskPressure
13m         Normal    NodeHasSufficientPID          node/ip-10-2-80-214.ec2.internal   Node ip-10-2-80-214.ec2.internal status is now: NodeHasSufficientPID
13m         Normal    NodeAllocatableEnforced       node/ip-10-2-80-214.ec2.internal   Updated Node Allocatable limit across pods
12m         Normal    Synced                        node/ip-10-2-80-214.ec2.internal   Node synced successfully
12m         Normal    RegisteredNode                node/ip-10-2-80-214.ec2.internal   Node ip-10-2-80-214.ec2.internal event: Registered Node ip-10-2-80-214.ec2.internal in Controller
12m         Normal    Starting                      node/ip-10-2-80-214.ec2.internal   
12m         Normal    DisruptionBlocked             node/ip-10-2-80-214.ec2.internal   Node isn't initialized
12m         Normal    ControllerVersionNotice       node/ip-10-2-80-214.ec2.internal   The node is managed by VPC resource controller version v1.7.11
12m         Normal    NodeReady                     node/ip-10-2-80-214.ec2.internal   Node ip-10-2-80-214.ec2.internal status is now: NodeReady
12m         Normal    Ready                         node/ip-10-2-80-214.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
12m         Normal    NodeTrunkInitiated            node/ip-10-2-80-214.ec2.internal   The node has trunk interface initialized successfully
8m34s       Normal    DisruptionBlocked             node/ip-10-2-80-214.ec2.internal   Node is nominated for a pending pod
21m         Normal    Starting                      node/ip-10-2-80-225.ec2.internal   Starting kubelet.
21m         Warning   InvalidDiskCapacity           node/ip-10-2-80-225.ec2.internal   invalid capacity 0 on image filesystem
21m         Normal    NodeHasSufficientMemory       node/ip-10-2-80-225.ec2.internal   Node ip-10-2-80-225.ec2.internal status is now: NodeHasSufficientMemory
21m         Normal    NodeHasNoDiskPressure         node/ip-10-2-80-225.ec2.internal   Node ip-10-2-80-225.ec2.internal status is now: NodeHasNoDiskPressure
21m         Normal    NodeHasSufficientPID          node/ip-10-2-80-225.ec2.internal   Node ip-10-2-80-225.ec2.internal status is now: NodeHasSufficientPID
21m         Normal    NodeAllocatableEnforced       node/ip-10-2-80-225.ec2.internal   Updated Node Allocatable limit across pods
21m         Normal    Synced                        node/ip-10-2-80-225.ec2.internal   Node synced successfully
21m         Normal    RegisteredNode                node/ip-10-2-80-225.ec2.internal   Node ip-10-2-80-225.ec2.internal event: Registered Node ip-10-2-80-225.ec2.internal in Controller
21m         Normal    DisruptionBlocked             node/ip-10-2-80-225.ec2.internal   Node isn't initialized
21m         Normal    Starting                      node/ip-10-2-80-225.ec2.internal   
21m         Normal    ControllerVersionNotice       node/ip-10-2-80-225.ec2.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeReady                     node/ip-10-2-80-225.ec2.internal   Node ip-10-2-80-225.ec2.internal status is now: NodeReady
21m         Normal    Ready                         node/ip-10-2-80-225.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    NodeTrunkInitiated            node/ip-10-2-80-225.ec2.internal   The node has trunk interface initialized successfully
11m         Normal    DisruptionBlocked             node/ip-10-2-80-225.ec2.internal   Node is nominated for a pending pod
8m57s       Normal    Starting                      node/ip-10-2-80-35.ec2.internal    Starting kubelet.
8m57s       Warning   InvalidDiskCapacity           node/ip-10-2-80-35.ec2.internal    invalid capacity 0 on image filesystem
8m57s       Normal    NodeHasSufficientMemory       node/ip-10-2-80-35.ec2.internal    Node ip-10-2-80-35.ec2.internal status is now: NodeHasSufficientMemory
8m57s       Normal    NodeHasNoDiskPressure         node/ip-10-2-80-35.ec2.internal    Node ip-10-2-80-35.ec2.internal status is now: NodeHasNoDiskPressure
8m57s       Normal    NodeHasSufficientPID          node/ip-10-2-80-35.ec2.internal    Node ip-10-2-80-35.ec2.internal status is now: NodeHasSufficientPID
8m57s       Normal    NodeAllocatableEnforced       node/ip-10-2-80-35.ec2.internal    Updated Node Allocatable limit across pods
8m54s       Normal    Synced                        node/ip-10-2-80-35.ec2.internal    Node synced successfully
8m52s       Normal    RegisteredNode                node/ip-10-2-80-35.ec2.internal    Node ip-10-2-80-35.ec2.internal event: Registered Node ip-10-2-80-35.ec2.internal in Controller
8m46s       Normal    Starting                      node/ip-10-2-80-35.ec2.internal    
8m45s       Normal    DisruptionBlocked             node/ip-10-2-80-35.ec2.internal    Node isn't initialized
8m41s       Normal    ControllerVersionNotice       node/ip-10-2-80-35.ec2.internal    The node is managed by VPC resource controller version v1.7.11
8m40s       Normal    NodeReady                     node/ip-10-2-80-35.ec2.internal    Node ip-10-2-80-35.ec2.internal status is now: NodeReady
8m40s       Normal    Ready                         node/ip-10-2-80-35.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
8m37s       Normal    NodeTrunkInitiated            node/ip-10-2-80-35.ec2.internal    The node has trunk interface initialized successfully
2m15s       Normal    DisruptionBlocked             node/ip-10-2-80-35.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
8m4s        Normal    Starting                      node/ip-10-2-80-45.ec2.internal    Starting kubelet.
8m4s        Warning   InvalidDiskCapacity           node/ip-10-2-80-45.ec2.internal    invalid capacity 0 on image filesystem
8m4s        Normal    NodeHasSufficientMemory       node/ip-10-2-80-45.ec2.internal    Node ip-10-2-80-45.ec2.internal status is now: NodeHasSufficientMemory
8m4s        Normal    NodeHasNoDiskPressure         node/ip-10-2-80-45.ec2.internal    Node ip-10-2-80-45.ec2.internal status is now: NodeHasNoDiskPressure
8m4s        Normal    NodeHasSufficientPID          node/ip-10-2-80-45.ec2.internal    Node ip-10-2-80-45.ec2.internal status is now: NodeHasSufficientPID
8m4s        Normal    NodeAllocatableEnforced       node/ip-10-2-80-45.ec2.internal    Updated Node Allocatable limit across pods
8m          Normal    Synced                        node/ip-10-2-80-45.ec2.internal    Node synced successfully
7m57s       Normal    RegisteredNode                node/ip-10-2-80-45.ec2.internal    Node ip-10-2-80-45.ec2.internal event: Registered Node ip-10-2-80-45.ec2.internal in Controller
7m54s       Normal    DisruptionBlocked             node/ip-10-2-80-45.ec2.internal    Node isn't initialized
7m52s       Normal    Starting                      node/ip-10-2-80-45.ec2.internal    
7m47s       Normal    ControllerVersionNotice       node/ip-10-2-80-45.ec2.internal    The node is managed by VPC resource controller version v1.7.11
7m47s       Normal    NodeReady                     node/ip-10-2-80-45.ec2.internal    Node ip-10-2-80-45.ec2.internal status is now: NodeReady
7m46s       Normal    Ready                         node/ip-10-2-80-45.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
7m43s       Normal    NodeTrunkInitiated            node/ip-10-2-80-45.ec2.internal    The node has trunk interface initialized successfully
35m         Normal    Unconsolidatable              node/ip-10-2-80-58.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    RegisteredNode                node/ip-10-2-80-58.ec2.internal    Node ip-10-2-80-58.ec2.internal event: Registered Node ip-10-2-80-58.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-80-58.ec2.internal    The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-2-80-58.ec2.internal    The node has trunk interface initialized successfully
25m         Normal    RegisteredNode                node/ip-10-2-80-58.ec2.internal    Node ip-10-2-80-58.ec2.internal event: Registered Node ip-10-2-80-58.ec2.internal in Controller
24m         Normal    DisruptionBlocked             node/ip-10-2-80-58.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
21m         Normal    DisruptionBlocked             node/ip-10-2-80-58.ec2.internal    Not all pods would schedule, orb-manager-internal/orb-manager-internal-58f48d467c-lk422 => would schedule against uninitialized nodeclaim/main-amd64-gkcpg
15m         Normal    DisruptionBlocked             node/ip-10-2-80-58.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
12m         Normal    DisruptionBlocked             node/ip-10-2-80-58.ec2.internal    Not all pods would schedule, orb-manager-internal/orb-manager-internal-58f48d467c-lk422 => would schedule against uninitialized nodeclaim/main-amd64-vgjh2, node/ip-10-2-81-51.ec2.internal
10m         Normal    DisruptionTerminating         node/ip-10-2-80-58.ec2.internal    Disrupting Node: Drifted/Replace
10m         Warning   FailedDraining                node/ip-10-2-80-58.ec2.internal    Failed to drain node, 16 pods are waiting to be evicted
10m         Normal    DisruptionBlocked             node/ip-10-2-80-58.ec2.internal    Node is deleting or marked for deletion
9m19s       Warning   InstanceTerminating           node/ip-10-2-80-58.ec2.internal    Instance is terminating
8m47s       Normal    NodeNotReady                  node/ip-10-2-80-58.ec2.internal    Node ip-10-2-80-58.ec2.internal status is now: NodeNotReady
8m47s       Normal    MemoryPressure                node/ip-10-2-80-58.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m47s       Normal    DiskPressure                  node/ip-10-2-80-58.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m47s       Normal    PIDPressure                   node/ip-10-2-80-58.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m47s       Normal    Ready                         node/ip-10-2-80-58.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m32s       Normal    RemovingNode                  node/ip-10-2-80-58.ec2.internal    Node ip-10-2-80-58.ec2.internal event: Removing Node ip-10-2-80-58.ec2.internal from Controller
30m         Normal    Unconsolidatable              node/ip-10-2-80-88.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    RegisteredNode                node/ip-10-2-80-88.ec2.internal    Node ip-10-2-80-88.ec2.internal event: Registered Node ip-10-2-80-88.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-80-88.ec2.internal    The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-2-80-88.ec2.internal    The node has trunk interface initialized successfully
25m         Normal    RegisteredNode                node/ip-10-2-80-88.ec2.internal    Node ip-10-2-80-88.ec2.internal event: Registered Node ip-10-2-80-88.ec2.internal in Controller
21m         Normal    DisruptionBlocked             node/ip-10-2-80-88.ec2.internal    Not all pods would schedule, orb-manager-external/orb-manager-external-84ff8957d7-wtd74 => would schedule against uninitialized nodeclaim/main-amd64-gkcpg
12m         Normal    DisruptionBlocked             node/ip-10-2-80-88.ec2.internal    Node is deleting or marked for deletion
14m         Normal    DisruptionTerminating         node/ip-10-2-80-88.ec2.internal    Disrupting Node: Drifted/Replace
14m         Warning   FailedDraining                node/ip-10-2-80-88.ec2.internal    Failed to drain node, 3 pods are waiting to be evicted
13m         Warning   InstanceTerminating           node/ip-10-2-80-88.ec2.internal    Instance is terminating
12m         Normal    MemoryPressure                node/ip-10-2-80-88.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DiskPressure                  node/ip-10-2-80-88.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    PIDPressure                   node/ip-10-2-80-88.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    Ready                         node/ip-10-2-80-88.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    NodeNotReady                  node/ip-10-2-80-88.ec2.internal    Node ip-10-2-80-88.ec2.internal status is now: NodeNotReady
12m         Normal    DeletingNode                  node/ip-10-2-80-88.ec2.internal    Deleting node ip-10-2-80-88.ec2.internal because it does not exist in the cloud provider
12m         Normal    RemovingNode                  node/ip-10-2-80-88.ec2.internal    Node ip-10-2-80-88.ec2.internal event: Removing Node ip-10-2-80-88.ec2.internal from Controller
17m         Normal    Starting                      node/ip-10-2-81-187.ec2.internal   Starting kubelet.
17m         Warning   InvalidDiskCapacity           node/ip-10-2-81-187.ec2.internal   invalid capacity 0 on image filesystem
17m         Normal    NodeHasSufficientMemory       node/ip-10-2-81-187.ec2.internal   Node ip-10-2-81-187.ec2.internal status is now: NodeHasSufficientMemory
17m         Normal    NodeHasNoDiskPressure         node/ip-10-2-81-187.ec2.internal   Node ip-10-2-81-187.ec2.internal status is now: NodeHasNoDiskPressure
17m         Normal    NodeHasSufficientPID          node/ip-10-2-81-187.ec2.internal   Node ip-10-2-81-187.ec2.internal status is now: NodeHasSufficientPID
17m         Normal    NodeAllocatableEnforced       node/ip-10-2-81-187.ec2.internal   Updated Node Allocatable limit across pods
17m         Normal    Synced                        node/ip-10-2-81-187.ec2.internal   Node synced successfully
17m         Normal    RegisteredNode                node/ip-10-2-81-187.ec2.internal   Node ip-10-2-81-187.ec2.internal event: Registered Node ip-10-2-81-187.ec2.internal in Controller
17m         Normal    Starting                      node/ip-10-2-81-187.ec2.internal   
17m         Normal    DisruptionBlocked             node/ip-10-2-81-187.ec2.internal   Node isn't initialized
17m         Normal    ControllerVersionNotice       node/ip-10-2-81-187.ec2.internal   The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeReady                     node/ip-10-2-81-187.ec2.internal   Node ip-10-2-81-187.ec2.internal status is now: NodeReady
17m         Normal    Ready                         node/ip-10-2-81-187.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    NodeTrunkInitiated            node/ip-10-2-81-187.ec2.internal   The node has trunk interface initialized successfully
94s         Normal    Unconsolidatable              node/ip-10-2-81-187.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
32m         Normal    Starting                      node/ip-10-2-81-208.ec2.internal   Starting kubelet.
32m         Warning   InvalidDiskCapacity           node/ip-10-2-81-208.ec2.internal   invalid capacity 0 on image filesystem
32m         Normal    NodeHasSufficientMemory       node/ip-10-2-81-208.ec2.internal   Node ip-10-2-81-208.ec2.internal status is now: NodeHasSufficientMemory
32m         Normal    NodeHasNoDiskPressure         node/ip-10-2-81-208.ec2.internal   Node ip-10-2-81-208.ec2.internal status is now: NodeHasNoDiskPressure
32m         Normal    NodeHasSufficientPID          node/ip-10-2-81-208.ec2.internal   Node ip-10-2-81-208.ec2.internal status is now: NodeHasSufficientPID
32m         Normal    NodeAllocatableEnforced       node/ip-10-2-81-208.ec2.internal   Updated Node Allocatable limit across pods
32m         Normal    Synced                        node/ip-10-2-81-208.ec2.internal   Node synced successfully
32m         Normal    RegisteredNode                node/ip-10-2-81-208.ec2.internal   Node ip-10-2-81-208.ec2.internal event: Registered Node ip-10-2-81-208.ec2.internal in Controller
31m         Normal    Starting                      node/ip-10-2-81-208.ec2.internal   
31m         Normal    ControllerVersionNotice       node/ip-10-2-81-208.ec2.internal   The node is managed by VPC resource controller version v1.7.9
30m         Warning   Unsupported                   node/ip-10-2-81-208.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
31m         Normal    NodeReady                     node/ip-10-2-81-208.ec2.internal   Node ip-10-2-81-208.ec2.internal status is now: NodeReady
31m         Normal    Ready                         node/ip-10-2-81-208.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
29m         Normal    RegisteredNode                node/ip-10-2-81-208.ec2.internal   Node ip-10-2-81-208.ec2.internal event: Registered Node ip-10-2-81-208.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-81-208.ec2.internal   The node is managed by VPC resource controller version v1.7.11
75s         Warning   Unsupported                   node/ip-10-2-81-208.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    RegisteredNode                node/ip-10-2-81-208.ec2.internal   Node ip-10-2-81-208.ec2.internal event: Registered Node ip-10-2-81-208.ec2.internal in Controller
32m         Normal    Starting                      node/ip-10-2-81-50.ec2.internal    Starting kubelet.
32m         Warning   InvalidDiskCapacity           node/ip-10-2-81-50.ec2.internal    invalid capacity 0 on image filesystem
32m         Normal    NodeHasSufficientMemory       node/ip-10-2-81-50.ec2.internal    Node ip-10-2-81-50.ec2.internal status is now: NodeHasSufficientMemory
32m         Normal    NodeHasNoDiskPressure         node/ip-10-2-81-50.ec2.internal    Node ip-10-2-81-50.ec2.internal status is now: NodeHasNoDiskPressure
32m         Normal    NodeHasSufficientPID          node/ip-10-2-81-50.ec2.internal    Node ip-10-2-81-50.ec2.internal status is now: NodeHasSufficientPID
32m         Normal    NodeAllocatableEnforced       node/ip-10-2-81-50.ec2.internal    Updated Node Allocatable limit across pods
32m         Normal    Synced                        node/ip-10-2-81-50.ec2.internal    Node synced successfully
32m         Normal    RegisteredNode                node/ip-10-2-81-50.ec2.internal    Node ip-10-2-81-50.ec2.internal event: Registered Node ip-10-2-81-50.ec2.internal in Controller
31m         Normal    Starting                      node/ip-10-2-81-50.ec2.internal    
31m         Normal    ControllerVersionNotice       node/ip-10-2-81-50.ec2.internal    The node is managed by VPC resource controller version v1.7.9
30m         Warning   Unsupported                   node/ip-10-2-81-50.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
31m         Normal    NodeReady                     node/ip-10-2-81-50.ec2.internal    Node ip-10-2-81-50.ec2.internal status is now: NodeReady
31m         Normal    Ready                         node/ip-10-2-81-50.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
29m         Normal    RegisteredNode                node/ip-10-2-81-50.ec2.internal    Node ip-10-2-81-50.ec2.internal event: Registered Node ip-10-2-81-50.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-81-50.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Warning   Unsupported                   node/ip-10-2-81-50.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    RegisteredNode                node/ip-10-2-81-50.ec2.internal    Node ip-10-2-81-50.ec2.internal event: Registered Node ip-10-2-81-50.ec2.internal in Controller
22m         Normal    NodeNotSchedulable            node/ip-10-2-81-50.ec2.internal    Node ip-10-2-81-50.ec2.internal status is now: NodeNotSchedulable
20m         Normal    NodeNotReady                  node/ip-10-2-81-50.ec2.internal    Node ip-10-2-81-50.ec2.internal status is now: NodeNotReady
20m         Normal    MemoryPressure                node/ip-10-2-81-50.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    DiskPressure                  node/ip-10-2-81-50.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    PIDPressure                   node/ip-10-2-81-50.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    Ready                         node/ip-10-2-81-50.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    DeletingNode                  node/ip-10-2-81-50.ec2.internal    Deleting node ip-10-2-81-50.ec2.internal because it does not exist in the cloud provider
20m         Normal    RemovingNode                  node/ip-10-2-81-50.ec2.internal    Node ip-10-2-81-50.ec2.internal event: Removing Node ip-10-2-81-50.ec2.internal from Controller
12m         Normal    Starting                      node/ip-10-2-81-51.ec2.internal    Starting kubelet.
12m         Warning   InvalidDiskCapacity           node/ip-10-2-81-51.ec2.internal    invalid capacity 0 on image filesystem
12m         Normal    NodeHasSufficientMemory       node/ip-10-2-81-51.ec2.internal    Node ip-10-2-81-51.ec2.internal status is now: NodeHasSufficientMemory
12m         Normal    NodeHasNoDiskPressure         node/ip-10-2-81-51.ec2.internal    Node ip-10-2-81-51.ec2.internal status is now: NodeHasNoDiskPressure
12m         Normal    NodeHasSufficientPID          node/ip-10-2-81-51.ec2.internal    Node ip-10-2-81-51.ec2.internal status is now: NodeHasSufficientPID
12m         Normal    NodeAllocatableEnforced       node/ip-10-2-81-51.ec2.internal    Updated Node Allocatable limit across pods
12m         Normal    Synced                        node/ip-10-2-81-51.ec2.internal    Node synced successfully
12m         Normal    DisruptionBlocked             node/ip-10-2-81-51.ec2.internal    Node isn't initialized
12m         Normal    RegisteredNode                node/ip-10-2-81-51.ec2.internal    Node ip-10-2-81-51.ec2.internal event: Registered Node ip-10-2-81-51.ec2.internal in Controller
12m         Normal    Starting                      node/ip-10-2-81-51.ec2.internal    
12m         Normal    ControllerVersionNotice       node/ip-10-2-81-51.ec2.internal    The node is managed by VPC resource controller version v1.7.11
11m         Normal    NodeReady                     node/ip-10-2-81-51.ec2.internal    Node ip-10-2-81-51.ec2.internal status is now: NodeReady
11m         Normal    Ready                         node/ip-10-2-81-51.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
11m         Normal    NodeTrunkInitiated            node/ip-10-2-81-51.ec2.internal    The node has trunk interface initialized successfully
14m         Normal    Starting                      node/ip-10-2-82-136.ec2.internal   Starting kubelet.
14m         Warning   InvalidDiskCapacity           node/ip-10-2-82-136.ec2.internal   invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory       node/ip-10-2-82-136.ec2.internal   Node ip-10-2-82-136.ec2.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure         node/ip-10-2-82-136.ec2.internal   Node ip-10-2-82-136.ec2.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID          node/ip-10-2-82-136.ec2.internal   Node ip-10-2-82-136.ec2.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced       node/ip-10-2-82-136.ec2.internal   Updated Node Allocatable limit across pods
14m         Normal    Synced                        node/ip-10-2-82-136.ec2.internal   Node synced successfully
14m         Normal    RegisteredNode                node/ip-10-2-82-136.ec2.internal   Node ip-10-2-82-136.ec2.internal event: Registered Node ip-10-2-82-136.ec2.internal in Controller
14m         Normal    Starting                      node/ip-10-2-82-136.ec2.internal   
14m         Normal    DisruptionBlocked             node/ip-10-2-82-136.ec2.internal   Node isn't initialized
14m         Normal    ControllerVersionNotice       node/ip-10-2-82-136.ec2.internal   The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeReady                     node/ip-10-2-82-136.ec2.internal   Node ip-10-2-82-136.ec2.internal status is now: NodeReady
14m         Normal    Ready                         node/ip-10-2-82-136.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeTrunkInitiated            node/ip-10-2-82-136.ec2.internal   The node has trunk interface initialized successfully
30m         Normal    Unconsolidatable              node/ip-10-2-82-200.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    RegisteredNode                node/ip-10-2-82-200.ec2.internal   Node ip-10-2-82-200.ec2.internal event: Registered Node ip-10-2-82-200.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-82-200.ec2.internal   The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-2-82-200.ec2.internal   The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked             node/ip-10-2-82-200.ec2.internal   Node is deleting or marked for deletion
25m         Normal    RegisteredNode                node/ip-10-2-82-200.ec2.internal   Node ip-10-2-82-200.ec2.internal event: Registered Node ip-10-2-82-200.ec2.internal in Controller
24m         Normal    DisruptionTerminating         node/ip-10-2-82-200.ec2.internal   Disrupting Node: Drifted/Replace
24m         Warning   FailedDraining                node/ip-10-2-82-200.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
24m         Warning   InstanceTerminating           node/ip-10-2-82-200.ec2.internal   Instance is terminating
23m         Normal    RemovingNode                  node/ip-10-2-82-200.ec2.internal   Node ip-10-2-82-200.ec2.internal event: Removing Node ip-10-2-82-200.ec2.internal from Controller
30m         Normal    Unconsolidatable              node/ip-10-2-82-226.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    RegisteredNode                node/ip-10-2-82-226.ec2.internal   Node ip-10-2-82-226.ec2.internal event: Registered Node ip-10-2-82-226.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-82-226.ec2.internal   The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-2-82-226.ec2.internal   The node has trunk interface initialized successfully
26m         Normal    DisruptionBlocked             node/ip-10-2-82-226.ec2.internal   Node is deleting or marked for deletion
23m         Normal    DisruptionBlocked             node/ip-10-2-82-226.ec2.internal   Node is nominated for a pending pod
25m         Normal    RegisteredNode                node/ip-10-2-82-226.ec2.internal   Node ip-10-2-82-226.ec2.internal event: Registered Node ip-10-2-82-226.ec2.internal in Controller
21m         Normal    DisruptionBlocked             node/ip-10-2-82-226.ec2.internal   Not all pods would schedule, traefik/traefik-6d8444b947-tf8bb => would schedule against uninitialized nodeclaim/main-amd64-gkcpg
19m         Normal    DisruptionBlocked             node/ip-10-2-82-226.ec2.internal   Node is nominated for a pending pod
12m         Normal    DisruptionBlocked             node/ip-10-2-82-226.ec2.internal   Not all pods would schedule, traefik/traefik-6d8444b947-tf8bb => would schedule against uninitialized nodeclaim/main-amd64-vgjh2, node/ip-10-2-81-51.ec2.internal
11m         Normal    DisruptionTerminating         node/ip-10-2-82-226.ec2.internal   Disrupting Node: Drifted/Delete
11m         Warning   FailedDraining                node/ip-10-2-82-226.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
11m         Warning   InstanceTerminating           node/ip-10-2-82-226.ec2.internal   Instance is terminating
10m         Normal    NodeNotReady                  node/ip-10-2-82-226.ec2.internal   Node ip-10-2-82-226.ec2.internal status is now: NodeNotReady
10m         Normal    MemoryPressure                node/ip-10-2-82-226.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    DiskPressure                  node/ip-10-2-82-226.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    PIDPressure                   node/ip-10-2-82-226.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    Ready                         node/ip-10-2-82-226.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    RemovingNode                  node/ip-10-2-82-226.ec2.internal   Node ip-10-2-82-226.ec2.internal event: Removing Node ip-10-2-82-226.ec2.internal from Controller
30m         Normal    Unconsolidatable              node/ip-10-2-82-242.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    RegisteredNode                node/ip-10-2-82-242.ec2.internal   Node ip-10-2-82-242.ec2.internal event: Registered Node ip-10-2-82-242.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-82-242.ec2.internal   The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-2-82-242.ec2.internal   The node has trunk interface initialized successfully
25m         Normal    RegisteredNode                node/ip-10-2-82-242.ec2.internal   Node ip-10-2-82-242.ec2.internal event: Registered Node ip-10-2-82-242.ec2.internal in Controller
24m         Normal    DisruptionBlocked             node/ip-10-2-82-242.ec2.internal   Node is deleting or marked for deletion
23m         Normal    DisruptionTerminating         node/ip-10-2-82-242.ec2.internal   Disrupting Node: Drifted/Replace
23m         Warning   FailedDraining                node/ip-10-2-82-242.ec2.internal   Failed to drain node, 7 pods are waiting to be evicted
22m         Warning   InstanceTerminating           node/ip-10-2-82-242.ec2.internal   Instance is terminating
21m         Normal    DisruptionBlocked             node/ip-10-2-82-242.ec2.internal   Node is deleting or marked for deletion
21m         Normal    NodeNotReady                  node/ip-10-2-82-242.ec2.internal   Node ip-10-2-82-242.ec2.internal status is now: NodeNotReady
21m         Normal    MemoryPressure                node/ip-10-2-82-242.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    DiskPressure                  node/ip-10-2-82-242.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    PIDPressure                   node/ip-10-2-82-242.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    Ready                         node/ip-10-2-82-242.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Warning   InstanceTerminating           node/ip-10-2-82-242.ec2.internal   Instance is terminating
20m         Normal    RemovingNode                  node/ip-10-2-82-242.ec2.internal   Node ip-10-2-82-242.ec2.internal event: Removing Node ip-10-2-82-242.ec2.internal from Controller
21m         Normal    Starting                      node/ip-10-2-82-255.ec2.internal   Starting kubelet.
21m         Warning   InvalidDiskCapacity           node/ip-10-2-82-255.ec2.internal   invalid capacity 0 on image filesystem
21m         Normal    NodeHasSufficientMemory       node/ip-10-2-82-255.ec2.internal   Node ip-10-2-82-255.ec2.internal status is now: NodeHasSufficientMemory
21m         Normal    NodeHasNoDiskPressure         node/ip-10-2-82-255.ec2.internal   Node ip-10-2-82-255.ec2.internal status is now: NodeHasNoDiskPressure
21m         Normal    NodeHasSufficientPID          node/ip-10-2-82-255.ec2.internal   Node ip-10-2-82-255.ec2.internal status is now: NodeHasSufficientPID
21m         Normal    NodeAllocatableEnforced       node/ip-10-2-82-255.ec2.internal   Updated Node Allocatable limit across pods
21m         Normal    RegisteredNode                node/ip-10-2-82-255.ec2.internal   Node ip-10-2-82-255.ec2.internal event: Registered Node ip-10-2-82-255.ec2.internal in Controller
21m         Normal    Synced                        node/ip-10-2-82-255.ec2.internal   Node synced successfully
21m         Normal    DisruptionBlocked             node/ip-10-2-82-255.ec2.internal   Node isn't initialized
21m         Normal    Starting                      node/ip-10-2-82-255.ec2.internal   
20m         Normal    ControllerVersionNotice       node/ip-10-2-82-255.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeReady                     node/ip-10-2-82-255.ec2.internal   Node ip-10-2-82-255.ec2.internal status is now: NodeReady
20m         Normal    Ready                         node/ip-10-2-82-255.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
20m         Normal    NodeTrunkInitiated            node/ip-10-2-82-255.ec2.internal   The node has trunk interface initialized successfully
15m         Normal    DisruptionBlocked             node/ip-10-2-82-255.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
10m         Normal    DisruptionBlocked             node/ip-10-2-82-255.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
71m         Normal    Unconsolidatable              node/ip-10-2-82-26.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    RegisteredNode                node/ip-10-2-82-26.ec2.internal    Node ip-10-2-82-26.ec2.internal event: Registered Node ip-10-2-82-26.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-82-26.ec2.internal    The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-2-82-26.ec2.internal    The node has trunk interface initialized successfully
25m         Normal    RegisteredNode                node/ip-10-2-82-26.ec2.internal    Node ip-10-2-82-26.ec2.internal event: Registered Node ip-10-2-82-26.ec2.internal in Controller
24m         Normal    DisruptionBlocked             node/ip-10-2-82-26.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
21m         Normal    DisruptionBlocked             node/ip-10-2-82-26.ec2.internal    Node is deleting or marked for deletion
20m         Normal    DisruptionTerminating         node/ip-10-2-82-26.ec2.internal    Disrupting Node: Drifted/Replace
20m         Warning   FailedDraining                node/ip-10-2-82-26.ec2.internal    Failed to drain node, 8 pods are waiting to be evicted
19m         Warning   FailedDraining                node/ip-10-2-82-26.ec2.internal    Failed to drain node, 2 pods are waiting to be evicted
19m         Normal    DisruptionBlocked             node/ip-10-2-82-26.ec2.internal    Node is deleting or marked for deletion
19m         Warning   InstanceTerminating           node/ip-10-2-82-26.ec2.internal    Instance is terminating
18m         Normal    NodeNotReady                  node/ip-10-2-82-26.ec2.internal    Node ip-10-2-82-26.ec2.internal status is now: NodeNotReady
18m         Normal    MemoryPressure                node/ip-10-2-82-26.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    DiskPressure                  node/ip-10-2-82-26.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    PIDPressure                   node/ip-10-2-82-26.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    Ready                         node/ip-10-2-82-26.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    DeletingNode                  node/ip-10-2-82-26.ec2.internal    Deleting node ip-10-2-82-26.ec2.internal because it does not exist in the cloud provider
18m         Normal    RemovingNode                  node/ip-10-2-82-26.ec2.internal    Node ip-10-2-82-26.ec2.internal event: Removing Node ip-10-2-82-26.ec2.internal from Controller
25m         Normal    Starting                      node/ip-10-2-82-27.ec2.internal    Starting kubelet.
25m         Warning   InvalidDiskCapacity           node/ip-10-2-82-27.ec2.internal    invalid capacity 0 on image filesystem
25m         Normal    NodeHasSufficientMemory       node/ip-10-2-82-27.ec2.internal    Node ip-10-2-82-27.ec2.internal status is now: NodeHasSufficientMemory
25m         Normal    NodeHasNoDiskPressure         node/ip-10-2-82-27.ec2.internal    Node ip-10-2-82-27.ec2.internal status is now: NodeHasNoDiskPressure
25m         Normal    NodeHasSufficientPID          node/ip-10-2-82-27.ec2.internal    Node ip-10-2-82-27.ec2.internal status is now: NodeHasSufficientPID
25m         Normal    NodeAllocatableEnforced       node/ip-10-2-82-27.ec2.internal    Updated Node Allocatable limit across pods
25m         Normal    Synced                        node/ip-10-2-82-27.ec2.internal    Node synced successfully
25m         Normal    DisruptionBlocked             node/ip-10-2-82-27.ec2.internal    Node isn't initialized
25m         Normal    RegisteredNode                node/ip-10-2-82-27.ec2.internal    Node ip-10-2-82-27.ec2.internal event: Registered Node ip-10-2-82-27.ec2.internal in Controller
25m         Normal    Starting                      node/ip-10-2-82-27.ec2.internal    
25m         Normal    ControllerVersionNotice       node/ip-10-2-82-27.ec2.internal    The node is managed by VPC resource controller version v1.7.11
25m         Normal    NodeReady                     node/ip-10-2-82-27.ec2.internal    Node ip-10-2-82-27.ec2.internal status is now: NodeReady
25m         Normal    Ready                         node/ip-10-2-82-27.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
25m         Normal    NodeTrunkInitiated            node/ip-10-2-82-27.ec2.internal    The node has trunk interface initialized successfully
20m         Normal    DisruptionBlocked             node/ip-10-2-82-27.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
8m24s       Normal    DisruptionBlocked             node/ip-10-2-82-27.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
10m         Normal    DisruptionBlocked             node/ip-10-2-82-27.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
4m50s       Normal    Unconsolidatable              node/ip-10-2-82-27.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
2m15s       Normal    DisruptionBlocked             node/ip-10-2-82-27.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
40m         Normal    Unconsolidatable              node/ip-10-2-82-50.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    RegisteredNode                node/ip-10-2-82-50.ec2.internal    Node ip-10-2-82-50.ec2.internal event: Registered Node ip-10-2-82-50.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-82-50.ec2.internal    The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-2-82-50.ec2.internal    The node has trunk interface initialized successfully
25m         Normal    RegisteredNode                node/ip-10-2-82-50.ec2.internal    Node ip-10-2-82-50.ec2.internal event: Registered Node ip-10-2-82-50.ec2.internal in Controller
21m         Normal    DisruptionBlocked             node/ip-10-2-82-50.ec2.internal    Node is deleting or marked for deletion
17m         Normal    DisruptionBlocked             node/ip-10-2-82-50.ec2.internal    Node is deleting or marked for deletion
18m         Normal    DisruptionTerminating         node/ip-10-2-82-50.ec2.internal    Disrupting Node: Drifted/Replace
18m         Warning   FailedDraining                node/ip-10-2-82-50.ec2.internal    Failed to drain node, 5 pods are waiting to be evicted
18m         Warning   InstanceTerminating           node/ip-10-2-82-50.ec2.internal    Instance is terminating
17m         Normal    NodeNotReady                  node/ip-10-2-82-50.ec2.internal    Node ip-10-2-82-50.ec2.internal status is now: NodeNotReady
17m         Normal    MemoryPressure                node/ip-10-2-82-50.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure                  node/ip-10-2-82-50.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure                   node/ip-10-2-82-50.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                         node/ip-10-2-82-50.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DeletingNode                  node/ip-10-2-82-50.ec2.internal    Deleting node ip-10-2-82-50.ec2.internal because it does not exist in the cloud provider
16m         Normal    RemovingNode                  node/ip-10-2-82-50.ec2.internal    Node ip-10-2-82-50.ec2.internal event: Removing Node ip-10-2-82-50.ec2.internal from Controller
30m         Normal    Unconsolidatable              node/ip-10-2-83-185.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    RegisteredNode                node/ip-10-2-83-185.ec2.internal   Node ip-10-2-83-185.ec2.internal event: Registered Node ip-10-2-83-185.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-83-185.ec2.internal   The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-2-83-185.ec2.internal   The node has trunk interface initialized successfully
25m         Normal    RegisteredNode                node/ip-10-2-83-185.ec2.internal   Node ip-10-2-83-185.ec2.internal event: Registered Node ip-10-2-83-185.ec2.internal in Controller
24m         Normal    DisruptionBlocked             node/ip-10-2-83-185.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
10m         Normal    DisruptionBlocked             node/ip-10-2-83-185.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
12m         Normal    DisruptionBlocked             node/ip-10-2-83-185.ec2.internal   Not all pods would schedule, orb-fleet-backend-internal/orb-fleet-backend-internal-7f46b764d8-75ljr => would schedule against uninitialized nodeclaim/main-amd64-vgjh2, node/ip-10-2-81-51.ec2.internal
8m32s       Normal    DisruptionTerminating         node/ip-10-2-83-185.ec2.internal   Disrupting Node: Drifted/Replace
8m32s       Warning   FailedDraining                node/ip-10-2-83-185.ec2.internal   Failed to drain node, 8 pods are waiting to be evicted
7m54s       Normal    DisruptionBlocked             node/ip-10-2-83-185.ec2.internal   Node is deleting or marked for deletion
7m9s        Warning   InstanceTerminating           node/ip-10-2-83-185.ec2.internal   Instance is terminating
6m32s       Normal    NodeNotReady                  node/ip-10-2-83-185.ec2.internal   Node ip-10-2-83-185.ec2.internal status is now: NodeNotReady
6m32s       Normal    MemoryPressure                node/ip-10-2-83-185.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m32s       Normal    DiskPressure                  node/ip-10-2-83-185.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m32s       Normal    PIDPressure                   node/ip-10-2-83-185.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m32s       Normal    Ready                         node/ip-10-2-83-185.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m26s       Normal    DeletingNode                  node/ip-10-2-83-185.ec2.internal   Deleting node ip-10-2-83-185.ec2.internal because it does not exist in the cloud provider
6m22s       Normal    RemovingNode                  node/ip-10-2-83-185.ec2.internal   Node ip-10-2-83-185.ec2.internal event: Removing Node ip-10-2-83-185.ec2.internal from Controller
31m         Normal    Starting                      node/ip-10-2-83-194.ec2.internal   Starting kubelet.
31m         Warning   InvalidDiskCapacity           node/ip-10-2-83-194.ec2.internal   invalid capacity 0 on image filesystem
31m         Normal    NodeHasSufficientMemory       node/ip-10-2-83-194.ec2.internal   Node ip-10-2-83-194.ec2.internal status is now: NodeHasSufficientMemory
31m         Normal    NodeHasNoDiskPressure         node/ip-10-2-83-194.ec2.internal   Node ip-10-2-83-194.ec2.internal status is now: NodeHasNoDiskPressure
31m         Normal    NodeHasSufficientPID          node/ip-10-2-83-194.ec2.internal   Node ip-10-2-83-194.ec2.internal status is now: NodeHasSufficientPID
31m         Normal    NodeAllocatableEnforced       node/ip-10-2-83-194.ec2.internal   Updated Node Allocatable limit across pods
30m         Normal    Synced                        node/ip-10-2-83-194.ec2.internal   Node synced successfully
30m         Normal    RegisteredNode                node/ip-10-2-83-194.ec2.internal   Node ip-10-2-83-194.ec2.internal event: Registered Node ip-10-2-83-194.ec2.internal in Controller
30m         Normal    Starting                      node/ip-10-2-83-194.ec2.internal   
30m         Normal    ControllerVersionNotice       node/ip-10-2-83-194.ec2.internal   The node is managed by VPC resource controller version v1.7.9
30m         Warning   Unsupported                   node/ip-10-2-83-194.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
30m         Normal    NodeReady                     node/ip-10-2-83-194.ec2.internal   Node ip-10-2-83-194.ec2.internal status is now: NodeReady
30m         Normal    Ready                         node/ip-10-2-83-194.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
29m         Normal    RegisteredNode                node/ip-10-2-83-194.ec2.internal   Node ip-10-2-83-194.ec2.internal event: Registered Node ip-10-2-83-194.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-83-194.ec2.internal   The node is managed by VPC resource controller version v1.7.11
14s         Warning   Unsupported                   node/ip-10-2-83-194.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    RegisteredNode                node/ip-10-2-83-194.ec2.internal   Node ip-10-2-83-194.ec2.internal event: Registered Node ip-10-2-83-194.ec2.internal in Controller
30m         Normal    Unconsolidatable              node/ip-10-2-83-30.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    RegisteredNode                node/ip-10-2-83-30.ec2.internal    Node ip-10-2-83-30.ec2.internal event: Registered Node ip-10-2-83-30.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-83-30.ec2.internal    The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-2-83-30.ec2.internal    The node has trunk interface initialized successfully
25m         Normal    RegisteredNode                node/ip-10-2-83-30.ec2.internal    Node ip-10-2-83-30.ec2.internal event: Registered Node ip-10-2-83-30.ec2.internal in Controller
21m         Normal    DisruptionBlocked             node/ip-10-2-83-30.ec2.internal    Not all pods would schedule, orb-manager-external/orb-manager-external-84ff8957d7-mz6fj => would schedule against uninitialized nodeclaim/main-amd64-gkcpg
11m         Normal    DisruptionBlocked             node/ip-10-2-83-30.ec2.internal    Node is deleting or marked for deletion
12m         Normal    DisruptionTerminating         node/ip-10-2-83-30.ec2.internal    Disrupting Node: Drifted/Replace
12m         Warning   FailedDraining                node/ip-10-2-83-30.ec2.internal    Failed to drain node, 5 pods are waiting to be evicted
12m         Warning   InstanceTerminating           node/ip-10-2-83-30.ec2.internal    Instance is terminating
11m         Normal    NodeNotReady                  node/ip-10-2-83-30.ec2.internal    Node ip-10-2-83-30.ec2.internal status is now: NodeNotReady
11m         Normal    MemoryPressure                node/ip-10-2-83-30.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DiskPressure                  node/ip-10-2-83-30.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    PIDPressure                   node/ip-10-2-83-30.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    Ready                         node/ip-10-2-83-30.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    DeletingNode                  node/ip-10-2-83-30.ec2.internal    Deleting node ip-10-2-83-30.ec2.internal because it does not exist in the cloud provider
10m         Normal    RemovingNode                  node/ip-10-2-83-30.ec2.internal    Node ip-10-2-83-30.ec2.internal event: Removing Node ip-10-2-83-30.ec2.internal from Controller
31m         Warning   Unsupported                   node/ip-10-2-83-69.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
29m         Normal    RegisteredNode                node/ip-10-2-83-69.ec2.internal    Node ip-10-2-83-69.ec2.internal event: Registered Node ip-10-2-83-69.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-83-69.ec2.internal    The node is managed by VPC resource controller version v1.7.11
26m         Warning   Unsupported                   node/ip-10-2-83-69.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
29m         Normal    NodeNotSchedulable            node/ip-10-2-83-69.ec2.internal    Node ip-10-2-83-69.ec2.internal status is now: NodeNotSchedulable
26m         Normal    NodeNotReady                  node/ip-10-2-83-69.ec2.internal    Node ip-10-2-83-69.ec2.internal status is now: NodeNotReady
26m         Normal    MemoryPressure                node/ip-10-2-83-69.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    DiskPressure                  node/ip-10-2-83-69.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    PIDPressure                   node/ip-10-2-83-69.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    Ready                         node/ip-10-2-83-69.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    DeletingNode                  node/ip-10-2-83-69.ec2.internal    Deleting node ip-10-2-83-69.ec2.internal because it does not exist in the cloud provider
26m         Normal    RemovingNode                  node/ip-10-2-83-69.ec2.internal    Node ip-10-2-83-69.ec2.internal event: Removing Node ip-10-2-83-69.ec2.internal from Controller
14m         Normal    Starting                      node/ip-10-2-83-79.ec2.internal    Starting kubelet.
14m         Warning   InvalidDiskCapacity           node/ip-10-2-83-79.ec2.internal    invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory       node/ip-10-2-83-79.ec2.internal    Node ip-10-2-83-79.ec2.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure         node/ip-10-2-83-79.ec2.internal    Node ip-10-2-83-79.ec2.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID          node/ip-10-2-83-79.ec2.internal    Node ip-10-2-83-79.ec2.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced       node/ip-10-2-83-79.ec2.internal    Updated Node Allocatable limit across pods
14m         Normal    Synced                        node/ip-10-2-83-79.ec2.internal    Node synced successfully
14m         Normal    RegisteredNode                node/ip-10-2-83-79.ec2.internal    Node ip-10-2-83-79.ec2.internal event: Registered Node ip-10-2-83-79.ec2.internal in Controller
14m         Normal    Starting                      node/ip-10-2-83-79.ec2.internal    
14m         Normal    DisruptionBlocked             node/ip-10-2-83-79.ec2.internal    Node isn't initialized
14m         Normal    ControllerVersionNotice       node/ip-10-2-83-79.ec2.internal    The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeReady                     node/ip-10-2-83-79.ec2.internal    Node ip-10-2-83-79.ec2.internal status is now: NodeReady
14m         Normal    Ready                         node/ip-10-2-83-79.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeTrunkInitiated            node/ip-10-2-83-79.ec2.internal    The node has trunk interface initialized successfully
26m         Normal    Starting                      node/ip-10-2-84-122.ec2.internal   Starting kubelet.
26m         Warning   InvalidDiskCapacity           node/ip-10-2-84-122.ec2.internal   invalid capacity 0 on image filesystem
26m         Normal    NodeHasSufficientMemory       node/ip-10-2-84-122.ec2.internal   Node ip-10-2-84-122.ec2.internal status is now: NodeHasSufficientMemory
26m         Normal    NodeHasNoDiskPressure         node/ip-10-2-84-122.ec2.internal   Node ip-10-2-84-122.ec2.internal status is now: NodeHasNoDiskPressure
26m         Normal    NodeHasSufficientPID          node/ip-10-2-84-122.ec2.internal   Node ip-10-2-84-122.ec2.internal status is now: NodeHasSufficientPID
26m         Normal    NodeAllocatableEnforced       node/ip-10-2-84-122.ec2.internal   Updated Node Allocatable limit across pods
26m         Normal    Synced                        node/ip-10-2-84-122.ec2.internal   Node synced successfully
26m         Normal    RegisteredNode                node/ip-10-2-84-122.ec2.internal   Node ip-10-2-84-122.ec2.internal event: Registered Node ip-10-2-84-122.ec2.internal in Controller
26m         Normal    Starting                      node/ip-10-2-84-122.ec2.internal   
26m         Normal    ControllerVersionNotice       node/ip-10-2-84-122.ec2.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeReady                     node/ip-10-2-84-122.ec2.internal   Node ip-10-2-84-122.ec2.internal status is now: NodeReady
26m         Normal    NodeTrunkInitiated            node/ip-10-2-84-122.ec2.internal   The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-2-84-122.ec2.internal   Node is nominated for a pending pod
25m         Normal    RegisteredNode                node/ip-10-2-84-122.ec2.internal   Node ip-10-2-84-122.ec2.internal event: Registered Node ip-10-2-84-122.ec2.internal in Controller
15m         Normal    SpotRebalanceRecommendation   node/ip-10-2-84-122.ec2.internal   Spot rebalance recommendation was triggered
15m         Warning   SpotInterrupted               node/ip-10-2-84-122.ec2.internal   Spot interruption warning was triggered
15m         Warning   TerminatingOnInterruption     node/ip-10-2-84-122.ec2.internal   Interruption triggered termination for the Node
15m         Warning   FailedDraining                node/ip-10-2-84-122.ec2.internal   Failed to drain node, 4 pods are waiting to be evicted
14m         Normal    DisruptionBlocked             node/ip-10-2-84-122.ec2.internal   Node is deleting or marked for deletion
14m         Warning   InstanceTerminating           node/ip-10-2-84-122.ec2.internal   Instance is terminating
14m         Normal    RemovingNode                  node/ip-10-2-84-122.ec2.internal   Node ip-10-2-84-122.ec2.internal event: Removing Node ip-10-2-84-122.ec2.internal from Controller
32m         Warning   Unsupported                   node/ip-10-2-84-174.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
29m         Normal    RegisteredNode                node/ip-10-2-84-174.ec2.internal   Node ip-10-2-84-174.ec2.internal event: Registered Node ip-10-2-84-174.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-84-174.ec2.internal   The node is managed by VPC resource controller version v1.7.11
23m         Warning   Unsupported                   node/ip-10-2-84-174.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
29m         Normal    NodeNotSchedulable            node/ip-10-2-84-174.ec2.internal   Node ip-10-2-84-174.ec2.internal status is now: NodeNotSchedulable
25m         Normal    RegisteredNode                node/ip-10-2-84-174.ec2.internal   Node ip-10-2-84-174.ec2.internal event: Registered Node ip-10-2-84-174.ec2.internal in Controller
23m         Normal    NodeNotReady                  node/ip-10-2-84-174.ec2.internal   Node ip-10-2-84-174.ec2.internal status is now: NodeNotReady
23m         Normal    MemoryPressure                node/ip-10-2-84-174.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    DiskPressure                  node/ip-10-2-84-174.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    PIDPressure                   node/ip-10-2-84-174.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    Ready                         node/ip-10-2-84-174.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    DeletingNode                  node/ip-10-2-84-174.ec2.internal   Deleting node ip-10-2-84-174.ec2.internal because it does not exist in the cloud provider
23m         Normal    RemovingNode                  node/ip-10-2-84-174.ec2.internal   Node ip-10-2-84-174.ec2.internal event: Removing Node ip-10-2-84-174.ec2.internal from Controller
40m         Normal    Unconsolidatable              node/ip-10-2-84-205.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    RegisteredNode                node/ip-10-2-84-205.ec2.internal   Node ip-10-2-84-205.ec2.internal event: Registered Node ip-10-2-84-205.ec2.internal in Controller
29m         Normal    ControllerVersionNotice       node/ip-10-2-84-205.ec2.internal   The node is managed by VPC resource controller version v1.7.11
29m         Normal    NodeTrunkInitiated            node/ip-10-2-84-205.ec2.internal   The node has trunk interface initialized successfully
26m         Normal    DisruptionBlocked             node/ip-10-2-84-205.ec2.internal   Not all pods would schedule, orb-data-service-external/orb-data-service-external-6fb8c8f867-vdhn5 => would schedule against uninitialized nodeclaim/main-arm64-9hb27
25m         Normal    DisruptionTerminating         node/ip-10-2-84-205.ec2.internal   Disrupting Node: Drifted/Delete
25m         Normal    DisruptionBlocked             node/ip-10-2-84-205.ec2.internal   Node is deleting or marked for deletion
25m         Warning   FailedDraining                node/ip-10-2-84-205.ec2.internal   Failed to drain node, 4 pods are waiting to be evicted
25m         Normal    RegisteredNode                node/ip-10-2-84-205.ec2.internal   Node ip-10-2-84-205.ec2.internal event: Registered Node ip-10-2-84-205.ec2.internal in Controller
24m         Warning   InstanceTerminating           node/ip-10-2-84-205.ec2.internal   Instance is terminating
24m         Normal    NodeNotReady                  node/ip-10-2-84-205.ec2.internal   Node ip-10-2-84-205.ec2.internal status is now: NodeNotReady
24m         Normal    MemoryPressure                node/ip-10-2-84-205.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    DiskPressure                  node/ip-10-2-84-205.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    PIDPressure                   node/ip-10-2-84-205.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    Ready                         node/ip-10-2-84-205.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    DeletingNode                  node/ip-10-2-84-205.ec2.internal   Deleting node ip-10-2-84-205.ec2.internal because it does not exist in the cloud provider
23m         Normal    RemovingNode                  node/ip-10-2-84-205.ec2.internal   Node ip-10-2-84-205.ec2.internal event: Removing Node ip-10-2-84-205.ec2.internal from Controller
23m         Normal    Starting                      node/ip-10-2-85-109.ec2.internal   Starting kubelet.
23m         Warning   InvalidDiskCapacity           node/ip-10-2-85-109.ec2.internal   invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory       node/ip-10-2-85-109.ec2.internal   Node ip-10-2-85-109.ec2.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure         node/ip-10-2-85-109.ec2.internal   Node ip-10-2-85-109.ec2.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID          node/ip-10-2-85-109.ec2.internal   Node ip-10-2-85-109.ec2.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced       node/ip-10-2-85-109.ec2.internal   Updated Node Allocatable limit across pods
23m         Normal    Synced                        node/ip-10-2-85-109.ec2.internal   Node synced successfully
23m         Normal    RegisteredNode                node/ip-10-2-85-109.ec2.internal   Node ip-10-2-85-109.ec2.internal event: Registered Node ip-10-2-85-109.ec2.internal in Controller
23m         Normal    Starting                      node/ip-10-2-85-109.ec2.internal   
23m         Normal    DisruptionBlocked             node/ip-10-2-85-109.ec2.internal   Node isn't initialized
23m         Normal    ControllerVersionNotice       node/ip-10-2-85-109.ec2.internal   The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeReady                     node/ip-10-2-85-109.ec2.internal   Node ip-10-2-85-109.ec2.internal status is now: NodeReady
23m         Normal    Ready                         node/ip-10-2-85-109.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
23m         Normal    NodeTrunkInitiated            node/ip-10-2-85-109.ec2.internal   The node has trunk interface initialized successfully
15m         Normal    SpotRebalanceRecommendation   node/ip-10-2-85-109.ec2.internal   Spot rebalance recommendation was triggered
15m         Warning   SpotInterrupted               node/ip-10-2-85-109.ec2.internal   Spot interruption warning was triggered
15m         Warning   TerminatingOnInterruption     node/ip-10-2-85-109.ec2.internal   Interruption triggered termination for the Node
15m         Warning   FailedDraining                node/ip-10-2-85-109.ec2.internal   Failed to drain node, 5 pods are waiting to be evicted
15m         Normal    DisruptionBlocked             node/ip-10-2-85-109.ec2.internal   Node is deleting or marked for deletion
15m         Warning   InstanceTerminating           node/ip-10-2-85-109.ec2.internal   Instance is terminating
14m         Normal    RemovingNode                  node/ip-10-2-85-109.ec2.internal   Node ip-10-2-85-109.ec2.internal event: Removing Node ip-10-2-85-109.ec2.internal from Controller
30m         Normal    Starting                      node/ip-10-2-85-18.ec2.internal    Starting kubelet.
30m         Warning   InvalidDiskCapacity           node/ip-10-2-85-18.ec2.internal    invalid capacity 0 on image filesystem
30m         Normal    NodeHasSufficientMemory       node/ip-10-2-85-18.ec2.internal    Node ip-10-2-85-18.ec2.internal status is now: NodeHasSufficientMemory
30m         Normal    NodeHasNoDiskPressure         node/ip-10-2-85-18.ec2.internal    Node ip-10-2-85-18.ec2.internal status is now: NodeHasNoDiskPressure
30m         Normal    NodeHasSufficientPID          node/ip-10-2-85-18.ec2.internal    Node ip-10-2-85-18.ec2.internal status is now: NodeHasSufficientPID
30m         Normal    NodeAllocatableEnforced       node/ip-10-2-85-18.ec2.internal    Updated Node Allocatable limit across pods
30m         Normal    Synced                        node/ip-10-2-85-18.ec2.internal    Node synced successfully
29m         Normal    RegisteredNode                node/ip-10-2-85-18.ec2.internal    Node ip-10-2-85-18.ec2.internal event: Registered Node ip-10-2-85-18.ec2.internal in Controller
29m         Normal    Starting                      node/ip-10-2-85-18.ec2.internal    
29m         Normal    NodeReady                     node/ip-10-2-85-18.ec2.internal    Node ip-10-2-85-18.ec2.internal status is now: NodeReady
29m         Normal    Ready                         node/ip-10-2-85-18.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
29m         Normal    ControllerVersionNotice       node/ip-10-2-85-18.ec2.internal    The node is managed by VPC resource controller version v1.7.11
18m         Warning   Unsupported                   node/ip-10-2-85-18.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    RegisteredNode                node/ip-10-2-85-18.ec2.internal    Node ip-10-2-85-18.ec2.internal event: Registered Node ip-10-2-85-18.ec2.internal in Controller
20m         Normal    NodeNotSchedulable            node/ip-10-2-85-18.ec2.internal    Node ip-10-2-85-18.ec2.internal status is now: NodeNotSchedulable
18m         Normal    NodeNotReady                  node/ip-10-2-85-18.ec2.internal    Node ip-10-2-85-18.ec2.internal status is now: NodeNotReady
18m         Normal    MemoryPressure                node/ip-10-2-85-18.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    DiskPressure                  node/ip-10-2-85-18.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    PIDPressure                   node/ip-10-2-85-18.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    Ready                         node/ip-10-2-85-18.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    DeletingNode                  node/ip-10-2-85-18.ec2.internal    Deleting node ip-10-2-85-18.ec2.internal because it does not exist in the cloud provider
18m         Normal    RemovingNode                  node/ip-10-2-85-18.ec2.internal    Node ip-10-2-85-18.ec2.internal event: Removing Node ip-10-2-85-18.ec2.internal from Controller
```

Pods with issues
```
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

Generated on: Tue Sep 23 14:11:40 CEST 2025
