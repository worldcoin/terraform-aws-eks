# Cluster recon for tfh-ml-prod-infra,eu-central-1,ml-prod-eu-central-1,tunnel-vpc-ml-prod-eu-central-1

TFH EKS login...
```console
2025/09/23 10:46:14 INFO Logging into AWS
2025/09/23 10:46:14 INFO Token found and valid
2025/09/23 10:46:15 INFO Switch WARP Virtual Network to name=tunnel-vpc-ml-prod-eu-central-1 id=f630bf15-2837-4a5c-99f5-230ce600402f
2025/09/23 10:46:17 INFO Active WARP Virtual Network id=f630bf15-2837-4a5c-99f5-230ce600402f
Updated context tfh-ml-prod-eu-central-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "ml-prod-eu-central-1",
        "arn": "arn:aws:eks:eu-central-1:258348076843:cluster/ml-prod-eu-central-1",
        "createdAt": "2022-12-23T18:06:18.157000+01:00",
        "version": "1.33",
        "endpoint": "https://645A0F2BB1B970D98613E58E42454152.gr7.eu-central-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::258348076843:role/eks-cluster-ml-prod-eu-central-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-09af7f7b83cc12409",
                "subnet-080eb406dfcd732b6",
                "subnet-0aa0690a436742595"
            ],
            "securityGroupIds": [
                "sg-03d5110c6d6617001"
            ],
            "clusterSecurityGroupId": "sg-0dfa74a39f534535a",
            "vpcId": "vpc-093c0d9eb191c4f6b",
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
                "issuer": "https://oidc.eks.eu-central-1.amazonaws.com/id/645A0F2BB1B970D98613E58E42454152"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJeU1USXlNekUzTVRFME9Gb1hEVE15TVRJeU1ERTNNVEUwT0Zvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTGhsCk96QnkvUUdLNTVDamowOTUwMVMzdHR6MEo3S0xhNjRlREpJUDg3TVN4d3M5RGwzOHFzYjJtaDNucWVtK1dGYVoKbm15MzU0L1BpSVNBOTk5b3FzelJKTk5CUDd1ZytRNXQ3Z3ZHSjRMd05wR3RMY0V1ZWFlV055ZktSNGp6WUZLVQpjQW1ESXdwSTVzLzc4cllrUzlxS0xXZ3ZvVUV0QnlQUnYvRmU3WHg2QlB4RHEzcXNnV1QwRloyMnhocHNQbUVBCnQ3VHFJRUJqSDIzNlBHUk55OUVlNVFGYXpYUHppb2dNNkJtTlVua3lYcHJPZXkwaXRMTy9mUEJMdGYwUUhjekgKNTFWY09XN1ZtaTZyYlUza3NTMW8yTVlxenp3WktrWlJIcnFJaEJwWFMwd2FpTkJEYUJRcWsrWTlodHV6YWVrawpoMEJWRVorUzJUZUYrZzRUeGdzQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZEak9zSm5zejdIWm9zOVVHd29WMldwT2dJNmNNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBTGFSd1dUOFlSeGQ4NFZuS1lFNgpVUE5ic3Z0WnRvTzlqZWRSemV5U3RBV0pQMktNRHFQcmFBdWNuMmxSKzBGMW9pb2pNcW5SY3p2TnNjSUFFd0NHCllQeDJVanRHQnl6RDh3bmdEWlhpRTB0YVFIODl4ZERKMlgrc0lJRWNQVTUwNHF1OFp3TERDVUJmUzlVVUprdEkKY1FOMjBFaFdkc0V6NFZ5OG5kbFJNL1k5VS9SVk1HdXlLUmhzVFJIUVNFYk5ZRUpxc2ttY1Y4bkxXcEV6eXVDZApzbzF6T0xTVGdIaWowaEF2azFReFpHYzNRTmkzN0gwOFhaL3FKUm9mT1dBd3dyQ0c1RjRTWnlYSW95RUQvOEJxCkV2cVIyY1JraWxzaFVQc3locWg4VDBFbHZ4cVhzV3c4TTdOcmR2T3dHN1FtWGJ1NlR0VFJNWW5xSzY1cm1ibGMKT213PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "ml-prod-eu-central-1",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-central-1:258348076843:key/007c8d7d-1335-4560-aa87-3567b243aac0"
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
NAME                                             STATUS   ROLES    AGE     VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-54-145-124.eu-central-1.compute.internal   Ready    <none>   5d22h   v1.32.8-eks-99d6cc0   10.54.145.124   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-145-206.eu-central-1.compute.internal   Ready    <none>   5d16h   v1.32.8-eks-99d6cc0   10.54.145.206   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-146-165.eu-central-1.compute.internal   Ready    <none>   5d16h   v1.32.8-eks-99d6cc0   10.54.146.165   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-146-63.eu-central-1.compute.internal    Ready    <none>   20h     v1.32.8-eks-99d6cc0   10.54.146.63    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-147-145.eu-central-1.compute.internal   Ready    <none>   18m     v1.33.4-eks-99d6cc0   10.54.147.145   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64     containerd://1.7.27   eks-node-al2023-ml-prod-eu-central-1
ip-10-54-147-229.eu-central-1.compute.internal   Ready    <none>   62s     v1.33.4-eks-99d6cc0   10.54.147.229   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64     containerd://1.7.27   
ip-10-54-147-62.eu-central-1.compute.internal    Ready    <none>   15h     v1.32.8-eks-99d6cc0   10.54.147.62    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-147-67.eu-central-1.compute.internal    Ready    <none>   21h     v1.32.8-eks-99d6cc0   10.54.147.67    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-148-185.eu-central-1.compute.internal   Ready    <none>   3m55s   v1.33.4-eks-99d6cc0   10.54.148.185   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64     containerd://1.7.27   
ip-10-54-148-79.eu-central-1.compute.internal    Ready    <none>   19m     v1.33.4-eks-99d6cc0   10.54.148.79    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64     containerd://1.7.27   eks-node-al2023-ml-prod-eu-central-1
```

Nodes and their taints
```
NAME                                             STATUS   ROLES    TAINTS
ip-10-54-145-124.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-145-206.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-146-165.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-146-63.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-147-145.eu-central-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-54-147-229.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-147-62.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-147-67.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-148-185.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-148-79.eu-central-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                                                MESSAGE
10m         Normal    Finalized                 node                                                  Finalized karpenter.sh/termination
2m52s       Normal    Finalized                 node                                                  Finalized karpenter.sh/termination
22m         Warning   Unsupported               node/ip-10-54-144-103.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
84m         Normal    Starting                  node/ip-10-54-144-103.eu-central-1.compute.internal   
17m         Normal    RegisteredNode            node/ip-10-54-144-103.eu-central-1.compute.internal   Node ip-10-54-144-103.eu-central-1.compute.internal event: Registered Node ip-10-54-144-103.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-144-103.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
14m         Warning   Unsupported               node/ip-10-54-144-103.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    NodeNotSchedulable        node/ip-10-54-144-103.eu-central-1.compute.internal   Node ip-10-54-144-103.eu-central-1.compute.internal status is now: NodeNotSchedulable
14m         Normal    NodeNotReady              node/ip-10-54-144-103.eu-central-1.compute.internal   Node ip-10-54-144-103.eu-central-1.compute.internal status is now: NodeNotReady
14m         Normal    MemoryPressure            node/ip-10-54-144-103.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure              node/ip-10-54-144-103.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure               node/ip-10-54-144-103.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                     node/ip-10-54-144-103.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DeletingNode              node/ip-10-54-144-103.eu-central-1.compute.internal   Deleting node ip-10-54-144-103.eu-central-1.compute.internal because it does not exist in the cloud provider
14m         Normal    RemovingNode              node/ip-10-54-144-103.eu-central-1.compute.internal   Node ip-10-54-144-103.eu-central-1.compute.internal event: Removing Node ip-10-54-144-103.eu-central-1.compute.internal from Controller
17m         Normal    Starting                  node/ip-10-54-144-227.eu-central-1.compute.internal   Starting kubelet.
17m         Warning   InvalidDiskCapacity       node/ip-10-54-144-227.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
17m         Normal    NodeHasSufficientMemory   node/ip-10-54-144-227.eu-central-1.compute.internal   Node ip-10-54-144-227.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
17m         Normal    NodeHasNoDiskPressure     node/ip-10-54-144-227.eu-central-1.compute.internal   Node ip-10-54-144-227.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
17m         Normal    NodeHasSufficientPID      node/ip-10-54-144-227.eu-central-1.compute.internal   Node ip-10-54-144-227.eu-central-1.compute.internal status is now: NodeHasSufficientPID
17m         Normal    NodeAllocatableEnforced   node/ip-10-54-144-227.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
17m         Normal    Synced                    node/ip-10-54-144-227.eu-central-1.compute.internal   Node synced successfully
17m         Normal    RegisteredNode            node/ip-10-54-144-227.eu-central-1.compute.internal   Node ip-10-54-144-227.eu-central-1.compute.internal event: Registered Node ip-10-54-144-227.eu-central-1.compute.internal in Controller
17m         Normal    Starting                  node/ip-10-54-144-227.eu-central-1.compute.internal   
17m         Normal    ControllerVersionNotice   node/ip-10-54-144-227.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
7m2s        Warning   Unsupported               node/ip-10-54-144-227.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    NodeReady                 node/ip-10-54-144-227.eu-central-1.compute.internal   Node ip-10-54-144-227.eu-central-1.compute.internal status is now: NodeReady
17m         Normal    Ready                     node/ip-10-54-144-227.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
8m55s       Normal    NodeNotSchedulable        node/ip-10-54-144-227.eu-central-1.compute.internal   Node ip-10-54-144-227.eu-central-1.compute.internal status is now: NodeNotSchedulable
7m8s        Normal    NodeNotReady              node/ip-10-54-144-227.eu-central-1.compute.internal   Node ip-10-54-144-227.eu-central-1.compute.internal status is now: NodeNotReady
7m8s        Normal    MemoryPressure            node/ip-10-54-144-227.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m8s        Normal    DiskPressure              node/ip-10-54-144-227.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m8s        Normal    PIDPressure               node/ip-10-54-144-227.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m8s        Normal    Ready                     node/ip-10-54-144-227.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m59s       Normal    DeletingNode              node/ip-10-54-144-227.eu-central-1.compute.internal   Deleting node ip-10-54-144-227.eu-central-1.compute.internal because it does not exist in the cloud provider
6m58s       Normal    RemovingNode              node/ip-10-54-144-227.eu-central-1.compute.internal   Node ip-10-54-144-227.eu-central-1.compute.internal event: Removing Node ip-10-54-144-227.eu-central-1.compute.internal from Controller
84m         Normal    DisruptionBlocked         node/ip-10-54-144-4.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
84m         Normal    Starting                  node/ip-10-54-144-4.eu-central-1.compute.internal     
60m         Normal    DisruptionBlocked         node/ip-10-54-144-4.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/worker-side-controller-29310226-j54qt)
54m         Normal    DisruptionBlocked         node/ip-10-54-144-4.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/worker-side-controller-29310232-9sjdq)
46m         Normal    DisruptionBlocked         node/ip-10-54-144-4.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/normalizediris-i-pii-signup-flow-exporter-29310240-h8qkp)
17m         Normal    RegisteredNode            node/ip-10-54-144-4.eu-central-1.compute.internal     Node ip-10-54-144-4.eu-central-1.compute.internal event: Registered Node ip-10-54-144-4.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-144-4.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeTrunkInitiated        node/ip-10-54-144-4.eu-central-1.compute.internal     The node has trunk interface initialized successfully
16m         Normal    DisruptionBlocked         node/ip-10-54-144-4.eu-central-1.compute.internal     Node is nominated for a pending pod
13m         Normal    DisruptionBlocked         node/ip-10-54-144-4.eu-central-1.compute.internal     Node is nominated for a pending pod
12m         Normal    DisruptionTerminating     node/ip-10-54-144-4.eu-central-1.compute.internal     Disrupting Node: Drifted/Delete
12m         Warning   FailedDraining            node/ip-10-54-144-4.eu-central-1.compute.internal     Failed to drain node, 17 pods are waiting to be evicted
11m         Normal    DisruptionBlocked         node/ip-10-54-144-4.eu-central-1.compute.internal     Node is deleting or marked for deletion
11m         Warning   InstanceTerminating       node/ip-10-54-144-4.eu-central-1.compute.internal     Instance is terminating
10m         Normal    NodeNotReady              node/ip-10-54-144-4.eu-central-1.compute.internal     Node ip-10-54-144-4.eu-central-1.compute.internal status is now: NodeNotReady
10m         Normal    MemoryPressure            node/ip-10-54-144-4.eu-central-1.compute.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    DiskPressure              node/ip-10-54-144-4.eu-central-1.compute.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    PIDPressure               node/ip-10-54-144-4.eu-central-1.compute.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    Ready                     node/ip-10-54-144-4.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    DeletingNode              node/ip-10-54-144-4.eu-central-1.compute.internal     Deleting node ip-10-54-144-4.eu-central-1.compute.internal because it does not exist in the cloud provider
10m         Normal    RemovingNode              node/ip-10-54-144-4.eu-central-1.compute.internal     Node ip-10-54-144-4.eu-central-1.compute.internal event: Removing Node ip-10-54-144-4.eu-central-1.compute.internal from Controller
16m         Normal    DisruptionBlocked         node/ip-10-54-145-124.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/orb-manager-76b658bb4b-mgqdq)
84m         Normal    Starting                  node/ip-10-54-145-124.eu-central-1.compute.internal   
17m         Normal    RegisteredNode            node/ip-10-54-145-124.eu-central-1.compute.internal   Node ip-10-54-145-124.eu-central-1.compute.internal event: Registered Node ip-10-54-145-124.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-145-124.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeTrunkInitiated        node/ip-10-54-145-124.eu-central-1.compute.internal   The node has trunk interface initialized successfully
9m42s       Normal    DisruptionBlocked         node/ip-10-54-145-124.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/orb-manager-76b658bb4b-mgqdq)
29s         Normal    DisruptionBlocked         node/ip-10-54-145-124.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/orb-manager-76b658bb4b-mgqdq)
4m34s       Normal    DisruptionBlocked         node/ip-10-54-145-124.eu-central-1.compute.internal   Node is nominated for a pending pod
16m         Normal    DisruptionBlocked         node/ip-10-54-145-206.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/redis-master-0)
84m         Normal    Starting                  node/ip-10-54-145-206.eu-central-1.compute.internal   
17m         Normal    RegisteredNode            node/ip-10-54-145-206.eu-central-1.compute.internal   Node ip-10-54-145-206.eu-central-1.compute.internal event: Registered Node ip-10-54-145-206.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-145-206.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeTrunkInitiated        node/ip-10-54-145-206.eu-central-1.compute.internal   The node has trunk interface initialized successfully
9m42s       Normal    DisruptionBlocked         node/ip-10-54-145-206.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/redis-master-0)
29s         Normal    DisruptionBlocked         node/ip-10-54-145-206.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/redis-master-0)
4m34s       Normal    DisruptionBlocked         node/ip-10-54-145-206.eu-central-1.compute.internal   Node is nominated for a pending pod
16m         Normal    DisruptionBlocked         node/ip-10-54-146-100.eu-central-1.compute.internal   (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/worker-iris-controller-29310270-pz8w8)
84m         Normal    Starting                  node/ip-10-54-146-100.eu-central-1.compute.internal   
17m         Normal    RegisteredNode            node/ip-10-54-146-100.eu-central-1.compute.internal   Node ip-10-54-146-100.eu-central-1.compute.internal event: Registered Node ip-10-54-146-100.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-146-100.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeTrunkInitiated        node/ip-10-54-146-100.eu-central-1.compute.internal   The node has trunk interface initialized successfully
16m         Warning   FailedDraining            node/ip-10-54-146-100.eu-central-1.compute.internal   Failed to drain node, 17 pods are waiting to be evicted
14m         Warning   InstanceTerminating       node/ip-10-54-146-100.eu-central-1.compute.internal   Instance is terminating
14m         Normal    NodeNotReady              node/ip-10-54-146-100.eu-central-1.compute.internal   Node ip-10-54-146-100.eu-central-1.compute.internal status is now: NodeNotReady
13m         Normal    DeletingNode              node/ip-10-54-146-100.eu-central-1.compute.internal   Deleting node ip-10-54-146-100.eu-central-1.compute.internal because it does not exist in the cloud provider
13m         Normal    RemovingNode              node/ip-10-54-146-100.eu-central-1.compute.internal   Node ip-10-54-146-100.eu-central-1.compute.internal event: Removing Node ip-10-54-146-100.eu-central-1.compute.internal from Controller
16m         Normal    DisruptionBlocked         node/ip-10-54-146-165.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/postgresql-0)
84m         Normal    Starting                  node/ip-10-54-146-165.eu-central-1.compute.internal   
17m         Normal    RegisteredNode            node/ip-10-54-146-165.eu-central-1.compute.internal   Node ip-10-54-146-165.eu-central-1.compute.internal event: Registered Node ip-10-54-146-165.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-146-165.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeTrunkInitiated        node/ip-10-54-146-165.eu-central-1.compute.internal   The node has trunk interface initialized successfully
9m42s       Normal    DisruptionBlocked         node/ip-10-54-146-165.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/postgresql-0)
29s         Normal    DisruptionBlocked         node/ip-10-54-146-165.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/postgresql-0)
16m         Normal    DisruptionBlocked         node/ip-10-54-146-63.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/orb-data-service-84c6749d9f-fs5sz)
34m         Normal    DisruptionBlocked         node/ip-10-54-146-63.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-face-auth-attempts-7c7476544xlc6z)
84m         Normal    Starting                  node/ip-10-54-146-63.eu-central-1.compute.internal    
17m         Normal    RegisteredNode            node/ip-10-54-146-63.eu-central-1.compute.internal    Node ip-10-54-146-63.eu-central-1.compute.internal event: Registered Node ip-10-54-146-63.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-146-63.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeTrunkInitiated        node/ip-10-54-146-63.eu-central-1.compute.internal    The node has trunk interface initialized successfully
9m42s       Normal    DisruptionBlocked         node/ip-10-54-146-63.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/orb-data-service-84c6749d9f-fs5sz)
29s         Normal    DisruptionBlocked         node/ip-10-54-146-63.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/orb-data-service-84c6749d9f-fs5sz)
4m34s       Normal    DisruptionBlocked         node/ip-10-54-146-63.eu-central-1.compute.internal    Node is nominated for a pending pod
18m         Normal    Starting                  node/ip-10-54-147-145.eu-central-1.compute.internal   Starting kubelet.
18m         Warning   InvalidDiskCapacity       node/ip-10-54-147-145.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
18m         Normal    NodeHasSufficientMemory   node/ip-10-54-147-145.eu-central-1.compute.internal   Node ip-10-54-147-145.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
18m         Normal    NodeHasNoDiskPressure     node/ip-10-54-147-145.eu-central-1.compute.internal   Node ip-10-54-147-145.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
18m         Normal    NodeHasSufficientPID      node/ip-10-54-147-145.eu-central-1.compute.internal   Node ip-10-54-147-145.eu-central-1.compute.internal status is now: NodeHasSufficientPID
18m         Normal    NodeAllocatableEnforced   node/ip-10-54-147-145.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
18m         Normal    Synced                    node/ip-10-54-147-145.eu-central-1.compute.internal   Node synced successfully
18m         Normal    RegisteredNode            node/ip-10-54-147-145.eu-central-1.compute.internal   Node ip-10-54-147-145.eu-central-1.compute.internal event: Registered Node ip-10-54-147-145.eu-central-1.compute.internal in Controller
18m         Normal    Starting                  node/ip-10-54-147-145.eu-central-1.compute.internal   
18m         Normal    ControllerVersionNotice   node/ip-10-54-147-145.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
18m         Warning   Unsupported               node/ip-10-54-147-145.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
18m         Normal    NodeReady                 node/ip-10-54-147-145.eu-central-1.compute.internal   Node ip-10-54-147-145.eu-central-1.compute.internal status is now: NodeReady
18m         Normal    Ready                     node/ip-10-54-147-145.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    RegisteredNode            node/ip-10-54-147-145.eu-central-1.compute.internal   Node ip-10-54-147-145.eu-central-1.compute.internal event: Registered Node ip-10-54-147-145.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-147-145.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
3m4s        Warning   Unsupported               node/ip-10-54-147-145.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Warning   Unsupported               node/ip-10-54-147-191.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
84m         Normal    Starting                  node/ip-10-54-147-191.eu-central-1.compute.internal   
17m         Normal    RegisteredNode            node/ip-10-54-147-191.eu-central-1.compute.internal   Node ip-10-54-147-191.eu-central-1.compute.internal event: Registered Node ip-10-54-147-191.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-147-191.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
11m         Warning   Unsupported               node/ip-10-54-147-191.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    NodeNotSchedulable        node/ip-10-54-147-191.eu-central-1.compute.internal   Node ip-10-54-147-191.eu-central-1.compute.internal status is now: NodeNotSchedulable
11m         Normal    NodeNotReady              node/ip-10-54-147-191.eu-central-1.compute.internal   Node ip-10-54-147-191.eu-central-1.compute.internal status is now: NodeNotReady
11m         Normal    MemoryPressure            node/ip-10-54-147-191.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DiskPressure              node/ip-10-54-147-191.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    PIDPressure               node/ip-10-54-147-191.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    Ready                     node/ip-10-54-147-191.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DeletingNode              node/ip-10-54-147-191.eu-central-1.compute.internal   Deleting node ip-10-54-147-191.eu-central-1.compute.internal because it does not exist in the cloud provider
11m         Normal    RemovingNode              node/ip-10-54-147-191.eu-central-1.compute.internal   Node ip-10-54-147-191.eu-central-1.compute.internal event: Removing Node ip-10-54-147-191.eu-central-1.compute.internal from Controller
15m         Normal    DisruptionBlocked         node/ip-10-54-147-194.eu-central-1.compute.internal   (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=data-collection-analysis/face-capture-replication-29310270-5xrb4)
84m         Normal    Starting                  node/ip-10-54-147-194.eu-central-1.compute.internal   
74m         Normal    DisruptionBlocked         node/ip-10-54-147-194.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/metadata-ir-29310195-6pl57)
17m         Normal    RegisteredNode            node/ip-10-54-147-194.eu-central-1.compute.internal   Node ip-10-54-147-194.eu-central-1.compute.internal event: Registered Node ip-10-54-147-194.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-147-194.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeTrunkInitiated        node/ip-10-54-147-194.eu-central-1.compute.internal   The node has trunk interface initialized successfully
13m         Normal    DisruptionBlocked         node/ip-10-54-147-194.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/orb-capture-transform-29310272-fxbnf)
11m         Normal    DisruptionBlocked         node/ip-10-54-147-194.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/orb-capture-transform-29310274-l97q6)
9m42s       Normal    DisruptionBlocked         node/ip-10-54-147-194.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/orb-capture-transform-29310276-l5fs5)
8m39s       Normal    DisruptionBlocked         node/ip-10-54-147-194.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/orb-capture-transform-29310277-b6zn6)
6m37s       Normal    DisruptionBlocked         node/ip-10-54-147-194.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/orb-capture-transform-29310279-9kxvv)
4m44s       Normal    DisruptionTerminating     node/ip-10-54-147-194.eu-central-1.compute.internal   Disrupting Node: Drifted/Delete
4m44s       Warning   FailedDraining            node/ip-10-54-147-194.eu-central-1.compute.internal   Failed to drain node, 20 pods are waiting to be evicted
4m34s       Normal    DisruptionBlocked         node/ip-10-54-147-194.eu-central-1.compute.internal   Node is deleting or marked for deletion
3m23s       Warning   InstanceTerminating       node/ip-10-54-147-194.eu-central-1.compute.internal   Instance is terminating
2m47s       Normal    RemovingNode              node/ip-10-54-147-194.eu-central-1.compute.internal   Node ip-10-54-147-194.eu-central-1.compute.internal event: Removing Node ip-10-54-147-194.eu-central-1.compute.internal from Controller
14m         Normal    DisruptionBlocked         node/ip-10-54-147-225.eu-central-1.compute.internal   (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/worker-pcnet-controller-29310272-js4mx)
84m         Normal    Starting                  node/ip-10-54-147-225.eu-central-1.compute.internal   
44m         Normal    DisruptionBlocked         node/ip-10-54-147-225.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/face-auth-debugger-29310240-qqjpq)
29m         Normal    DisruptionBlocked         node/ip-10-54-147-225.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/centralisation-cleanup-signup-flow-exporter-29310240-dp5g2)
17m         Normal    RegisteredNode            node/ip-10-54-147-225.eu-central-1.compute.internal   Node ip-10-54-147-225.eu-central-1.compute.internal event: Registered Node ip-10-54-147-225.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-147-225.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeTrunkInitiated        node/ip-10-54-147-225.eu-central-1.compute.internal   The node has trunk interface initialized successfully
11m         Normal    DisruptionBlocked         node/ip-10-54-147-225.eu-central-1.compute.internal   Node is deleting or marked for deletion
13m         Normal    DisruptionTerminating     node/ip-10-54-147-225.eu-central-1.compute.internal   Disrupting Node: Drifted/Delete
13m         Warning   FailedDraining            node/ip-10-54-147-225.eu-central-1.compute.internal   Failed to drain node, 9 pods are waiting to be evicted
12m         Warning   InstanceTerminating       node/ip-10-54-147-225.eu-central-1.compute.internal   Instance is terminating
11m         Normal    NodeNotReady              node/ip-10-54-147-225.eu-central-1.compute.internal   Node ip-10-54-147-225.eu-central-1.compute.internal status is now: NodeNotReady
11m         Normal    MemoryPressure            node/ip-10-54-147-225.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DiskPressure              node/ip-10-54-147-225.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    PIDPressure               node/ip-10-54-147-225.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    Ready                     node/ip-10-54-147-225.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DeletingNode              node/ip-10-54-147-225.eu-central-1.compute.internal   Deleting node ip-10-54-147-225.eu-central-1.compute.internal because it does not exist in the cloud provider
11m         Normal    RemovingNode              node/ip-10-54-147-225.eu-central-1.compute.internal   Node ip-10-54-147-225.eu-central-1.compute.internal event: Removing Node ip-10-54-147-225.eu-central-1.compute.internal from Controller
68s         Normal    Starting                  node/ip-10-54-147-229.eu-central-1.compute.internal   Starting kubelet.
68s         Warning   InvalidDiskCapacity       node/ip-10-54-147-229.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
67s         Normal    NodeHasSufficientMemory   node/ip-10-54-147-229.eu-central-1.compute.internal   Node ip-10-54-147-229.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
67s         Normal    NodeHasNoDiskPressure     node/ip-10-54-147-229.eu-central-1.compute.internal   Node ip-10-54-147-229.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
67s         Normal    NodeHasSufficientPID      node/ip-10-54-147-229.eu-central-1.compute.internal   Node ip-10-54-147-229.eu-central-1.compute.internal status is now: NodeHasSufficientPID
67s         Normal    NodeAllocatableEnforced   node/ip-10-54-147-229.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
64s         Normal    Synced                    node/ip-10-54-147-229.eu-central-1.compute.internal   Node synced successfully
62s         Normal    RegisteredNode            node/ip-10-54-147-229.eu-central-1.compute.internal   Node ip-10-54-147-229.eu-central-1.compute.internal event: Registered Node ip-10-54-147-229.eu-central-1.compute.internal in Controller
60s         Normal    DisruptionBlocked         node/ip-10-54-147-229.eu-central-1.compute.internal   Node isn't initialized
59s         Normal    Starting                  node/ip-10-54-147-229.eu-central-1.compute.internal   
53s         Normal    ControllerVersionNotice   node/ip-10-54-147-229.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
52s         Normal    NodeReady                 node/ip-10-54-147-229.eu-central-1.compute.internal   Node ip-10-54-147-229.eu-central-1.compute.internal status is now: NodeReady
52s         Normal    Ready                     node/ip-10-54-147-229.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
49s         Normal    NodeTrunkInitiated        node/ip-10-54-147-229.eu-central-1.compute.internal   The node has trunk interface initialized successfully
74m         Normal    DisruptionBlocked         node/ip-10-54-147-62.eu-central-1.compute.internal    (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/orb-capture-transform-29310212-d8l5v)
84m         Normal    Starting                  node/ip-10-54-147-62.eu-central-1.compute.internal    
15m         Normal    DisruptionBlocked         node/ip-10-54-147-62.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/metadata-ir-29310210-7ffxx)
39m         Normal    DisruptionBlocked         node/ip-10-54-147-62.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/field-monitor-29310240-h6h4c)
17m         Normal    RegisteredNode            node/ip-10-54-147-62.eu-central-1.compute.internal    Node ip-10-54-147-62.eu-central-1.compute.internal event: Registered Node ip-10-54-147-62.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-147-62.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeTrunkInitiated        node/ip-10-54-147-62.eu-central-1.compute.internal    The node has trunk interface initialized successfully
9m42s       Normal    DisruptionBlocked         node/ip-10-54-147-62.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/metadata-ir-29310210-7ffxx)
29s         Normal    DisruptionBlocked         node/ip-10-54-147-62.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/metadata-ir-29310210-7ffxx)
4m34s       Normal    DisruptionBlocked         node/ip-10-54-147-62.eu-central-1.compute.internal    Node is nominated for a pending pod
26m         Normal    DisruptionBlocked         node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-mpcv2-results-partial-566687589b-pgxp4)
30m         Normal    DisruptionBlocked         node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-pcp-metadata-844d46b877-s72gf)
16m         Normal    DisruptionBlocked         node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-pcp-lookup-6f4f4c54bd-762z7)
20m         Normal    DisruptionBlocked         node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-face-auth-reports-8698c869d6r7g56)
85m         Normal    DisruptionBlocked         node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-selfie-metadata-5c8cbbd5dd-jk9cn)
50m         Normal    DisruptionBlocked         node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-mpcv2-results-774bc44d49-fx64p)
84m         Normal    Starting                  node/ip-10-54-147-67.eu-central-1.compute.internal    
17m         Normal    RegisteredNode            node/ip-10-54-147-67.eu-central-1.compute.internal    Node ip-10-54-147-67.eu-central-1.compute.internal event: Registered Node ip-10-54-147-67.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-147-67.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeTrunkInitiated        node/ip-10-54-147-67.eu-central-1.compute.internal    The node has trunk interface initialized successfully
9m42s       Normal    DisruptionBlocked         node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-face-auth-reports-8698c869d6r7g56)
11m         Normal    DisruptionBlocked         node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-pcp-metadata-844d46b877-s72gf)
29s         Normal    DisruptionBlocked         node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-selfie-metadata-5c8cbbd5dd-jk9cn)
6m37s       Normal    DisruptionBlocked         node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-pcp-metadata-844d46b877-s72gf)
4m34s       Normal    DisruptionBlocked         node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-face-auth-reports-8698c869d6r7g56)
2m31s       Normal    DisruptionBlocked         node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-pcp-lookup-6f4f4c54bd-762z7)
18m         Normal    DisruptionBlocked         node/ip-10-54-147-76.eu-central-1.compute.internal    (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/worker-face-capture-controller-29310268-qx96n)
84m         Normal    Starting                  node/ip-10-54-147-76.eu-central-1.compute.internal    
40m         Normal    DisruptionBlocked         node/ip-10-54-147-76.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/orb-capture-monitor-29310240-nbclt)
17m         Normal    RegisteredNode            node/ip-10-54-147-76.eu-central-1.compute.internal    Node ip-10-54-147-76.eu-central-1.compute.internal event: Registered Node ip-10-54-147-76.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-147-76.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeTrunkInitiated        node/ip-10-54-147-76.eu-central-1.compute.internal    The node has trunk interface initialized successfully
14m         Normal    DisruptionTerminating     node/ip-10-54-147-76.eu-central-1.compute.internal    Disrupting Node: Drifted/Delete
14m         Warning   FailedDraining            node/ip-10-54-147-76.eu-central-1.compute.internal    Failed to drain node, 15 pods are waiting to be evicted
13m         Warning   FailedDraining            node/ip-10-54-147-76.eu-central-1.compute.internal    Failed to drain node, 1 pods are waiting to be evicted
13m         Warning   InstanceTerminating       node/ip-10-54-147-76.eu-central-1.compute.internal    Instance is terminating
13m         Normal    DisruptionBlocked         node/ip-10-54-147-76.eu-central-1.compute.internal    Node is deleting or marked for deletion
13m         Normal    NodeNotReady              node/ip-10-54-147-76.eu-central-1.compute.internal    Node ip-10-54-147-76.eu-central-1.compute.internal status is now: NodeNotReady
13m         Normal    MemoryPressure            node/ip-10-54-147-76.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DiskPressure              node/ip-10-54-147-76.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    PIDPressure               node/ip-10-54-147-76.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    Ready                     node/ip-10-54-147-76.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DeletingNode              node/ip-10-54-147-76.eu-central-1.compute.internal    Deleting node ip-10-54-147-76.eu-central-1.compute.internal because it does not exist in the cloud provider
12m         Normal    RemovingNode              node/ip-10-54-147-76.eu-central-1.compute.internal    Node ip-10-54-147-76.eu-central-1.compute.internal event: Removing Node ip-10-54-147-76.eu-central-1.compute.internal from Controller
4m1s        Normal    Starting                  node/ip-10-54-148-185.eu-central-1.compute.internal   Starting kubelet.
4m1s        Warning   InvalidDiskCapacity       node/ip-10-54-148-185.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
4m          Normal    NodeHasSufficientMemory   node/ip-10-54-148-185.eu-central-1.compute.internal   Node ip-10-54-148-185.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
4m          Normal    NodeHasNoDiskPressure     node/ip-10-54-148-185.eu-central-1.compute.internal   Node ip-10-54-148-185.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
4m          Normal    NodeHasSufficientPID      node/ip-10-54-148-185.eu-central-1.compute.internal   Node ip-10-54-148-185.eu-central-1.compute.internal status is now: NodeHasSufficientPID
4m          Normal    NodeAllocatableEnforced   node/ip-10-54-148-185.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
3m57s       Normal    Synced                    node/ip-10-54-148-185.eu-central-1.compute.internal   Node synced successfully
3m53s       Normal    RegisteredNode            node/ip-10-54-148-185.eu-central-1.compute.internal   Node ip-10-54-148-185.eu-central-1.compute.internal event: Registered Node ip-10-54-148-185.eu-central-1.compute.internal in Controller
3m52s       Normal    DisruptionBlocked         node/ip-10-54-148-185.eu-central-1.compute.internal   Node isn't initialized
3m51s       Normal    Starting                  node/ip-10-54-148-185.eu-central-1.compute.internal   
3m46s       Normal    ControllerVersionNotice   node/ip-10-54-148-185.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
3m45s       Normal    NodeReady                 node/ip-10-54-148-185.eu-central-1.compute.internal   Node ip-10-54-148-185.eu-central-1.compute.internal status is now: NodeReady
3m45s       Normal    Ready                     node/ip-10-54-148-185.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
3m42s       Normal    NodeTrunkInitiated        node/ip-10-54-148-185.eu-central-1.compute.internal   The node has trunk interface initialized successfully
110s        Normal    DisruptionBlocked         node/ip-10-54-148-185.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/worker-pcnet-controller-29310284-tnw65)
19m         Normal    Starting                  node/ip-10-54-148-79.eu-central-1.compute.internal    Starting kubelet.
19m         Warning   InvalidDiskCapacity       node/ip-10-54-148-79.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
19m         Normal    NodeHasSufficientMemory   node/ip-10-54-148-79.eu-central-1.compute.internal    Node ip-10-54-148-79.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
19m         Normal    NodeHasNoDiskPressure     node/ip-10-54-148-79.eu-central-1.compute.internal    Node ip-10-54-148-79.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
19m         Normal    NodeHasSufficientPID      node/ip-10-54-148-79.eu-central-1.compute.internal    Node ip-10-54-148-79.eu-central-1.compute.internal status is now: NodeHasSufficientPID
19m         Normal    NodeAllocatableEnforced   node/ip-10-54-148-79.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
19m         Normal    Synced                    node/ip-10-54-148-79.eu-central-1.compute.internal    Node synced successfully
19m         Normal    RegisteredNode            node/ip-10-54-148-79.eu-central-1.compute.internal    Node ip-10-54-148-79.eu-central-1.compute.internal event: Registered Node ip-10-54-148-79.eu-central-1.compute.internal in Controller
19m         Normal    Starting                  node/ip-10-54-148-79.eu-central-1.compute.internal    
19m         Normal    ControllerVersionNotice   node/ip-10-54-148-79.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
18m         Warning   Unsupported               node/ip-10-54-148-79.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
19m         Normal    NodeReady                 node/ip-10-54-148-79.eu-central-1.compute.internal    Node ip-10-54-148-79.eu-central-1.compute.internal status is now: NodeReady
19m         Normal    Ready                     node/ip-10-54-148-79.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    RegisteredNode            node/ip-10-54-148-79.eu-central-1.compute.internal    Node ip-10-54-148-79.eu-central-1.compute.internal event: Registered Node ip-10-54-148-79.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-148-79.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
3m38s       Warning   Unsupported               node/ip-10-54-148-79.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
19m         Normal    Starting                  node/ip-10-54-149-158.eu-central-1.compute.internal   Starting kubelet.
19m         Warning   InvalidDiskCapacity       node/ip-10-54-149-158.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
19m         Normal    NodeHasSufficientMemory   node/ip-10-54-149-158.eu-central-1.compute.internal   Node ip-10-54-149-158.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
19m         Normal    NodeHasNoDiskPressure     node/ip-10-54-149-158.eu-central-1.compute.internal   Node ip-10-54-149-158.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
19m         Normal    NodeHasSufficientPID      node/ip-10-54-149-158.eu-central-1.compute.internal   Node ip-10-54-149-158.eu-central-1.compute.internal status is now: NodeHasSufficientPID
19m         Normal    NodeAllocatableEnforced   node/ip-10-54-149-158.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
19m         Normal    Synced                    node/ip-10-54-149-158.eu-central-1.compute.internal   Node synced successfully
19m         Normal    RegisteredNode            node/ip-10-54-149-158.eu-central-1.compute.internal   Node ip-10-54-149-158.eu-central-1.compute.internal event: Registered Node ip-10-54-149-158.eu-central-1.compute.internal in Controller
19m         Normal    Starting                  node/ip-10-54-149-158.eu-central-1.compute.internal   
19m         Normal    ControllerVersionNotice   node/ip-10-54-149-158.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
18m         Warning   Unsupported               node/ip-10-54-149-158.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
19m         Normal    NodeReady                 node/ip-10-54-149-158.eu-central-1.compute.internal   Node ip-10-54-149-158.eu-central-1.compute.internal status is now: NodeReady
19m         Normal    Ready                     node/ip-10-54-149-158.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    RegisteredNode            node/ip-10-54-149-158.eu-central-1.compute.internal   Node ip-10-54-149-158.eu-central-1.compute.internal event: Registered Node ip-10-54-149-158.eu-central-1.compute.internal in Controller
17m         Normal    ControllerVersionNotice   node/ip-10-54-149-158.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
9m4s        Warning   Unsupported               node/ip-10-54-149-158.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
10m         Normal    NodeNotSchedulable        node/ip-10-54-149-158.eu-central-1.compute.internal   Node ip-10-54-149-158.eu-central-1.compute.internal status is now: NodeNotSchedulable
9m4s        Normal    NodeNotReady              node/ip-10-54-149-158.eu-central-1.compute.internal   Node ip-10-54-149-158.eu-central-1.compute.internal status is now: NodeNotReady
9m4s        Normal    MemoryPressure            node/ip-10-54-149-158.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m4s        Normal    DiskPressure              node/ip-10-54-149-158.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m4s        Normal    PIDPressure               node/ip-10-54-149-158.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m4s        Normal    Ready                     node/ip-10-54-149-158.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m59s       Normal    DeletingNode              node/ip-10-54-149-158.eu-central-1.compute.internal   Deleting node ip-10-54-149-158.eu-central-1.compute.internal because it does not exist in the cloud provider
8m58s       Normal    RemovingNode              node/ip-10-54-149-158.eu-central-1.compute.internal   Node ip-10-54-149-158.eu-central-1.compute.internal event: Removing Node ip-10-54-149-158.eu-central-1.compute.internal from Controller
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                          NAME                                   MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                 cluster-monitoring-pdb                 N/A             1                 1                     297d
dashboard-dead-letter-monitoring   dashboard-dead-letter-monitoring-pdb   N/A             1                 1                     98d
iris-registration-app              iris-registration-app-pdb              N/A             1                 1                     255d
karpenter                          karpenter                              N/A             1                 1                     2y242d
kube-system                        coredns                                N/A             1                 1                     624d
kube-system                        ebs-csi-controller                     N/A             1                 1                     2y210d
kyverno                            kyverno-admission-controller           1               N/A               2                     606d
labeling-management                labeling-management-pdb                N/A             1                 1                     87d
labelling-platform-api             labelling-platform-api-pdb             N/A             1                 1                     294d
labelling-platform-frontend        labelling-platform-frontend-pdb        N/A             1                 1                     294d
pii-deletion-service               pii-deletion-service-pdb               N/A             1                 1                     214d
```

Pods with Karpenter.sh/Do-Not-Disrupt Annotation
```
ip-10-54-145-124.eu-central-1.compute.internal  orb-manager-76b658bb4b-mgqdq                                     (analysis-orb-context)
ip-10-54-145-124.eu-central-1.compute.internal  worker-side-controller-29310284-bc72s                            (worker)
ip-10-54-145-206.eu-central-1.compute.internal  redis-master-0                                                   (analysis-orb-context)
ip-10-54-146-165.eu-central-1.compute.internal  postgresql-0                                                     (analysis-orb-context)
ip-10-54-146-63.eu-central-1.compute.internal   iris-mpcv2-29309760-hsfvj                                        (ai-snowflake-workers)
ip-10-54-146-63.eu-central-1.compute.internal   mongodb-export-machinelabelv2-face-auth-attempts-7c7476544xlc6z  (ai-snowflake-workers)
ip-10-54-146-63.eu-central-1.compute.internal   mongodb-machinelabelv2-selfie-metadata-29309400-5w7rc            (ai-snowflake-workers)
ip-10-54-146-63.eu-central-1.compute.internal   orb-data-service-84c6749d9f-fs5sz                                (analysis-orb-context)
ip-10-54-146-63.eu-central-1.compute.internal   worker-face-engine-controller-29310282-hl576                     (worker)
ip-10-54-146-63.eu-central-1.compute.internal   worker-iris-controller-29310278-996mx                            (worker)
ip-10-54-146-63.eu-central-1.compute.internal   worker-iris-controller-29310280-xb8sq                            (worker)
ip-10-54-146-63.eu-central-1.compute.internal   worker-irnet-labels-controller-29310284-cjcvj                    (worker)
ip-10-54-146-63.eu-central-1.compute.internal   worker-side-controller-29310282-fsgsv                            (worker)
ip-10-54-147-229.eu-central-1.compute.internal  orb-capture-transform-29310285-gxp7w                             (ai-snowflake-workers)
ip-10-54-147-229.eu-central-1.compute.internal  worker-rgbnet-controller-29310286-ndgrr                          (worker)
ip-10-54-147-229.eu-central-1.compute.internal  worker-side-controller-29310286-96qcp                            (worker)
ip-10-54-147-62.eu-central-1.compute.internal   bioid-inventory-clean-29310000-c95hz                             (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   bioid-metadata-sync-29310275-zdfnz                               (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   bioid-metadata-sync-29310280-qsd5c                               (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   biometrics-inventory-clean-29310000-s9vl7                        (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   centralisation-cleanup-signup-flow-exporter-29310180-ctvxt       (worker)
ip-10-54-147-62.eu-central-1.compute.internal   face-auth-process-29309760-s9hl2                                 (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   field-monitor-29310240-h6h4c                                     (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   metadata-bioid-cleanup-29310090-snwqj                            (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   metadata-ir-29310210-7ffxx                                       (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   metadata-ir-cleanup-29310090-sl6nh                               (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   mongodb-machinelabelv2-face-auth-attempts-29310135-s9fb5         (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   mongodb-machinelabelv2-face-auth-attempts-29310255-bx5t4         (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   mongodb-machinelabelv2-face-auth-reports-29310135-q8bnd          (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   mongodb-machinelabelv2-face-auth-reports-29310255-dhh64          (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   mongodb-machinelabelv2-pcp-metadata-29309400-4rt7l               (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   mongodb-mpcv2-results-partial-29309760-n4frt                     (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   normalizediris-m-pii-signup-flow-exporter-29310120-bbsr6         (worker)
ip-10-54-147-62.eu-central-1.compute.internal   snowflake-monitor-29310240-mqhqv                                 (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   tdp-pcp-inventory-29309760-2spqc                                 (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   worker-irnet-labels-controller-29310282-7ksgh                    (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-irnet-labels-controller-29310286-9p4bt                    (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-orb-signup-controller-29310278-7x6tv                      (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-orb-signup-controller-29310280-qm4qf                      (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-orb-signup-controller-29310282-zhws4                      (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-rgbnet-controller-29310282-4nl7k                          (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-rgbnet-controller-29310284-5gkm2                          (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-signup-flow-controller-29310282-mth8g                     (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-signup-flow-controller-29310284-6zrhq                     (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-signup-flow-controller-29310286-k7qhf                     (worker)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-machinelabelv2-face-auth-reports-8698c869d6r7g56  (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-machinelabelv2-pcp-lookup-6f4f4c54bd-762z7        (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-machinelabelv2-pcp-metadata-844d46b877-s72gf      (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-machinelabelv2-selfie-metadata-5c8cbbd5dd-jk9cn   (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-mpcv2-results-774bc44d49-fx64p                    (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-mpcv2-results-partial-566687589b-pgxp4            (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-orb-reauth-75b6f76d4-fvqvx                        (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-orb-signup-f4bfdb89c-vxv7z                        (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-exporter-debugger-29309100-m7k92                         (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   worker-contact-lens-controller-29310282-zmvxx                    (worker)
ip-10-54-147-67.eu-central-1.compute.internal   worker-face-capture-controller-29310278-8fqqb                    (worker)
ip-10-54-147-67.eu-central-1.compute.internal   worker-face-capture-controller-29310280-26v8b                    (worker)
ip-10-54-147-67.eu-central-1.compute.internal   worker-face-capture-controller-29310282-k6l8h                    (worker)
ip-10-54-147-67.eu-central-1.compute.internal   worker-iris-controller-29310282-r952z                            (worker)
ip-10-54-147-67.eu-central-1.compute.internal   worker-iris-controller-29310286-hmlkw                            (worker)
ip-10-54-147-67.eu-central-1.compute.internal   worker-irnet-controller-29310282-gmwk4                           (worker)
ip-10-54-147-67.eu-central-1.compute.internal   worker-pcnet-controller-29310278-8q2z8                           (worker)
ip-10-54-147-67.eu-central-1.compute.internal   worker-pcnet-controller-29310280-z57nc                           (worker)
ip-10-54-147-67.eu-central-1.compute.internal   worker-pcnet-controller-29310282-9lpn4                           (worker)
ip-10-54-148-185.eu-central-1.compute.internal  bioid-metadata-sync-29310285-272wd                               (ai-snowflake-workers)
ip-10-54-148-185.eu-central-1.compute.internal  face-capture-replication-29310285-9gjzz                          (data-collection-analysis)
ip-10-54-148-185.eu-central-1.compute.internal  orb-capture-transform-29310282-5qn4z                             (ai-snowflake-workers)
ip-10-54-148-185.eu-central-1.compute.internal  worker-contact-lens-controller-29310284-2wggg                    (worker)
ip-10-54-148-185.eu-central-1.compute.internal  worker-face-capture-controller-29310284-lw5sq                    (worker)
ip-10-54-148-185.eu-central-1.compute.internal  worker-face-engine-controller-29310284-j4v54                     (worker)
ip-10-54-148-185.eu-central-1.compute.internal  worker-irnet-controller-29310284-dg8zb                           (worker)
ip-10-54-148-185.eu-central-1.compute.internal  worker-orb-signup-controller-29310284-jgvds                      (worker)
ip-10-54-148-185.eu-central-1.compute.internal  worker-pcnet-controller-29310284-tnw65                           (worker)
```

Pods Tolerating karpenter.sh/disrupted
```
```

Static Pods
```
```

Cluster version up to date - no pluto apis detection rquired

Generated on: Tue Sep 23 10:46:32 CEST 2025
