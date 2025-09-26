# Cluster recon for tfh-internal-tools-infra,us-east-1,tools-us-east-1,tunnel-vpc-internal-tools-us-east-1

TFH EKS login...
```console
2025/09/22 11:45:59 INFO Logging into AWS
2025/09/22 11:45:59 INFO Token found and valid
2025/09/22 11:46:01 INFO Switch WARP Virtual Network to name=tunnel-vpc-internal-tools-us-east-1 id=b1421f21-2608-4c25-b450-34924057a237
2025/09/22 11:46:03 INFO Active WARP Virtual Network id=b1421f21-2608-4c25-b450-34924057a237
Updated context tfh-tools-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "tools-us-east-1",
        "arn": "arn:aws:eks:us-east-1:507152310572:cluster/tools-us-east-1",
        "createdAt": "2023-01-06T11:45:08.487000+01:00",
        "version": "1.33",
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
        "platformVersion": "eks.14",
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
NAME                           STATUS     ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-0-100-184.ec2.internal   Ready      <none>   13m     v1.33.4-eks-99d6cc0   10.0.100.184   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-100-215.ec2.internal   Ready      <none>   28m     v1.33.4-eks-99d6cc0   10.0.100.215   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-tools-us-east-1
ip-10-0-101-140.ec2.internal   Ready      <none>   3d      v1.32.8-eks-99d6cc0   10.0.101.140   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-101-55.ec2.internal    Ready      <none>   13m     v1.33.4-eks-99d6cc0   10.0.101.55    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-96-242.ec2.internal    Ready      <none>   54m     v1.32.8-eks-99d6cc0   10.0.96.242    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-96-76.ec2.internal     Ready      <none>   14m     v1.33.4-eks-99d6cc0   10.0.96.76     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-97-203.ec2.internal    Ready      <none>   11m     v1.33.4-eks-99d6cc0   10.0.97.203    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-97-224.ec2.internal    NotReady   <none>   23m     v1.33.4-eks-99d6cc0   10.0.97.224    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-97-3.ec2.internal      Ready      <none>   26m     v1.33.4-eks-99d6cc0   10.0.97.3      <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-tools-us-east-1
ip-10-0-98-144.ec2.internal    Ready      <none>   14m     v1.33.4-eks-99d6cc0   10.0.98.144    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-99-156.ec2.internal    Ready      <none>   10m     v1.33.4-eks-99d6cc0   10.0.99.156    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-99-206.ec2.internal    Ready      <none>   15m     v1.33.4-eks-99d6cc0   10.0.99.206    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-99-243.ec2.internal    Ready      <none>   6m52s   v1.33.4-eks-99d6cc0   10.0.99.243    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                           STATUS   ROLES    TAINTS
ip-10-0-100-184.ec2.internal   Ready    <none>   <none>
ip-10-0-100-215.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-101-140.ec2.internal   Ready    <none>   <none>
ip-10-0-101-55.ec2.internal    Ready    <none>   <none>
ip-10-0-96-242.ec2.internal    Ready    <none>   [map[effect:NoExecute key:enclave]]
ip-10-0-96-76.ec2.internal     Ready    <none>   <none>
ip-10-0-97-203.ec2.internal    Ready    <none>   <none>
ip-10-0-97-224.ec2.internal    Ready    <none>   [map[effect:NoSchedule key:gpu-compile] map[effect:NoSchedule key:karpenter.sh/disrupted] map[effect:NoSchedule key:node.kubernetes.io/unreachable timeAdded:2025-09-22T09:40:30Z] map[effect:NoExecute key:node.kubernetes.io/unreachable timeAdded:2025-09-22T09:40:35Z]]
ip-10-0-97-3.ec2.internal      Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-98-144.ec2.internal    Ready    <none>   <none>
ip-10-0-99-156.ec2.internal    Ready    <none>   <none>
ip-10-0-99-206.ec2.internal    Ready    <none>   <none>
ip-10-0-99-243.ec2.internal    Ready    <none>   <none>
```

Nodes with issues
```
ip-10-0-97-224.ec2.internal    NotReady   <none>   23m     v1.33.4-eks-99d6cc0
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                              MESSAGE
88m         Normal    Finalized                 node                                Finalized karpenter.sh/termination
20m         Normal    Finalized                 node                                Finalized karpenter.sh/termination
9m18s       Normal    Finalized                 node                                Finalized karpenter.sh/termination
13m         Normal    Starting                  node/ip-10-0-100-184.ec2.internal   Starting kubelet.
13m         Warning   InvalidDiskCapacity       node/ip-10-0-100-184.ec2.internal   invalid capacity 0 on image filesystem
13m         Normal    NodeHasSufficientMemory   node/ip-10-0-100-184.ec2.internal   Node ip-10-0-100-184.ec2.internal status is now: NodeHasSufficientMemory
13m         Normal    NodeHasNoDiskPressure     node/ip-10-0-100-184.ec2.internal   Node ip-10-0-100-184.ec2.internal status is now: NodeHasNoDiskPressure
13m         Normal    NodeHasSufficientPID      node/ip-10-0-100-184.ec2.internal   Node ip-10-0-100-184.ec2.internal status is now: NodeHasSufficientPID
13m         Normal    NodeAllocatableEnforced   node/ip-10-0-100-184.ec2.internal   Updated Node Allocatable limit across pods
13m         Normal    Synced                    node/ip-10-0-100-184.ec2.internal   Node synced successfully
13m         Normal    DisruptionBlocked         node/ip-10-0-100-184.ec2.internal   Node isn't initialized
13m         Normal    RegisteredNode            node/ip-10-0-100-184.ec2.internal   Node ip-10-0-100-184.ec2.internal event: Registered Node ip-10-0-100-184.ec2.internal in Controller
13m         Normal    Starting                  node/ip-10-0-100-184.ec2.internal   
12m         Normal    ControllerVersionNotice   node/ip-10-0-100-184.ec2.internal   The node is managed by VPC resource controller version v1.7.11
12m         Normal    NodeReady                 node/ip-10-0-100-184.ec2.internal   Node ip-10-0-100-184.ec2.internal status is now: NodeReady
12m         Normal    Ready                     node/ip-10-0-100-184.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
12m         Normal    NodeTrunkInitiated        node/ip-10-0-100-184.ec2.internal   The node has trunk interface initialized successfully
11m         Normal    DisruptionBlocked         node/ip-10-0-100-184.ec2.internal   Node is nominated for a pending pod
9m46s       Normal    Unconsolidatable          node/ip-10-0-100-184.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
9m10s       Normal    ControllerVersionNotice   node/ip-10-0-100-184.ec2.internal   The node is managed by VPC resource controller version v1.7.11
9m7s        Normal    NodeTrunkInitiated        node/ip-10-0-100-184.ec2.internal   The node has trunk interface initialized successfully
66m         Normal    Unconsolidatable          node/ip-10-0-100-214.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-100-214.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-100-214.ec2.internal   Node ip-10-0-100-214.ec2.internal event: Registered Node ip-10-0-100-214.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-100-214.ec2.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-100-214.ec2.internal   The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked         node/ip-10-0-100-214.ec2.internal   Node is nominated for a pending pod
20m         Normal    ControllerVersionNotice   node/ip-10-0-100-214.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-100-214.ec2.internal   The node has trunk interface initialized successfully
13m         Normal    DisruptionBlocked         node/ip-10-0-100-214.ec2.internal   Node is nominated for a pending pod
14m         Normal    RegisteredNode            node/ip-10-0-100-214.ec2.internal   Node ip-10-0-100-214.ec2.internal event: Registered Node ip-10-0-100-214.ec2.internal in Controller
14m         Normal    ControllerVersionNotice   node/ip-10-0-100-214.ec2.internal   The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeTrunkInitiated        node/ip-10-0-100-214.ec2.internal   The node has trunk interface initialized successfully
14m         Normal    Unconsolidatable          node/ip-10-0-100-214.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
9m46s       Normal    DisruptionBlocked         node/ip-10-0-100-214.ec2.internal   Node is deleting or marked for deletion
11m         Normal    DisruptionTerminating     node/ip-10-0-100-214.ec2.internal   Disrupting Node: Drifted/Replace
11m         Warning   FailedDraining            node/ip-10-0-100-214.ec2.internal   Failed to drain node, 17 pods are waiting to be evicted
10m         Warning   InstanceTerminating       node/ip-10-0-100-214.ec2.internal   Instance is terminating
9m18s       Normal    RemovingNode              node/ip-10-0-100-214.ec2.internal   Node ip-10-0-100-214.ec2.internal event: Removing Node ip-10-0-100-214.ec2.internal from Controller
28m         Normal    Starting                  node/ip-10-0-100-215.ec2.internal   Starting kubelet.
28m         Warning   InvalidDiskCapacity       node/ip-10-0-100-215.ec2.internal   invalid capacity 0 on image filesystem
28m         Normal    NodeHasSufficientMemory   node/ip-10-0-100-215.ec2.internal   Node ip-10-0-100-215.ec2.internal status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure     node/ip-10-0-100-215.ec2.internal   Node ip-10-0-100-215.ec2.internal status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID      node/ip-10-0-100-215.ec2.internal   Node ip-10-0-100-215.ec2.internal status is now: NodeHasSufficientPID
28m         Normal    NodeAllocatableEnforced   node/ip-10-0-100-215.ec2.internal   Updated Node Allocatable limit across pods
28m         Normal    Synced                    node/ip-10-0-100-215.ec2.internal   Node synced successfully
28m         Normal    RegisteredNode            node/ip-10-0-100-215.ec2.internal   Node ip-10-0-100-215.ec2.internal event: Registered Node ip-10-0-100-215.ec2.internal in Controller
28m         Normal    Starting                  node/ip-10-0-100-215.ec2.internal   
28m         Normal    ControllerVersionNotice   node/ip-10-0-100-215.ec2.internal   The node is managed by VPC resource controller version v1.7.9
27m         Warning   Unsupported               node/ip-10-0-100-215.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
27m         Normal    NodeReady                 node/ip-10-0-100-215.ec2.internal   Node ip-10-0-100-215.ec2.internal status is now: NodeReady
27m         Normal    Ready                     node/ip-10-0-100-215.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
27m         Normal    RegisteredNode            node/ip-10-0-100-215.ec2.internal   Node ip-10-0-100-215.ec2.internal event: Registered Node ip-10-0-100-215.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-100-215.ec2.internal   The node is managed by VPC resource controller version v1.7.11
22m         Warning   Unsupported               node/ip-10-0-100-215.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
20m         Normal    ControllerVersionNotice   node/ip-10-0-100-215.ec2.internal   The node is managed by VPC resource controller version v1.7.11
17m         Warning   Unsupported               node/ip-10-0-100-215.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
14m         Normal    RegisteredNode            node/ip-10-0-100-215.ec2.internal   Node ip-10-0-100-215.ec2.internal event: Registered Node ip-10-0-100-215.ec2.internal in Controller
14m         Normal    ControllerVersionNotice   node/ip-10-0-100-215.ec2.internal   The node is managed by VPC resource controller version v1.7.11
9m45s       Warning   Unsupported               node/ip-10-0-100-215.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
9m10s       Normal    ControllerVersionNotice   node/ip-10-0-100-215.ec2.internal   The node is managed by VPC resource controller version v1.7.11
2m40s       Warning   Unsupported               node/ip-10-0-100-215.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    Starting                  node/ip-10-0-100-75.ec2.internal    Starting kubelet.
28m         Warning   InvalidDiskCapacity       node/ip-10-0-100-75.ec2.internal    invalid capacity 0 on image filesystem
28m         Normal    NodeHasSufficientMemory   node/ip-10-0-100-75.ec2.internal    Node ip-10-0-100-75.ec2.internal status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure     node/ip-10-0-100-75.ec2.internal    Node ip-10-0-100-75.ec2.internal status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID      node/ip-10-0-100-75.ec2.internal    Node ip-10-0-100-75.ec2.internal status is now: NodeHasSufficientPID
28m         Normal    NodeAllocatableEnforced   node/ip-10-0-100-75.ec2.internal    Updated Node Allocatable limit across pods
28m         Normal    Synced                    node/ip-10-0-100-75.ec2.internal    Node synced successfully
28m         Normal    RegisteredNode            node/ip-10-0-100-75.ec2.internal    Node ip-10-0-100-75.ec2.internal event: Registered Node ip-10-0-100-75.ec2.internal in Controller
28m         Normal    Starting                  node/ip-10-0-100-75.ec2.internal    
28m         Normal    ControllerVersionNotice   node/ip-10-0-100-75.ec2.internal    The node is managed by VPC resource controller version v1.7.9
27m         Warning   Unsupported               node/ip-10-0-100-75.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    NodeReady                 node/ip-10-0-100-75.ec2.internal    Node ip-10-0-100-75.ec2.internal status is now: NodeReady
27m         Normal    Ready                     node/ip-10-0-100-75.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
27m         Normal    RegisteredNode            node/ip-10-0-100-75.ec2.internal    Node ip-10-0-100-75.ec2.internal event: Registered Node ip-10-0-100-75.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-100-75.ec2.internal    The node is managed by VPC resource controller version v1.7.11
22m         Warning   Unsupported               node/ip-10-0-100-75.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
20m         Normal    ControllerVersionNotice   node/ip-10-0-100-75.ec2.internal    The node is managed by VPC resource controller version v1.7.11
15m         Warning   Unsupported               node/ip-10-0-100-75.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
16m         Normal    NodeNotSchedulable        node/ip-10-0-100-75.ec2.internal    Node ip-10-0-100-75.ec2.internal status is now: NodeNotSchedulable
15m         Normal    NodeNotReady              node/ip-10-0-100-75.ec2.internal    Node ip-10-0-100-75.ec2.internal status is now: NodeNotReady
15m         Normal    MemoryPressure            node/ip-10-0-100-75.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DiskPressure              node/ip-10-0-100-75.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    PIDPressure               node/ip-10-0-100-75.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    Ready                     node/ip-10-0-100-75.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DeletingNode              node/ip-10-0-100-75.ec2.internal    Deleting node ip-10-0-100-75.ec2.internal because it does not exist in the cloud provider
15m         Normal    RemovingNode              node/ip-10-0-100-75.ec2.internal    Node ip-10-0-100-75.ec2.internal event: Removing Node ip-10-0-100-75.ec2.internal from Controller
62m         Normal    Unconsolidatable          node/ip-10-0-101-117.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-101-117.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-101-117.ec2.internal   Node ip-10-0-101-117.ec2.internal event: Registered Node ip-10-0-101-117.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-101-117.ec2.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-101-117.ec2.internal   The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked         node/ip-10-0-101-117.ec2.internal   Node is deleting or marked for deletion
23m         Normal    DisruptionTerminating     node/ip-10-0-101-117.ec2.internal   Disrupting Node: Drifted/Delete
23m         Warning   FailedDraining            node/ip-10-0-101-117.ec2.internal   Failed to drain node, 7 pods are waiting to be evicted
21m         Warning   InstanceTerminating       node/ip-10-0-101-117.ec2.internal   Instance is terminating
21m         Normal    NodeNotReady              node/ip-10-0-101-117.ec2.internal   Node ip-10-0-101-117.ec2.internal status is now: NodeNotReady
20m         Normal    RemovingNode              node/ip-10-0-101-117.ec2.internal   Node ip-10-0-101-117.ec2.internal event: Removing Node ip-10-0-101-117.ec2.internal from Controller
54m         Normal    NodeNotReady              node/ip-10-0-101-136.ec2.internal   Node ip-10-0-101-136.ec2.internal status is now: NodeNotReady
54m         Normal    MemoryPressure            node/ip-10-0-101-136.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
54m         Normal    DiskPressure              node/ip-10-0-101-136.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
54m         Normal    PIDPressure               node/ip-10-0-101-136.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
54m         Normal    Ready                     node/ip-10-0-101-136.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
54m         Normal    DeletingNode              node/ip-10-0-101-136.ec2.internal   Deleting node ip-10-0-101-136.ec2.internal because it does not exist in the cloud provider
54m         Normal    RemovingNode              node/ip-10-0-101-136.ec2.internal   Node ip-10-0-101-136.ec2.internal event: Removing Node ip-10-0-101-136.ec2.internal from Controller
56m         Normal    DisruptionBlocked         node/ip-10-0-101-140.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-autoscaler/cluster-autoscaler-aws-cluster-autoscaler)
23m         Normal    DisruptionBlocked         node/ip-10-0-101-140.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-autoscaler/cluster-autoscaler-aws-cluster-autoscaler)
29m         Normal    Unconsolidatable          node/ip-10-0-101-140.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-101-140.ec2.internal   Node ip-10-0-101-140.ec2.internal event: Registered Node ip-10-0-101-140.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-101-140.ec2.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-101-140.ec2.internal   The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked         node/ip-10-0-101-140.ec2.internal   Node is nominated for a pending pod
20m         Normal    ControllerVersionNotice   node/ip-10-0-101-140.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-101-140.ec2.internal   The node has trunk interface initialized successfully
96s         Normal    DisruptionBlocked         node/ip-10-0-101-140.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-autoscaler/cluster-autoscaler-aws-cluster-autoscaler)
14m         Normal    RegisteredNode            node/ip-10-0-101-140.ec2.internal   Node ip-10-0-101-140.ec2.internal event: Registered Node ip-10-0-101-140.ec2.internal in Controller
14m         Normal    ControllerVersionNotice   node/ip-10-0-101-140.ec2.internal   The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeTrunkInitiated        node/ip-10-0-101-140.ec2.internal   The node has trunk interface initialized successfully
11m         Normal    DisruptionBlocked         node/ip-10-0-101-140.ec2.internal   Node is nominated for a pending pod
9m10s       Normal    ControllerVersionNotice   node/ip-10-0-101-140.ec2.internal   The node is managed by VPC resource controller version v1.7.11
9m8s        Normal    NodeTrunkInitiated        node/ip-10-0-101-140.ec2.internal   The node has trunk interface initialized successfully
66m         Normal    Unconsolidatable          node/ip-10-0-101-186.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-101-186.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-101-186.ec2.internal   Node ip-10-0-101-186.ec2.internal event: Registered Node ip-10-0-101-186.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-101-186.ec2.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-101-186.ec2.internal   The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked         node/ip-10-0-101-186.ec2.internal   Node is deleting or marked for deletion
24m         Normal    DisruptionTerminating     node/ip-10-0-101-186.ec2.internal   Disrupting Node: Drifted/Delete
24m         Warning   FailedDraining            node/ip-10-0-101-186.ec2.internal   Failed to drain node, 4 pods are waiting to be evicted
23m         Warning   InstanceTerminating       node/ip-10-0-101-186.ec2.internal   Instance is terminating
22m         Normal    NodeNotReady              node/ip-10-0-101-186.ec2.internal   Node ip-10-0-101-186.ec2.internal status is now: NodeNotReady
22m         Normal    MemoryPressure            node/ip-10-0-101-186.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure              node/ip-10-0-101-186.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure               node/ip-10-0-101-186.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                     node/ip-10-0-101-186.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    DeletingNode              node/ip-10-0-101-186.ec2.internal   Deleting node ip-10-0-101-186.ec2.internal because it does not exist in the cloud provider
21m         Normal    RemovingNode              node/ip-10-0-101-186.ec2.internal   Node ip-10-0-101-186.ec2.internal event: Removing Node ip-10-0-101-186.ec2.internal from Controller
13m         Normal    Starting                  node/ip-10-0-101-55.ec2.internal    Starting kubelet.
13m         Warning   InvalidDiskCapacity       node/ip-10-0-101-55.ec2.internal    invalid capacity 0 on image filesystem
13m         Normal    NodeHasSufficientMemory   node/ip-10-0-101-55.ec2.internal    Node ip-10-0-101-55.ec2.internal status is now: NodeHasSufficientMemory
13m         Normal    NodeHasNoDiskPressure     node/ip-10-0-101-55.ec2.internal    Node ip-10-0-101-55.ec2.internal status is now: NodeHasNoDiskPressure
13m         Normal    NodeHasSufficientPID      node/ip-10-0-101-55.ec2.internal    Node ip-10-0-101-55.ec2.internal status is now: NodeHasSufficientPID
13m         Normal    NodeAllocatableEnforced   node/ip-10-0-101-55.ec2.internal    Updated Node Allocatable limit across pods
13m         Normal    Synced                    node/ip-10-0-101-55.ec2.internal    Node synced successfully
13m         Normal    RegisteredNode            node/ip-10-0-101-55.ec2.internal    Node ip-10-0-101-55.ec2.internal event: Registered Node ip-10-0-101-55.ec2.internal in Controller
13m         Normal    DisruptionBlocked         node/ip-10-0-101-55.ec2.internal    Node isn't initialized
13m         Normal    Starting                  node/ip-10-0-101-55.ec2.internal    
13m         Normal    ControllerVersionNotice   node/ip-10-0-101-55.ec2.internal    The node is managed by VPC resource controller version v1.7.11
13m         Normal    NodeReady                 node/ip-10-0-101-55.ec2.internal    Node ip-10-0-101-55.ec2.internal status is now: NodeReady
13m         Normal    Ready                     node/ip-10-0-101-55.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
13m         Normal    NodeTrunkInitiated        node/ip-10-0-101-55.ec2.internal    The node has trunk interface initialized successfully
12m         Normal    Unconsolidatable          node/ip-10-0-101-55.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
9m26s       Normal    DisruptionBlocked         node/ip-10-0-101-55.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
9m10s       Normal    ControllerVersionNotice   node/ip-10-0-101-55.ec2.internal    The node is managed by VPC resource controller version v1.7.11
9m8s        Normal    NodeTrunkInitiated        node/ip-10-0-101-55.ec2.internal    The node has trunk interface initialized successfully
65m         Normal    Unconsolidatable          node/ip-10-0-96-115.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-96-115.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-96-115.ec2.internal    Node ip-10-0-96-115.ec2.internal event: Registered Node ip-10-0-96-115.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-96-115.ec2.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-96-115.ec2.internal    The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked         node/ip-10-0-96-115.ec2.internal    Node is nominated for a pending pod
20m         Normal    ControllerVersionNotice   node/ip-10-0-96-115.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-96-115.ec2.internal    The node has trunk interface initialized successfully
20m         Normal    Unconsolidatable          node/ip-10-0-96-115.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
19m         Normal    DisruptionBlocked         node/ip-10-0-96-115.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
16m         Normal    DisruptionBlocked         node/ip-10-0-96-115.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
14m         Normal    RegisteredNode            node/ip-10-0-96-115.ec2.internal    Node ip-10-0-96-115.ec2.internal event: Registered Node ip-10-0-96-115.ec2.internal in Controller
14m         Normal    ControllerVersionNotice   node/ip-10-0-96-115.ec2.internal    The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeTrunkInitiated        node/ip-10-0-96-115.ec2.internal    The node has trunk interface initialized successfully
11m         Normal    DisruptionBlocked         node/ip-10-0-96-115.ec2.internal    Node is deleting or marked for deletion
13m         Normal    DisruptionTerminating     node/ip-10-0-96-115.ec2.internal    Disrupting Node: Drifted/Replace
13m         Warning   FailedDraining            node/ip-10-0-96-115.ec2.internal    Failed to drain node, 44 pods are waiting to be evicted
11m         Warning   InstanceTerminating       node/ip-10-0-96-115.ec2.internal    Instance is terminating
10m         Normal    NodeNotReady              node/ip-10-0-96-115.ec2.internal    Node ip-10-0-96-115.ec2.internal status is now: NodeNotReady
10m         Normal    MemoryPressure            node/ip-10-0-96-115.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    DiskPressure              node/ip-10-0-96-115.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    PIDPressure               node/ip-10-0-96-115.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    Ready                     node/ip-10-0-96-115.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    RemovingNode              node/ip-10-0-96-115.ec2.internal    Node ip-10-0-96-115.ec2.internal event: Removing Node ip-10-0-96-115.ec2.internal from Controller
59m         Normal    Unconsolidatable          node/ip-10-0-96-123.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-96-123.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-96-123.ec2.internal    Node ip-10-0-96-123.ec2.internal event: Registered Node ip-10-0-96-123.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-96-123.ec2.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-96-123.ec2.internal    The node has trunk interface initialized successfully
24m         Normal    DisruptionBlocked         node/ip-10-0-96-123.ec2.internal    Node is deleting or marked for deletion
24m         Normal    DisruptionTerminating     node/ip-10-0-96-123.ec2.internal    Disrupting Node: Drifted/Delete
24m         Warning   FailedDraining            node/ip-10-0-96-123.ec2.internal    Failed to drain node, 6 pods are waiting to be evicted
23m         Warning   InstanceTerminating       node/ip-10-0-96-123.ec2.internal    Instance is terminating
22m         Normal    NodeNotReady              node/ip-10-0-96-123.ec2.internal    Node ip-10-0-96-123.ec2.internal status is now: NodeNotReady
22m         Normal    MemoryPressure            node/ip-10-0-96-123.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure              node/ip-10-0-96-123.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure               node/ip-10-0-96-123.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                     node/ip-10-0-96-123.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    RemovingNode              node/ip-10-0-96-123.ec2.internal    Node ip-10-0-96-123.ec2.internal event: Removing Node ip-10-0-96-123.ec2.internal from Controller
32m         Warning   Unsupported               node/ip-10-0-96-144.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
27m         Normal    RegisteredNode            node/ip-10-0-96-144.ec2.internal    Node ip-10-0-96-144.ec2.internal event: Registered Node ip-10-0-96-144.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-96-144.ec2.internal    The node is managed by VPC resource controller version v1.7.11
22m         Warning   Unsupported               node/ip-10-0-96-144.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
23m         Normal    NodeNotSchedulable        node/ip-10-0-96-144.ec2.internal    Node ip-10-0-96-144.ec2.internal status is now: NodeNotSchedulable
20m         Normal    NodeNotReady              node/ip-10-0-96-144.ec2.internal    Node ip-10-0-96-144.ec2.internal status is now: NodeNotReady
20m         Normal    MemoryPressure            node/ip-10-0-96-144.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    DiskPressure              node/ip-10-0-96-144.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    PIDPressure               node/ip-10-0-96-144.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    Ready                     node/ip-10-0-96-144.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    ControllerVersionNotice   node/ip-10-0-96-144.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    DeletingNode              node/ip-10-0-96-144.ec2.internal    Deleting node ip-10-0-96-144.ec2.internal because it does not exist in the cloud provider
20m         Normal    RemovingNode              node/ip-10-0-96-144.ec2.internal    Node ip-10-0-96-144.ec2.internal event: Removing Node ip-10-0-96-144.ec2.internal from Controller
62m         Normal    Unconsolidatable          node/ip-10-0-96-161.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-96-161.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-96-161.ec2.internal    Node ip-10-0-96-161.ec2.internal event: Registered Node ip-10-0-96-161.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-96-161.ec2.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-96-161.ec2.internal    The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked         node/ip-10-0-96-161.ec2.internal    Node is nominated for a pending pod
20m         Normal    ControllerVersionNotice   node/ip-10-0-96-161.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-96-161.ec2.internal    The node has trunk interface initialized successfully
20m         Normal    DisruptionBlocked         node/ip-10-0-96-161.ec2.internal    Node is nominated for a pending pod
19m         Normal    Unconsolidatable          node/ip-10-0-96-161.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    DisruptionBlocked         node/ip-10-0-96-161.ec2.internal    Node is deleting or marked for deletion
17m         Normal    DisruptionTerminating     node/ip-10-0-96-161.ec2.internal    Disrupting Node: Drifted/Delete
17m         Warning   FailedDraining            node/ip-10-0-96-161.ec2.internal    Failed to drain node, 11 pods are waiting to be evicted
16m         Warning   InstanceTerminating       node/ip-10-0-96-161.ec2.internal    Instance is terminating
16m         Normal    RemovingNode              node/ip-10-0-96-161.ec2.internal    Node ip-10-0-96-161.ec2.internal event: Removing Node ip-10-0-96-161.ec2.internal from Controller
55m         Normal    Unconsolidatable          node/ip-10-0-96-168.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-96-168.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-96-168.ec2.internal    Node ip-10-0-96-168.ec2.internal event: Registered Node ip-10-0-96-168.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-96-168.ec2.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-96-168.ec2.internal    The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked         node/ip-10-0-96-168.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
22m         Normal    DisruptionTerminating     node/ip-10-0-96-168.ec2.internal    Disrupting Node: Drifted/Delete
22m         Warning   FailedDraining            node/ip-10-0-96-168.ec2.internal    Failed to drain node, 5 pods are waiting to be evicted
22m         Warning   InstanceTerminating       node/ip-10-0-96-168.ec2.internal    Instance is terminating
21m         Normal    NodeNotReady              node/ip-10-0-96-168.ec2.internal    Node ip-10-0-96-168.ec2.internal status is now: NodeNotReady
21m         Normal    DisruptionBlocked         node/ip-10-0-96-168.ec2.internal    Node is deleting or marked for deletion
20m         Normal    RemovingNode              node/ip-10-0-96-168.ec2.internal    Node ip-10-0-96-168.ec2.internal event: Removing Node ip-10-0-96-168.ec2.internal from Controller
59m         Normal    Unconsolidatable          node/ip-10-0-96-217.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-96-217.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
54m         Normal    DisruptionBlocked         node/ip-10-0-96-217.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
27m         Normal    RegisteredNode            node/ip-10-0-96-217.ec2.internal    Node ip-10-0-96-217.ec2.internal event: Registered Node ip-10-0-96-217.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-96-217.ec2.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-96-217.ec2.internal    The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked         node/ip-10-0-96-217.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=policy-bot/policy-bot-pdb)
20m         Normal    ControllerVersionNotice   node/ip-10-0-96-217.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-96-217.ec2.internal    The node has trunk interface initialized successfully
20m         Normal    Unconsolidatable          node/ip-10-0-96-217.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    DisruptionBlocked         node/ip-10-0-96-217.ec2.internal    Node is deleting or marked for deletion
19m         Normal    DisruptionTerminating     node/ip-10-0-96-217.ec2.internal    Disrupting Node: Drifted/Delete
19m         Warning   FailedDraining            node/ip-10-0-96-217.ec2.internal    Failed to drain node, 10 pods are waiting to be evicted
18m         Warning   InstanceTerminating       node/ip-10-0-96-217.ec2.internal    Instance is terminating
17m         Normal    NodeNotReady              node/ip-10-0-96-217.ec2.internal    Node ip-10-0-96-217.ec2.internal status is now: NodeNotReady
17m         Normal    MemoryPressure            node/ip-10-0-96-217.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure              node/ip-10-0-96-217.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure               node/ip-10-0-96-217.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                     node/ip-10-0-96-217.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    RemovingNode              node/ip-10-0-96-217.ec2.internal    Node ip-10-0-96-217.ec2.internal event: Removing Node ip-10-0-96-217.ec2.internal from Controller
55m         Normal    Starting                  node/ip-10-0-96-242.ec2.internal    Starting kubelet.
55m         Warning   InvalidDiskCapacity       node/ip-10-0-96-242.ec2.internal    invalid capacity 0 on image filesystem
55m         Normal    NodeHasSufficientMemory   node/ip-10-0-96-242.ec2.internal    Node ip-10-0-96-242.ec2.internal status is now: NodeHasSufficientMemory
55m         Normal    NodeHasNoDiskPressure     node/ip-10-0-96-242.ec2.internal    Node ip-10-0-96-242.ec2.internal status is now: NodeHasNoDiskPressure
55m         Normal    NodeHasSufficientPID      node/ip-10-0-96-242.ec2.internal    Node ip-10-0-96-242.ec2.internal status is now: NodeHasSufficientPID
55m         Normal    NodeAllocatableEnforced   node/ip-10-0-96-242.ec2.internal    Updated Node Allocatable limit across pods
55m         Normal    Synced                    node/ip-10-0-96-242.ec2.internal    Node synced successfully
54m         Normal    RegisteredNode            node/ip-10-0-96-242.ec2.internal    Node ip-10-0-96-242.ec2.internal event: Registered Node ip-10-0-96-242.ec2.internal in Controller
54m         Normal    Starting                  node/ip-10-0-96-242.ec2.internal    
54m         Normal    ControllerVersionNotice   node/ip-10-0-96-242.ec2.internal    The node is managed by VPC resource controller version v1.7.9
54m         Normal    NodeReady                 node/ip-10-0-96-242.ec2.internal    Node ip-10-0-96-242.ec2.internal status is now: NodeReady
54m         Normal    Ready                     node/ip-10-0-96-242.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
54m         Normal    NodeTrunkInitiated        node/ip-10-0-96-242.ec2.internal    The node has trunk interface initialized successfully
27m         Normal    RegisteredNode            node/ip-10-0-96-242.ec2.internal    Node ip-10-0-96-242.ec2.internal event: Registered Node ip-10-0-96-242.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-96-242.ec2.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-96-242.ec2.internal    The node has trunk interface initialized successfully
20m         Normal    ControllerVersionNotice   node/ip-10-0-96-242.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-96-242.ec2.internal    The node has trunk interface initialized successfully
14m         Normal    RegisteredNode            node/ip-10-0-96-242.ec2.internal    Node ip-10-0-96-242.ec2.internal event: Registered Node ip-10-0-96-242.ec2.internal in Controller
14m         Normal    ControllerVersionNotice   node/ip-10-0-96-242.ec2.internal    The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeTrunkInitiated        node/ip-10-0-96-242.ec2.internal    The node has trunk interface initialized successfully
9m10s       Normal    ControllerVersionNotice   node/ip-10-0-96-242.ec2.internal    The node is managed by VPC resource controller version v1.7.11
9m8s        Normal    NodeTrunkInitiated        node/ip-10-0-96-242.ec2.internal    The node has trunk interface initialized successfully
14m         Normal    Starting                  node/ip-10-0-96-76.ec2.internal     Starting kubelet.
14m         Warning   InvalidDiskCapacity       node/ip-10-0-96-76.ec2.internal     invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory   node/ip-10-0-96-76.ec2.internal     Node ip-10-0-96-76.ec2.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure     node/ip-10-0-96-76.ec2.internal     Node ip-10-0-96-76.ec2.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID      node/ip-10-0-96-76.ec2.internal     Node ip-10-0-96-76.ec2.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced   node/ip-10-0-96-76.ec2.internal     Updated Node Allocatable limit across pods
14m         Normal    DisruptionBlocked         node/ip-10-0-96-76.ec2.internal     Node isn't initialized
14m         Normal    RegisteredNode            node/ip-10-0-96-76.ec2.internal     Node ip-10-0-96-76.ec2.internal event: Registered Node ip-10-0-96-76.ec2.internal in Controller
14m         Normal    Synced                    node/ip-10-0-96-76.ec2.internal     Node synced successfully
14m         Normal    Starting                  node/ip-10-0-96-76.ec2.internal     
14m         Normal    ControllerVersionNotice   node/ip-10-0-96-76.ec2.internal     The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeReady                 node/ip-10-0-96-76.ec2.internal     Node ip-10-0-96-76.ec2.internal status is now: NodeReady
14m         Normal    Ready                     node/ip-10-0-96-76.ec2.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
13m         Normal    NodeTrunkInitiated        node/ip-10-0-96-76.ec2.internal     The node has trunk interface initialized successfully
10m         Normal    DisruptionBlocked         node/ip-10-0-96-76.ec2.internal     Node is nominated for a pending pod
9m46s       Normal    Unconsolidatable          node/ip-10-0-96-76.ec2.internal     NodePool "main-amd64" has non-empty consolidation disabled
9m10s       Normal    ControllerVersionNotice   node/ip-10-0-96-76.ec2.internal     The node is managed by VPC resource controller version v1.7.11
9m8s        Normal    NodeTrunkInitiated        node/ip-10-0-96-76.ec2.internal     The node has trunk interface initialized successfully
29m         Normal    Starting                  node/ip-10-0-97-1.ec2.internal      Starting kubelet.
29m         Warning   InvalidDiskCapacity       node/ip-10-0-97-1.ec2.internal      invalid capacity 0 on image filesystem
29m         Normal    NodeHasSufficientMemory   node/ip-10-0-97-1.ec2.internal      Node ip-10-0-97-1.ec2.internal status is now: NodeHasSufficientMemory
29m         Normal    NodeHasNoDiskPressure     node/ip-10-0-97-1.ec2.internal      Node ip-10-0-97-1.ec2.internal status is now: NodeHasNoDiskPressure
29m         Normal    NodeHasSufficientPID      node/ip-10-0-97-1.ec2.internal      Node ip-10-0-97-1.ec2.internal status is now: NodeHasSufficientPID
29m         Normal    NodeAllocatableEnforced   node/ip-10-0-97-1.ec2.internal      Updated Node Allocatable limit across pods
29m         Normal    Synced                    node/ip-10-0-97-1.ec2.internal      Node synced successfully
29m         Normal    RegisteredNode            node/ip-10-0-97-1.ec2.internal      Node ip-10-0-97-1.ec2.internal event: Registered Node ip-10-0-97-1.ec2.internal in Controller
29m         Normal    DisruptionBlocked         node/ip-10-0-97-1.ec2.internal      Node isn't initialized
29m         Normal    Starting                  node/ip-10-0-97-1.ec2.internal      
29m         Normal    ControllerVersionNotice   node/ip-10-0-97-1.ec2.internal      The node is managed by VPC resource controller version v1.7.9
29m         Normal    NodeReady                 node/ip-10-0-97-1.ec2.internal      Node ip-10-0-97-1.ec2.internal status is now: NodeReady
29m         Normal    Ready                     node/ip-10-0-97-1.ec2.internal      Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
29m         Normal    NodeTrunkInitiated        node/ip-10-0-97-1.ec2.internal      The node has trunk interface initialized successfully
28m         Normal    Unconsolidatable          node/ip-10-0-97-1.ec2.internal      NodePool "gpu-compile" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-97-1.ec2.internal      Node ip-10-0-97-1.ec2.internal event: Registered Node ip-10-0-97-1.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-97-1.ec2.internal      The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-97-1.ec2.internal      The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked         node/ip-10-0-97-1.ec2.internal      Node is deleting or marked for deletion
22m         Normal    DisruptionTerminating     node/ip-10-0-97-1.ec2.internal      Disrupting Node: Drifted/Replace
22m         Warning   FailedDraining            node/ip-10-0-97-1.ec2.internal      Failed to drain node, 2 pods are waiting to be evicted
22m         Warning   InstanceTerminating       node/ip-10-0-97-1.ec2.internal      Instance is terminating
21m         Normal    NodeNotReady              node/ip-10-0-97-1.ec2.internal      Node ip-10-0-97-1.ec2.internal status is now: NodeNotReady
21m         Normal    MemoryPressure            node/ip-10-0-97-1.ec2.internal      Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    DiskPressure              node/ip-10-0-97-1.ec2.internal      Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    PIDPressure               node/ip-10-0-97-1.ec2.internal      Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    Ready                     node/ip-10-0-97-1.ec2.internal      Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    ControllerVersionNotice   node/ip-10-0-97-1.ec2.internal      The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-97-1.ec2.internal      The node has trunk interface initialized successfully
16m         Normal    DisruptionBlocked         node/ip-10-0-97-1.ec2.internal      Node is deleting or marked for deletion
15m         Warning   InstanceTerminating       node/ip-10-0-97-1.ec2.internal      Instance is terminating
14m         Normal    DeletingNode              node/ip-10-0-97-1.ec2.internal      Deleting node ip-10-0-97-1.ec2.internal because it does not exist in the cloud provider
14m         Normal    RemovingNode              node/ip-10-0-97-1.ec2.internal      Node ip-10-0-97-1.ec2.internal event: Removing Node ip-10-0-97-1.ec2.internal from Controller
11m         Normal    Starting                  node/ip-10-0-97-203.ec2.internal    Starting kubelet.
11m         Warning   InvalidDiskCapacity       node/ip-10-0-97-203.ec2.internal    invalid capacity 0 on image filesystem
11m         Normal    NodeHasSufficientMemory   node/ip-10-0-97-203.ec2.internal    Node ip-10-0-97-203.ec2.internal status is now: NodeHasSufficientMemory
11m         Normal    NodeHasNoDiskPressure     node/ip-10-0-97-203.ec2.internal    Node ip-10-0-97-203.ec2.internal status is now: NodeHasNoDiskPressure
11m         Normal    NodeHasSufficientPID      node/ip-10-0-97-203.ec2.internal    Node ip-10-0-97-203.ec2.internal status is now: NodeHasSufficientPID
11m         Normal    NodeAllocatableEnforced   node/ip-10-0-97-203.ec2.internal    Updated Node Allocatable limit across pods
11m         Normal    Synced                    node/ip-10-0-97-203.ec2.internal    Node synced successfully
11m         Normal    RegisteredNode            node/ip-10-0-97-203.ec2.internal    Node ip-10-0-97-203.ec2.internal event: Registered Node ip-10-0-97-203.ec2.internal in Controller
11m         Normal    DisruptionBlocked         node/ip-10-0-97-203.ec2.internal    Node isn't initialized
11m         Normal    Starting                  node/ip-10-0-97-203.ec2.internal    
11m         Normal    ControllerVersionNotice   node/ip-10-0-97-203.ec2.internal    The node is managed by VPC resource controller version v1.7.11
11m         Normal    NodeReady                 node/ip-10-0-97-203.ec2.internal    Node ip-10-0-97-203.ec2.internal status is now: NodeReady
11m         Normal    Ready                     node/ip-10-0-97-203.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
11m         Normal    NodeTrunkInitiated        node/ip-10-0-97-203.ec2.internal    The node has trunk interface initialized successfully
10m         Normal    Unconsolidatable          node/ip-10-0-97-203.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
9m10s       Normal    ControllerVersionNotice   node/ip-10-0-97-203.ec2.internal    The node is managed by VPC resource controller version v1.7.11
9m7s        Normal    NodeTrunkInitiated        node/ip-10-0-97-203.ec2.internal    The node has trunk interface initialized successfully
23m         Normal    Starting                  node/ip-10-0-97-224.ec2.internal    Starting kubelet.
23m         Warning   InvalidDiskCapacity       node/ip-10-0-97-224.ec2.internal    invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory   node/ip-10-0-97-224.ec2.internal    Node ip-10-0-97-224.ec2.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure     node/ip-10-0-97-224.ec2.internal    Node ip-10-0-97-224.ec2.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID      node/ip-10-0-97-224.ec2.internal    Node ip-10-0-97-224.ec2.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced   node/ip-10-0-97-224.ec2.internal    Updated Node Allocatable limit across pods
23m         Normal    Synced                    node/ip-10-0-97-224.ec2.internal    Node synced successfully
23m         Normal    RegisteredNode            node/ip-10-0-97-224.ec2.internal    Node ip-10-0-97-224.ec2.internal event: Registered Node ip-10-0-97-224.ec2.internal in Controller
23m         Normal    DisruptionBlocked         node/ip-10-0-97-224.ec2.internal    Node isn't initialized
23m         Normal    Starting                  node/ip-10-0-97-224.ec2.internal    
23m         Normal    ControllerVersionNotice   node/ip-10-0-97-224.ec2.internal    The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeReady                 node/ip-10-0-97-224.ec2.internal    Node ip-10-0-97-224.ec2.internal status is now: NodeReady
22m         Normal    Ready                     node/ip-10-0-97-224.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    NodeTrunkInitiated        node/ip-10-0-97-224.ec2.internal    The node has trunk interface initialized successfully
22m         Normal    Unconsolidatable          node/ip-10-0-97-224.ec2.internal    NodePool "gpu-compile" has non-empty consolidation disabled
20m         Normal    ControllerVersionNotice   node/ip-10-0-97-224.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-97-224.ec2.internal    The node has trunk interface initialized successfully
20m         Normal    Unconsolidatable          node/ip-10-0-97-224.ec2.internal    NodePool "gpu-compile" has non-empty consolidation disabled
14m         Normal    RegisteredNode            node/ip-10-0-97-224.ec2.internal    Node ip-10-0-97-224.ec2.internal event: Registered Node ip-10-0-97-224.ec2.internal in Controller
14m         Normal    ControllerVersionNotice   node/ip-10-0-97-224.ec2.internal    The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeTrunkInitiated        node/ip-10-0-97-224.ec2.internal    The node has trunk interface initialized successfully
9m10s       Normal    ControllerVersionNotice   node/ip-10-0-97-224.ec2.internal    The node is managed by VPC resource controller version v1.7.11
9m7s        Normal    NodeTrunkInitiated        node/ip-10-0-97-224.ec2.internal    The node has trunk interface initialized successfully
23s         Normal    DisruptionBlocked         node/ip-10-0-97-224.ec2.internal    Node is deleting or marked for deletion
6m34s       Normal    DisruptionTerminating     node/ip-10-0-97-224.ec2.internal    Disrupting Node: Empty/Delete
6m34s       Warning   FailedDraining            node/ip-10-0-97-224.ec2.internal    Failed to drain node, 1 pods are waiting to be evicted
6m32s       Warning   InstanceTerminating       node/ip-10-0-97-224.ec2.internal    Instance is terminating
5m48s       Normal    NodeNotReady              node/ip-10-0-97-224.ec2.internal    Node ip-10-0-97-224.ec2.internal status is now: NodeNotReady
5m48s       Normal    MemoryPressure            node/ip-10-0-97-224.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
5m48s       Normal    DiskPressure              node/ip-10-0-97-224.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
5m48s       Normal    PIDPressure               node/ip-10-0-97-224.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
5m48s       Normal    Ready                     node/ip-10-0-97-224.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
59m         Normal    Unconsolidatable          node/ip-10-0-97-23.ec2.internal     NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-97-23.ec2.internal     NodePool "main-amd64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-97-23.ec2.internal     Node ip-10-0-97-23.ec2.internal event: Registered Node ip-10-0-97-23.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-97-23.ec2.internal     The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-97-23.ec2.internal     The node has trunk interface initialized successfully
18m         Normal    ControllerVersionNotice   node/ip-10-0-97-23.ec2.internal     The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-97-23.ec2.internal     The node has trunk interface initialized successfully
20m         Normal    DisruptionBlocked         node/ip-10-0-97-23.ec2.internal     Node is deleting or marked for deletion
20m         Normal    DisruptionTerminating     node/ip-10-0-97-23.ec2.internal     Disrupting Node: Drifted/Delete
20m         Warning   FailedDraining            node/ip-10-0-97-23.ec2.internal     Failed to drain node, 4 pods are waiting to be evicted
19m         Warning   InstanceTerminating       node/ip-10-0-97-23.ec2.internal     Instance is terminating
18m         Normal    NodeNotReady              node/ip-10-0-97-23.ec2.internal     Node ip-10-0-97-23.ec2.internal status is now: NodeNotReady
18m         Normal    MemoryPressure            node/ip-10-0-97-23.ec2.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    DiskPressure              node/ip-10-0-97-23.ec2.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    PIDPressure               node/ip-10-0-97-23.ec2.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    Ready                     node/ip-10-0-97-23.ec2.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    DeletingNode              node/ip-10-0-97-23.ec2.internal     Deleting node ip-10-0-97-23.ec2.internal because it does not exist in the cloud provider
18m         Warning   DeletingNodeFailed        node/ip-10-0-97-23.ec2.internal     Failed deleting node ip-10-0-97-23.ec2.internal: nodes "ip-10-0-97-23.ec2.internal" not found
18m         Normal    RemovingNode              node/ip-10-0-97-23.ec2.internal     Node ip-10-0-97-23.ec2.internal event: Removing Node ip-10-0-97-23.ec2.internal from Controller
26m         Normal    Starting                  node/ip-10-0-97-3.ec2.internal      Starting kubelet.
26m         Warning   InvalidDiskCapacity       node/ip-10-0-97-3.ec2.internal      invalid capacity 0 on image filesystem
26m         Normal    NodeHasSufficientMemory   node/ip-10-0-97-3.ec2.internal      Node ip-10-0-97-3.ec2.internal status is now: NodeHasSufficientMemory
26m         Normal    NodeHasNoDiskPressure     node/ip-10-0-97-3.ec2.internal      Node ip-10-0-97-3.ec2.internal status is now: NodeHasNoDiskPressure
26m         Normal    NodeHasSufficientPID      node/ip-10-0-97-3.ec2.internal      Node ip-10-0-97-3.ec2.internal status is now: NodeHasSufficientPID
26m         Normal    NodeAllocatableEnforced   node/ip-10-0-97-3.ec2.internal      Updated Node Allocatable limit across pods
26m         Normal    RegisteredNode            node/ip-10-0-97-3.ec2.internal      Node ip-10-0-97-3.ec2.internal event: Registered Node ip-10-0-97-3.ec2.internal in Controller
26m         Normal    Starting                  node/ip-10-0-97-3.ec2.internal      
26m         Normal    Synced                    node/ip-10-0-97-3.ec2.internal      Node synced successfully
26m         Normal    ControllerVersionNotice   node/ip-10-0-97-3.ec2.internal      The node is managed by VPC resource controller version v1.7.11
23m         Warning   Unsupported               node/ip-10-0-97-3.ec2.internal      The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    NodeReady                 node/ip-10-0-97-3.ec2.internal      Node ip-10-0-97-3.ec2.internal status is now: NodeReady
25m         Normal    Ready                     node/ip-10-0-97-3.ec2.internal      Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
20m         Normal    ControllerVersionNotice   node/ip-10-0-97-3.ec2.internal      The node is managed by VPC resource controller version v1.7.11
15m         Warning   Unsupported               node/ip-10-0-97-3.ec2.internal      The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
14m         Normal    RegisteredNode            node/ip-10-0-97-3.ec2.internal      Node ip-10-0-97-3.ec2.internal event: Registered Node ip-10-0-97-3.ec2.internal in Controller
14m         Normal    ControllerVersionNotice   node/ip-10-0-97-3.ec2.internal      The node is managed by VPC resource controller version v1.7.11
10m         Warning   Unsupported               node/ip-10-0-97-3.ec2.internal      The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
9m10s       Normal    ControllerVersionNotice   node/ip-10-0-97-3.ec2.internal      The node is managed by VPC resource controller version v1.7.11
37s         Warning   Unsupported               node/ip-10-0-97-3.ec2.internal      The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
70m         Normal    Unconsolidatable          node/ip-10-0-97-78.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-97-78.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-97-78.ec2.internal     Node ip-10-0-97-78.ec2.internal event: Registered Node ip-10-0-97-78.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-97-78.ec2.internal     The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-97-78.ec2.internal     The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked         node/ip-10-0-97-78.ec2.internal     Node is deleting or marked for deletion
23m         Normal    DisruptionTerminating     node/ip-10-0-97-78.ec2.internal     Disrupting Node: Drifted/Delete
23m         Warning   FailedDraining            node/ip-10-0-97-78.ec2.internal     Failed to drain node, 4 pods are waiting to be evicted
22m         Warning   InstanceTerminating       node/ip-10-0-97-78.ec2.internal     Instance is terminating
21m         Normal    NodeNotReady              node/ip-10-0-97-78.ec2.internal     Node ip-10-0-97-78.ec2.internal status is now: NodeNotReady
21m         Normal    MemoryPressure            node/ip-10-0-97-78.ec2.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    DiskPressure              node/ip-10-0-97-78.ec2.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    PIDPressure               node/ip-10-0-97-78.ec2.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    Ready                     node/ip-10-0-97-78.ec2.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    RemovingNode              node/ip-10-0-97-78.ec2.internal     Node ip-10-0-97-78.ec2.internal event: Removing Node ip-10-0-97-78.ec2.internal from Controller
59m         Normal    Unconsolidatable          node/ip-10-0-98-113.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-98-113.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-98-113.ec2.internal    Node ip-10-0-98-113.ec2.internal event: Registered Node ip-10-0-98-113.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-98-113.ec2.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-98-113.ec2.internal    The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked         node/ip-10-0-98-113.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
20m         Normal    ControllerVersionNotice   node/ip-10-0-98-113.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-98-113.ec2.internal    The node has trunk interface initialized successfully
20m         Normal    Unconsolidatable          node/ip-10-0-98-113.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
19m         Normal    DisruptionBlocked         node/ip-10-0-98-113.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
17m         Normal    DisruptionBlocked         node/ip-10-0-98-113.ec2.internal    Node is deleting or marked for deletion
17m         Normal    DisruptionTerminating     node/ip-10-0-98-113.ec2.internal    Disrupting Node: Drifted/Delete
17m         Warning   FailedDraining            node/ip-10-0-98-113.ec2.internal    Failed to drain node, 8 pods are waiting to be evicted
16m         Warning   InstanceTerminating       node/ip-10-0-98-113.ec2.internal    Instance is terminating
15m         Normal    RemovingNode              node/ip-10-0-98-113.ec2.internal    Node ip-10-0-98-113.ec2.internal event: Removing Node ip-10-0-98-113.ec2.internal from Controller
14m         Normal    Starting                  node/ip-10-0-98-144.ec2.internal    Starting kubelet.
14m         Warning   InvalidDiskCapacity       node/ip-10-0-98-144.ec2.internal    invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory   node/ip-10-0-98-144.ec2.internal    Node ip-10-0-98-144.ec2.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure     node/ip-10-0-98-144.ec2.internal    Node ip-10-0-98-144.ec2.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID      node/ip-10-0-98-144.ec2.internal    Node ip-10-0-98-144.ec2.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced   node/ip-10-0-98-144.ec2.internal    Updated Node Allocatable limit across pods
14m         Normal    Synced                    node/ip-10-0-98-144.ec2.internal    Node synced successfully
14m         Normal    DisruptionBlocked         node/ip-10-0-98-144.ec2.internal    Node isn't initialized
14m         Normal    RegisteredNode            node/ip-10-0-98-144.ec2.internal    Node ip-10-0-98-144.ec2.internal event: Registered Node ip-10-0-98-144.ec2.internal in Controller
14m         Normal    Starting                  node/ip-10-0-98-144.ec2.internal    
14m         Normal    ControllerVersionNotice   node/ip-10-0-98-144.ec2.internal    The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeReady                 node/ip-10-0-98-144.ec2.internal    Node ip-10-0-98-144.ec2.internal status is now: NodeReady
14m         Normal    Ready                     node/ip-10-0-98-144.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeTrunkInitiated        node/ip-10-0-98-144.ec2.internal    The node has trunk interface initialized successfully
13m         Normal    Unconsolidatable          node/ip-10-0-98-144.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
12m         Normal    DisruptionBlocked         node/ip-10-0-98-144.ec2.internal    Node is nominated for a pending pod
9m26s       Normal    DisruptionBlocked         node/ip-10-0-98-144.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
9m10s       Normal    ControllerVersionNotice   node/ip-10-0-98-144.ec2.internal    The node is managed by VPC resource controller version v1.7.11
9m8s        Normal    NodeTrunkInitiated        node/ip-10-0-98-144.ec2.internal    The node has trunk interface initialized successfully
91m         Normal    DisruptionBlocked         node/ip-10-0-98-253.ec2.internal    Node is deleting or marked for deletion
91m         Normal    DisruptionTerminating     node/ip-10-0-98-253.ec2.internal    Disrupting Node: Empty/Delete
91m         Warning   FailedDraining            node/ip-10-0-98-253.ec2.internal    Failed to drain node, 1 pods are waiting to be evicted
91m         Warning   InstanceTerminating       node/ip-10-0-98-253.ec2.internal    Instance is terminating
90m         Normal    NodeNotReady              node/ip-10-0-98-253.ec2.internal    Node ip-10-0-98-253.ec2.internal status is now: NodeNotReady
90m         Normal    MemoryPressure            node/ip-10-0-98-253.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
90m         Normal    DiskPressure              node/ip-10-0-98-253.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
90m         Normal    PIDPressure               node/ip-10-0-98-253.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
90m         Normal    Ready                     node/ip-10-0-98-253.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
89m         Normal    RemovingNode              node/ip-10-0-98-253.ec2.internal    Node ip-10-0-98-253.ec2.internal event: Removing Node ip-10-0-98-253.ec2.internal from Controller
68m         Normal    Unconsolidatable          node/ip-10-0-98-52.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-98-52.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-98-52.ec2.internal     Node ip-10-0-98-52.ec2.internal event: Registered Node ip-10-0-98-52.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-98-52.ec2.internal     The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-98-52.ec2.internal     The node has trunk interface initialized successfully
20m         Normal    ControllerVersionNotice   node/ip-10-0-98-52.ec2.internal     The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-98-52.ec2.internal     The node has trunk interface initialized successfully
20m         Normal    Unconsolidatable          node/ip-10-0-98-52.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
19m         Normal    DisruptionBlocked         node/ip-10-0-98-52.ec2.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
16m         Normal    DisruptionBlocked         node/ip-10-0-98-52.ec2.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
15m         Normal    DisruptionTerminating     node/ip-10-0-98-52.ec2.internal     Disrupting Node: Drifted/Delete
15m         Warning   FailedDraining            node/ip-10-0-98-52.ec2.internal     Failed to drain node, 24 pods are waiting to be evicted
14m         Warning   InstanceTerminating       node/ip-10-0-98-52.ec2.internal     Instance is terminating
14m         Normal    RegisteredNode            node/ip-10-0-98-52.ec2.internal     Node ip-10-0-98-52.ec2.internal event: Registered Node ip-10-0-98-52.ec2.internal in Controller
14m         Normal    ControllerVersionNotice   node/ip-10-0-98-52.ec2.internal     The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeTrunkInitiated        node/ip-10-0-98-52.ec2.internal     The node has trunk interface initialized successfully
14m         Normal    DisruptionBlocked         node/ip-10-0-98-52.ec2.internal     Node is deleting or marked for deletion
13m         Normal    NodeNotReady              node/ip-10-0-98-52.ec2.internal     Node ip-10-0-98-52.ec2.internal status is now: NodeNotReady
13m         Normal    MemoryPressure            node/ip-10-0-98-52.ec2.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DiskPressure              node/ip-10-0-98-52.ec2.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    PIDPressure               node/ip-10-0-98-52.ec2.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    Ready                     node/ip-10-0-98-52.ec2.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DeletingNode              node/ip-10-0-98-52.ec2.internal     Deleting node ip-10-0-98-52.ec2.internal because it does not exist in the cloud provider
13m         Normal    RemovingNode              node/ip-10-0-98-52.ec2.internal     Node ip-10-0-98-52.ec2.internal event: Removing Node ip-10-0-98-52.ec2.internal from Controller
90m         Normal    DisruptionBlocked         node/ip-10-0-98-90.ec2.internal     Node is deleting or marked for deletion
90m         Normal    DisruptionTerminating     node/ip-10-0-98-90.ec2.internal     Disrupting Node: Empty/Delete
90m         Warning   FailedDraining            node/ip-10-0-98-90.ec2.internal     Failed to drain node, 1 pods are waiting to be evicted
90m         Warning   InstanceTerminating       node/ip-10-0-98-90.ec2.internal     Instance is terminating
89m         Normal    NodeNotReady              node/ip-10-0-98-90.ec2.internal     Node ip-10-0-98-90.ec2.internal status is now: NodeNotReady
89m         Normal    MemoryPressure            node/ip-10-0-98-90.ec2.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
89m         Normal    DiskPressure              node/ip-10-0-98-90.ec2.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
89m         Normal    PIDPressure               node/ip-10-0-98-90.ec2.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
89m         Normal    Ready                     node/ip-10-0-98-90.ec2.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
88m         Normal    RemovingNode              node/ip-10-0-98-90.ec2.internal     Node ip-10-0-98-90.ec2.internal event: Removing Node ip-10-0-98-90.ec2.internal from Controller
55m         Normal    Unconsolidatable          node/ip-10-0-98-99.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-98-99.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-98-99.ec2.internal     Node ip-10-0-98-99.ec2.internal event: Registered Node ip-10-0-98-99.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-98-99.ec2.internal     The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-98-99.ec2.internal     The node has trunk interface initialized successfully
20m         Normal    DisruptionBlocked         node/ip-10-0-98-99.ec2.internal     Node is deleting or marked for deletion
20m         Normal    DisruptionTerminating     node/ip-10-0-98-99.ec2.internal     Disrupting Node: Drifted/Delete
20m         Warning   FailedDraining            node/ip-10-0-98-99.ec2.internal     Failed to drain node, 12 pods are waiting to be evicted
20m         Normal    ControllerVersionNotice   node/ip-10-0-98-99.ec2.internal     The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-98-99.ec2.internal     The node has trunk interface initialized successfully
20m         Warning   FailedDraining            node/ip-10-0-98-99.ec2.internal     Failed to drain node, 4 pods are waiting to be evicted
20m         Normal    DisruptionBlocked         node/ip-10-0-98-99.ec2.internal     Node is deleting or marked for deletion
19m         Warning   InstanceTerminating       node/ip-10-0-98-99.ec2.internal     Instance is terminating
19m         Normal    RemovingNode              node/ip-10-0-98-99.ec2.internal     Node ip-10-0-98-99.ec2.internal event: Removing Node ip-10-0-98-99.ec2.internal from Controller
66m         Normal    Unconsolidatable          node/ip-10-0-99-100.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-99-100.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
53m         Normal    DisruptionBlocked         node/ip-10-0-99-100.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
27m         Normal    RegisteredNode            node/ip-10-0-99-100.ec2.internal    Node ip-10-0-99-100.ec2.internal event: Registered Node ip-10-0-99-100.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-99-100.ec2.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-99-100.ec2.internal    The node has trunk interface initialized successfully
23m         Normal    DisruptionTerminating     node/ip-10-0-99-100.ec2.internal    Disrupting Node: Drifted/Delete
23m         Normal    DisruptionBlocked         node/ip-10-0-99-100.ec2.internal    Node is deleting or marked for deletion
23m         Warning   FailedDraining            node/ip-10-0-99-100.ec2.internal    Failed to drain node, 6 pods are waiting to be evicted
21m         Warning   InstanceTerminating       node/ip-10-0-99-100.ec2.internal    Instance is terminating
21m         Normal    NodeNotReady              node/ip-10-0-99-100.ec2.internal    Node ip-10-0-99-100.ec2.internal status is now: NodeNotReady
20m         Normal    RemovingNode              node/ip-10-0-99-100.ec2.internal    Node ip-10-0-99-100.ec2.internal event: Removing Node ip-10-0-99-100.ec2.internal from Controller
59m         Normal    Unconsolidatable          node/ip-10-0-99-104.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-99-104.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-99-104.ec2.internal    Node ip-10-0-99-104.ec2.internal event: Registered Node ip-10-0-99-104.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-99-104.ec2.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-99-104.ec2.internal    The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked         node/ip-10-0-99-104.ec2.internal    Node is deleting or marked for deletion
21m         Normal    DisruptionTerminating     node/ip-10-0-99-104.ec2.internal    Disrupting Node: Drifted/Delete
21m         Warning   FailedDraining            node/ip-10-0-99-104.ec2.internal    Failed to drain node, 12 pods are waiting to be evicted
20m         Normal    ControllerVersionNotice   node/ip-10-0-99-104.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-99-104.ec2.internal    The node has trunk interface initialized successfully
20m         Warning   InstanceTerminating       node/ip-10-0-99-104.ec2.internal    Instance is terminating
20m         Normal    DisruptionBlocked         node/ip-10-0-99-104.ec2.internal    Node is deleting or marked for deletion
19m         Normal    NodeNotReady              node/ip-10-0-99-104.ec2.internal    Node ip-10-0-99-104.ec2.internal status is now: NodeNotReady
19m         Normal    MemoryPressure            node/ip-10-0-99-104.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DiskPressure              node/ip-10-0-99-104.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    PIDPressure               node/ip-10-0-99-104.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    Ready                     node/ip-10-0-99-104.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    RemovingNode              node/ip-10-0-99-104.ec2.internal    Node ip-10-0-99-104.ec2.internal event: Removing Node ip-10-0-99-104.ec2.internal from Controller
10m         Normal    Starting                  node/ip-10-0-99-156.ec2.internal    Starting kubelet.
10m         Warning   InvalidDiskCapacity       node/ip-10-0-99-156.ec2.internal    invalid capacity 0 on image filesystem
10m         Normal    NodeHasSufficientMemory   node/ip-10-0-99-156.ec2.internal    Node ip-10-0-99-156.ec2.internal status is now: NodeHasSufficientMemory
10m         Normal    NodeHasNoDiskPressure     node/ip-10-0-99-156.ec2.internal    Node ip-10-0-99-156.ec2.internal status is now: NodeHasNoDiskPressure
10m         Normal    NodeHasSufficientPID      node/ip-10-0-99-156.ec2.internal    Node ip-10-0-99-156.ec2.internal status is now: NodeHasSufficientPID
10m         Normal    NodeAllocatableEnforced   node/ip-10-0-99-156.ec2.internal    Updated Node Allocatable limit across pods
10m         Normal    Synced                    node/ip-10-0-99-156.ec2.internal    Node synced successfully
10m         Normal    RegisteredNode            node/ip-10-0-99-156.ec2.internal    Node ip-10-0-99-156.ec2.internal event: Registered Node ip-10-0-99-156.ec2.internal in Controller
10m         Normal    Starting                  node/ip-10-0-99-156.ec2.internal    
10m         Normal    DisruptionBlocked         node/ip-10-0-99-156.ec2.internal    Node isn't initialized
10m         Normal    ControllerVersionNotice   node/ip-10-0-99-156.ec2.internal    The node is managed by VPC resource controller version v1.7.11
10m         Normal    NodeReady                 node/ip-10-0-99-156.ec2.internal    Node ip-10-0-99-156.ec2.internal status is now: NodeReady
10m         Normal    Ready                     node/ip-10-0-99-156.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
10m         Normal    NodeTrunkInitiated        node/ip-10-0-99-156.ec2.internal    The node has trunk interface initialized successfully
9m56s       Normal    Unconsolidatable          node/ip-10-0-99-156.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
9m10s       Normal    ControllerVersionNotice   node/ip-10-0-99-156.ec2.internal    The node is managed by VPC resource controller version v1.7.11
9m7s        Normal    NodeTrunkInitiated        node/ip-10-0-99-156.ec2.internal    The node has trunk interface initialized successfully
59m         Normal    Unconsolidatable          node/ip-10-0-99-18.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-99-18.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-99-18.ec2.internal     Node ip-10-0-99-18.ec2.internal event: Registered Node ip-10-0-99-18.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-99-18.ec2.internal     The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-99-18.ec2.internal     The node has trunk interface initialized successfully
20m         Normal    ControllerVersionNotice   node/ip-10-0-99-18.ec2.internal     The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-99-18.ec2.internal     The node has trunk interface initialized successfully
20m         Normal    Unconsolidatable          node/ip-10-0-99-18.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
19m         Normal    DisruptionTerminating     node/ip-10-0-99-18.ec2.internal     Disrupting Node: Drifted/Delete
19m         Normal    DisruptionBlocked         node/ip-10-0-99-18.ec2.internal     Node is deleting or marked for deletion
19m         Warning   FailedDraining            node/ip-10-0-99-18.ec2.internal     Failed to drain node, 3 pods are waiting to be evicted
17m         Warning   InstanceTerminating       node/ip-10-0-99-18.ec2.internal     Instance is terminating
17m         Normal    RemovingNode              node/ip-10-0-99-18.ec2.internal     Node ip-10-0-99-18.ec2.internal event: Removing Node ip-10-0-99-18.ec2.internal from Controller
15m         Normal    Starting                  node/ip-10-0-99-206.ec2.internal    Starting kubelet.
15m         Warning   InvalidDiskCapacity       node/ip-10-0-99-206.ec2.internal    invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory   node/ip-10-0-99-206.ec2.internal    Node ip-10-0-99-206.ec2.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure     node/ip-10-0-99-206.ec2.internal    Node ip-10-0-99-206.ec2.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID      node/ip-10-0-99-206.ec2.internal    Node ip-10-0-99-206.ec2.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced   node/ip-10-0-99-206.ec2.internal    Updated Node Allocatable limit across pods
15m         Normal    Synced                    node/ip-10-0-99-206.ec2.internal    Node synced successfully
15m         Normal    RegisteredNode            node/ip-10-0-99-206.ec2.internal    Node ip-10-0-99-206.ec2.internal event: Registered Node ip-10-0-99-206.ec2.internal in Controller
14m         Normal    DisruptionBlocked         node/ip-10-0-99-206.ec2.internal    Node isn't initialized
14m         Normal    Starting                  node/ip-10-0-99-206.ec2.internal    
14m         Normal    NodeReady                 node/ip-10-0-99-206.ec2.internal    Node ip-10-0-99-206.ec2.internal status is now: NodeReady
14m         Normal    Ready                     node/ip-10-0-99-206.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    RegisteredNode            node/ip-10-0-99-206.ec2.internal    Node ip-10-0-99-206.ec2.internal event: Registered Node ip-10-0-99-206.ec2.internal in Controller
14m         Normal    ControllerVersionNotice   node/ip-10-0-99-206.ec2.internal    The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeTrunkInitiated        node/ip-10-0-99-206.ec2.internal    The node has trunk interface initialized successfully
14m         Normal    Unconsolidatable          node/ip-10-0-99-206.ec2.internal    NodePool "main-arm64" has non-empty consolidation disabled
9m10s       Normal    ControllerVersionNotice   node/ip-10-0-99-206.ec2.internal    The node is managed by VPC resource controller version v1.7.11
9m8s        Normal    NodeTrunkInitiated        node/ip-10-0-99-206.ec2.internal    The node has trunk interface initialized successfully
59m         Normal    Unconsolidatable          node/ip-10-0-99-225.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-99-225.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-99-225.ec2.internal    Node ip-10-0-99-225.ec2.internal event: Registered Node ip-10-0-99-225.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-99-225.ec2.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-99-225.ec2.internal    The node has trunk interface initialized successfully
20m         Normal    ControllerVersionNotice   node/ip-10-0-99-225.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated        node/ip-10-0-99-225.ec2.internal    The node has trunk interface initialized successfully
20m         Normal    Unconsolidatable          node/ip-10-0-99-225.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    DisruptionBlocked         node/ip-10-0-99-225.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=policy-bot/policy-bot-pdb)
16m         Normal    DisruptionTerminating     node/ip-10-0-99-225.ec2.internal    Disrupting Node: Drifted/Delete
16m         Warning   FailedDraining            node/ip-10-0-99-225.ec2.internal    Failed to drain node, 22 pods are waiting to be evicted
15m         Warning   InstanceTerminating       node/ip-10-0-99-225.ec2.internal    Instance is terminating
15m         Normal    DisruptionBlocked         node/ip-10-0-99-225.ec2.internal    Node is deleting or marked for deletion
15m         Normal    NodeNotReady              node/ip-10-0-99-225.ec2.internal    Node ip-10-0-99-225.ec2.internal status is now: NodeNotReady
15m         Normal    MemoryPressure            node/ip-10-0-99-225.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DiskPressure              node/ip-10-0-99-225.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    PIDPressure               node/ip-10-0-99-225.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    Ready                     node/ip-10-0-99-225.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m57s       Normal    Starting                  node/ip-10-0-99-243.ec2.internal    Starting kubelet.
6m57s       Warning   InvalidDiskCapacity       node/ip-10-0-99-243.ec2.internal    invalid capacity 0 on image filesystem
6m57s       Normal    NodeHasSufficientMemory   node/ip-10-0-99-243.ec2.internal    Node ip-10-0-99-243.ec2.internal status is now: NodeHasSufficientMemory
6m57s       Normal    NodeHasNoDiskPressure     node/ip-10-0-99-243.ec2.internal    Node ip-10-0-99-243.ec2.internal status is now: NodeHasNoDiskPressure
6m57s       Normal    NodeHasSufficientPID      node/ip-10-0-99-243.ec2.internal    Node ip-10-0-99-243.ec2.internal status is now: NodeHasSufficientPID
6m57s       Normal    NodeAllocatableEnforced   node/ip-10-0-99-243.ec2.internal    Updated Node Allocatable limit across pods
6m53s       Normal    RegisteredNode            node/ip-10-0-99-243.ec2.internal    Node ip-10-0-99-243.ec2.internal event: Registered Node ip-10-0-99-243.ec2.internal in Controller
6m53s       Normal    Synced                    node/ip-10-0-99-243.ec2.internal    Node synced successfully
6m50s       Normal    DisruptionBlocked         node/ip-10-0-99-243.ec2.internal    Node isn't initialized
6m45s       Normal    Starting                  node/ip-10-0-99-243.ec2.internal    
6m29s       Normal    ControllerVersionNotice   node/ip-10-0-99-243.ec2.internal    The node is managed by VPC resource controller version v1.7.11
6m28s       Normal    NodeReady                 node/ip-10-0-99-243.ec2.internal    Node ip-10-0-99-243.ec2.internal status is now: NodeReady
6m28s       Normal    Ready                     node/ip-10-0-99-243.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
6m25s       Normal    NodeTrunkInitiated        node/ip-10-0-99-243.ec2.internal    The node has trunk interface initialized successfully
6m4s        Normal    Unconsolidatable          node/ip-10-0-99-243.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
25m         Normal    Starting                  node/ip-10-0-99-4.ec2.internal      Starting kubelet.
25m         Warning   InvalidDiskCapacity       node/ip-10-0-99-4.ec2.internal      invalid capacity 0 on image filesystem
25m         Normal    NodeHasSufficientMemory   node/ip-10-0-99-4.ec2.internal      Node ip-10-0-99-4.ec2.internal status is now: NodeHasSufficientMemory
25m         Normal    NodeHasNoDiskPressure     node/ip-10-0-99-4.ec2.internal      Node ip-10-0-99-4.ec2.internal status is now: NodeHasNoDiskPressure
25m         Normal    NodeHasSufficientPID      node/ip-10-0-99-4.ec2.internal      Node ip-10-0-99-4.ec2.internal status is now: NodeHasSufficientPID
25m         Normal    NodeAllocatableEnforced   node/ip-10-0-99-4.ec2.internal      Updated Node Allocatable limit across pods
25m         Normal    RegisteredNode            node/ip-10-0-99-4.ec2.internal      Node ip-10-0-99-4.ec2.internal event: Registered Node ip-10-0-99-4.ec2.internal in Controller
25m         Normal    Synced                    node/ip-10-0-99-4.ec2.internal      Node synced successfully
25m         Normal    Starting                  node/ip-10-0-99-4.ec2.internal      
24m         Normal    ControllerVersionNotice   node/ip-10-0-99-4.ec2.internal      The node is managed by VPC resource controller version v1.7.11
24m         Warning   Unsupported               node/ip-10-0-99-4.ec2.internal      The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
24m         Normal    NodeReady                 node/ip-10-0-99-4.ec2.internal      Node ip-10-0-99-4.ec2.internal status is now: NodeReady
24m         Normal    Ready                     node/ip-10-0-99-4.ec2.internal      Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
20m         Normal    ControllerVersionNotice   node/ip-10-0-99-4.ec2.internal      The node is managed by VPC resource controller version v1.7.11
15m         Warning   Unsupported               node/ip-10-0-99-4.ec2.internal      The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
15m         Normal    NodeNotSchedulable        node/ip-10-0-99-4.ec2.internal      Node ip-10-0-99-4.ec2.internal status is now: NodeNotSchedulable
14m         Normal    RegisteredNode            node/ip-10-0-99-4.ec2.internal      Node ip-10-0-99-4.ec2.internal event: Registered Node ip-10-0-99-4.ec2.internal in Controller
14m         Normal    ControllerVersionNotice   node/ip-10-0-99-4.ec2.internal      The node is managed by VPC resource controller version v1.7.11
13m         Warning   Unsupported               node/ip-10-0-99-4.ec2.internal      The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
13m         Normal    NodeNotReady              node/ip-10-0-99-4.ec2.internal      Node ip-10-0-99-4.ec2.internal status is now: NodeNotReady
13m         Normal    MemoryPressure            node/ip-10-0-99-4.ec2.internal      Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DiskPressure              node/ip-10-0-99-4.ec2.internal      Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    PIDPressure               node/ip-10-0-99-4.ec2.internal      Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    Ready                     node/ip-10-0-99-4.ec2.internal      Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DeletingNode              node/ip-10-0-99-4.ec2.internal      Deleting node ip-10-0-99-4.ec2.internal because it does not exist in the cloud provider
13m         Normal    RemovingNode              node/ip-10-0-99-4.ec2.internal      Node ip-10-0-99-4.ec2.internal event: Removing Node ip-10-0-99-4.ec2.internal from Controller
59m         Normal    Unconsolidatable          node/ip-10-0-99-70.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
24m         Normal    Unconsolidatable          node/ip-10-0-99-70.ec2.internal     NodePool "main-arm64" has non-empty consolidation disabled
27m         Normal    RegisteredNode            node/ip-10-0-99-70.ec2.internal     Node ip-10-0-99-70.ec2.internal event: Registered Node ip-10-0-99-70.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-99-70.ec2.internal     The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated        node/ip-10-0-99-70.ec2.internal     The node has trunk interface initialized successfully
22m         Normal    DisruptionTerminating     node/ip-10-0-99-70.ec2.internal     Disrupting Node: Drifted/Delete
22m         Normal    DisruptionBlocked         node/ip-10-0-99-70.ec2.internal     Node is deleting or marked for deletion
22m         Warning   FailedDraining            node/ip-10-0-99-70.ec2.internal     Failed to drain node, 3 pods are waiting to be evicted
21m         Warning   InstanceTerminating       node/ip-10-0-99-70.ec2.internal     Instance is terminating
20m         Normal    RemovingNode              node/ip-10-0-99-70.ec2.internal     Node ip-10-0-99-70.ec2.internal event: Removing Node ip-10-0-99-70.ec2.internal from Controller
32m         Warning   Unsupported               node/ip-10-0-99-97.ec2.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
27m         Normal    RegisteredNode            node/ip-10-0-99-97.ec2.internal     Node ip-10-0-99-97.ec2.internal event: Registered Node ip-10-0-99-97.ec2.internal in Controller
26m         Normal    ControllerVersionNotice   node/ip-10-0-99-97.ec2.internal     The node is managed by VPC resource controller version v1.7.11
22m         Warning   Unsupported               node/ip-10-0-99-97.ec2.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
23m         Normal    NodeNotSchedulable        node/ip-10-0-99-97.ec2.internal     Node ip-10-0-99-97.ec2.internal status is now: NodeNotSchedulable
20m         Normal    ControllerVersionNotice   node/ip-10-0-99-97.ec2.internal     The node is managed by VPC resource controller version v1.7.11
17m         Warning   Unsupported               node/ip-10-0-99-97.ec2.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    NodeNotReady              node/ip-10-0-99-97.ec2.internal     Node ip-10-0-99-97.ec2.internal status is now: NodeNotReady
17m         Normal    MemoryPressure            node/ip-10-0-99-97.ec2.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure              node/ip-10-0-99-97.ec2.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure               node/ip-10-0-99-97.ec2.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                     node/ip-10-0-99-97.ec2.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DeletingNode              node/ip-10-0-99-97.ec2.internal     Deleting node ip-10-0-99-97.ec2.internal because it does not exist in the cloud provider
17m         Normal    RemovingNode              node/ip-10-0-99-97.ec2.internal     Node ip-10-0-99-97.ec2.internal event: Removing Node ip-10-0-99-97.ec2.internal from Controller
```

Pods with issues
```
cluster-autoscaler          cluster-autoscaler-aws-cluster-autoscaler-5bbfb95df7-mpz45        0/1     CrashLoopBackOff   882 (3m15s ago)   3d
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

Cluster version up to date - no pluto apis detection rquired

Generated on: Mon Sep 22 11:46:24 CEST 2025
