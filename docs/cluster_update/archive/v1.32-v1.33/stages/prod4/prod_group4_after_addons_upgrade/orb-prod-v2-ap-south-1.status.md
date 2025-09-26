# Cluster recon for tfh-orb-prod-infra,ap-south-1,orb-prod-v2-ap-south-1,tunnel-vpc-orb-prod-ap-south-1

TFH EKS login...
```console
2025/09/23 12:41:25 INFO Logging into AWS
2025/09/23 12:41:25 INFO Token found and valid
2025/09/23 12:41:28 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-prod-ap-south-1 id=1ed8ff43-ee6b-409c-bbf2-bcd84ecdcb1d
2025/09/23 12:41:29 INFO Active WARP Virtual Network id=1ed8ff43-ee6b-409c-bbf2-bcd84ecdcb1d
Updated context tfh-orb-prod-v2-ap-south-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "3aa3f364-b253-4db3-9804-7edd8c21ecdb",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T10:04:40+02:00",
            "lastTransitionTime": "2024-12-19T13:24:45+01:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "e46d879a-1254-4c82-8e32-d9e256c42777",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T10:04:52+02:00",
            "lastTransitionTime": "2025-07-29T08:29:40+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "1bc171dd-e2f2-49af-b199-c6328e1ede68",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T10:04:52+02:00",
            "lastTransitionTime": "2024-12-19T13:24:45+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "6be24dfe-7b7c-4e1f-9673-e3f81fd84290",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T10:04:40+02:00",
            "lastTransitionTime": "2024-12-19T13:24:45+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "f234e3e6-6d7d-4aae-bb33-1d2d117ed283",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T10:04:40+02:00",
            "lastTransitionTime": "2025-09-16T17:24:40+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        }
    ]
}
```

Show full cluster description:
```json
{
    "cluster": {
        "name": "orb-prod-v2-ap-south-1",
        "arn": "arn:aws:eks:ap-south-1:573252405782:cluster/orb-prod-v2-ap-south-1",
        "createdAt": "2023-06-16T09:55:38.232000+02:00",
        "version": "1.32",
        "endpoint": "https://F7A74B4A22E83CF207BA0BA628CFB861.sk1.ap-south-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::573252405782:role/eks-cluster-orb-prod-v2-ap-south-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-01798b5caa04982a8",
                "subnet-0a60524d311d3464a",
                "subnet-008dc916b5db06ed0"
            ],
            "securityGroupIds": [
                "sg-01ffe5db754572a08"
            ],
            "clusterSecurityGroupId": "sg-0e0e91e686c04d8c5",
            "vpcId": "vpc-0dd01e07496fc643d",
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
                "issuer": "https://oidc.eks.ap-south-1.amazonaws.com/id/F7A74B4A22E83CF207BA0BA628CFB861"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EWXhOakE0TURBMU0xb1hEVE16TURZeE16QTRNREExTTFvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTUcvCnp2MW40TFQ1TVhZOGxnVjJMbVAxZFJCMjR0bjhST01XYnhKRklyOUw2ZXZvR0RwUlN2VnpCVndXbkpZSDBXeW0KanEyV2h2eWtmSkJtOEtvenczdzRtWVBHYUhKUmZRMVhRQTg5N1ZyakdhUEw5OWtkQWFmMlF4WWUxM0lISTYyYwpzWWE4VlhPWktUeHlHcUhhRENHNy9rQjRuN3p0S1N2T0ZhOWlXY1NEWUVOVUVkZTFnc2I3d0pqdzF1VVZnNWh0CjF6U2Q3UjRONWJ0RWFmSjI3cCtuQUpCSHNlWFBYMkg4M25tVGpRdmRGMm55R2hSaGRTeDFiVWd5WFYxOHE4cUgKSHkxa0NEM25xajh3MU5DOCtDelNvOGxpVS91cXJJNGREazhFL2hWQjJxNjByT2E3bG1kK0s4UHhCdFdIVnV4YgorejYzWEVnQXVSQm9qWkg1ck9zQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZLc2FKUzNUMW9YeVhLSkwwRkg5LzlnRXJMcC9NQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBQm1YNnlzOUZoNmNWK1RscHEwMwo2Mk1HNlY4RTNqQmxobmRXUVgza3VKckZmVGsrZUlFUXZRM3dMM1dxbWs2cDVKeFEvSHNhdnhybHJZTjEwajgvCmh0UmxUN0k5b3JJRG1kMFl3VzVjQ29mc05TRVV2MWVWQ3NDUy9yK2lPR3VzWWdMY05XdHVsSjlZemw3K3ppMEQKY3luRkZQaWFmMDdSMDlXby91UDMwNmJtNXBsNWw2SjJ1Y0hjejJkMnc1YmZPeWNoTklYc3M0ZGZ1SmRnZ3F1TQpmQ1VkOWlpYW04SW52MWtOcDlyQUl4b2pnejBSQjJCV2toZzJyV0l2M3hHeW5taWpRai9TVEYyRUdvWkg0Zk5MClZ5QU9vOGxjZEg2SHNMbkxHVkVGSHo0RTZiVm1jaHhOSFMrVWhFTklVazF5dDh2cFZsTzBpWGs4bFJrYTFuQWUKRnc0PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-prod-v2-ap-south-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:ap-south-1:573252405782:key/cb830667-2833-4bbe-846c-317c5a6a9260"
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
NAME                                          STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-26-18-174.ap-south-1.compute.internal   Ready    <none>   116m    v1.32.8-eks-99d6cc0   10.26.18.174   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-26-18-218.ap-south-1.compute.internal   Ready    <none>   3h12m   v1.32.8-eks-99d6cc0   10.26.18.218   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-26-18-84.ap-south-1.compute.internal    Ready    <none>   22h     v1.32.8-eks-99d6cc0   10.26.18.84    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-ap-south-1
ip-10-26-19-194.ap-south-1.compute.internal   Ready    <none>   3h23m   v1.32.8-eks-99d6cc0   10.26.19.194   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-26-19-242.ap-south-1.compute.internal   Ready    <none>   11h     v1.32.8-eks-99d6cc0   10.26.19.242   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-26-19-89.ap-south-1.compute.internal    Ready    <none>   117m    v1.32.8-eks-99d6cc0   10.26.19.89    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-26-19-95.ap-south-1.compute.internal    Ready    <none>   6h38m   v1.32.8-eks-99d6cc0   10.26.19.95    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-26-20-16.ap-south-1.compute.internal    Ready    <none>   22h     v1.32.8-eks-99d6cc0   10.26.20.16    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-ap-south-1
ip-10-26-20-181.ap-south-1.compute.internal   Ready    <none>   91m     v1.32.8-eks-99d6cc0   10.26.20.181   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-26-20-35.ap-south-1.compute.internal    Ready    <none>   2m17s   v1.32.8-eks-99d6cc0   10.26.20.35    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-26-21-254.ap-south-1.compute.internal   Ready    <none>   41m     v1.32.8-eks-99d6cc0   10.26.21.254   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                          STATUS   ROLES    TAINTS
ip-10-26-18-174.ap-south-1.compute.internal   Ready    <none>   <none>
ip-10-26-18-218.ap-south-1.compute.internal   Ready    <none>   <none>
ip-10-26-18-84.ap-south-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-26-19-194.ap-south-1.compute.internal   Ready    <none>   <none>
ip-10-26-19-242.ap-south-1.compute.internal   Ready    <none>   <none>
ip-10-26-19-89.ap-south-1.compute.internal    Ready    <none>   <none>
ip-10-26-19-95.ap-south-1.compute.internal    Ready    <none>   <none>
ip-10-26-20-16.ap-south-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-26-20-181.ap-south-1.compute.internal   Ready    <none>   <none>
ip-10-26-20-35.ap-south-1.compute.internal    Ready    <none>   <none>
ip-10-26-21-254.ap-south-1.compute.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                      OBJECT                                             MESSAGE
91s         Normal    Finalized                   node                                               Finalized karpenter.sh/termination
11m         Normal    Unconsolidatable            node/ip-10-26-18-16.ap-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
29m         Normal    DisruptionBlocked           node/ip-10-26-18-16.ap-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
34m         Normal    Starting                    node/ip-10-26-18-16.ap-south-1.compute.internal    
2m51s       Warning   SpotInterrupted             node/ip-10-26-18-16.ap-south-1.compute.internal    Spot interruption warning was triggered
2m51s       Warning   TerminatingOnInterruption   node/ip-10-26-18-16.ap-south-1.compute.internal    Interruption triggered termination for the Node
2m51s       Warning   FailedDraining              node/ip-10-26-18-16.ap-south-1.compute.internal    Failed to drain node, 7 pods are waiting to be evicted
2m43s       Normal    DisruptionBlocked           node/ip-10-26-18-16.ap-south-1.compute.internal    Node is deleting or marked for deletion
2m13s       Warning   InstanceTerminating         node/ip-10-26-18-16.ap-south-1.compute.internal    Instance is terminating
89s         Normal    RemovingNode                node/ip-10-26-18-16.ap-south-1.compute.internal    Node ip-10-26-18-16.ap-south-1.compute.internal event: Removing Node ip-10-26-18-16.ap-south-1.compute.internal from Controller
2m43s       Normal    DisruptionBlocked           node/ip-10-26-18-174.ap-south-1.compute.internal   Node is nominated for a pending pod
11m         Normal    Unconsolidatable            node/ip-10-26-18-174.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
34m         Normal    Starting                    node/ip-10-26-18-174.ap-south-1.compute.internal   
5m49s       Normal    Unconsolidatable            node/ip-10-26-18-218.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
34m         Normal    Starting                    node/ip-10-26-18-218.ap-south-1.compute.internal   
2m57s       Warning   Unsupported                 node/ip-10-26-18-84.ap-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
34m         Normal    Starting                    node/ip-10-26-18-84.ap-south-1.compute.internal    
45m         Normal    Unconsolidatable            node/ip-10-26-19-194.ap-south-1.compute.internal   Can't remove without creating 2 candidates
34m         Normal    Starting                    node/ip-10-26-19-194.ap-south-1.compute.internal   
11m         Normal    Unconsolidatable            node/ip-10-26-19-194.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
2m43s       Normal    DisruptionBlocked           node/ip-10-26-19-194.ap-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
60m         Normal    Unconsolidatable            node/ip-10-26-19-242.ap-south-1.compute.internal   Can't remove without creating 2 candidates
2m43s       Normal    DisruptionBlocked           node/ip-10-26-19-242.ap-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
15m         Normal    Unconsolidatable            node/ip-10-26-19-242.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
41m         Normal    Unconsolidatable            node/ip-10-26-19-242.ap-south-1.compute.internal   Not all pods would schedule, traefik/traefik-7db66dc5fc-hp6zv => would schedule against uninitialized nodeclaim/main-arm64-hlsn8
34m         Normal    Starting                    node/ip-10-26-19-242.ap-south-1.compute.internal   
11m         Normal    Unconsolidatable            node/ip-10-26-19-89.ap-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
41m         Normal    Unconsolidatable            node/ip-10-26-19-89.ap-south-1.compute.internal    Not all pods would schedule, kyverno/kyverno-admission-controller-797f7f98db-7tbhd => would schedule against uninitialized nodeclaim/main-arm64-hlsn8 kyverno/kyverno-background-controller-5b56dc48bd-26fht => would schedule against uninitialized nodeclaim/main-arm64-hlsn8 kyverno/kyverno-reports-controller-7c49c78b7b-vpk5w => would schedule against uninitialized nodeclaim/main-arm64-hlsn8 kyverno/kyverno-cleanup-controller-56db757949-mjhqz => would schedule against uninitialized nodeclaim/main-arm64-hlsn8 orb-fleet-backend-hpa-monitor/orb-fleet-backend-hpa-monitor-6ff44d575b-rm6k4 => would schedule against uninitialized nodeclaim/main-arm64-hlsn8  and 0 other(s)
34m         Normal    DisruptionBlocked           node/ip-10-26-19-89.ap-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
34m         Normal    Starting                    node/ip-10-26-19-89.ap-south-1.compute.internal    
2m43s       Normal    DisruptionBlocked           node/ip-10-26-19-89.ap-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
15m         Normal    Unconsolidatable            node/ip-10-26-19-95.ap-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
60m         Normal    Unconsolidatable            node/ip-10-26-19-95.ap-south-1.compute.internal    Can't remove without creating 2 candidates
41m         Normal    Unconsolidatable            node/ip-10-26-19-95.ap-south-1.compute.internal    Not all pods would schedule, traefik/traefik-7db66dc5fc-rq9zp => would schedule against uninitialized nodeclaim/main-arm64-hlsn8
34m         Normal    Starting                    node/ip-10-26-19-95.ap-south-1.compute.internal    
2m43s       Normal    DisruptionBlocked           node/ip-10-26-19-95.ap-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
2m57s       Warning   Unsupported                 node/ip-10-26-20-16.ap-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
34m         Normal    Starting                    node/ip-10-26-20-16.ap-south-1.compute.internal    
34m         Normal    Starting                    node/ip-10-26-20-181.ap-south-1.compute.internal   
11m         Normal    Unconsolidatable            node/ip-10-26-20-181.ap-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
2m25s       Normal    Starting                    node/ip-10-26-20-35.ap-south-1.compute.internal    Starting kubelet.
2m25s       Warning   InvalidDiskCapacity         node/ip-10-26-20-35.ap-south-1.compute.internal    invalid capacity 0 on image filesystem
2m25s       Normal    NodeHasSufficientMemory     node/ip-10-26-20-35.ap-south-1.compute.internal    Node ip-10-26-20-35.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
2m25s       Normal    NodeHasNoDiskPressure       node/ip-10-26-20-35.ap-south-1.compute.internal    Node ip-10-26-20-35.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
2m25s       Normal    NodeHasSufficientPID        node/ip-10-26-20-35.ap-south-1.compute.internal    Node ip-10-26-20-35.ap-south-1.compute.internal status is now: NodeHasSufficientPID
2m25s       Normal    NodeAllocatableEnforced     node/ip-10-26-20-35.ap-south-1.compute.internal    Updated Node Allocatable limit across pods
2m20s       Normal    Synced                      node/ip-10-26-20-35.ap-south-1.compute.internal    Node synced successfully
2m19s       Normal    RegisteredNode              node/ip-10-26-20-35.ap-south-1.compute.internal    Node ip-10-26-20-35.ap-south-1.compute.internal event: Registered Node ip-10-26-20-35.ap-south-1.compute.internal in Controller
2m12s       Normal    DisruptionBlocked           node/ip-10-26-20-35.ap-south-1.compute.internal    Node isn't initialized
2m12s       Normal    Starting                    node/ip-10-26-20-35.ap-south-1.compute.internal    
2m5s        Normal    ControllerVersionNotice     node/ip-10-26-20-35.ap-south-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
2m4s        Normal    NodeReady                   node/ip-10-26-20-35.ap-south-1.compute.internal    Node ip-10-26-20-35.ap-south-1.compute.internal status is now: NodeReady
2m4s        Normal    Ready                       node/ip-10-26-20-35.ap-south-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
2m2s        Normal    NodeTrunkInitiated          node/ip-10-26-20-35.ap-south-1.compute.internal    The node has trunk interface initialized successfully
41m         Normal    Starting                    node/ip-10-26-21-254.ap-south-1.compute.internal   Starting kubelet.
41m         Warning   InvalidDiskCapacity         node/ip-10-26-21-254.ap-south-1.compute.internal   invalid capacity 0 on image filesystem
41m         Normal    NodeHasSufficientMemory     node/ip-10-26-21-254.ap-south-1.compute.internal   Node ip-10-26-21-254.ap-south-1.compute.internal status is now: NodeHasSufficientMemory
41m         Normal    NodeHasNoDiskPressure       node/ip-10-26-21-254.ap-south-1.compute.internal   Node ip-10-26-21-254.ap-south-1.compute.internal status is now: NodeHasNoDiskPressure
41m         Normal    NodeHasSufficientPID        node/ip-10-26-21-254.ap-south-1.compute.internal   Node ip-10-26-21-254.ap-south-1.compute.internal status is now: NodeHasSufficientPID
41m         Normal    NodeAllocatableEnforced     node/ip-10-26-21-254.ap-south-1.compute.internal   Updated Node Allocatable limit across pods
41m         Normal    Synced                      node/ip-10-26-21-254.ap-south-1.compute.internal   Node synced successfully
41m         Normal    RegisteredNode              node/ip-10-26-21-254.ap-south-1.compute.internal   Node ip-10-26-21-254.ap-south-1.compute.internal event: Registered Node ip-10-26-21-254.ap-south-1.compute.internal in Controller
41m         Normal    DisruptionBlocked           node/ip-10-26-21-254.ap-south-1.compute.internal   Node isn't initialized
41m         Normal    Starting                    node/ip-10-26-21-254.ap-south-1.compute.internal   
41m         Normal    ControllerVersionNotice     node/ip-10-26-21-254.ap-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
41m         Normal    NodeReady                   node/ip-10-26-21-254.ap-south-1.compute.internal   Node ip-10-26-21-254.ap-south-1.compute.internal status is now: NodeReady
41m         Normal    Ready                       node/ip-10-26-21-254.ap-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
41m         Normal    NodeTrunkInitiated          node/ip-10-26-21-254.ap-south-1.compute.internal   The node has trunk interface initialized successfully
34m         Normal    DisruptionBlocked           node/ip-10-26-21-254.ap-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
34m         Normal    Starting                    node/ip-10-26-21-254.ap-south-1.compute.internal   
2m12s       Normal    DisruptionBlocked           node/ip-10-26-21-254.ap-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
```

Pods with issues
```
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-bl27q                               0/1     CreateContainerConfigError   0          3h4m
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-tz5gs                               0/1     CreateContainerConfigError   0          90m
```

PodDisruptionBudgets
```
NAMESPACE                             NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                    cluster-monitoring-pdb                    N/A             1                 1                     297d
karpenter                             karpenter                                 N/A             1                 1                     2y96d
kube-system                           coredns                                   N/A             1                 1                     624d
kube-system                           ebs-csi-controller                        N/A             1                 1                     2y100d
kyverno                               kyverno-admission-controller              1               N/A               2                     606d
orb-fleet-backend-docs-server         orb-fleet-backend-docs-server-pdb         N/A             1                 0                     157d
orb-fleet-backend-event-server        orb-fleet-backend-event-server-pdb        N/A             1                 0                     185d
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     304d
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

Detect deprecated or withdrawn apis with PLUTO
Helm...
```
There were no resources found with known deprecated apiVersions.
```
All-in-cluster...
```
There were no resources found with known deprecated apiVersions.
```

Generated on: Tue Sep 23 12:59:18 CEST 2025
