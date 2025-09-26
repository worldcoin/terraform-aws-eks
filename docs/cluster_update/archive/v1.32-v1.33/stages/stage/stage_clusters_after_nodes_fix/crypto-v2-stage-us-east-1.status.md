# Cluster recon for tfh-crypto-stage-infra,us-east-1,crypto-v2-stage-us-east-1,tunnel-vpc-crypto-stage-us-east-1

TFH EKS login...
```console
2025/09/18 19:12:00 INFO Logging into AWS
2025/09/18 19:12:00 INFO Token found and valid
2025/09/18 19:12:02 INFO Switch WARP Virtual Network to name=tunnel-vpc-crypto-stage-us-east-1 id=0de741d8-76d8-4217-83f7-ac2cd6a9bf86
2025/09/18 19:12:03 INFO Active WARP Virtual Network id=0de741d8-76d8-4217-83f7-ac2cd6a9bf86
Updated context tfh-crypto-v2-stage-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "crypto-v2-stage-us-east-1",
        "arn": "arn:aws:eks:us-east-1:267301337261:cluster/crypto-v2-stage-us-east-1",
        "createdAt": "2023-03-30T19:13:21.929000+02:00",
        "version": "1.33",
        "endpoint": "https://941A1E510BE7C4BDA4761C460CA55576.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::267301337261:role/eks-cluster-crypto-v2-stage-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0a642daedb6209b70",
                "subnet-046871a255e761851",
                "subnet-019629458b56cda58"
            ],
            "securityGroupIds": [
                "sg-0851857595b759526"
            ],
            "clusterSecurityGroupId": "sg-0b35304c396f8edbc",
            "vpcId": "vpc-0e6e9f601cadd3fa9",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/941A1E510BE7C4BDA4761C460CA55576"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1ETXpNREUzTVRnME5Wb1hEVE16TURNeU56RTNNVGcwTlZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTUlWClYveVhiUmVKTE9jVUU4ZHhwWXZpZ0hUdWNGOHF4OEN2OUNhWWpTKyt1T3BtNUVUUnFJS0dHUGg0SlNWaGtGMjkKN3lnNXVsajhtZnY4OU91R2NBT0ROVXh6M253U2pwWVB5NXFBVGV6L2JFWHgxdy9XdUNvK0pHSm1VZmQveGV6TQp0bFFpdjZ5YUJBS2ZxZnk1UVEvbVB0Y0s3YTNQUk8raDg4QmF3bUxsd256OGNGT0NtUVNzSjdWWkNQak5YaGxpCkFvMGFRYVBzUDR1V0Vac0pFVndxWDNBeHFwRWZWQm9vKzhMaWNjZ0IxamxPVGtwL0NvTi9wTFNFVmJzY0RXanIKMkN1SGtXb0s2Zkg3Y3ZtaGgrb2Fpa0FMR0hWQzhFOFJFWGs4VldtNmQ2cGJHUFhwZ2VJOXkvM2dzNmFOelVlUgphMkhxQ0RlWENDM3gxN21MTXVzQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZKb2RCcFRDbWJnU0JPeWZ0aXdIZ0pVaGZTcHBNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBQWxGcUNxUjNGTmZOZEJyaFJHdgpnRmpHYUgzMzMrTzJwZnRIZVVoYmUrUVlqVS81NktYMEg5RUVuRUUxeGc4VTZ4NDZhZ0JVT2MycGkyZHh3TGRnCmNWYkttRjFoWkd4V25QL1ZLZnkzdFZnOEVERHJYYUx6bWdIc3FPdWZKSnZ4aVZyNWxnWW11TkJmUUxEZVQ4STEKMFJSN0xYSzRBRHQrVCtYQkdjdTNpM3VwblgvNi9HYU56eW1sOVpUelNWMDJ6STN6UFJZR2VISDRWaUhOelc3VApCVXNyUWFmc2xWRlgyWnkyWlVWczlmMmU2VWY0UkV0a0hFM1ZmbFRiVVdEM3o4TWJLb2R4SHNzd2RkbUsvQU5oCjNadWlhY0xDN1BiTWlXK0hRTEl2b3BxaTdFR0F0aGcwS1YrOHRMeHM0WEpURFJ5cVZwM05KYiswVXpKZ05tTW8KNzA0PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "stage",
            "karpenter.sh/discovery": "crypto-v2-stage-us-east-1",
            "Team": "crypto",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:267301337261:key/8815fc76-171a-44b5-b5d9-67fe332f3dea"
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
NAME                          STATUS   ROLES    AGE    VERSION               INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                   CONTAINER-RUNTIME     NODEGROUP
ip-10-0-16-169.ec2.internal   Ready    <none>   31m    v1.33.4-eks-99d6cc0   10.0.16.169   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-16-193.ec2.internal   Ready    <none>   32m    v1.33.4-eks-99d6cc0   10.0.16.193   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-16-218.ec2.internal   Ready    <none>   6h4m   v1.33.4-eks-99d6cc0   10.0.16.218   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27   eks-node-al2023-crypto-v2-stage-us-east-1
ip-10-0-16-227.ec2.internal   Ready    <none>   35m    v1.33.4-eks-99d6cc0   10.0.16.227   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-17-202.ec2.internal   Ready    <none>   49m    v1.33.4-eks-99d6cc0   10.0.17.202   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-18-121.ec2.internal   Ready    <none>   23m    v1.33.4-eks-99d6cc0   10.0.18.121   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-18-151.ec2.internal   Ready    <none>   6h3m   v1.33.4-eks-99d6cc0   10.0.18.151   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27   eks-node-al2023-crypto-v2-stage-us-east-1
ip-10-0-18-161.ec2.internal   Ready    <none>   23m    v1.33.4-eks-99d6cc0   10.0.18.161   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-18-227.ec2.internal   Ready    <none>   23m    v1.33.4-eks-99d6cc0   10.0.18.227   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-19-131.ec2.internal   Ready    <none>   21m    v1.33.4-eks-99d6cc0   10.0.19.131   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-21-164.ec2.internal   Ready    <none>   53m    v1.33.4-eks-99d6cc0   10.0.21.164   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                          STATUS   ROLES    TAINTS
ip-10-0-16-169.ec2.internal   Ready    <none>   <none>
ip-10-0-16-193.ec2.internal   Ready    <none>   <none>
ip-10-0-16-218.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-16-227.ec2.internal   Ready    <none>   <none>
ip-10-0-17-202.ec2.internal   Ready    <none>   <none>
ip-10-0-18-121.ec2.internal   Ready    <none>   <none>
ip-10-0-18-151.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-18-161.ec2.internal   Ready    <none>   <none>
ip-10-0-18-227.ec2.internal   Ready    <none>   <none>
ip-10-0-19-131.ec2.internal   Ready    <none>   <none>
ip-10-0-21-164.ec2.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                             MESSAGE
9m24s       Normal    Finalized                     node                               Finalized karpenter.sh/termination
57m         Normal    DisruptionBlocked             node/ip-10-0-16-117.ec2.internal   Node is nominated for a pending pod
54m         Normal    NodeNotSchedulable            node/ip-10-0-16-117.ec2.internal   Node ip-10-0-16-117.ec2.internal status is now: NodeNotSchedulable
16m         Normal    DisruptionBlocked             node/ip-10-0-16-117.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
13m         Normal    DisruptionBlocked             node/ip-10-0-16-117.ec2.internal   Node is deleting or marked for deletion
13m         Normal    DisruptionTerminating         node/ip-10-0-16-117.ec2.internal   Disrupting Node: Drifted/Delete
13m         Warning   FailedDraining                node/ip-10-0-16-117.ec2.internal   Failed to drain node, 9 pods are waiting to be evicted
12m         Warning   InstanceTerminating           node/ip-10-0-16-117.ec2.internal   Instance is terminating
12m         Normal    RemovingNode                  node/ip-10-0-16-117.ec2.internal   Node ip-10-0-16-117.ec2.internal event: Removing Node ip-10-0-16-117.ec2.internal from Controller
31m         Normal    Starting                      node/ip-10-0-16-169.ec2.internal   Starting kubelet.
31m         Warning   InvalidDiskCapacity           node/ip-10-0-16-169.ec2.internal   invalid capacity 0 on image filesystem
31m         Normal    NodeHasSufficientMemory       node/ip-10-0-16-169.ec2.internal   Node ip-10-0-16-169.ec2.internal status is now: NodeHasSufficientMemory
31m         Normal    NodeHasNoDiskPressure         node/ip-10-0-16-169.ec2.internal   Node ip-10-0-16-169.ec2.internal status is now: NodeHasNoDiskPressure
31m         Normal    NodeHasSufficientPID          node/ip-10-0-16-169.ec2.internal   Node ip-10-0-16-169.ec2.internal status is now: NodeHasSufficientPID
31m         Normal    NodeAllocatableEnforced       node/ip-10-0-16-169.ec2.internal   Updated Node Allocatable limit across pods
31m         Normal    Synced                        node/ip-10-0-16-169.ec2.internal   Node synced successfully
31m         Normal    DisruptionBlocked             node/ip-10-0-16-169.ec2.internal   Node isn't initialized
31m         Normal    RegisteredNode                node/ip-10-0-16-169.ec2.internal   Node ip-10-0-16-169.ec2.internal event: Registered Node ip-10-0-16-169.ec2.internal in Controller
31m         Normal    Starting                      node/ip-10-0-16-169.ec2.internal   
31m         Normal    ControllerVersionNotice       node/ip-10-0-16-169.ec2.internal   The node is managed by VPC resource controller version v1.7.11
31m         Normal    NodeReady                     node/ip-10-0-16-169.ec2.internal   Node ip-10-0-16-169.ec2.internal status is now: NodeReady
31m         Normal    Ready                         node/ip-10-0-16-169.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
31m         Normal    NodeTrunkInitiated            node/ip-10-0-16-169.ec2.internal   The node has trunk interface initialized successfully
14m         Normal    DisruptionBlocked             node/ip-10-0-16-169.ec2.internal   Node is nominated for a pending pod
36s         Normal    DisruptionBlocked             node/ip-10-0-16-169.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-0)
32m         Normal    Starting                      node/ip-10-0-16-193.ec2.internal   Starting kubelet.
32m         Warning   InvalidDiskCapacity           node/ip-10-0-16-193.ec2.internal   invalid capacity 0 on image filesystem
32m         Normal    NodeHasSufficientMemory       node/ip-10-0-16-193.ec2.internal   Node ip-10-0-16-193.ec2.internal status is now: NodeHasSufficientMemory
32m         Normal    NodeHasNoDiskPressure         node/ip-10-0-16-193.ec2.internal   Node ip-10-0-16-193.ec2.internal status is now: NodeHasNoDiskPressure
32m         Normal    NodeHasSufficientPID          node/ip-10-0-16-193.ec2.internal   Node ip-10-0-16-193.ec2.internal status is now: NodeHasSufficientPID
32m         Normal    NodeAllocatableEnforced       node/ip-10-0-16-193.ec2.internal   Updated Node Allocatable limit across pods
32m         Normal    Synced                        node/ip-10-0-16-193.ec2.internal   Node synced successfully
32m         Normal    RegisteredNode                node/ip-10-0-16-193.ec2.internal   Node ip-10-0-16-193.ec2.internal event: Registered Node ip-10-0-16-193.ec2.internal in Controller
32m         Normal    Starting                      node/ip-10-0-16-193.ec2.internal   
32m         Normal    DisruptionBlocked             node/ip-10-0-16-193.ec2.internal   Node isn't initialized
31m         Normal    ControllerVersionNotice       node/ip-10-0-16-193.ec2.internal   The node is managed by VPC resource controller version v1.7.11
31m         Normal    NodeReady                     node/ip-10-0-16-193.ec2.internal   Node ip-10-0-16-193.ec2.internal status is now: NodeReady
31m         Normal    Ready                         node/ip-10-0-16-193.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
31m         Normal    NodeTrunkInitiated            node/ip-10-0-16-193.ec2.internal   The node has trunk interface initialized successfully
13m         Normal    DisruptionBlocked             node/ip-10-0-16-193.ec2.internal   Node is nominated for a pending pod
87s         Normal    DisruptionBlocked             node/ip-10-0-16-193.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-nfc-ethereum/signup-sequencer-nfc-ethereum-1)
3m29s       Normal    DisruptionBlocked             node/ip-10-0-16-193.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-1)
36m         Warning   FailedDraining                node/ip-10-0-16-215.ec2.internal   Failed to drain node, 4 pods are waiting to be evicted
37m         Normal    DisruptionBlocked             node/ip-10-0-16-215.ec2.internal   Node is deleting or marked for deletion
54m         Normal    NodeNotSchedulable            node/ip-10-0-16-215.ec2.internal   Node ip-10-0-16-215.ec2.internal status is now: NodeNotSchedulable
32m         Warning   FailedDraining                node/ip-10-0-16-215.ec2.internal   Failed to drain node, 1 pods are waiting to be evicted
31m         Normal    NodeNotReady                  node/ip-10-0-16-215.ec2.internal   Node ip-10-0-16-215.ec2.internal status is now: NodeNotReady
31m         Normal    MemoryPressure                node/ip-10-0-16-215.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
30m         Normal    RemovingNode                  node/ip-10-0-16-215.ec2.internal   Node ip-10-0-16-215.ec2.internal event: Removing Node ip-10-0-16-215.ec2.internal from Controller
3m25s       Warning   Unsupported                   node/ip-10-0-16-218.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
35m         Normal    Starting                      node/ip-10-0-16-227.ec2.internal   Starting kubelet.
35m         Warning   InvalidDiskCapacity           node/ip-10-0-16-227.ec2.internal   invalid capacity 0 on image filesystem
35m         Normal    NodeHasSufficientMemory       node/ip-10-0-16-227.ec2.internal   Node ip-10-0-16-227.ec2.internal status is now: NodeHasSufficientMemory
35m         Normal    NodeHasNoDiskPressure         node/ip-10-0-16-227.ec2.internal   Node ip-10-0-16-227.ec2.internal status is now: NodeHasNoDiskPressure
35m         Normal    NodeHasSufficientPID          node/ip-10-0-16-227.ec2.internal   Node ip-10-0-16-227.ec2.internal status is now: NodeHasSufficientPID
35m         Normal    NodeAllocatableEnforced       node/ip-10-0-16-227.ec2.internal   Updated Node Allocatable limit across pods
35m         Normal    RegisteredNode                node/ip-10-0-16-227.ec2.internal   Node ip-10-0-16-227.ec2.internal event: Registered Node ip-10-0-16-227.ec2.internal in Controller
35m         Normal    Synced                        node/ip-10-0-16-227.ec2.internal   Node synced successfully
35m         Normal    DisruptionBlocked             node/ip-10-0-16-227.ec2.internal   Node isn't initialized
35m         Normal    Starting                      node/ip-10-0-16-227.ec2.internal   
35m         Normal    SpotRebalanceRecommendation   node/ip-10-0-16-227.ec2.internal   Spot rebalance recommendation was triggered
35m         Normal    ControllerVersionNotice       node/ip-10-0-16-227.ec2.internal   The node is managed by VPC resource controller version v1.7.11
35m         Normal    NodeReady                     node/ip-10-0-16-227.ec2.internal   Node ip-10-0-16-227.ec2.internal status is now: NodeReady
35m         Normal    Ready                         node/ip-10-0-16-227.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
35m         Normal    NodeTrunkInitiated            node/ip-10-0-16-227.ec2.internal   The node has trunk interface initialized successfully
31m         Normal    DisruptionBlocked             node/ip-10-0-16-227.ec2.internal   Node is nominated for a pending pod
36s         Normal    DisruptionBlocked             node/ip-10-0-16-227.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-nfc-ethereum/signup-sequencer-nfc-ethereum-0)
21m         Normal    DisruptionBlocked             node/ip-10-0-16-227.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b10t30-7d47bb56c9-zks45)
12m         Normal    DisruptionBlocked             node/ip-10-0-16-227.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-app-insertion-b10t30-69b6cc49f9-76qgl)
52m         Warning   FailedDraining                node/ip-10-0-16-49.ec2.internal    Failed to drain node, 2 pods are waiting to be evicted
51m         Normal    DisruptionBlocked             node/ip-10-0-16-49.ec2.internal    Node is deleting or marked for deletion
54m         Normal    NodeNotSchedulable            node/ip-10-0-16-49.ec2.internal    Node ip-10-0-16-49.ec2.internal status is now: NodeNotSchedulable
48m         Normal    NodeNotReady                  node/ip-10-0-16-49.ec2.internal    Node ip-10-0-16-49.ec2.internal status is now: NodeNotReady
48m         Normal    DeletingNode                  node/ip-10-0-16-49.ec2.internal    Deleting node ip-10-0-16-49.ec2.internal because it does not exist in the cloud provider
48m         Normal    RemovingNode                  node/ip-10-0-16-49.ec2.internal    Node ip-10-0-16-49.ec2.internal event: Removing Node ip-10-0-16-49.ec2.internal from Controller
32m         Warning   FailedDraining                node/ip-10-0-17-157.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
31m         Normal    DisruptionBlocked             node/ip-10-0-17-157.ec2.internal   Node is deleting or marked for deletion
54m         Normal    NodeNotSchedulable            node/ip-10-0-17-157.ec2.internal   Node ip-10-0-17-157.ec2.internal status is now: NodeNotSchedulable
30m         Normal    RemovingNode                  node/ip-10-0-17-157.ec2.internal   Node ip-10-0-17-157.ec2.internal event: Removing Node ip-10-0-17-157.ec2.internal from Controller
49m         Normal    Starting                      node/ip-10-0-17-202.ec2.internal   Starting kubelet.
49m         Warning   InvalidDiskCapacity           node/ip-10-0-17-202.ec2.internal   invalid capacity 0 on image filesystem
49m         Normal    NodeHasSufficientMemory       node/ip-10-0-17-202.ec2.internal   Node ip-10-0-17-202.ec2.internal status is now: NodeHasSufficientMemory
49m         Normal    NodeHasNoDiskPressure         node/ip-10-0-17-202.ec2.internal   Node ip-10-0-17-202.ec2.internal status is now: NodeHasNoDiskPressure
49m         Normal    NodeHasSufficientPID          node/ip-10-0-17-202.ec2.internal   Node ip-10-0-17-202.ec2.internal status is now: NodeHasSufficientPID
49m         Normal    NodeAllocatableEnforced       node/ip-10-0-17-202.ec2.internal   Updated Node Allocatable limit across pods
49m         Normal    Synced                        node/ip-10-0-17-202.ec2.internal   Node synced successfully
49m         Normal    RegisteredNode                node/ip-10-0-17-202.ec2.internal   Node ip-10-0-17-202.ec2.internal event: Registered Node ip-10-0-17-202.ec2.internal in Controller
49m         Normal    DisruptionBlocked             node/ip-10-0-17-202.ec2.internal   Node isn't initialized
49m         Normal    Starting                      node/ip-10-0-17-202.ec2.internal   
49m         Normal    ControllerVersionNotice       node/ip-10-0-17-202.ec2.internal   The node is managed by VPC resource controller version v1.7.11
49m         Normal    NodeReady                     node/ip-10-0-17-202.ec2.internal   Node ip-10-0-17-202.ec2.internal status is now: NodeReady
49m         Normal    Ready                         node/ip-10-0-17-202.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
49m         Normal    NodeTrunkInitiated            node/ip-10-0-17-202.ec2.internal   The node has trunk interface initialized successfully
33m         Normal    DisruptionBlocked             node/ip-10-0-17-202.ec2.internal   Node is nominated for a pending pod
26s         Normal    DisruptionBlocked             node/ip-10-0-17-202.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-nfc-ethereum/signup-sequencer-nfc-ethereum-2)
8m34s       Normal    DisruptionBlocked             node/ip-10-0-17-202.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-app/signup-sequencer-app-1)
14m         Normal    DisruptionBlocked             node/ip-10-0-17-202.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-orb-ethereum/signup-sequencer-orb-ethereum-1)
26m         Normal    DisruptionBlocked             node/ip-10-0-17-229.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-nfc-secure-ethereum/signup-sequencer-nfc-secure-ethereum-0)
57m         Normal    DisruptionBlocked             node/ip-10-0-17-229.ec2.internal   Node is nominated for a pending pod
54m         Normal    NodeNotSchedulable            node/ip-10-0-17-229.ec2.internal   Node ip-10-0-17-229.ec2.internal status is now: NodeNotSchedulable
51m         Normal    DisruptionBlocked             node/ip-10-0-17-229.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-app/signup-sequencer-app-1)
9m25s       Normal    DisruptionBlocked             node/ip-10-0-17-229.ec2.internal   Node is deleting or marked for deletion
11m         Normal    DisruptionTerminating         node/ip-10-0-17-229.ec2.internal   Disrupting Node: Drifted/Delete
11m         Warning   FailedDraining                node/ip-10-0-17-229.ec2.internal   Failed to drain node, 5 pods are waiting to be evicted
10m         Warning   InstanceTerminating           node/ip-10-0-17-229.ec2.internal   Instance is terminating
9m24s       Normal    NodeNotReady                  node/ip-10-0-17-229.ec2.internal   Node ip-10-0-17-229.ec2.internal status is now: NodeNotReady
9m19s       Normal    RemovingNode                  node/ip-10-0-17-229.ec2.internal   Node ip-10-0-17-229.ec2.internal event: Removing Node ip-10-0-17-229.ec2.internal from Controller
41m         Normal    DisruptionBlocked             node/ip-10-0-17-4.ec2.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-app-insertion-b10t30-69b6cc49f9-g2j5k)
37m         Normal    DisruptionBlocked             node/ip-10-0-17-4.ec2.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b10t30-7d47bb56c9-t57rk)
54m         Normal    NodeNotSchedulable            node/ip-10-0-17-4.ec2.internal     Node ip-10-0-17-4.ec2.internal status is now: NodeNotSchedulable
35m         Warning   SpotInterrupted               node/ip-10-0-17-4.ec2.internal     Spot interruption warning was triggered
35m         Warning   TerminatingOnInterruption     node/ip-10-0-17-4.ec2.internal     Interruption triggered termination for the Node
35m         Warning   FailedDraining                node/ip-10-0-17-4.ec2.internal     Failed to drain node, 13 pods are waiting to be evicted
33m         Warning   FailedDraining                node/ip-10-0-17-4.ec2.internal     Failed to drain node, 5 pods are waiting to be evicted
33m         Warning   InstanceTerminating           node/ip-10-0-17-4.ec2.internal     Instance is terminating
32m         Normal    NodeNotReady                  node/ip-10-0-17-4.ec2.internal     Node ip-10-0-17-4.ec2.internal status is now: NodeNotReady
32m         Normal    DeletingNode                  node/ip-10-0-17-4.ec2.internal     Deleting node ip-10-0-17-4.ec2.internal because it does not exist in the cloud provider
32m         Warning   DeletingNodeFailed            node/ip-10-0-17-4.ec2.internal     Failed deleting node ip-10-0-17-4.ec2.internal: nodes "ip-10-0-17-4.ec2.internal" not found
32m         Normal    RemovingNode                  node/ip-10-0-17-4.ec2.internal     Node ip-10-0-17-4.ec2.internal event: Removing Node ip-10-0-17-4.ec2.internal from Controller
23m         Normal    Starting                      node/ip-10-0-18-121.ec2.internal   Starting kubelet.
23m         Warning   InvalidDiskCapacity           node/ip-10-0-18-121.ec2.internal   invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory       node/ip-10-0-18-121.ec2.internal   Node ip-10-0-18-121.ec2.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure         node/ip-10-0-18-121.ec2.internal   Node ip-10-0-18-121.ec2.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID          node/ip-10-0-18-121.ec2.internal   Node ip-10-0-18-121.ec2.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced       node/ip-10-0-18-121.ec2.internal   Updated Node Allocatable limit across pods
23m         Normal    Synced                        node/ip-10-0-18-121.ec2.internal   Node synced successfully
23m         Normal    DisruptionBlocked             node/ip-10-0-18-121.ec2.internal   Node isn't initialized
23m         Normal    RegisteredNode                node/ip-10-0-18-121.ec2.internal   Node ip-10-0-18-121.ec2.internal event: Registered Node ip-10-0-18-121.ec2.internal in Controller
22m         Normal    Starting                      node/ip-10-0-18-121.ec2.internal   
22m         Normal    ControllerVersionNotice       node/ip-10-0-18-121.ec2.internal   The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeReady                     node/ip-10-0-18-121.ec2.internal   Node ip-10-0-18-121.ec2.internal status is now: NodeReady
22m         Normal    Ready                         node/ip-10-0-18-121.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    NodeTrunkInitiated            node/ip-10-0-18-121.ec2.internal   The node has trunk interface initialized successfully
36s         Normal    DisruptionBlocked             node/ip-10-0-18-121.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-app/signup-sequencer-app-0)
2m38s       Normal    DisruptionBlocked             node/ip-10-0-18-121.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b100t30-5854cc8d55-x5t8n)
16m         Normal    DisruptionBlocked             node/ip-10-0-18-121.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-orb-ethereum/signup-sequencer-orb-ethereum-0)
2m23s       Warning   Unsupported                   node/ip-10-0-18-151.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
23m         Normal    Starting                      node/ip-10-0-18-161.ec2.internal   Starting kubelet.
23m         Warning   InvalidDiskCapacity           node/ip-10-0-18-161.ec2.internal   invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory       node/ip-10-0-18-161.ec2.internal   Node ip-10-0-18-161.ec2.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure         node/ip-10-0-18-161.ec2.internal   Node ip-10-0-18-161.ec2.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID          node/ip-10-0-18-161.ec2.internal   Node ip-10-0-18-161.ec2.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced       node/ip-10-0-18-161.ec2.internal   Updated Node Allocatable limit across pods
23m         Normal    Synced                        node/ip-10-0-18-161.ec2.internal   Node synced successfully
23m         Normal    RegisteredNode                node/ip-10-0-18-161.ec2.internal   Node ip-10-0-18-161.ec2.internal event: Registered Node ip-10-0-18-161.ec2.internal in Controller
23m         Normal    DisruptionBlocked             node/ip-10-0-18-161.ec2.internal   Node isn't initialized
23m         Normal    Starting                      node/ip-10-0-18-161.ec2.internal   
23m         Normal    ControllerVersionNotice       node/ip-10-0-18-161.ec2.internal   The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeReady                     node/ip-10-0-18-161.ec2.internal   Node ip-10-0-18-161.ec2.internal status is now: NodeReady
23m         Normal    Ready                         node/ip-10-0-18-161.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
23m         Normal    NodeTrunkInitiated            node/ip-10-0-18-161.ec2.internal   The node has trunk interface initialized successfully
57s         Normal    DisruptionBlocked             node/ip-10-0-18-161.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-app-deletion-b10t30-56b5d5c94f-p4lw2)
26m         Normal    DisruptionBlocked             node/ip-10-0-18-204.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-app-deletion-b10t30-56b5d5c94f-j4x2q)
54m         Normal    NodeNotSchedulable            node/ip-10-0-18-204.ec2.internal   Node ip-10-0-18-204.ec2.internal status is now: NodeNotSchedulable
10m         Normal    DisruptionBlocked             node/ip-10-0-18-204.ec2.internal   Node is deleting or marked for deletion
12m         Normal    DisruptionTerminating         node/ip-10-0-18-204.ec2.internal   Disrupting Node: Drifted/Delete
12m         Warning   FailedDraining                node/ip-10-0-18-204.ec2.internal   Failed to drain node, 7 pods are waiting to be evicted
11m         Warning   InstanceTerminating           node/ip-10-0-18-204.ec2.internal   Instance is terminating
10m         Normal    NodeNotReady                  node/ip-10-0-18-204.ec2.internal   Node ip-10-0-18-204.ec2.internal status is now: NodeNotReady
10m         Normal    RemovingNode                  node/ip-10-0-18-204.ec2.internal   Node ip-10-0-18-204.ec2.internal event: Removing Node ip-10-0-18-204.ec2.internal from Controller
26m         Warning   FailedDraining                node/ip-10-0-18-208.ec2.internal   Failed to drain node, 2 pods are waiting to be evicted
26m         Normal    DisruptionBlocked             node/ip-10-0-18-208.ec2.internal   Node is deleting or marked for deletion
54m         Normal    NodeNotSchedulable            node/ip-10-0-18-208.ec2.internal   Node ip-10-0-18-208.ec2.internal status is now: NodeNotSchedulable
22m         Normal    RemovingNode                  node/ip-10-0-18-208.ec2.internal   Node ip-10-0-18-208.ec2.internal event: Removing Node ip-10-0-18-208.ec2.internal from Controller
23m         Normal    Starting                      node/ip-10-0-18-227.ec2.internal   Starting kubelet.
23m         Warning   InvalidDiskCapacity           node/ip-10-0-18-227.ec2.internal   invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory       node/ip-10-0-18-227.ec2.internal   Node ip-10-0-18-227.ec2.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure         node/ip-10-0-18-227.ec2.internal   Node ip-10-0-18-227.ec2.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID          node/ip-10-0-18-227.ec2.internal   Node ip-10-0-18-227.ec2.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced       node/ip-10-0-18-227.ec2.internal   Updated Node Allocatable limit across pods
23m         Normal    Synced                        node/ip-10-0-18-227.ec2.internal   Node synced successfully
23m         Normal    RegisteredNode                node/ip-10-0-18-227.ec2.internal   Node ip-10-0-18-227.ec2.internal event: Registered Node ip-10-0-18-227.ec2.internal in Controller
23m         Normal    DisruptionBlocked             node/ip-10-0-18-227.ec2.internal   Node isn't initialized
23m         Normal    Starting                      node/ip-10-0-18-227.ec2.internal   
23m         Normal    ControllerVersionNotice       node/ip-10-0-18-227.ec2.internal   The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeReady                     node/ip-10-0-18-227.ec2.internal   Node ip-10-0-18-227.ec2.internal status is now: NodeReady
23m         Normal    Ready                         node/ip-10-0-18-227.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
23m         Normal    NodeTrunkInitiated            node/ip-10-0-18-227.ec2.internal   The node has trunk interface initialized successfully
77s         Normal    DisruptionBlocked             node/ip-10-0-18-227.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b100t30-5854cc8d55-pg7nq)
17m         Normal    DisruptionBlocked             node/ip-10-0-18-227.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-nfc-secure-ethereum/signup-sequencer-nfc-secure-ethereum-1)
21m         Normal    Starting                      node/ip-10-0-19-131.ec2.internal   Starting kubelet.
21m         Warning   InvalidDiskCapacity           node/ip-10-0-19-131.ec2.internal   invalid capacity 0 on image filesystem
21m         Normal    NodeHasSufficientMemory       node/ip-10-0-19-131.ec2.internal   Node ip-10-0-19-131.ec2.internal status is now: NodeHasSufficientMemory
21m         Normal    NodeHasNoDiskPressure         node/ip-10-0-19-131.ec2.internal   Node ip-10-0-19-131.ec2.internal status is now: NodeHasNoDiskPressure
21m         Normal    NodeHasSufficientPID          node/ip-10-0-19-131.ec2.internal   Node ip-10-0-19-131.ec2.internal status is now: NodeHasSufficientPID
21m         Normal    NodeAllocatableEnforced       node/ip-10-0-19-131.ec2.internal   Updated Node Allocatable limit across pods
21m         Normal    Synced                        node/ip-10-0-19-131.ec2.internal   Node synced successfully
21m         Normal    RegisteredNode                node/ip-10-0-19-131.ec2.internal   Node ip-10-0-19-131.ec2.internal event: Registered Node ip-10-0-19-131.ec2.internal in Controller
21m         Normal    Starting                      node/ip-10-0-19-131.ec2.internal   
21m         Normal    DisruptionBlocked             node/ip-10-0-19-131.ec2.internal   Node isn't initialized
21m         Normal    ControllerVersionNotice       node/ip-10-0-19-131.ec2.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeReady                     node/ip-10-0-19-131.ec2.internal   Node ip-10-0-19-131.ec2.internal status is now: NodeReady
21m         Normal    Ready                         node/ip-10-0-19-131.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    NodeTrunkInitiated            node/ip-10-0-19-131.ec2.internal   The node has trunk interface initialized successfully
67s         Normal    DisruptionBlocked             node/ip-10-0-19-131.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-2)
26m         Warning   FailedDraining                node/ip-10-0-19-150.ec2.internal   Failed to drain node, 2 pods are waiting to be evicted
26m         Normal    DisruptionBlocked             node/ip-10-0-19-150.ec2.internal   Node is deleting or marked for deletion
54m         Normal    NodeNotSchedulable            node/ip-10-0-19-150.ec2.internal   Node ip-10-0-19-150.ec2.internal status is now: NodeNotSchedulable
22m         Warning   InstanceTerminating           node/ip-10-0-19-150.ec2.internal   Instance is terminating
21m         Normal    RemovingNode                  node/ip-10-0-19-150.ec2.internal   Node ip-10-0-19-150.ec2.internal event: Removing Node ip-10-0-19-150.ec2.internal from Controller
26m         Warning   FailedDraining                node/ip-10-0-19-163.ec2.internal   Failed to drain node, 6 pods are waiting to be evicted
26m         Normal    DisruptionBlocked             node/ip-10-0-19-163.ec2.internal   Node is deleting or marked for deletion
54m         Normal    NodeNotSchedulable            node/ip-10-0-19-163.ec2.internal   Node ip-10-0-19-163.ec2.internal status is now: NodeNotSchedulable
22m         Warning   FailedDraining                node/ip-10-0-19-163.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
21m         Normal    RemovingNode                  node/ip-10-0-19-163.ec2.internal   Node ip-10-0-19-163.ec2.internal event: Removing Node ip-10-0-19-163.ec2.internal from Controller
22m         Warning   FailedDraining                node/ip-10-0-20-120.ec2.internal   Failed to drain node, 4 pods are waiting to be evicted
16m         Normal    DisruptionBlocked             node/ip-10-0-20-120.ec2.internal   Node is deleting or marked for deletion
54m         Normal    NodeNotSchedulable            node/ip-10-0-20-120.ec2.internal   Node ip-10-0-20-120.ec2.internal status is now: NodeNotSchedulable
16m         Warning   InstanceTerminating           node/ip-10-0-20-120.ec2.internal   Instance is terminating
15m         Normal    RemovingNode                  node/ip-10-0-20-120.ec2.internal   Node ip-10-0-20-120.ec2.internal event: Removing Node ip-10-0-20-120.ec2.internal from Controller
54m         Normal    DisruptionBlocked             node/ip-10-0-20-43.ec2.internal    Node is nominated for a pending pod
54m         Normal    NodeNotSchedulable            node/ip-10-0-20-43.ec2.internal    Node ip-10-0-20-43.ec2.internal status is now: NodeNotSchedulable
32m         Normal    DisruptionBlocked             node/ip-10-0-20-43.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
14m         Normal    DisruptionBlocked             node/ip-10-0-20-43.ec2.internal    Node is deleting or marked for deletion
16m         Normal    DisruptionTerminating         node/ip-10-0-20-43.ec2.internal    Disrupting Node: Drifted/Delete
16m         Warning   FailedDraining                node/ip-10-0-20-43.ec2.internal    Failed to drain node, 11 pods are waiting to be evicted
15m         Warning   InstanceTerminating           node/ip-10-0-20-43.ec2.internal    Instance is terminating
14m         Normal    NodeNotReady                  node/ip-10-0-20-43.ec2.internal    Node ip-10-0-20-43.ec2.internal status is now: NodeNotReady
14m         Normal    MemoryPressure                node/ip-10-0-20-43.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure                  node/ip-10-0-20-43.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure                   node/ip-10-0-20-43.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                         node/ip-10-0-20-43.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    RemovingNode                  node/ip-10-0-20-43.ec2.internal    Node ip-10-0-20-43.ec2.internal event: Removing Node ip-10-0-20-43.ec2.internal from Controller
54m         Normal    DisruptionBlocked             node/ip-10-0-21-103.ec2.internal   Node is nominated for a pending pod
54m         Normal    NodeNotSchedulable            node/ip-10-0-21-103.ec2.internal   Node ip-10-0-21-103.ec2.internal status is now: NodeNotSchedulable
13m         Normal    DisruptionBlocked             node/ip-10-0-21-103.ec2.internal   Node is deleting or marked for deletion
15m         Normal    DisruptionTerminating         node/ip-10-0-21-103.ec2.internal   Disrupting Node: Drifted/Delete
15m         Warning   FailedDraining                node/ip-10-0-21-103.ec2.internal   Failed to drain node, 10 pods are waiting to be evicted
13m         Warning   InstanceTerminating           node/ip-10-0-21-103.ec2.internal   Instance is terminating
13m         Normal    NodeNotReady                  node/ip-10-0-21-103.ec2.internal   Node ip-10-0-21-103.ec2.internal status is now: NodeNotReady
13m         Normal    MemoryPressure                node/ip-10-0-21-103.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DiskPressure                  node/ip-10-0-21-103.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    PIDPressure                   node/ip-10-0-21-103.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    Ready                         node/ip-10-0-21-103.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    RemovingNode                  node/ip-10-0-21-103.ec2.internal   Node ip-10-0-21-103.ec2.internal event: Removing Node ip-10-0-21-103.ec2.internal from Controller
22m         Warning   FailedDraining                node/ip-10-0-21-104.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
20m         Normal    DisruptionBlocked             node/ip-10-0-21-104.ec2.internal   Node is deleting or marked for deletion
54m         Normal    NodeNotSchedulable            node/ip-10-0-21-104.ec2.internal   Node ip-10-0-21-104.ec2.internal status is now: NodeNotSchedulable
18m         Normal    NodeNotReady                  node/ip-10-0-21-104.ec2.internal   Node ip-10-0-21-104.ec2.internal status is now: NodeNotReady
17m         Normal    RemovingNode                  node/ip-10-0-21-104.ec2.internal   Node ip-10-0-21-104.ec2.internal event: Removing Node ip-10-0-21-104.ec2.internal from Controller
54m         Normal    Starting                      node/ip-10-0-21-164.ec2.internal   Starting kubelet.
54m         Warning   InvalidDiskCapacity           node/ip-10-0-21-164.ec2.internal   invalid capacity 0 on image filesystem
54m         Normal    NodeHasSufficientMemory       node/ip-10-0-21-164.ec2.internal   Node ip-10-0-21-164.ec2.internal status is now: NodeHasSufficientMemory
54m         Normal    NodeHasNoDiskPressure         node/ip-10-0-21-164.ec2.internal   Node ip-10-0-21-164.ec2.internal status is now: NodeHasNoDiskPressure
54m         Normal    NodeHasSufficientPID          node/ip-10-0-21-164.ec2.internal   Node ip-10-0-21-164.ec2.internal status is now: NodeHasSufficientPID
54m         Normal    NodeAllocatableEnforced       node/ip-10-0-21-164.ec2.internal   Updated Node Allocatable limit across pods
54m         Normal    Synced                        node/ip-10-0-21-164.ec2.internal   Node synced successfully
53m         Normal    RegisteredNode                node/ip-10-0-21-164.ec2.internal   Node ip-10-0-21-164.ec2.internal event: Registered Node ip-10-0-21-164.ec2.internal in Controller
53m         Normal    Starting                      node/ip-10-0-21-164.ec2.internal   
53m         Normal    DisruptionBlocked             node/ip-10-0-21-164.ec2.internal   Node isn't initialized
53m         Normal    ControllerVersionNotice       node/ip-10-0-21-164.ec2.internal   The node is managed by VPC resource controller version v1.7.11
53m         Normal    NodeReady                     node/ip-10-0-21-164.ec2.internal   Node ip-10-0-21-164.ec2.internal status is now: NodeReady
53m         Normal    Ready                         node/ip-10-0-21-164.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
53m         Normal    NodeTrunkInitiated            node/ip-10-0-21-164.ec2.internal   The node has trunk interface initialized successfully
35m         Normal    DisruptionBlocked             node/ip-10-0-21-164.ec2.internal   Node is nominated for a pending pod
31m         Normal    DisruptionBlocked             node/ip-10-0-21-164.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
2m18s       Normal    DisruptionBlocked             node/ip-10-0-21-164.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-orb-ethereum/signup-sequencer-orb-ethereum-2)
8m23s       Normal    DisruptionBlocked             node/ip-10-0-21-164.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-nfc-secure-ethereum/signup-sequencer-nfc-secure-ethereum-2)
16s         Normal    DisruptionBlocked             node/ip-10-0-21-164.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-app/signup-sequencer-app-2)
54m         Normal    Starting                      node/ip-10-0-21-94.ec2.internal    Starting kubelet.
54m         Warning   InvalidDiskCapacity           node/ip-10-0-21-94.ec2.internal    invalid capacity 0 on image filesystem
54m         Normal    NodeHasSufficientMemory       node/ip-10-0-21-94.ec2.internal    Node ip-10-0-21-94.ec2.internal status is now: NodeHasSufficientMemory
54m         Normal    NodeHasNoDiskPressure         node/ip-10-0-21-94.ec2.internal    Node ip-10-0-21-94.ec2.internal status is now: NodeHasNoDiskPressure
54m         Normal    NodeHasSufficientPID          node/ip-10-0-21-94.ec2.internal    Node ip-10-0-21-94.ec2.internal status is now: NodeHasSufficientPID
54m         Normal    NodeAllocatableEnforced       node/ip-10-0-21-94.ec2.internal    Updated Node Allocatable limit across pods
54m         Normal    Synced                        node/ip-10-0-21-94.ec2.internal    Node synced successfully
54m         Normal    DisruptionBlocked             node/ip-10-0-21-94.ec2.internal    Node isn't initialized
54m         Normal    RegisteredNode                node/ip-10-0-21-94.ec2.internal    Node ip-10-0-21-94.ec2.internal event: Registered Node ip-10-0-21-94.ec2.internal in Controller
54m         Normal    Starting                      node/ip-10-0-21-94.ec2.internal    
54m         Normal    ControllerVersionNotice       node/ip-10-0-21-94.ec2.internal    The node is managed by VPC resource controller version v1.7.11
53m         Normal    NodeReady                     node/ip-10-0-21-94.ec2.internal    Node ip-10-0-21-94.ec2.internal status is now: NodeReady
53m         Normal    Ready                         node/ip-10-0-21-94.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
53m         Normal    NodeTrunkInitiated            node/ip-10-0-21-94.ec2.internal    The node has trunk interface initialized successfully
50m         Normal    DisruptionBlocked             node/ip-10-0-21-94.ec2.internal    Node is nominated for a pending pod
38m         Normal    DisruptionBlocked             node/ip-10-0-21-94.ec2.internal    Node is deleting or marked for deletion
38m         Normal    DisruptionTerminating         node/ip-10-0-21-94.ec2.internal    Disrupting Node: Empty/Delete
38m         Warning   FailedDraining                node/ip-10-0-21-94.ec2.internal    Failed to drain node, 1 pods are waiting to be evicted
38m         Normal    RemovingNode                  node/ip-10-0-21-94.ec2.internal    Node ip-10-0-21-94.ec2.internal event: Removing Node ip-10-0-21-94.ec2.internal from Controller
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                                     NAME                                                MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
backup-service                                backup-service-pdb                                  N/A             1                 1                     154d
cluster-monitoring                            cluster-monitoring-pdb                              N/A             1                 1                     293d
ctf-onboarding                                ctf-onboarding-pdb                                  N/A             1                 1                     213d
karpenter                                     karpenter                                           N/A             1                 1                     2y172d
kube-system                                   coredns                                             N/A             1                 1                     646d
kube-system                                   ebs-csi-controller                                  N/A             1                 1                     2y172d
kyverno                                       kyverno-admission-controller                        1               N/A               2                     604d
nfc-uniqueness-service                        mpc-service-pdb                                     N/A             1                 1                     129d
nfc-uniqueness-service                        nfc-uniqueness-service-pdb                          N/A             1                 1                     298d
nfc-uniqueness-service                        sod-service-pdb                                     N/A             1                 1                     298d
proxyd                                        proxyd-pdb                                          N/A             1                 1                     144d
semaphore-mtb-orb                             semaphore-mtb-app-deletion-b10t30-pdb               N/A             1                 1                     288d
semaphore-mtb-orb                             semaphore-mtb-app-insertion-b10t30-pdb              N/A             1                 1                     288d
semaphore-mtb-orb                             semaphore-mtb-orb-deletion-b10t30-pdb               N/A             1                 1                     288d
semaphore-mtb-orb                             semaphore-mtb-orb-insertion-b100t30-pdb             N/A             1                 1                     288d
semaphore-mtb-orb                             semaphore-mtb-orb-insertion-b1200t30-pdb            N/A             1                 0                     288d
signup-sequencer-app                          signup-sequencer-app-pdb                            N/A             1                 1                     297d
signup-sequencer-nfc-ethereum                 signup-sequencer-nfc-ethereum-pdb                   N/A             1                 1                     297d
signup-sequencer-nfc-secure-ethereum          signup-sequencer-nfc-secure-ethereum-pdb            N/A             1                 1                     297d
signup-sequencer-orb-ethereum                 signup-sequencer-orb-ethereum-pdb                   N/A             1                 1                     297d
signup-sequencer-phone-ethereum               signup-sequencer-phone-ethereum-pdb                 N/A             1                 1                     297d
tx-data-ingress                               tx-data-ingress-pdb                                 N/A             1                 1                     293d
tx-sitter-monolith                            tx-sitter-monolith-pdb                              N/A             1                 1                     171d
world-chain-sepolia-archive-node-reth         world-chain-sepolia-archive-node-reth-op-node-pdb   N/A             1                 1                     219d
world-chain-sepolia-archive-node-reth         world-chain-sepolia-archive-node-reth-op-reth-pdb   N/A             1                 1                     219d
world-chain-sepolia-archive-node              world-chain-sepolia-archive-node-op-geth-pdb        N/A             1                 1                     223d
world-chain-sepolia-archive-node              world-chain-sepolia-archive-node-op-node-pdb        N/A             1                 1                     223d
world-id-relay                                world-id-relay-pdb                                  50%             N/A               0                     299d
world-tree                                    world-tree-pdb                                      N/A             1                 1                     215d
worldcoin-chainlink-datastreams-transmitter   worldcoin-chainlink-datastreams-transmitter-pdb     N/A             1                 1                     174d
```

Pods with Karpenter.sh/Do-Not-Disrupt Annotation
```
ip-10-0-16-169.ec2.internal  signup-sequencer-phone-ethereum-0                     (signup-sequencer-phone-ethereum)
ip-10-0-16-193.ec2.internal  signup-sequencer-nfc-ethereum-1                       (signup-sequencer-nfc-ethereum)
ip-10-0-16-193.ec2.internal  signup-sequencer-phone-ethereum-1                     (signup-sequencer-phone-ethereum)
ip-10-0-16-227.ec2.internal  semaphore-mtb-app-insertion-b10t30-69b6cc49f9-76qgl   (semaphore-mtb-orb)
ip-10-0-16-227.ec2.internal  semaphore-mtb-orb-deletion-b10t30-7d47bb56c9-zks45    (semaphore-mtb-orb)
ip-10-0-16-227.ec2.internal  signup-sequencer-nfc-ethereum-0                       (signup-sequencer-nfc-ethereum)
ip-10-0-17-202.ec2.internal  signup-sequencer-app-1                                (signup-sequencer-app)
ip-10-0-17-202.ec2.internal  signup-sequencer-nfc-ethereum-2                       (signup-sequencer-nfc-ethereum)
ip-10-0-17-202.ec2.internal  signup-sequencer-nfc-secure-ethereum-0                (signup-sequencer-nfc-secure-ethereum)
ip-10-0-17-202.ec2.internal  signup-sequencer-orb-ethereum-1                       (signup-sequencer-orb-ethereum)
ip-10-0-18-121.ec2.internal  semaphore-mtb-orb-insertion-b100t30-5854cc8d55-x5t8n  (semaphore-mtb-orb)
ip-10-0-18-121.ec2.internal  signup-sequencer-app-0                                (signup-sequencer-app)
ip-10-0-18-121.ec2.internal  signup-sequencer-orb-ethereum-0                       (signup-sequencer-orb-ethereum)
ip-10-0-18-161.ec2.internal  semaphore-mtb-app-deletion-b10t30-56b5d5c94f-p4lw2    (semaphore-mtb-orb)
ip-10-0-18-227.ec2.internal  semaphore-mtb-orb-insertion-b100t30-5854cc8d55-pg7nq  (semaphore-mtb-orb)
ip-10-0-18-227.ec2.internal  signup-sequencer-nfc-secure-ethereum-1                (signup-sequencer-nfc-secure-ethereum)
ip-10-0-19-131.ec2.internal  signup-sequencer-phone-ethereum-2                     (signup-sequencer-phone-ethereum)
ip-10-0-21-164.ec2.internal  signup-sequencer-app-2                                (signup-sequencer-app)
ip-10-0-21-164.ec2.internal  signup-sequencer-nfc-secure-ethereum-2                (signup-sequencer-nfc-secure-ethereum)
ip-10-0-21-164.ec2.internal  signup-sequencer-orb-ethereum-2                       (signup-sequencer-orb-ethereum)
```

Pods Tolerating karpenter.sh/disrupted
```
```

Static Pods
```
```

Cluster version up to date - no pluto apis detection rquired

Generated on: Thu Sep 18 19:12:25 CEST 2025
