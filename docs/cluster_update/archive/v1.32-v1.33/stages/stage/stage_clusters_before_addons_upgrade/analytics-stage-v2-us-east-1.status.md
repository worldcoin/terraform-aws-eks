# Cluster recon for tfh-analytics-stage-infra,us-east-1,analytics-stage-v2-us-east-1,tunnel-vpc-analytics-stage-us-east-1

TFH EKS login...
```console
2025/09/17 16:58:45 INFO Logging into AWS
2025/09/17 16:58:45 INFO Token found and valid
2025/09/17 16:58:47 INFO Switch WARP Virtual Network to name=tunnel-vpc-analytics-stage-us-east-1 id=dadad609-c72a-40bc-bed5-c1c875ce52b6
2025/09/17 16:58:49 INFO Active WARP Virtual Network id=dadad609-c72a-40bc-bed5-c1c875ce52b6
Added new context tfh-analytics-stage-v2-us-east-1 to /Users/lukasz.glowacki/.kube/config
```

Current version: 1.32
Next version: 1.33

Checking addons...
```
aws-ebs-csi-driver            v1.39.0-eksbuild.1
aws-mountpoint-s3-csi-driver  v1.12.0-eksbuild.1
coredns                       v1.11.4-eksbuild.10
eks-pod-identity-agent        v1.3.5-eksbuild.2
kube-proxy                    v1.32.0-eksbuild.2
snapshot-controller           v8.2.0-eksbuild.1
vpc-cni                       v1.19.2-eksbuild.5
```

Insights for the upcoming update to 1.33
```json
{
    "insights": [
        {
            "id": "625add43-e773-4a8a-970e-f82f4e9aff59",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T08:59:05+02:00",
            "lastTransitionTime": "2025-09-13T03:04:04+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "b244e77d-5d17-412a-b890-e716bec03ffc",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T08:59:05+02:00",
            "lastTransitionTime": "2025-05-19T11:59:04+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "80174acc-dd06-475a-ab9a-a423c902cbb0",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T08:59:18+02:00",
            "lastTransitionTime": "2025-05-19T11:59:04+02:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "56bedcd9-de7c-4eff-80da-7e4a7f5c3194",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T08:59:18+02:00",
            "lastTransitionTime": "2025-07-28T19:29:04+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "0dfe4d2d-fc4d-4851-a0cb-15fa9881525a",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T08:59:05+02:00",
            "lastTransitionTime": "2025-05-19T11:59:04+02:00",
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
        "name": "analytics-stage-v2-us-east-1",
        "arn": "arn:aws:eks:us-east-1:797615431886:cluster/analytics-stage-v2-us-east-1",
        "createdAt": "2025-05-19T11:39:25.229000+02:00",
        "version": "1.32",
        "endpoint": "https://EFFB82C65685394BAC475D00DCA860EF.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::797615431886:role/eks-cluster-analytics-stage-v2-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-03aad1094eb15a010",
                "subnet-00977fcc61ccaf654",
                "subnet-071bfdddac78f3471"
            ],
            "securityGroupIds": [
                "sg-0e417be47f59d85f8"
            ],
            "clusterSecurityGroupId": "sg-000db70141e22419e",
            "vpcId": "vpc-0fa67306b24268057",
            "endpointPublicAccess": false,
            "endpointPrivateAccess": true,
            "publicAccessCidrs": [
                "0.0.0.0/0"
            ]
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/EFFB82C65685394BAC475D00DCA860EF"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJYTBoZVMrcXhxeVV3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMU1Ua3dPVE00TlROYUZ3MHpOVEExTVRjd09UUXpOVE5hTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURHeThVODY4V3QzRTZuK0FrUUlLSW5OTkxPZXZ0MVJORm02SVhYUnJVZ2VOamwwUHovU3NLOWdGbEsKWWZRNEtodGs3RE4zcmRlblZQdVpERDhJa3AxY2J3cHQwRHl5STdkd1N1ZXZnWXFzRzhPUHo1UVVEaTExa3Q1MAovMHJrRkUxeUpMcCtqdzkrRXFlS1ZUblYwTzlrelVkQ2JwMm5yWUt3blowRDUzZ0lGZkdEeWxWSm1aUFEvTlpwCmlPY1E1UERQTUpQekZMK3grZlJodWIvb2JTd0JHbnk1SGdINDZZVHNZZHV1a3UvN1RsVzVVcTMzekg3bUdkZFAKd3UxV1VsSHRMWkhVQjJVZWNLWDg2dEJGVzFKL1NWMEkvNmVnNmptdEhkOUdJMkcrYUxsZnZ1MGliQ2Y3RmRhbwpTNE5mYklGTFlPSUttWVMvdmlJTG9WRzZYSWF4QWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJRN3VaYXNLeXliWXNtejAzZm85UHFwVHAyNGxUQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQlFscXRDMmRtagp6Tlphd0dIaW45cG1Gb0FGRUNkaUloeC9ndVJTbFBmNTBCenVGUlVhT25FNURIUzRmaFJJR3lmVUlBQlBJSE03CkowM2ZFSGJJTlhGSm42MTZoQ3NPV2VjWnVHVXJoR2lqZVU0NFl3b2hFYjEvNWxiNHh6MStiVWdMWm8wbktOSHYKeHZLVnJZcE83SWlMUThCT3BvV21wSVBHcEpKZzI4VnlUeDNqVG5qSitqc2hPbEllSDVDMFNuTWttZ21ZbXdLdQp6VGlDRG53MW10dVByOFFNL2FKakp0Q1loTzMyaXRjYWlWRk1UUDdIa2hGUWFHV293ekxCbktjQ1gvTjNDTEYzCjh1dWt6UEVwQ0NldWkwL2s3TUN6U3dTTjhEdnU1STFQQWIwNVJxcERzdTI2ZE9uVmN5SkNvWVVhNmVNdExUb3YKVXRNSUsvNEdIeVRiCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "stage",
            "karpenter.sh/discovery": "analytics-stage-v2-us-east-1",
            "Team": "analytics",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:797615431886:key/b10fd3e6-16b9-4a64-908b-611b01fdda14"
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
NAME                           STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME
ip-10-1-192-87.ec2.internal    Ready    <none>   30m     v1.32.8-eks-99d6cc0   10.1.192.87    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-193-167.ec2.internal   Ready    <none>   3h3m    v1.32.8-eks-99d6cc0   10.1.193.167   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-193-83.ec2.internal    Ready    <none>   5d2h    v1.32.8-eks-99d6cc0   10.1.193.83    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-194-160.ec2.internal   Ready    <none>   6d21h   v1.32.8-eks-99d6cc0   10.1.194.160   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-194-30.ec2.internal    Ready    <none>   5d2h    v1.32.8-eks-99d6cc0   10.1.194.30    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-195-219.ec2.internal   Ready    <none>   6d21h   v1.32.8-eks-99d6cc0   10.1.195.219   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-195-224.ec2.internal   Ready    <none>   3d17h   v1.32.8-eks-99d6cc0   10.1.195.224   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-195-31.ec2.internal    Ready    <none>   4d17h   v1.32.8-eks-99d6cc0   10.1.195.31    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-196-202.ec2.internal   Ready    <none>   148m    v1.32.8-eks-99d6cc0   10.1.196.202   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-196-246.ec2.internal   Ready    <none>   23h     v1.32.8-eks-99d6cc0   10.1.196.246   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27
ip-10-1-197-6.ec2.internal     Ready    <none>   5d2h    v1.32.8-eks-99d6cc0   10.1.197.6     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-197-67.ec2.internal    Ready    <none>   6h16m   v1.32.8-eks-99d6cc0   10.1.197.67    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                              MESSAGE
7m23s       Normal    Finalized                 node                                Finalized karpenter.sh/termination
33m         Normal    Unconsolidatable          node/ip-10-1-192-115.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
25m         Normal    DisruptionBlocked         node/ip-10-1-192-115.ec2.internal   Node is deleting or marked for deletion
25m         Normal    DisruptionTerminating     node/ip-10-1-192-115.ec2.internal   Disrupting Node: Underutilized/Delete
25m         Warning   FailedDraining            node/ip-10-1-192-115.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
24m         Warning   InstanceTerminating       node/ip-10-1-192-115.ec2.internal   Instance is terminating
23m         Normal    NodeNotReady              node/ip-10-1-192-115.ec2.internal   Node ip-10-1-192-115.ec2.internal status is now: NodeNotReady
23m         Normal    MemoryPressure            node/ip-10-1-192-115.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    DiskPressure              node/ip-10-1-192-115.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    PIDPressure               node/ip-10-1-192-115.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    Ready                     node/ip-10-1-192-115.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    DeletingNode              node/ip-10-1-192-115.ec2.internal   Deleting node ip-10-1-192-115.ec2.internal because it does not exist in the cloud provider
23m         Normal    RemovingNode              node/ip-10-1-192-115.ec2.internal   Node ip-10-1-192-115.ec2.internal event: Removing Node ip-10-1-192-115.ec2.internal from Controller
30m         Normal    Starting                  node/ip-10-1-192-87.ec2.internal    Starting kubelet.
30m         Warning   InvalidDiskCapacity       node/ip-10-1-192-87.ec2.internal    invalid capacity 0 on image filesystem
30m         Normal    NodeHasSufficientMemory   node/ip-10-1-192-87.ec2.internal    Node ip-10-1-192-87.ec2.internal status is now: NodeHasSufficientMemory
30m         Normal    NodeHasNoDiskPressure     node/ip-10-1-192-87.ec2.internal    Node ip-10-1-192-87.ec2.internal status is now: NodeHasNoDiskPressure
30m         Normal    NodeHasSufficientPID      node/ip-10-1-192-87.ec2.internal    Node ip-10-1-192-87.ec2.internal status is now: NodeHasSufficientPID
30m         Normal    NodeAllocatableEnforced   node/ip-10-1-192-87.ec2.internal    Updated Node Allocatable limit across pods
30m         Normal    Synced                    node/ip-10-1-192-87.ec2.internal    Node synced successfully
30m         Normal    RegisteredNode            node/ip-10-1-192-87.ec2.internal    Node ip-10-1-192-87.ec2.internal event: Registered Node ip-10-1-192-87.ec2.internal in Controller
30m         Normal    DisruptionBlocked         node/ip-10-1-192-87.ec2.internal    Node isn't initialized
30m         Normal    Starting                  node/ip-10-1-192-87.ec2.internal    
29m         Normal    ControllerVersionNotice   node/ip-10-1-192-87.ec2.internal    The node is managed by VPC resource controller version v1.7.9
29m         Normal    NodeReady                 node/ip-10-1-192-87.ec2.internal    Node ip-10-1-192-87.ec2.internal status is now: NodeReady
29m         Normal    Ready                     node/ip-10-1-192-87.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
29m         Normal    NodeTrunkInitiated        node/ip-10-1-192-87.ec2.internal    The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked         node/ip-10-1-192-87.ec2.internal    Node is nominated for a pending pod
8m40s       Normal    Unconsolidatable          node/ip-10-1-192-87.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
12m         Normal    Unconsolidatable          node/ip-10-1-193-167.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
58m         Normal    DisruptionBlocked         node/ip-10-1-193-167.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=data-sharing-api-metabase/data-sharing-api-refresh-duckdb-29301960-xjql5)
24m         Normal    Starting                  node/ip-10-1-193-168.ec2.internal   Starting kubelet.
24m         Warning   InvalidDiskCapacity       node/ip-10-1-193-168.ec2.internal   invalid capacity 0 on image filesystem
24m         Normal    NodeHasSufficientMemory   node/ip-10-1-193-168.ec2.internal   Node ip-10-1-193-168.ec2.internal status is now: NodeHasSufficientMemory
24m         Normal    NodeHasNoDiskPressure     node/ip-10-1-193-168.ec2.internal   Node ip-10-1-193-168.ec2.internal status is now: NodeHasNoDiskPressure
24m         Normal    NodeHasSufficientPID      node/ip-10-1-193-168.ec2.internal   Node ip-10-1-193-168.ec2.internal status is now: NodeHasSufficientPID
24m         Normal    NodeAllocatableEnforced   node/ip-10-1-193-168.ec2.internal   Updated Node Allocatable limit across pods
24m         Normal    Synced                    node/ip-10-1-193-168.ec2.internal   Node synced successfully
24m         Normal    RegisteredNode            node/ip-10-1-193-168.ec2.internal   Node ip-10-1-193-168.ec2.internal event: Registered Node ip-10-1-193-168.ec2.internal in Controller
24m         Normal    DisruptionBlocked         node/ip-10-1-193-168.ec2.internal   Node isn't initialized
24m         Normal    Starting                  node/ip-10-1-193-168.ec2.internal   
24m         Normal    ControllerVersionNotice   node/ip-10-1-193-168.ec2.internal   The node is managed by VPC resource controller version v1.7.9
24m         Normal    NodeReady                 node/ip-10-1-193-168.ec2.internal   Node ip-10-1-193-168.ec2.internal status is now: NodeReady
24m         Normal    Ready                     node/ip-10-1-193-168.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
24m         Normal    NodeTrunkInitiated        node/ip-10-1-193-168.ec2.internal   The node has trunk interface initialized successfully
9m3s        Normal    DisruptionBlocked         node/ip-10-1-193-168.ec2.internal   Node is deleting or marked for deletion
9m2s        Normal    DisruptionTerminating     node/ip-10-1-193-168.ec2.internal   Disrupting Node: Empty/Delete
9m2s        Warning   FailedDraining            node/ip-10-1-193-168.ec2.internal   Failed to drain node, 1 pods are waiting to be evicted
8m41s       Warning   InstanceTerminating       node/ip-10-1-193-168.ec2.internal   Instance is terminating
7m55s       Normal    NodeNotReady              node/ip-10-1-193-168.ec2.internal   Node ip-10-1-193-168.ec2.internal status is now: NodeNotReady
7m55s       Normal    MemoryPressure            node/ip-10-1-193-168.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m55s       Normal    DiskPressure              node/ip-10-1-193-168.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m55s       Normal    PIDPressure               node/ip-10-1-193-168.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m55s       Normal    Ready                     node/ip-10-1-193-168.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m19s       Normal    RemovingNode              node/ip-10-1-193-168.ec2.internal   Node ip-10-1-193-168.ec2.internal event: Removing Node ip-10-1-193-168.ec2.internal from Controller
2m14s       Normal    DisruptionBlocked         node/ip-10-1-193-83.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=memgraph/memgraph-pdb)
6s          Normal    DisruptionBlocked         node/ip-10-1-194-160.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-57bff85c8c-4fwrh)
4m26s       Warning   Unsupported               node/ip-10-1-194-30.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
6s          Normal    DisruptionBlocked         node/ip-10-1-195-219.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=snowflake-cache-service-nordstar-my/snowflake-cache-service-nordstar-my-pdb)
2m14s       Normal    DisruptionBlocked         node/ip-10-1-195-224.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=snowflake-cache-service-nordstar-ph/snowflake-cache-service-nordstar-ph-pdb)
2m14s       Normal    DisruptionBlocked         node/ip-10-1-195-31.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=memgraph/memgraph-lab-pdb)
58m         Normal    DisruptionBlocked         node/ip-10-1-196-202.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29301960-r9vv6)
44m         Normal    DisruptionBlocked         node/ip-10-1-196-202.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29301975-t77mv)
28m         Normal    DisruptionBlocked         node/ip-10-1-196-202.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=data-sharing-api-metabase/data-sharing-api-refresh-duckdb-29301990-krrhm)
14m         Normal    DisruptionBlocked         node/ip-10-1-196-202.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29302005-t8f52)
9m1s        Normal    Unconsolidatable          node/ip-10-1-196-246.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
25m         Normal    Unconsolidatable          node/ip-10-1-196-246.ec2.internal   Can't remove without creating 2 candidates
3m40s       Warning   Unsupported               node/ip-10-1-197-6.ec2.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
8m39s       Normal    Unconsolidatable          node/ip-10-1-197-67.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                                        NAME                                                 MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                               cluster-monitoring-pdb                               N/A             1                 1                     121d
data-science-team                                data-science-team-pdb                                N/A             1                 1                     22d
data-sharing-api-management                      data-sharing-api-management-pdb                      N/A             1                 1                     121d
data-sharing-api-metabase                        data-sharing-api-metabase-pdb                        N/A             1                 1                     71d
datahub                                          datahub-elasticsearch-master-pdb                     N/A             1                 1                     114d
datahub                                          datahub-kafka-broker                                 N/A             1                 1                     114d
datahub                                          datahub-kafka-controller                             N/A             1                 1                     114d
dbeaver                                          dbeaver-pdb                                          N/A             1                 1                     121d
interviews-metabase                              interviews-metabase-pdb                              N/A             1                 1                     44d
karpenter                                        karpenter                                            N/A             1                 1                     121d
kube-system                                      coredns                                              N/A             1                 1                     121d
kube-system                                      ebs-csi-controller                                   N/A             1                 1                     121d
kyverno                                          kyverno-admission-controller                         1               N/A               2                     121d
mcp-server-datahub                               mcp-server-datahub-pdb                               N/A             1                 1                     53d
memgraph                                         memgraph-lab-pdb                                     50%             N/A               0                     121d
memgraph                                         memgraph-pdb                                         50%             N/A               0                     121d
slack-mcp-client                                 slack-mcp-client-pdb                                 N/A             1                 1                     51d
snowflake-cache-service-consumer-backend-api     snowflake-cache-service-consumer-backend-api-pdb     N/A             1                 1                     121d
snowflake-cache-service-consumer-ds-interviews   snowflake-cache-service-consumer-ds-interviews-pdb   N/A             1                 1                     44d
snowflake-cache-service-hs-brands                snowflake-cache-service-hs-brands-pdb                N/A             1                 1                     118d
snowflake-cache-service-m-vision-th              snowflake-cache-service-m-vision-th-pdb              N/A             1                 1                     121d
snowflake-cache-service-nordstar-my              snowflake-cache-service-nordstar-my-pdb              N/A             1                 0                     121d
snowflake-cache-service-nordstar-ph              snowflake-cache-service-nordstar-ph-pdb              N/A             1                 0                     121d
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
