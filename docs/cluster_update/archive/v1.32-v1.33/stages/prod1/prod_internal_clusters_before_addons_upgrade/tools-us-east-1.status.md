# Cluster recon for tfh-internal-tools-infra,us-east-1,tools-us-east-1,tunnel-vpc-internal-tools-us-east-1

TFH EKS login...
```console
2025/09/19 11:36:41 INFO Logging into AWS
2025/09/19 11:36:41 INFO Token found and valid
[?25l[?1049h[2J[H[?25l[?2004h[H                                                
  1 item                                        
                                                
                                                
                                                
                                                
  ↑/k up • ↓/j down • / filter • q quit • ? more[7;H[Htunnel-vpc-internal-tools-us-east-1[J[1;H[2K[?2004l[?25h[?1002l[?1003l[?1006l[?1049l[?25h2025/09/19 11:36:48 INFO Switch WARP Virtual Network to name=tunnel-vpc-internal-tools-us-east-1 id=b1421f21-2608-4c25-b450-34924057a237
2025/09/19 11:36:49 INFO Active WARP Virtual Network id=b1421f21-2608-4c25-b450-34924057a237
Updated context tfh-tools-us-east-1 in /Users/lukasz.glowacki/.kube/config
```

Current version: 1.32
Next version: 1.33

Checking addons...
```
aws-ebs-csi-driver      v1.39.0-eksbuild.1
coredns                 v1.11.4-eksbuild.10
eks-pod-identity-agent  v1.3.5-eksbuild.2
kube-proxy              v1.32.0-eksbuild.2
snapshot-controller     v8.2.0-eksbuild.1
vpc-cni                 v1.19.2-eksbuild.5
```

Insights for the upcoming update to 1.33
```json
{
    "insights": [
        {
            "id": "e266b249-d0bc-4a0b-ad44-86d6994e93e6",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-19T07:04:04+02:00",
            "lastTransitionTime": "2025-09-05T19:49:04+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "e89ff7b2-b965-4a24-bb1d-0e459e4a7331",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-19T07:04:04+02:00",
            "lastTransitionTime": "2025-09-13T09:09:03+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "fa016f42-7525-4150-be2a-88fd5edbf9a9",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-19T07:04:15+02:00",
            "lastTransitionTime": "2025-07-29T02:49:04+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "1218afe7-139f-4664-a669-d7e27d12c5bb",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-19T07:04:15+02:00",
            "lastTransitionTime": "2024-12-20T23:54:09+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "6aeb5818-a434-4ee0-9a27-485a197cfd81",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-19T07:04:04+02:00",
            "lastTransitionTime": "2025-09-05T19:49:04+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        }
    ]
}
```

Show full cluster description:
```json
{
    "cluster": {
        "name": "tools-us-east-1",
        "arn": "arn:aws:eks:us-east-1:507152310572:cluster/tools-us-east-1",
        "createdAt": "2023-01-06T11:45:08.487000+01:00",
        "version": "1.32",
        "endpoint": "https://6B7AE0A019452C90A10AD38C7AFE9B84.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::507152310572:role/eks-cluster-tools-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-091a7609af9dd00c0",
                "subnet-084ab37af5bf57ff7",
                "subnet-0d263dce1619e709d"
            ],
            "securityGroupIds": [
                "sg-0c8860fc9e4a1dd0c"
            ],
            "clusterSecurityGroupId": "sg-0d791a60aeb1b122c",
            "vpcId": "vpc-074e2221253aa1446",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/6B7AE0A019452C90A10AD38C7AFE9B84"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1ERXdOakV3TlRFME9Wb1hEVE16TURFd016RXdOVEUwT1Zvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTVNRClZzOUJsUm5zRlAweVp4ZTN6TC9PMUxwS0pnRkJFb1JMR0w1VkRTNFV6OURsRVQwUWRyMTQxdFJTbHNid1FFeVUKRmJxY0dGY2o0NVhZek1QaTg4WEhwQ25kTUhjY3dUdkFPbko5TUtYVHMwYk1tL1pNVWFlL3dFNDBJVnBmVlVudgpyeFN6WnhMWUdiUzY0eVE2TFNzNTh3TDBac0JhcmVEMkpKb2h3N2gvRWR0M0E4alBIMjEydG9LMGgvWlc5R3BMCndxZVNhY3pxKzNKeXpFRjlFUWEwZ3pFVS9Kb1VHWXR5T2w1NWQyNHVGc1lFU0JNaU1qVUpvbnF1L2U2NFlHRmQKRXY3eFArM3Jxcy9CUEtjUFc1ejd4MW90VEtZRERoQTRnNnhqTjVoZ2ZrR1VYTEtib3QyOHh0UDVZU3pydlhXYgowVThDL2dPa0lyS3VUclhBRjNFQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZLTjVtOXNHWktyRlhuSXVia2tpbzJTZ21SNHpNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBS2tINjl5aUswcDB6TlRUVXdObQo0UzQ5aXpRY3dHMXZZaEhoMExYMEoxV1hDbmRYZDhUYVFFbDMzdVl3Qm1TR0ZiU0MwYzJnVDdna2huMk9rTFhlCkVMZDVTa3ZiMmhGSHpSMjVVV1JIQWI2RHNaM1JVL1ZobE5WR2xTSGtqeUpvbjY3VHhXbXR0T2ZVVndaZk9HLzUKTHkyK2NlQm5BWjNHUDBEYzhHZXQ2TkYvS2NHbkpIM0FJYXBjVENITGhIcitCMmZnUVdiYVZVUXVkcCtHMDYrRwoxR2V5Nzc0aXhoOU1YWG0zY1NJMnBITW56TDJyeU5ac0wvMkc0UmtnQjlxRDlEK01BOE01U29BYS9WTmRYeUZQClkxdjZZSHFlaFRFcHBsSHZ4L0d6U01NakpjeGJtWXZHT29WdlFCSkxuTjBsOEdBNVNxYm1JQ3VsYk9xT3dDUTYKdzZzPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "tools-us-east-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:507152310572:key/114792ea-ce55-4fc6-866e-d00b8957b96e"
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
NAME                           STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-0-101-136.ec2.internal   Ready    <none>   20m     v1.32.8-eks-99d6cc0   10.0.101.136   <none>        Amazon Linux 2                 5.10.240-238.966.amzn2.x86_64      containerd://1.7.27   
ip-10-0-101-140.ec2.internal   Ready    <none>   92s     v1.32.8-eks-99d6cc0   10.0.101.140   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-101-84.ec2.internal    Ready    <none>   16m     v1.32.8-eks-99d6cc0   10.0.101.84    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-101-89.ec2.internal    Ready    <none>   8d      v1.32.8-eks-99d6cc0   10.0.101.89    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-101-9.ec2.internal     Ready    <none>   114s    v1.32.8-eks-99d6cc0   10.0.101.9     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-96-144.ec2.internal    Ready    <none>   20m     v1.32.8-eks-99d6cc0   10.0.96.144    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-tools-us-east-1
ip-10-0-96-212.ec2.internal    Ready    <none>   20m     v1.32.8-eks-99d6cc0   10.0.96.212    <none>        Amazon Linux 2                 5.10.240-238.966.amzn2.x86_64      containerd://1.7.27   
ip-10-0-97-23.ec2.internal     Ready    <none>   38s     v1.32.8-eks-99d6cc0   10.0.97.23     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-98-199.ec2.internal    Ready    <none>   8d      v1.32.8-eks-99d6cc0   10.0.98.199    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-99-104.ec2.internal    Ready    <none>   7m31s   v1.32.8-eks-99d6cc0   10.0.99.104    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-99-225.ec2.internal    Ready    <none>   3m22s   v1.32.8-eks-99d6cc0   10.0.99.225    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-99-97.ec2.internal     Ready    <none>   19m     v1.32.8-eks-99d6cc0   10.0.99.97     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-tools-us-east-1
```

Nodes and their taints
```
NAME                           STATUS   ROLES    TAINTS
ip-10-0-101-136.ec2.internal   Ready    <none>   <none>
ip-10-0-101-140.ec2.internal   Ready    <none>   <none>
ip-10-0-101-84.ec2.internal    Ready    <none>   [map[effect:NoSchedule key:gpu-compile]]
ip-10-0-101-89.ec2.internal    Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-0-101-9.ec2.internal     Ready    <none>   <none>
ip-10-0-96-144.ec2.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-96-212.ec2.internal    Ready    <none>   <none>
ip-10-0-97-23.ec2.internal     Ready    <none>   <none>
ip-10-0-98-199.ec2.internal    Ready    <none>   <none>
ip-10-0-99-104.ec2.internal    Ready    <none>   <none>
ip-10-0-99-225.ec2.internal    Ready    <none>   <none>
ip-10-0-99-97.ec2.internal     Ready    <none>   [map[effect:NoExecute key:critical]]
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                              MESSAGE
14m         Normal    Finalized                 node                                Finalized karpenter.sh/termination
96s         Normal    Finalized                 node                                Finalized karpenter.sh/termination
6s          Normal    Starting                  node/ip-10-0-100-133.ec2.internal   Starting kubelet.
5s          Warning   InvalidDiskCapacity       node/ip-10-0-100-133.ec2.internal   invalid capacity 0 on image filesystem
5s          Normal    NodeHasSufficientMemory   node/ip-10-0-100-133.ec2.internal   Node ip-10-0-100-133.ec2.internal status is now: NodeHasSufficientMemory
5s          Normal    NodeHasNoDiskPressure     node/ip-10-0-100-133.ec2.internal   Node ip-10-0-100-133.ec2.internal status is now: NodeHasNoDiskPressure
5s          Normal    NodeHasSufficientPID      node/ip-10-0-100-133.ec2.internal   Node ip-10-0-100-133.ec2.internal status is now: NodeHasSufficientPID
5s          Normal    NodeAllocatableEnforced   node/ip-10-0-100-133.ec2.internal   Updated Node Allocatable limit across pods
1s          Normal    Synced                    node/ip-10-0-100-133.ec2.internal   Node synced successfully
1s          Normal    RegisteredNode            node/ip-10-0-100-133.ec2.internal   Node ip-10-0-100-133.ec2.internal event: Registered Node ip-10-0-100-133.ec2.internal in Controller
24m         Normal    Unconsolidatable          node/ip-10-0-100-210.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-100-210.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
15m         Normal    DisruptionBlocked         node/ip-10-0-100-210.ec2.internal   Node is nominated for a pending pod
14m         Normal    DisruptionBlocked         node/ip-10-0-100-210.ec2.internal   Node is nominated for a pending pod
14m         Normal    Unconsolidatable          node/ip-10-0-100-210.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
14m         Normal    DisruptionTerminating     node/ip-10-0-100-210.ec2.internal   Disrupting Node: Drifted/Delete
14m         Warning   FailedDraining            node/ip-10-0-100-210.ec2.internal   Failed to drain node, 4 pods are waiting to be evicted
13m         Warning   InstanceTerminating       node/ip-10-0-100-210.ec2.internal   Instance is terminating
12m         Normal    NodeNotReady              node/ip-10-0-100-210.ec2.internal   Node ip-10-0-100-210.ec2.internal status is now: NodeNotReady
12m         Normal    MemoryPressure            node/ip-10-0-100-210.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DiskPressure              node/ip-10-0-100-210.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    PIDPressure               node/ip-10-0-100-210.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    Ready                     node/ip-10-0-100-210.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    RemovingNode              node/ip-10-0-100-210.ec2.internal   Node ip-10-0-100-210.ec2.internal event: Removing Node ip-10-0-100-210.ec2.internal from Controller
24m         Normal    Unconsolidatable          node/ip-10-0-100-34.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-100-34.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-100-34.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
10m         Normal    DisruptionBlocked         node/ip-10-0-100-34.ec2.internal    Node is nominated for a pending pod
9m30s       Normal    DisruptionTerminating     node/ip-10-0-100-34.ec2.internal    Disrupting Node: Drifted/Delete
9m30s       Warning   FailedDraining            node/ip-10-0-100-34.ec2.internal    Failed to drain node, 7 pods are waiting to be evicted
8m11s       Warning   InstanceTerminating       node/ip-10-0-100-34.ec2.internal    Instance is terminating
7m56s       Normal    DisruptionBlocked         node/ip-10-0-100-34.ec2.internal    Node is deleting or marked for deletion
7m16s       Normal    RemovingNode              node/ip-10-0-100-34.ec2.internal    Node ip-10-0-100-34.ec2.internal event: Removing Node ip-10-0-100-34.ec2.internal from Controller
18m         Normal    Starting                  node/ip-10-0-100-94.ec2.internal    Starting kubelet.
18m         Warning   InvalidDiskCapacity       node/ip-10-0-100-94.ec2.internal    invalid capacity 0 on image filesystem
18m         Normal    NodeHasSufficientMemory   node/ip-10-0-100-94.ec2.internal    Node ip-10-0-100-94.ec2.internal status is now: NodeHasSufficientMemory
18m         Normal    NodeHasNoDiskPressure     node/ip-10-0-100-94.ec2.internal    Node ip-10-0-100-94.ec2.internal status is now: NodeHasNoDiskPressure
18m         Normal    NodeHasSufficientPID      node/ip-10-0-100-94.ec2.internal    Node ip-10-0-100-94.ec2.internal status is now: NodeHasSufficientPID
18m         Normal    NodeAllocatableEnforced   node/ip-10-0-100-94.ec2.internal    Updated Node Allocatable limit across pods
18m         Normal    Synced                    node/ip-10-0-100-94.ec2.internal    Node synced successfully
18m         Normal    RegisteredNode            node/ip-10-0-100-94.ec2.internal    Node ip-10-0-100-94.ec2.internal event: Registered Node ip-10-0-100-94.ec2.internal in Controller
18m         Normal    Starting                  node/ip-10-0-100-94.ec2.internal    
18m         Normal    ControllerVersionNotice   node/ip-10-0-100-94.ec2.internal    The node is managed by VPC resource controller version v1.7.9
8m56s       Warning   Unsupported               node/ip-10-0-100-94.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
18m         Normal    NodeReady                 node/ip-10-0-100-94.ec2.internal    Node ip-10-0-100-94.ec2.internal status is now: NodeReady
18m         Normal    Ready                     node/ip-10-0-100-94.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
9m1s        Normal    NodeNotReady              node/ip-10-0-100-94.ec2.internal    Node ip-10-0-100-94.ec2.internal status is now: NodeNotReady
9m1s        Normal    MemoryPressure            node/ip-10-0-100-94.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m1s        Normal    DiskPressure              node/ip-10-0-100-94.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m1s        Normal    PIDPressure               node/ip-10-0-100-94.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m1s        Normal    Ready                     node/ip-10-0-100-94.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m55s       Normal    DeletingNode              node/ip-10-0-100-94.ec2.internal    Deleting node ip-10-0-100-94.ec2.internal because it does not exist in the cloud provider
8m51s       Normal    RemovingNode              node/ip-10-0-100-94.ec2.internal    Node ip-10-0-100-94.ec2.internal event: Removing Node ip-10-0-100-94.ec2.internal from Controller
29m         Normal    Unconsolidatable          node/ip-10-0-101-116.ec2.internal   NodePool "main-arm64" has non-empty consolidation disabled
20m         Normal    DisruptionBlocked         node/ip-10-0-101-116.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-autoscaler/cluster-autoscaler-aws-cluster-autoscaler)
17m         Normal    Unconsolidatable          node/ip-10-0-101-116.ec2.internal   NodePool "main-arm64" has non-empty consolidation disabled
16m         Normal    DisruptionBlocked         node/ip-10-0-101-116.ec2.internal   Node is deleting or marked for deletion
16m         Normal    DisruptionTerminating     node/ip-10-0-101-116.ec2.internal   Disrupting Node: Drifted/Delete
16m         Warning   FailedDraining            node/ip-10-0-101-116.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
15m         Warning   InstanceTerminating       node/ip-10-0-101-116.ec2.internal   Instance is terminating
14m         Normal    RemovingNode              node/ip-10-0-101-116.ec2.internal   Node ip-10-0-101-116.ec2.internal event: Removing Node ip-10-0-101-116.ec2.internal from Controller
20m         Normal    Starting                  node/ip-10-0-101-136.ec2.internal   Starting kubelet.
20m         Warning   InvalidDiskCapacity       node/ip-10-0-101-136.ec2.internal   invalid capacity 0 on image filesystem
20m         Warning   CgroupV1                  node/ip-10-0-101-136.ec2.internal   cgroup v1 support is in maintenance mode, please migrate to cgroup v2
20m         Normal    NodeHasSufficientMemory   node/ip-10-0-101-136.ec2.internal   Node ip-10-0-101-136.ec2.internal status is now: NodeHasSufficientMemory
20m         Normal    NodeHasNoDiskPressure     node/ip-10-0-101-136.ec2.internal   Node ip-10-0-101-136.ec2.internal status is now: NodeHasNoDiskPressure
20m         Normal    NodeHasSufficientPID      node/ip-10-0-101-136.ec2.internal   Node ip-10-0-101-136.ec2.internal status is now: NodeHasSufficientPID
20m         Normal    NodeAllocatableEnforced   node/ip-10-0-101-136.ec2.internal   Updated Node Allocatable limit across pods
20m         Normal    Synced                    node/ip-10-0-101-136.ec2.internal   Node synced successfully
20m         Normal    RegisteredNode            node/ip-10-0-101-136.ec2.internal   Node ip-10-0-101-136.ec2.internal event: Registered Node ip-10-0-101-136.ec2.internal in Controller
20m         Normal    Starting                  node/ip-10-0-101-136.ec2.internal   
19m         Normal    ControllerVersionNotice   node/ip-10-0-101-136.ec2.internal   The node is managed by VPC resource controller version v1.7.9
19m         Normal    NodeReady                 node/ip-10-0-101-136.ec2.internal   Node ip-10-0-101-136.ec2.internal status is now: NodeReady
19m         Normal    Ready                     node/ip-10-0-101-136.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    NodeTrunkInitiated        node/ip-10-0-101-136.ec2.internal   The node has trunk interface initialized successfully
98s         Normal    Starting                  node/ip-10-0-101-140.ec2.internal   Starting kubelet.
98s         Warning   InvalidDiskCapacity       node/ip-10-0-101-140.ec2.internal   invalid capacity 0 on image filesystem
97s         Normal    NodeHasSufficientMemory   node/ip-10-0-101-140.ec2.internal   Node ip-10-0-101-140.ec2.internal status is now: NodeHasSufficientMemory
97s         Normal    NodeHasNoDiskPressure     node/ip-10-0-101-140.ec2.internal   Node ip-10-0-101-140.ec2.internal status is now: NodeHasNoDiskPressure
97s         Normal    NodeHasSufficientPID      node/ip-10-0-101-140.ec2.internal   Node ip-10-0-101-140.ec2.internal status is now: NodeHasSufficientPID
98s         Normal    NodeAllocatableEnforced   node/ip-10-0-101-140.ec2.internal   Updated Node Allocatable limit across pods
95s         Normal    Synced                    node/ip-10-0-101-140.ec2.internal   Node synced successfully
94s         Normal    DisruptionBlocked         node/ip-10-0-101-140.ec2.internal   Node isn't initialized
91s         Normal    RegisteredNode            node/ip-10-0-101-140.ec2.internal   Node ip-10-0-101-140.ec2.internal event: Registered Node ip-10-0-101-140.ec2.internal in Controller
86s         Normal    Starting                  node/ip-10-0-101-140.ec2.internal   
72s         Normal    ControllerVersionNotice   node/ip-10-0-101-140.ec2.internal   The node is managed by VPC resource controller version v1.7.9
71s         Normal    NodeReady                 node/ip-10-0-101-140.ec2.internal   Node ip-10-0-101-140.ec2.internal status is now: NodeReady
71s         Normal    Ready                     node/ip-10-0-101-140.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
67s         Normal    NodeTrunkInitiated        node/ip-10-0-101-140.ec2.internal   The node has trunk interface initialized successfully
43s         Normal    Unconsolidatable          node/ip-10-0-101-140.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-101-161.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-101-161.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-101-161.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
13m         Normal    DisruptionBlocked         node/ip-10-0-101-161.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
3m53s       Normal    DisruptionBlocked         node/ip-10-0-101-161.ec2.internal   Node is deleting or marked for deletion
5m54s       Normal    DisruptionTerminating     node/ip-10-0-101-161.ec2.internal   Disrupting Node: Drifted/Delete
5m54s       Warning   FailedDraining            node/ip-10-0-101-161.ec2.internal   Failed to drain node, 10 pods are waiting to be evicted
4m29s       Warning   InstanceTerminating       node/ip-10-0-101-161.ec2.internal   Instance is terminating
3m41s       Normal    RemovingNode              node/ip-10-0-101-161.ec2.internal   Node ip-10-0-101-161.ec2.internal event: Removing Node ip-10-0-101-161.ec2.internal from Controller
26m         Normal    Unconsolidatable          node/ip-10-0-101-195.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-101-195.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-101-195.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
9m41s       Normal    DisruptionBlocked         node/ip-10-0-101-195.ec2.internal   Node is deleting or marked for deletion
11m         Normal    DisruptionTerminating     node/ip-10-0-101-195.ec2.internal   Disrupting Node: Drifted/Delete
11m         Warning   FailedDraining            node/ip-10-0-101-195.ec2.internal   Failed to drain node, 4 pods are waiting to be evicted
10m         Warning   InstanceTerminating       node/ip-10-0-101-195.ec2.internal   Instance is terminating
9m32s       Normal    NodeNotReady              node/ip-10-0-101-195.ec2.internal   Node ip-10-0-101-195.ec2.internal status is now: NodeNotReady
9m32s       Normal    MemoryPressure            node/ip-10-0-101-195.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m32s       Normal    DiskPressure              node/ip-10-0-101-195.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m32s       Normal    PIDPressure               node/ip-10-0-101-195.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m32s       Normal    Ready                     node/ip-10-0-101-195.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m21s       Normal    RemovingNode              node/ip-10-0-101-195.ec2.internal   Node ip-10-0-101-195.ec2.internal event: Removing Node ip-10-0-101-195.ec2.internal from Controller
14m         Warning   Unsupported               node/ip-10-0-101-214.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    NodeNotSchedulable        node/ip-10-0-101-214.ec2.internal   Node ip-10-0-101-214.ec2.internal status is now: NodeNotSchedulable
12m         Normal    NodeNotReady              node/ip-10-0-101-214.ec2.internal   Node ip-10-0-101-214.ec2.internal status is now: NodeNotReady
12m         Normal    MemoryPressure            node/ip-10-0-101-214.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DiskPressure              node/ip-10-0-101-214.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    PIDPressure               node/ip-10-0-101-214.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    Ready                     node/ip-10-0-101-214.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DeletingNode              node/ip-10-0-101-214.ec2.internal   Deleting node ip-10-0-101-214.ec2.internal because it does not exist in the cloud provider
11m         Normal    RemovingNode              node/ip-10-0-101-214.ec2.internal   Node ip-10-0-101-214.ec2.internal event: Removing Node ip-10-0-101-214.ec2.internal from Controller
16m         Normal    Starting                  node/ip-10-0-101-84.ec2.internal    Starting kubelet.
16m         Warning   InvalidDiskCapacity       node/ip-10-0-101-84.ec2.internal    invalid capacity 0 on image filesystem
16m         Normal    NodeHasSufficientMemory   node/ip-10-0-101-84.ec2.internal    Node ip-10-0-101-84.ec2.internal status is now: NodeHasSufficientMemory
16m         Normal    NodeHasNoDiskPressure     node/ip-10-0-101-84.ec2.internal    Node ip-10-0-101-84.ec2.internal status is now: NodeHasNoDiskPressure
16m         Normal    NodeHasSufficientPID      node/ip-10-0-101-84.ec2.internal    Node ip-10-0-101-84.ec2.internal status is now: NodeHasSufficientPID
16m         Normal    NodeAllocatableEnforced   node/ip-10-0-101-84.ec2.internal    Updated Node Allocatable limit across pods
16m         Normal    Synced                    node/ip-10-0-101-84.ec2.internal    Node synced successfully
16m         Normal    RegisteredNode            node/ip-10-0-101-84.ec2.internal    Node ip-10-0-101-84.ec2.internal event: Registered Node ip-10-0-101-84.ec2.internal in Controller
16m         Normal    DisruptionBlocked         node/ip-10-0-101-84.ec2.internal    Node isn't initialized
16m         Normal    Starting                  node/ip-10-0-101-84.ec2.internal    
16m         Normal    ControllerVersionNotice   node/ip-10-0-101-84.ec2.internal    The node is managed by VPC resource controller version v1.7.9
16m         Normal    NodeReady                 node/ip-10-0-101-84.ec2.internal    Node ip-10-0-101-84.ec2.internal status is now: NodeReady
16m         Normal    Ready                     node/ip-10-0-101-84.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
16m         Normal    NodeTrunkInitiated        node/ip-10-0-101-84.ec2.internal    The node has trunk interface initialized successfully
15m         Normal    Unconsolidatable          node/ip-10-0-101-84.ec2.internal    NodePool "gpu-compile" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-101-84.ec2.internal    NodePool "gpu-compile" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-101-89.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-101-89.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-101-89.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
6m55s       Normal    DisruptionBlocked         node/ip-10-0-101-89.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=merge-a-saurus/merge-a-saurus-pdb)
10m         Normal    DisruptionBlocked         node/ip-10-0-101-89.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=policy-bot/policy-bot-pdb)
4m33s       Normal    DisruptionBlocked         node/ip-10-0-101-89.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
11s         Normal    DisruptionBlocked         node/ip-10-0-101-89.ec2.internal    Node is deleting or marked for deletion
84s         Normal    DisruptionTerminating     node/ip-10-0-101-89.ec2.internal    Disrupting Node: Drifted/Replace
84s         Warning   FailedDraining            node/ip-10-0-101-89.ec2.internal    Failed to drain node, 25 pods are waiting to be evicted
36s         Warning   InstanceTerminating       node/ip-10-0-101-89.ec2.internal    Instance is terminating
2m          Normal    Starting                  node/ip-10-0-101-9.ec2.internal     Starting kubelet.
2m          Warning   InvalidDiskCapacity       node/ip-10-0-101-9.ec2.internal     invalid capacity 0 on image filesystem
2m          Normal    NodeHasSufficientMemory   node/ip-10-0-101-9.ec2.internal     Node ip-10-0-101-9.ec2.internal status is now: NodeHasSufficientMemory
2m          Normal    NodeHasNoDiskPressure     node/ip-10-0-101-9.ec2.internal     Node ip-10-0-101-9.ec2.internal status is now: NodeHasNoDiskPressure
2m          Normal    NodeHasSufficientPID      node/ip-10-0-101-9.ec2.internal     Node ip-10-0-101-9.ec2.internal status is now: NodeHasSufficientPID
2m          Normal    NodeAllocatableEnforced   node/ip-10-0-101-9.ec2.internal     Updated Node Allocatable limit across pods
117s        Normal    Synced                    node/ip-10-0-101-9.ec2.internal     Node synced successfully
116s        Normal    RegisteredNode            node/ip-10-0-101-9.ec2.internal     Node ip-10-0-101-9.ec2.internal event: Registered Node ip-10-0-101-9.ec2.internal in Controller
114s        Normal    DisruptionBlocked         node/ip-10-0-101-9.ec2.internal     Node isn't initialized
108s        Normal    Starting                  node/ip-10-0-101-9.ec2.internal     
92s         Normal    ControllerVersionNotice   node/ip-10-0-101-9.ec2.internal     The node is managed by VPC resource controller version v1.7.9
92s         Normal    NodeReady                 node/ip-10-0-101-9.ec2.internal     Node ip-10-0-101-9.ec2.internal status is now: NodeReady
91s         Normal    Ready                     node/ip-10-0-101-9.ec2.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
88s         Normal    NodeTrunkInitiated        node/ip-10-0-101-9.ec2.internal     The node has trunk interface initialized successfully
54s         Normal    Unconsolidatable          node/ip-10-0-101-9.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
27m         Normal    Unconsolidatable          node/ip-10-0-96-112.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-96-112.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
15m         Normal    DisruptionBlocked         node/ip-10-0-96-112.ec2.internal    Node is deleting or marked for deletion
17m         Normal    DisruptionTerminating     node/ip-10-0-96-112.ec2.internal    Disrupting Node: Drifted/Delete
17m         Warning   FailedDraining            node/ip-10-0-96-112.ec2.internal    Failed to drain node, 4 pods are waiting to be evicted
16m         Warning   InstanceTerminating       node/ip-10-0-96-112.ec2.internal    Instance is terminating
15m         Normal    NodeNotReady              node/ip-10-0-96-112.ec2.internal    Node ip-10-0-96-112.ec2.internal status is now: NodeNotReady
15m         Normal    MemoryPressure            node/ip-10-0-96-112.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DiskPressure              node/ip-10-0-96-112.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    PIDPressure               node/ip-10-0-96-112.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    Ready                     node/ip-10-0-96-112.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DeletingNode              node/ip-10-0-96-112.ec2.internal    Deleting node ip-10-0-96-112.ec2.internal because it does not exist in the cloud provider
14m         Normal    RemovingNode              node/ip-10-0-96-112.ec2.internal    Node ip-10-0-96-112.ec2.internal event: Removing Node ip-10-0-96-112.ec2.internal from Controller
24m         Normal    Unconsolidatable          node/ip-10-0-96-121.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-96-121.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
16m         Normal    DisruptionBlocked         node/ip-10-0-96-121.ec2.internal    Node is nominated for a pending pod
15m         Normal    DisruptionTerminating     node/ip-10-0-96-121.ec2.internal    Disrupting Node: Drifted/Delete
15m         Warning   FailedDraining            node/ip-10-0-96-121.ec2.internal    Failed to drain node, 2 pods are waiting to be evicted
15m         Warning   InstanceTerminating       node/ip-10-0-96-121.ec2.internal    Instance is terminating
14m         Normal    DisruptionBlocked         node/ip-10-0-96-121.ec2.internal    Node is deleting or marked for deletion
14m         Warning   InstanceTerminating       node/ip-10-0-96-121.ec2.internal    Instance is terminating
14m         Normal    RemovingNode              node/ip-10-0-96-121.ec2.internal    Node ip-10-0-96-121.ec2.internal event: Removing Node ip-10-0-96-121.ec2.internal from Controller
20m         Normal    Starting                  node/ip-10-0-96-144.ec2.internal    Starting kubelet.
20m         Warning   InvalidDiskCapacity       node/ip-10-0-96-144.ec2.internal    invalid capacity 0 on image filesystem
20m         Normal    NodeHasSufficientMemory   node/ip-10-0-96-144.ec2.internal    Node ip-10-0-96-144.ec2.internal status is now: NodeHasSufficientMemory
20m         Normal    NodeHasNoDiskPressure     node/ip-10-0-96-144.ec2.internal    Node ip-10-0-96-144.ec2.internal status is now: NodeHasNoDiskPressure
20m         Normal    NodeHasSufficientPID      node/ip-10-0-96-144.ec2.internal    Node ip-10-0-96-144.ec2.internal status is now: NodeHasSufficientPID
20m         Normal    NodeAllocatableEnforced   node/ip-10-0-96-144.ec2.internal    Updated Node Allocatable limit across pods
20m         Normal    Synced                    node/ip-10-0-96-144.ec2.internal    Node synced successfully
20m         Normal    RegisteredNode            node/ip-10-0-96-144.ec2.internal    Node ip-10-0-96-144.ec2.internal event: Registered Node ip-10-0-96-144.ec2.internal in Controller
20m         Normal    Starting                  node/ip-10-0-96-144.ec2.internal    
20m         Normal    ControllerVersionNotice   node/ip-10-0-96-144.ec2.internal    The node is managed by VPC resource controller version v1.7.9
3m40s       Warning   Unsupported               node/ip-10-0-96-144.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
20m         Normal    NodeReady                 node/ip-10-0-96-144.ec2.internal    Node ip-10-0-96-144.ec2.internal status is now: NodeReady
20m         Normal    Ready                     node/ip-10-0-96-144.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
41m         Normal    Starting                  node/ip-10-0-96-168.ec2.internal    Starting kubelet.
41m         Warning   InvalidDiskCapacity       node/ip-10-0-96-168.ec2.internal    invalid capacity 0 on image filesystem
41m         Normal    NodeHasSufficientMemory   node/ip-10-0-96-168.ec2.internal    Node ip-10-0-96-168.ec2.internal status is now: NodeHasSufficientMemory
41m         Normal    NodeHasNoDiskPressure     node/ip-10-0-96-168.ec2.internal    Node ip-10-0-96-168.ec2.internal status is now: NodeHasNoDiskPressure
41m         Normal    NodeHasSufficientPID      node/ip-10-0-96-168.ec2.internal    Node ip-10-0-96-168.ec2.internal status is now: NodeHasSufficientPID
41m         Normal    NodeAllocatableEnforced   node/ip-10-0-96-168.ec2.internal    Updated Node Allocatable limit across pods
40m         Normal    Synced                    node/ip-10-0-96-168.ec2.internal    Node synced successfully
40m         Normal    RegisteredNode            node/ip-10-0-96-168.ec2.internal    Node ip-10-0-96-168.ec2.internal event: Registered Node ip-10-0-96-168.ec2.internal in Controller
40m         Normal    DisruptionBlocked         node/ip-10-0-96-168.ec2.internal    Node isn't initialized
40m         Normal    Starting                  node/ip-10-0-96-168.ec2.internal    
40m         Normal    ControllerVersionNotice   node/ip-10-0-96-168.ec2.internal    The node is managed by VPC resource controller version v1.7.9
40m         Normal    NodeReady                 node/ip-10-0-96-168.ec2.internal    Node ip-10-0-96-168.ec2.internal status is now: NodeReady
40m         Normal    Ready                     node/ip-10-0-96-168.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
40m         Normal    NodeTrunkInitiated        node/ip-10-0-96-168.ec2.internal    The node has trunk interface initialized successfully
24m         Normal    Unconsolidatable          node/ip-10-0-96-168.ec2.internal    NodePool "gpu-compile" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-96-168.ec2.internal    NodePool "gpu-compile" has non-empty consolidation disabled
15m         Normal    DisruptionBlocked         node/ip-10-0-96-168.ec2.internal    Node is deleting or marked for deletion
15m         Normal    DisruptionTerminating     node/ip-10-0-96-168.ec2.internal    Disrupting Node: Drifted/Replace
15m         Warning   FailedDraining            node/ip-10-0-96-168.ec2.internal    Failed to drain node, 2 pods are waiting to be evicted
15m         Warning   InstanceTerminating       node/ip-10-0-96-168.ec2.internal    Instance is terminating
14m         Normal    NodeNotReady              node/ip-10-0-96-168.ec2.internal    Node ip-10-0-96-168.ec2.internal status is now: NodeNotReady
8m30s       Normal    DisruptionBlocked         node/ip-10-0-96-168.ec2.internal    Node is deleting or marked for deletion
8m18s       Warning   InstanceTerminating       node/ip-10-0-96-168.ec2.internal    Instance is terminating
8m18s       Normal    DeletingNode              node/ip-10-0-96-168.ec2.internal    Deleting node ip-10-0-96-168.ec2.internal because it does not exist in the cloud provider
8m11s       Normal    RemovingNode              node/ip-10-0-96-168.ec2.internal    Node ip-10-0-96-168.ec2.internal event: Removing Node ip-10-0-96-168.ec2.internal from Controller
22m         Normal    Unconsolidatable          node/ip-10-0-96-193.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-96-193.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
17m         Normal    DisruptionTerminating     node/ip-10-0-96-193.ec2.internal    Disrupting Node: Drifted/Delete
17m         Warning   FailedDraining            node/ip-10-0-96-193.ec2.internal    Failed to drain node, 2 pods are waiting to be evicted
17m         Normal    DisruptionBlocked         node/ip-10-0-96-193.ec2.internal    Node is deleting or marked for deletion
16m         Warning   InstanceTerminating       node/ip-10-0-96-193.ec2.internal    Instance is terminating
16m         Normal    RemovingNode              node/ip-10-0-96-193.ec2.internal    Node ip-10-0-96-193.ec2.internal event: Removing Node ip-10-0-96-193.ec2.internal from Controller
20m         Normal    Starting                  node/ip-10-0-96-212.ec2.internal    Starting kubelet.
20m         Warning   InvalidDiskCapacity       node/ip-10-0-96-212.ec2.internal    invalid capacity 0 on image filesystem
20m         Warning   CgroupV1                  node/ip-10-0-96-212.ec2.internal    cgroup v1 support is in maintenance mode, please migrate to cgroup v2
20m         Normal    NodeHasSufficientMemory   node/ip-10-0-96-212.ec2.internal    Node ip-10-0-96-212.ec2.internal status is now: NodeHasSufficientMemory
20m         Normal    NodeHasNoDiskPressure     node/ip-10-0-96-212.ec2.internal    Node ip-10-0-96-212.ec2.internal status is now: NodeHasNoDiskPressure
20m         Normal    NodeHasSufficientPID      node/ip-10-0-96-212.ec2.internal    Node ip-10-0-96-212.ec2.internal status is now: NodeHasSufficientPID
20m         Normal    NodeAllocatableEnforced   node/ip-10-0-96-212.ec2.internal    Updated Node Allocatable limit across pods
20m         Normal    Synced                    node/ip-10-0-96-212.ec2.internal    Node synced successfully
20m         Normal    RegisteredNode            node/ip-10-0-96-212.ec2.internal    Node ip-10-0-96-212.ec2.internal event: Registered Node ip-10-0-96-212.ec2.internal in Controller
19m         Normal    Starting                  node/ip-10-0-96-212.ec2.internal    
19m         Normal    ControllerVersionNotice   node/ip-10-0-96-212.ec2.internal    The node is managed by VPC resource controller version v1.7.9
19m         Normal    NodeReady                 node/ip-10-0-96-212.ec2.internal    Node ip-10-0-96-212.ec2.internal status is now: NodeReady
19m         Normal    Ready                     node/ip-10-0-96-212.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    NodeTrunkInitiated        node/ip-10-0-96-212.ec2.internal    The node has trunk interface initialized successfully
24m         Normal    Unconsolidatable          node/ip-10-0-96-223.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-96-223.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-96-223.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
10m         Normal    DisruptionBlocked         node/ip-10-0-96-223.ec2.internal    Node is deleting or marked for deletion
10m         Normal    DisruptionTerminating     node/ip-10-0-96-223.ec2.internal    Disrupting Node: Drifted/Delete
10m         Warning   FailedDraining            node/ip-10-0-96-223.ec2.internal    Failed to drain node, 8 pods are waiting to be evicted
9m40s       Warning   InstanceTerminating       node/ip-10-0-96-223.ec2.internal    Instance is terminating
8m46s       Normal    NodeNotReady              node/ip-10-0-96-223.ec2.internal    Node ip-10-0-96-223.ec2.internal status is now: NodeNotReady
8m46s       Normal    MemoryPressure            node/ip-10-0-96-223.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m46s       Normal    DiskPressure              node/ip-10-0-96-223.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m46s       Normal    PIDPressure               node/ip-10-0-96-223.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m46s       Normal    Ready                     node/ip-10-0-96-223.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m36s       Normal    RemovingNode              node/ip-10-0-96-223.ec2.internal    Node ip-10-0-96-223.ec2.internal event: Removing Node ip-10-0-96-223.ec2.internal from Controller
22m         Normal    Unconsolidatable          node/ip-10-0-96-224.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-96-224.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-96-224.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
13m         Normal    DisruptionBlocked         node/ip-10-0-96-224.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
12m         Normal    DisruptionTerminating     node/ip-10-0-96-224.ec2.internal    Disrupting Node: Drifted/Delete
12m         Warning   FailedDraining            node/ip-10-0-96-224.ec2.internal    Failed to drain node, 14 pods are waiting to be evicted
11m         Normal    DisruptionBlocked         node/ip-10-0-96-224.ec2.internal    Node is deleting or marked for deletion
11m         Warning   InstanceTerminating       node/ip-10-0-96-224.ec2.internal    Instance is terminating
10m         Normal    NodeNotReady              node/ip-10-0-96-224.ec2.internal    Node ip-10-0-96-224.ec2.internal status is now: NodeNotReady
10m         Normal    MemoryPressure            node/ip-10-0-96-224.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    DiskPressure              node/ip-10-0-96-224.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    PIDPressure               node/ip-10-0-96-224.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    Ready                     node/ip-10-0-96-224.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    RemovingNode              node/ip-10-0-96-224.ec2.internal    Node ip-10-0-96-224.ec2.internal event: Removing Node ip-10-0-96-224.ec2.internal from Controller
24m         Normal    Unconsolidatable          node/ip-10-0-97-135.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-97-135.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
14m         Normal    DisruptionBlocked         node/ip-10-0-97-135.ec2.internal    Node is deleting or marked for deletion
14m         Normal    DisruptionTerminating     node/ip-10-0-97-135.ec2.internal    Disrupting Node: Drifted/Delete
14m         Warning   FailedDraining            node/ip-10-0-97-135.ec2.internal    Failed to drain node, 2 pods are waiting to be evicted
14m         Warning   InstanceTerminating       node/ip-10-0-97-135.ec2.internal    Instance is terminating
13m         Normal    NodeNotReady              node/ip-10-0-97-135.ec2.internal    Node ip-10-0-97-135.ec2.internal status is now: NodeNotReady
13m         Normal    MemoryPressure            node/ip-10-0-97-135.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DiskPressure              node/ip-10-0-97-135.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    PIDPressure               node/ip-10-0-97-135.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    Ready                     node/ip-10-0-97-135.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    RemovingNode              node/ip-10-0-97-135.ec2.internal    Node ip-10-0-97-135.ec2.internal event: Removing Node ip-10-0-97-135.ec2.internal from Controller
45s         Normal    Starting                  node/ip-10-0-97-23.ec2.internal     Starting kubelet.
45s         Warning   InvalidDiskCapacity       node/ip-10-0-97-23.ec2.internal     invalid capacity 0 on image filesystem
44s         Normal    NodeHasSufficientMemory   node/ip-10-0-97-23.ec2.internal     Node ip-10-0-97-23.ec2.internal status is now: NodeHasSufficientMemory
44s         Normal    NodeHasNoDiskPressure     node/ip-10-0-97-23.ec2.internal     Node ip-10-0-97-23.ec2.internal status is now: NodeHasNoDiskPressure
44s         Normal    NodeHasSufficientPID      node/ip-10-0-97-23.ec2.internal     Node ip-10-0-97-23.ec2.internal status is now: NodeHasSufficientPID
44s         Normal    NodeAllocatableEnforced   node/ip-10-0-97-23.ec2.internal     Updated Node Allocatable limit across pods
40s         Normal    Synced                    node/ip-10-0-97-23.ec2.internal     Node synced successfully
36s         Normal    RegisteredNode            node/ip-10-0-97-23.ec2.internal     Node ip-10-0-97-23.ec2.internal event: Registered Node ip-10-0-97-23.ec2.internal in Controller
31s         Normal    Starting                  node/ip-10-0-97-23.ec2.internal     
31s         Normal    DisruptionBlocked         node/ip-10-0-97-23.ec2.internal     Node isn't initialized
17s         Normal    ControllerVersionNotice   node/ip-10-0-97-23.ec2.internal     The node is managed by VPC resource controller version v1.7.9
16s         Normal    NodeReady                 node/ip-10-0-97-23.ec2.internal     Node ip-10-0-97-23.ec2.internal status is now: NodeReady
16s         Normal    Ready                     node/ip-10-0-97-23.ec2.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
13s         Normal    NodeTrunkInitiated        node/ip-10-0-97-23.ec2.internal     The node has trunk interface initialized successfully
20m         Normal    Starting                  node/ip-10-0-97-24.ec2.internal     Starting kubelet.
20m         Warning   InvalidDiskCapacity       node/ip-10-0-97-24.ec2.internal     invalid capacity 0 on image filesystem
20m         Normal    NodeHasSufficientMemory   node/ip-10-0-97-24.ec2.internal     Node ip-10-0-97-24.ec2.internal status is now: NodeHasSufficientMemory
20m         Normal    NodeHasNoDiskPressure     node/ip-10-0-97-24.ec2.internal     Node ip-10-0-97-24.ec2.internal status is now: NodeHasNoDiskPressure
20m         Normal    NodeHasSufficientPID      node/ip-10-0-97-24.ec2.internal     Node ip-10-0-97-24.ec2.internal status is now: NodeHasSufficientPID
20m         Normal    NodeAllocatableEnforced   node/ip-10-0-97-24.ec2.internal     Updated Node Allocatable limit across pods
20m         Normal    Synced                    node/ip-10-0-97-24.ec2.internal     Node synced successfully
20m         Normal    RegisteredNode            node/ip-10-0-97-24.ec2.internal     Node ip-10-0-97-24.ec2.internal event: Registered Node ip-10-0-97-24.ec2.internal in Controller
20m         Normal    Starting                  node/ip-10-0-97-24.ec2.internal     
20m         Normal    ControllerVersionNotice   node/ip-10-0-97-24.ec2.internal     The node is managed by VPC resource controller version v1.7.9
10m         Warning   Unsupported               node/ip-10-0-97-24.ec2.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
20m         Normal    NodeReady                 node/ip-10-0-97-24.ec2.internal     Node ip-10-0-97-24.ec2.internal status is now: NodeReady
20m         Normal    Ready                     node/ip-10-0-97-24.ec2.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
10m         Normal    NodeNotReady              node/ip-10-0-97-24.ec2.internal     Node ip-10-0-97-24.ec2.internal status is now: NodeNotReady
10m         Normal    MemoryPressure            node/ip-10-0-97-24.ec2.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    DiskPressure              node/ip-10-0-97-24.ec2.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    PIDPressure               node/ip-10-0-97-24.ec2.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    Ready                     node/ip-10-0-97-24.ec2.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    DeletingNode              node/ip-10-0-97-24.ec2.internal     Deleting node ip-10-0-97-24.ec2.internal because it does not exist in the cloud provider
10m         Normal    RemovingNode              node/ip-10-0-97-24.ec2.internal     Node ip-10-0-97-24.ec2.internal event: Removing Node ip-10-0-97-24.ec2.internal from Controller
24m         Normal    Unconsolidatable          node/ip-10-0-98-109.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-98-109.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-98-109.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
13m         Normal    DisruptionBlocked         node/ip-10-0-98-109.ec2.internal    Node is deleting or marked for deletion
13m         Normal    DisruptionTerminating     node/ip-10-0-98-109.ec2.internal    Disrupting Node: Drifted/Delete
13m         Warning   FailedDraining            node/ip-10-0-98-109.ec2.internal    Failed to drain node, 5 pods are waiting to be evicted
13m         Warning   InstanceTerminating       node/ip-10-0-98-109.ec2.internal    Instance is terminating
12m         Normal    RemovingNode              node/ip-10-0-98-109.ec2.internal    Node ip-10-0-98-109.ec2.internal event: Removing Node ip-10-0-98-109.ec2.internal from Controller
18m         Normal    DisruptionBlocked         node/ip-10-0-98-199.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-autoscaler/cluster-autoscaler-aws-cluster-autoscaler)
15m         Normal    DisruptionBlocked         node/ip-10-0-98-199.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-autoscaler/cluster-autoscaler-aws-cluster-autoscaler)
11s         Normal    DisruptionBlocked         node/ip-10-0-98-199.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-autoscaler/cluster-autoscaler-aws-cluster-autoscaler)
12m         Normal    DisruptionBlocked         node/ip-10-0-98-199.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
30m         Normal    Unconsolidatable          node/ip-10-0-98-57.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-98-57.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-98-57.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
12m         Normal    DisruptionBlocked         node/ip-10-0-98-57.ec2.internal     Node is deleting or marked for deletion
12m         Normal    DisruptionTerminating     node/ip-10-0-98-57.ec2.internal     Disrupting Node: Drifted/Delete
12m         Warning   FailedDraining            node/ip-10-0-98-57.ec2.internal     Failed to drain node, 4 pods are waiting to be evicted
12m         Warning   InstanceTerminating       node/ip-10-0-98-57.ec2.internal     Instance is terminating
11m         Normal    NodeNotReady              node/ip-10-0-98-57.ec2.internal     Node ip-10-0-98-57.ec2.internal status is now: NodeNotReady
11m         Normal    MemoryPressure            node/ip-10-0-98-57.ec2.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DiskPressure              node/ip-10-0-98-57.ec2.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    PIDPressure               node/ip-10-0-98-57.ec2.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    Ready                     node/ip-10-0-98-57.ec2.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DeletingNode              node/ip-10-0-98-57.ec2.internal     Deleting node ip-10-0-98-57.ec2.internal because it does not exist in the cloud provider
11m         Normal    RemovingNode              node/ip-10-0-98-57.ec2.internal     Node ip-10-0-98-57.ec2.internal event: Removing Node ip-10-0-98-57.ec2.internal from Controller
24m         Normal    Unconsolidatable          node/ip-10-0-99-0.ec2.internal      NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-99-0.ec2.internal      NodePool "main-amd64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-99-0.ec2.internal      NodePool "main-amd64" has non-empty consolidation disabled
13m         Normal    DisruptionBlocked         node/ip-10-0-99-0.ec2.internal      Node is deleting or marked for deletion
13m         Normal    DisruptionTerminating     node/ip-10-0-99-0.ec2.internal      Disrupting Node: Drifted/Delete
13m         Warning   FailedDraining            node/ip-10-0-99-0.ec2.internal      Failed to drain node, 21 pods are waiting to be evicted
12m         Warning   InstanceTerminating       node/ip-10-0-99-0.ec2.internal      Instance is terminating
11m         Normal    NodeNotReady              node/ip-10-0-99-0.ec2.internal      Node ip-10-0-99-0.ec2.internal status is now: NodeNotReady
11m         Normal    MemoryPressure            node/ip-10-0-99-0.ec2.internal      Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DiskPressure              node/ip-10-0-99-0.ec2.internal      Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    PIDPressure               node/ip-10-0-99-0.ec2.internal      Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    Ready                     node/ip-10-0-99-0.ec2.internal      Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DeletingNode              node/ip-10-0-99-0.ec2.internal      Deleting node ip-10-0-99-0.ec2.internal because it does not exist in the cloud provider
11m         Normal    RemovingNode              node/ip-10-0-99-0.ec2.internal      Node ip-10-0-99-0.ec2.internal event: Removing Node ip-10-0-99-0.ec2.internal from Controller
21m         Normal    Unconsolidatable          node/ip-10-0-99-1.ec2.internal      NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-99-1.ec2.internal      NodePool "main-amd64" has non-empty consolidation disabled
15m         Normal    DisruptionBlocked         node/ip-10-0-99-1.ec2.internal      Node is deleting or marked for deletion
15m         Normal    DisruptionTerminating     node/ip-10-0-99-1.ec2.internal      Disrupting Node: Drifted/Delete
15m         Warning   FailedDraining            node/ip-10-0-99-1.ec2.internal      Failed to drain node, 2 pods are waiting to be evicted
15m         Warning   InstanceTerminating       node/ip-10-0-99-1.ec2.internal      Instance is terminating
14m         Normal    DisruptionBlocked         node/ip-10-0-99-1.ec2.internal      Node is deleting or marked for deletion
14m         Normal    NodeNotReady              node/ip-10-0-99-1.ec2.internal      Node ip-10-0-99-1.ec2.internal status is now: NodeNotReady
14m         Normal    MemoryPressure            node/ip-10-0-99-1.ec2.internal      Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure              node/ip-10-0-99-1.ec2.internal      Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure               node/ip-10-0-99-1.ec2.internal      Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                     node/ip-10-0-99-1.ec2.internal      Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Warning   InstanceTerminating       node/ip-10-0-99-1.ec2.internal      Instance is terminating
14m         Normal    DeletingNode              node/ip-10-0-99-1.ec2.internal      Deleting node ip-10-0-99-1.ec2.internal because it does not exist in the cloud provider
14m         Normal    RemovingNode              node/ip-10-0-99-1.ec2.internal      Node ip-10-0-99-1.ec2.internal event: Removing Node ip-10-0-99-1.ec2.internal from Controller
7m37s       Normal    Starting                  node/ip-10-0-99-104.ec2.internal    Starting kubelet.
7m37s       Warning   InvalidDiskCapacity       node/ip-10-0-99-104.ec2.internal    invalid capacity 0 on image filesystem
7m37s       Normal    NodeHasSufficientMemory   node/ip-10-0-99-104.ec2.internal    Node ip-10-0-99-104.ec2.internal status is now: NodeHasSufficientMemory
7m37s       Normal    NodeHasNoDiskPressure     node/ip-10-0-99-104.ec2.internal    Node ip-10-0-99-104.ec2.internal status is now: NodeHasNoDiskPressure
7m37s       Normal    NodeHasSufficientPID      node/ip-10-0-99-104.ec2.internal    Node ip-10-0-99-104.ec2.internal status is now: NodeHasSufficientPID
7m37s       Normal    NodeAllocatableEnforced   node/ip-10-0-99-104.ec2.internal    Updated Node Allocatable limit across pods
7m34s       Normal    Synced                    node/ip-10-0-99-104.ec2.internal    Node synced successfully
7m31s       Normal    RegisteredNode            node/ip-10-0-99-104.ec2.internal    Node ip-10-0-99-104.ec2.internal event: Registered Node ip-10-0-99-104.ec2.internal in Controller
7m25s       Normal    Starting                  node/ip-10-0-99-104.ec2.internal    
7m25s       Normal    DisruptionBlocked         node/ip-10-0-99-104.ec2.internal    Node isn't initialized
7m11s       Normal    ControllerVersionNotice   node/ip-10-0-99-104.ec2.internal    The node is managed by VPC resource controller version v1.7.9
7m10s       Normal    NodeReady                 node/ip-10-0-99-104.ec2.internal    Node ip-10-0-99-104.ec2.internal status is now: NodeReady
7m10s       Normal    Ready                     node/ip-10-0-99-104.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
7m7s        Normal    NodeTrunkInitiated        node/ip-10-0-99-104.ec2.internal    The node has trunk interface initialized successfully
6m35s       Normal    Unconsolidatable          node/ip-10-0-99-104.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
2m17s       Normal    DisruptionBlocked         node/ip-10-0-99-104.ec2.internal    Node is nominated for a pending pod
27m         Normal    Unconsolidatable          node/ip-10-0-99-118.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-99-118.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-99-118.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
13m         Normal    DisruptionBlocked         node/ip-10-0-99-118.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
12m         Warning   OOMKilling                node/ip-10-0-99-118.ec2.internal    Memory cgroup out of memory: Killed process 341367 (reports-control) total-vm:5596888kB, anon-rss:128396kB, file-rss:68380kB, shmem-rss:0kB, UID:65532 pgtables:552kB oom_score_adj:999
12m         Warning   OOMKilling                node/ip-10-0-99-118.ec2.internal    Memory cgroup out of memory: Killed process 341558 (reports-control) total-vm:5596888kB, anon-rss:129220kB, file-rss:69020kB, shmem-rss:0kB, UID:65532 pgtables:552kB oom_score_adj:999
12m         Warning   OOMKilling                node/ip-10-0-99-118.ec2.internal    Memory cgroup out of memory: Killed process 344290 (reports-control) total-vm:5596824kB, anon-rss:127756kB, file-rss:68376kB, shmem-rss:0kB, UID:65532 pgtables:552kB oom_score_adj:999
12m         Warning   OOMKilling                node/ip-10-0-99-118.ec2.internal    Memory cgroup out of memory: Killed process 344339 (reports-control) total-vm:5596824kB, anon-rss:129084kB, file-rss:69016kB, shmem-rss:0kB, UID:65532 pgtables:552kB oom_score_adj:999
12m         Normal    DisruptionTerminating     node/ip-10-0-99-118.ec2.internal    Disrupting Node: Drifted/Delete
12m         Warning   FailedDraining            node/ip-10-0-99-118.ec2.internal    Failed to drain node, 12 pods are waiting to be evicted
11m         Warning   InstanceTerminating       node/ip-10-0-99-118.ec2.internal    Instance is terminating
11m         Normal    DisruptionBlocked         node/ip-10-0-99-118.ec2.internal    Node is deleting or marked for deletion
11m         Normal    NodeNotReady              node/ip-10-0-99-118.ec2.internal    Node ip-10-0-99-118.ec2.internal status is now: NodeNotReady
11m         Normal    MemoryPressure            node/ip-10-0-99-118.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DiskPressure              node/ip-10-0-99-118.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    PIDPressure               node/ip-10-0-99-118.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    Ready                     node/ip-10-0-99-118.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    RemovingNode              node/ip-10-0-99-118.ec2.internal    Node ip-10-0-99-118.ec2.internal event: Removing Node ip-10-0-99-118.ec2.internal from Controller
19m         Warning   Unsupported               node/ip-10-0-99-131.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    NodeNotSchedulable        node/ip-10-0-99-131.ec2.internal    Node ip-10-0-99-131.ec2.internal status is now: NodeNotSchedulable
15m         Normal    NodeNotReady              node/ip-10-0-99-131.ec2.internal    Node ip-10-0-99-131.ec2.internal status is now: NodeNotReady
15m         Normal    MemoryPressure            node/ip-10-0-99-131.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DiskPressure              node/ip-10-0-99-131.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    PIDPressure               node/ip-10-0-99-131.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    Ready                     node/ip-10-0-99-131.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DeletingNode              node/ip-10-0-99-131.ec2.internal    Deleting node ip-10-0-99-131.ec2.internal because it does not exist in the cloud provider
15m         Normal    RemovingNode              node/ip-10-0-99-131.ec2.internal    Node ip-10-0-99-131.ec2.internal event: Removing Node ip-10-0-99-131.ec2.internal from Controller
27m         Normal    Unconsolidatable          node/ip-10-0-99-146.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-99-146.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-99-146.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
12m         Normal    DisruptionBlocked         node/ip-10-0-99-146.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
10m         Normal    DisruptionBlocked         node/ip-10-0-99-146.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=policy-bot/policy-bot-pdb)
2m21s       Normal    DisruptionBlocked         node/ip-10-0-99-146.ec2.internal    Node is deleting or marked for deletion
4m23s       Normal    DisruptionTerminating     node/ip-10-0-99-146.ec2.internal    Disrupting Node: Drifted/Delete
4m23s       Warning   FailedDraining            node/ip-10-0-99-146.ec2.internal    Failed to drain node, 23 pods are waiting to be evicted
3m18s       Warning   InstanceTerminating       node/ip-10-0-99-146.ec2.internal    Instance is terminating
2m31s       Normal    NodeNotReady              node/ip-10-0-99-146.ec2.internal    Node ip-10-0-99-146.ec2.internal status is now: NodeNotReady
2m31s       Normal    MemoryPressure            node/ip-10-0-99-146.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
2m31s       Normal    DiskPressure              node/ip-10-0-99-146.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
2m31s       Normal    PIDPressure               node/ip-10-0-99-146.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
2m31s       Normal    Ready                     node/ip-10-0-99-146.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
2m7s        Normal    DeletingNode              node/ip-10-0-99-146.ec2.internal    Deleting node ip-10-0-99-146.ec2.internal because it does not exist in the cloud provider
2m1s        Normal    RemovingNode              node/ip-10-0-99-146.ec2.internal    Node ip-10-0-99-146.ec2.internal event: Removing Node ip-10-0-99-146.ec2.internal from Controller
29m         Normal    Unconsolidatable          node/ip-10-0-99-182.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-99-182.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-99-182.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
14m         Normal    DisruptionBlocked         node/ip-10-0-99-182.ec2.internal    Node is deleting or marked for deletion
14m         Normal    DisruptionTerminating     node/ip-10-0-99-182.ec2.internal    Disrupting Node: Drifted/Delete
14m         Warning   FailedDraining            node/ip-10-0-99-182.ec2.internal    Failed to drain node, 2 pods are waiting to be evicted
13m         Warning   InstanceTerminating       node/ip-10-0-99-182.ec2.internal    Instance is terminating
12m         Normal    RemovingNode              node/ip-10-0-99-182.ec2.internal    Node ip-10-0-99-182.ec2.internal event: Removing Node ip-10-0-99-182.ec2.internal from Controller
3m29s       Normal    Starting                  node/ip-10-0-99-225.ec2.internal    Starting kubelet.
3m29s       Warning   InvalidDiskCapacity       node/ip-10-0-99-225.ec2.internal    invalid capacity 0 on image filesystem
3m29s       Normal    NodeHasSufficientMemory   node/ip-10-0-99-225.ec2.internal    Node ip-10-0-99-225.ec2.internal status is now: NodeHasSufficientMemory
3m29s       Normal    NodeHasNoDiskPressure     node/ip-10-0-99-225.ec2.internal    Node ip-10-0-99-225.ec2.internal status is now: NodeHasNoDiskPressure
3m29s       Normal    NodeHasSufficientPID      node/ip-10-0-99-225.ec2.internal    Node ip-10-0-99-225.ec2.internal status is now: NodeHasSufficientPID
3m29s       Normal    NodeAllocatableEnforced   node/ip-10-0-99-225.ec2.internal    Updated Node Allocatable limit across pods
3m24s       Normal    Synced                    node/ip-10-0-99-225.ec2.internal    Node synced successfully
3m22s       Normal    DisruptionBlocked         node/ip-10-0-99-225.ec2.internal    Node isn't initialized
3m21s       Normal    RegisteredNode            node/ip-10-0-99-225.ec2.internal    Node ip-10-0-99-225.ec2.internal event: Registered Node ip-10-0-99-225.ec2.internal in Controller
3m16s       Normal    Starting                  node/ip-10-0-99-225.ec2.internal    
3m2s        Normal    ControllerVersionNotice   node/ip-10-0-99-225.ec2.internal    The node is managed by VPC resource controller version v1.7.9
3m1s        Normal    NodeReady                 node/ip-10-0-99-225.ec2.internal    Node ip-10-0-99-225.ec2.internal status is now: NodeReady
3m1s        Normal    Ready                     node/ip-10-0-99-225.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
2m59s       Normal    NodeTrunkInitiated        node/ip-10-0-99-225.ec2.internal    The node has trunk interface initialized successfully
2m31s       Normal    Unconsolidatable          node/ip-10-0-99-225.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
74s         Normal    DisruptionBlocked         node/ip-10-0-99-225.ec2.internal    Node is nominated for a pending pod
25m         Normal    Unconsolidatable          node/ip-10-0-99-28.ec2.internal     NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-99-28.ec2.internal     NodePool "main-amd64" has non-empty consolidation disabled
15m         Normal    DisruptionBlocked         node/ip-10-0-99-28.ec2.internal     Node is deleting or marked for deletion
15m         Normal    DisruptionTerminating     node/ip-10-0-99-28.ec2.internal     Disrupting Node: Drifted/Delete
15m         Warning   FailedDraining            node/ip-10-0-99-28.ec2.internal     Failed to drain node, 2 pods are waiting to be evicted
14m         Warning   FailedDraining            node/ip-10-0-99-28.ec2.internal     Failed to drain node, 1 pods are waiting to be evicted
14m         Normal    DisruptionBlocked         node/ip-10-0-99-28.ec2.internal     Node is deleting or marked for deletion
14m         Warning   InstanceTerminating       node/ip-10-0-99-28.ec2.internal     Instance is terminating
13m         Normal    MemoryPressure            node/ip-10-0-99-28.ec2.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DiskPressure              node/ip-10-0-99-28.ec2.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    PIDPressure               node/ip-10-0-99-28.ec2.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    Ready                     node/ip-10-0-99-28.ec2.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    NodeNotReady              node/ip-10-0-99-28.ec2.internal     Node ip-10-0-99-28.ec2.internal status is now: NodeNotReady
13m         Normal    DeletingNode              node/ip-10-0-99-28.ec2.internal     Deleting node ip-10-0-99-28.ec2.internal because it does not exist in the cloud provider
13m         Normal    RemovingNode              node/ip-10-0-99-28.ec2.internal     Node ip-10-0-99-28.ec2.internal event: Removing Node ip-10-0-99-28.ec2.internal from Controller
24m         Normal    Unconsolidatable          node/ip-10-0-99-46.ec2.internal     NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-99-46.ec2.internal     NodePool "main-amd64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-99-46.ec2.internal     NodePool "main-amd64" has non-empty consolidation disabled
4m33s       Normal    DisruptionBlocked         node/ip-10-0-99-46.ec2.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
3m11s       Normal    DisruptionTerminating     node/ip-10-0-99-46.ec2.internal     Disrupting Node: Drifted/Delete
3m11s       Warning   FailedDraining            node/ip-10-0-99-46.ec2.internal     Failed to drain node, 6 pods are waiting to be evicted
2m31s       Normal    DisruptionBlocked         node/ip-10-0-99-46.ec2.internal     Node is deleting or marked for deletion
2m23s       Warning   InstanceTerminating       node/ip-10-0-99-46.ec2.internal     Instance is terminating
96s         Normal    RemovingNode              node/ip-10-0-99-46.ec2.internal     Node ip-10-0-99-46.ec2.internal event: Removing Node ip-10-0-99-46.ec2.internal from Controller
27m         Normal    Unconsolidatable          node/ip-10-0-99-55.ec2.internal     NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    Unconsolidatable          node/ip-10-0-99-55.ec2.internal     NodePool "main-amd64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-99-55.ec2.internal     NodePool "main-amd64" has non-empty consolidation disabled
13m         Normal    DisruptionBlocked         node/ip-10-0-99-55.ec2.internal     Pdb prevents pod evictions (PodDisruptionBudget=merge-a-saurus/merge-a-saurus-pdb)
11m         Warning   OOMKilling                node/ip-10-0-99-55.ec2.internal     Memory cgroup out of memory: Killed process 559979 (reports-control) total-vm:5597144kB, anon-rss:128336kB, file-rss:68888kB, shmem-rss:0kB, UID:65532 pgtables:548kB oom_score_adj:999
11m         Warning   OOMKilling                node/ip-10-0-99-55.ec2.internal     Memory cgroup out of memory: Killed process 560006 (reports-control) total-vm:5597144kB, anon-rss:129224kB, file-rss:69272kB, shmem-rss:0kB, UID:65532 pgtables:548kB oom_score_adj:999
6m5s        Normal    DisruptionBlocked         node/ip-10-0-99-55.ec2.internal     Node is deleting or marked for deletion
7m4s        Normal    DisruptionTerminating     node/ip-10-0-99-55.ec2.internal     Disrupting Node: Drifted/Replace
7m4s        Warning   FailedDraining            node/ip-10-0-99-55.ec2.internal     Failed to drain node, 14 pods are waiting to be evicted
5m58s       Warning   InstanceTerminating       node/ip-10-0-99-55.ec2.internal     Instance is terminating
5m11s       Normal    RemovingNode              node/ip-10-0-99-55.ec2.internal     Node ip-10-0-99-55.ec2.internal event: Removing Node ip-10-0-99-55.ec2.internal from Controller
19m         Normal    Starting                  node/ip-10-0-99-97.ec2.internal     Starting kubelet.
19m         Warning   InvalidDiskCapacity       node/ip-10-0-99-97.ec2.internal     invalid capacity 0 on image filesystem
19m         Normal    NodeHasSufficientMemory   node/ip-10-0-99-97.ec2.internal     Node ip-10-0-99-97.ec2.internal status is now: NodeHasSufficientMemory
19m         Normal    NodeHasNoDiskPressure     node/ip-10-0-99-97.ec2.internal     Node ip-10-0-99-97.ec2.internal status is now: NodeHasNoDiskPressure
19m         Normal    NodeHasSufficientPID      node/ip-10-0-99-97.ec2.internal     Node ip-10-0-99-97.ec2.internal status is now: NodeHasSufficientPID
19m         Normal    NodeAllocatableEnforced   node/ip-10-0-99-97.ec2.internal     Updated Node Allocatable limit across pods
19m         Normal    Synced                    node/ip-10-0-99-97.ec2.internal     Node synced successfully
19m         Normal    RegisteredNode            node/ip-10-0-99-97.ec2.internal     Node ip-10-0-99-97.ec2.internal event: Registered Node ip-10-0-99-97.ec2.internal in Controller
19m         Normal    Starting                  node/ip-10-0-99-97.ec2.internal     
19m         Normal    ControllerVersionNotice   node/ip-10-0-99-97.ec2.internal     The node is managed by VPC resource controller version v1.7.9
3m12s       Warning   Unsupported               node/ip-10-0-99-97.ec2.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
19m         Normal    NodeReady                 node/ip-10-0-99-97.ec2.internal     Node ip-10-0-99-97.ec2.internal status is now: NodeReady
19m         Normal    Ready                     node/ip-10-0-99-97.ec2.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
```

Pods with issues
```
actions-runner-controller   arc-4xlarge-amd64-runner-7bthj-runner-5kpd6                       0/2     Pending             0               75s
actions-runner-controller   arc-4xlarge-amd64-runner-7bthj-runner-w9wbx                       0/2     Pending             0               80s
actions-runner-controller   arc-8xlarge-amd64-runner-vhtw6-runner-xhvlj                       0/2     Pending             0               37s
cluster-autoscaler          cluster-autoscaler-aws-cluster-autoscaler-77d5d97d6f-5zkcc        0/1     CrashLoopBackOff    8 (2m29s ago)   18m
```

PodDisruptionBudgets
```
NAMESPACE            NAME                                        MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-autoscaler   cluster-autoscaler-aws-cluster-autoscaler   N/A             1                 0                     26h
cluster-monitoring   cluster-monitoring-pdb                      N/A             1                 1                     293d
default              release-name-pdb                            N/A             1                 0                     35d
karpenter            karpenter                                   N/A             1                 1                     2y250d
kube-system          coredns                                     N/A             1                 1                     620d
kube-system          ebs-csi-controller                          N/A             1                 1                     2y244d
kyverno              kyverno-admission-controller                1               N/A               2                     603d
merge-a-saurus       merge-a-saurus-pdb                          N/A             1                 1                     202d
policy-bot           policy-bot-pdb                              N/A             1                 1                     88d
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

Detect deprecated or withdrawn apis with PLUTO
Helm...
```
There were no resources found with known deprecated apiVersions.
```
All-in-cluster...
```
There were no resources found with known deprecated apiVersions.
```

Generated on: Fri Sep 19 11:37:40 CEST 2025
