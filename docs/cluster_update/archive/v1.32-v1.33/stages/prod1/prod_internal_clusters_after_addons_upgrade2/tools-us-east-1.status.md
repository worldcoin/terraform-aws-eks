# Cluster recon for tfh-internal-tools-infra,us-east-1,tools-us-east-1,tunnel-vpc-internal-tools-us-east-1

TFH EKS login...
```console
2025/09/22 10:54:03 INFO Logging into AWS
2025/09/22 10:54:03 INFO Token found and valid
2025/09/22 10:54:05 INFO Switch WARP Virtual Network to name=tunnel-vpc-internal-tools-us-east-1 id=b1421f21-2608-4c25-b450-34924057a237
2025/09/22 10:54:07 INFO Active WARP Virtual Network id=b1421f21-2608-4c25-b450-34924057a237
Updated context tfh-tools-us-east-1 in /Users/lukasz.glowacki/.kube/config
```

Current version: 1.32
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

Insights for the upcoming update to 1.33
```json
{
    "insights": [
        {
            "id": "cbe51692-a74e-400b-841c-b62e0db0d227",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-21T19:39:10+02:00",
            "lastTransitionTime": "2025-07-29T02:49:04+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "e915fd93-6b3b-4451-a093-3135d1aae371",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-21T19:39:04+02:00",
            "lastTransitionTime": "2025-09-05T19:49:04+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "8d8038dc-b56a-4564-9d76-de87d807dd9c",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-21T19:39:04+02:00",
            "lastTransitionTime": "2025-09-05T19:49:04+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "d3e3bc8e-9875-4b74-9274-6f2708f2f7bb",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-21T19:39:10+02:00",
            "lastTransitionTime": "2024-12-20T23:54:09+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "0d5f9d51-b9ef-4958-84c8-5f7fa4b252d0",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-21T19:39:04+02:00",
            "lastTransitionTime": "2025-09-20T03:19:03+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "ERROR",
                "reason": "The cluster contains legacy Amazon Linux 2 (AL2) nodes. Migrate Amazon Linux 2 node groups to Amazon Linux 2023 before November 26, 2025 or before upgrading to EKS 1.33."
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
ip-10-0-100-214.ec2.internal   Ready    <none>   2d18h   v1.32.8-eks-99d6cc0   10.0.100.214   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-101-117.ec2.internal   Ready    <none>   8h      v1.32.8-eks-99d6cc0   10.0.101.117   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-101-140.ec2.internal   Ready    <none>   2d23h   v1.32.8-eks-99d6cc0   10.0.101.140   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-101-186.ec2.internal   Ready    <none>   2d20h   v1.32.8-eks-99d6cc0   10.0.101.186   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-96-115.ec2.internal    Ready    <none>   15h     v1.32.8-eks-99d6cc0   10.0.96.115    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-96-123.ec2.internal    Ready    <none>   2d22h   v1.32.8-eks-99d6cc0   10.0.96.123    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-96-144.ec2.internal    Ready    <none>   2d23h   v1.32.8-eks-99d6cc0   10.0.96.144    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-tools-us-east-1
ip-10-0-96-161.ec2.internal    Ready    <none>   8h      v1.32.8-eks-99d6cc0   10.0.96.161    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-96-168.ec2.internal    Ready    <none>   139m    v1.32.8-eks-99d6cc0   10.0.96.168    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-96-217.ec2.internal    Ready    <none>   2d23h   v1.32.8-eks-99d6cc0   10.0.96.217    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-96-242.ec2.internal    Ready    <none>   3m4s    v1.32.8-eks-99d6cc0   10.0.96.242    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-97-23.ec2.internal     Ready    <none>   2d23h   v1.32.8-eks-99d6cc0   10.0.97.23     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-97-78.ec2.internal     Ready    <none>   139m    v1.32.8-eks-99d6cc0   10.0.97.78     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-98-113.ec2.internal    Ready    <none>   2d21h   v1.32.8-eks-99d6cc0   10.0.98.113    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-98-52.ec2.internal     Ready    <none>   2d19h   v1.32.8-eks-99d6cc0   10.0.98.52     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-98-99.ec2.internal     Ready    <none>   139m    v1.32.8-eks-99d6cc0   10.0.98.99     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-99-100.ec2.internal    Ready    <none>   2d20h   v1.32.8-eks-99d6cc0   10.0.99.100    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-99-104.ec2.internal    Ready    <none>   2d23h   v1.32.8-eks-99d6cc0   10.0.99.104    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-99-18.ec2.internal     Ready    <none>   2d21h   v1.32.8-eks-99d6cc0   10.0.99.18     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-99-225.ec2.internal    Ready    <none>   2d23h   v1.32.8-eks-99d6cc0   10.0.99.225    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-99-70.ec2.internal     Ready    <none>   2d23h   v1.32.8-eks-99d6cc0   10.0.99.70     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-99-97.ec2.internal     Ready    <none>   2d23h   v1.32.8-eks-99d6cc0   10.0.99.97     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-tools-us-east-1
```

Nodes and their taints
```
NAME                           STATUS   ROLES    TAINTS
ip-10-0-100-214.ec2.internal   Ready    <none>   <none>
ip-10-0-101-117.ec2.internal   Ready    <none>   <none>
ip-10-0-101-140.ec2.internal   Ready    <none>   <none>
ip-10-0-101-186.ec2.internal   Ready    <none>   <none>
ip-10-0-96-115.ec2.internal    Ready    <none>   <none>
ip-10-0-96-123.ec2.internal    Ready    <none>   <none>
ip-10-0-96-144.ec2.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-96-161.ec2.internal    Ready    <none>   <none>
ip-10-0-96-168.ec2.internal    Ready    <none>   <none>
ip-10-0-96-217.ec2.internal    Ready    <none>   <none>
ip-10-0-96-242.ec2.internal    Ready    <none>   [map[effect:NoExecute key:enclave]]
ip-10-0-97-23.ec2.internal     Ready    <none>   <none>
ip-10-0-97-78.ec2.internal     Ready    <none>   <none>
ip-10-0-98-113.ec2.internal    Ready    <none>   <none>
ip-10-0-98-52.ec2.internal     Ready    <none>   <none>
ip-10-0-98-99.ec2.internal     Ready    <none>   <none>
ip-10-0-99-100.ec2.internal    Ready    <none>   <none>
ip-10-0-99-104.ec2.internal    Ready    <none>   <none>
ip-10-0-99-18.ec2.internal     Ready    <none>   <none>
ip-10-0-99-225.ec2.internal    Ready    <none>   <none>
ip-10-0-99-70.ec2.internal     Ready    <none>   <none>
ip-10-0-99-97.ec2.internal     Ready    <none>   [map[effect:NoExecute key:critical]]
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                              MESSAGE
36m         Normal    Finalized                 node                                Finalized karpenter.sh/termination
14m         Normal    Unconsolidatable          node/ip-10-0-100-214.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-100-214.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
10m         Normal    Unconsolidatable          node/ip-10-0-101-117.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-101-117.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
2m23s       Normal    NodeNotReady              node/ip-10-0-101-136.ec2.internal   Node ip-10-0-101-136.ec2.internal status is now: NodeNotReady
2m23s       Normal    MemoryPressure            node/ip-10-0-101-136.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
2m23s       Normal    DiskPressure              node/ip-10-0-101-136.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
2m23s       Normal    PIDPressure               node/ip-10-0-101-136.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
2m23s       Normal    Ready                     node/ip-10-0-101-136.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
2m21s       Normal    DeletingNode              node/ip-10-0-101-136.ec2.internal   Deleting node ip-10-0-101-136.ec2.internal because it does not exist in the cloud provider
2m17s       Normal    RemovingNode              node/ip-10-0-101-136.ec2.internal   Node ip-10-0-101-136.ec2.internal event: Removing Node ip-10-0-101-136.ec2.internal from Controller
4m6s        Normal    DisruptionBlocked         node/ip-10-0-101-140.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-autoscaler/cluster-autoscaler-aws-cluster-autoscaler)
45s         Normal    DisruptionBlocked         node/ip-10-0-101-140.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-autoscaler/cluster-autoscaler-aws-cluster-autoscaler)
14m         Normal    Unconsolidatable          node/ip-10-0-101-186.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-101-186.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
13m         Normal    Unconsolidatable          node/ip-10-0-96-115.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-96-115.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
7m39s       Normal    Unconsolidatable          node/ip-10-0-96-123.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-96-123.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
2m23s       Warning   Unsupported               node/ip-10-0-96-144.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
10m         Normal    Unconsolidatable          node/ip-10-0-96-161.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-96-161.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
3m15s       Normal    Unconsolidatable          node/ip-10-0-96-168.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-96-168.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
7m39s       Normal    Unconsolidatable          node/ip-10-0-96-217.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-96-217.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
2m18s       Normal    DisruptionBlocked         node/ip-10-0-96-217.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
3m10s       Normal    Starting                  node/ip-10-0-96-242.ec2.internal    Starting kubelet.
3m10s       Warning   InvalidDiskCapacity       node/ip-10-0-96-242.ec2.internal    invalid capacity 0 on image filesystem
3m10s       Normal    NodeHasSufficientMemory   node/ip-10-0-96-242.ec2.internal    Node ip-10-0-96-242.ec2.internal status is now: NodeHasSufficientMemory
3m10s       Normal    NodeHasNoDiskPressure     node/ip-10-0-96-242.ec2.internal    Node ip-10-0-96-242.ec2.internal status is now: NodeHasNoDiskPressure
3m10s       Normal    NodeHasSufficientPID      node/ip-10-0-96-242.ec2.internal    Node ip-10-0-96-242.ec2.internal status is now: NodeHasSufficientPID
3m10s       Normal    NodeAllocatableEnforced   node/ip-10-0-96-242.ec2.internal    Updated Node Allocatable limit across pods
3m7s        Normal    Synced                    node/ip-10-0-96-242.ec2.internal    Node synced successfully
3m3s        Normal    RegisteredNode            node/ip-10-0-96-242.ec2.internal    Node ip-10-0-96-242.ec2.internal event: Registered Node ip-10-0-96-242.ec2.internal in Controller
3m          Normal    Starting                  node/ip-10-0-96-242.ec2.internal    
2m44s       Normal    ControllerVersionNotice   node/ip-10-0-96-242.ec2.internal    The node is managed by VPC resource controller version v1.7.9
2m44s       Normal    NodeReady                 node/ip-10-0-96-242.ec2.internal    Node ip-10-0-96-242.ec2.internal status is now: NodeReady
2m44s       Normal    Ready                     node/ip-10-0-96-242.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
2m41s       Normal    NodeTrunkInitiated        node/ip-10-0-96-242.ec2.internal    The node has trunk interface initialized successfully
7m39s       Normal    Unconsolidatable          node/ip-10-0-97-23.ec2.internal     NodePool "main-amd64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-97-23.ec2.internal     NodePool "main-amd64" has non-empty consolidation disabled
18m         Normal    Unconsolidatable          node/ip-10-0-97-78.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-97-78.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
7m39s       Normal    Unconsolidatable          node/ip-10-0-98-113.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-98-113.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
48m         Normal    Unconsolidatable          node/ip-10-0-98-253.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
39m         Normal    DisruptionBlocked         node/ip-10-0-98-253.ec2.internal    Node is deleting or marked for deletion
39m         Normal    DisruptionTerminating     node/ip-10-0-98-253.ec2.internal    Disrupting Node: Empty/Delete
39m         Warning   FailedDraining            node/ip-10-0-98-253.ec2.internal    Failed to drain node, 1 pods are waiting to be evicted
39m         Warning   InstanceTerminating       node/ip-10-0-98-253.ec2.internal    Instance is terminating
38m         Normal    NodeNotReady              node/ip-10-0-98-253.ec2.internal    Node ip-10-0-98-253.ec2.internal status is now: NodeNotReady
38m         Normal    MemoryPressure            node/ip-10-0-98-253.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
38m         Normal    DiskPressure              node/ip-10-0-98-253.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
38m         Normal    PIDPressure               node/ip-10-0-98-253.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
38m         Normal    Ready                     node/ip-10-0-98-253.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
38m         Normal    RemovingNode              node/ip-10-0-98-253.ec2.internal    Node ip-10-0-98-253.ec2.internal event: Removing Node ip-10-0-98-253.ec2.internal from Controller
50m         Normal    DisruptionBlocked         node/ip-10-0-98-33.ec2.internal     Node is deleting or marked for deletion
50m         Normal    DisruptionTerminating     node/ip-10-0-98-33.ec2.internal     Disrupting Node: Empty/Delete
50m         Warning   FailedDraining            node/ip-10-0-98-33.ec2.internal     Failed to drain node, 1 pods are waiting to be evicted
49m         Warning   InstanceTerminating       node/ip-10-0-98-33.ec2.internal     Instance is terminating
48m         Normal    RemovingNode              node/ip-10-0-98-33.ec2.internal     Node ip-10-0-98-33.ec2.internal event: Removing Node ip-10-0-98-33.ec2.internal from Controller
16m         Normal    Unconsolidatable          node/ip-10-0-98-52.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-98-52.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
48m         Normal    Unconsolidatable          node/ip-10-0-98-90.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
38m         Normal    DisruptionBlocked         node/ip-10-0-98-90.ec2.internal     Node is deleting or marked for deletion
38m         Normal    DisruptionTerminating     node/ip-10-0-98-90.ec2.internal     Disrupting Node: Empty/Delete
38m         Warning   FailedDraining            node/ip-10-0-98-90.ec2.internal     Failed to drain node, 1 pods are waiting to be evicted
38m         Warning   InstanceTerminating       node/ip-10-0-98-90.ec2.internal     Instance is terminating
37m         Normal    NodeNotReady              node/ip-10-0-98-90.ec2.internal     Node ip-10-0-98-90.ec2.internal status is now: NodeNotReady
37m         Normal    MemoryPressure            node/ip-10-0-98-90.ec2.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
37m         Normal    DiskPressure              node/ip-10-0-98-90.ec2.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
37m         Normal    PIDPressure               node/ip-10-0-98-90.ec2.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
37m         Normal    Ready                     node/ip-10-0-98-90.ec2.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
36m         Normal    RemovingNode              node/ip-10-0-98-90.ec2.internal     Node ip-10-0-98-90.ec2.internal event: Removing Node ip-10-0-98-90.ec2.internal from Controller
3m15s       Normal    Unconsolidatable          node/ip-10-0-98-99.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-98-99.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
14m         Normal    Unconsolidatable          node/ip-10-0-99-100.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-99-100.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
86s         Normal    DisruptionBlocked         node/ip-10-0-99-100.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
7m39s       Normal    Unconsolidatable          node/ip-10-0-99-104.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-99-104.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
7m39s       Normal    Unconsolidatable          node/ip-10-0-99-18.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-99-18.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
7m39s       Normal    Unconsolidatable          node/ip-10-0-99-225.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-99-225.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
7m39s       Normal    Unconsolidatable          node/ip-10-0-99-70.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
2m49s       Normal    Unconsolidatable          node/ip-10-0-99-70.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
56s         Warning   Unsupported               node/ip-10-0-99-97.ec2.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
```

Pods with issues
```
cluster-autoscaler          cluster-autoscaler-aws-cluster-autoscaler-5bbfb95df7-mpz45        0/1     CrashLoopBackOff   872 (2m58s ago)   2d23h
```

PodDisruptionBudgets
```
NAMESPACE            NAME                                        MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-autoscaler   cluster-autoscaler-aws-cluster-autoscaler   N/A             1                 0                     4d2h
cluster-monitoring   cluster-monitoring-pdb                      N/A             1                 1                     296d
default              release-name-pdb                            N/A             1                 0                     38d
karpenter            karpenter                                   N/A             1                 1                     2y253d
kube-system          coredns                                     N/A             1                 1                     623d
kube-system          ebs-csi-controller                          N/A             1                 1                     2y247d
kyverno              kyverno-admission-controller                1               N/A               2                     606d
merge-a-saurus       merge-a-saurus-pdb                          N/A             1                 1                     205d
policy-bot           policy-bot-pdb                              N/A             1                 1                     91d
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

Generated on: Mon Sep 22 10:54:59 CEST 2025
