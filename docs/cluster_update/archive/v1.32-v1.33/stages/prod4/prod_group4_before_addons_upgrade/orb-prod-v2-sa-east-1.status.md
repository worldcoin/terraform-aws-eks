# Cluster recon for tfh-orb-prod-infra,sa-east-1,orb-prod-v2-sa-east-1,tunnel-vpc-orb-prod-sa-east-1

TFH EKS login...
```console
2025/09/23 11:42:32 INFO Logging into AWS
2025/09/23 11:42:32 INFO Token found and valid
2025/09/23 11:42:34 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-prod-sa-east-1 id=b472fd31-abc3-49ba-a6d6-66a897d01771
2025/09/23 11:42:35 INFO Active WARP Virtual Network id=b472fd31-abc3-49ba-a6d6-66a897d01771
Added new context tfh-orb-prod-v2-sa-east-1 to /Users/lukasz.glowacki/.kube/config
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
            "id": "1eb4ed0c-2d76-43b0-8dfa-a59cbccc4c9f",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T09:05:10+02:00",
            "lastTransitionTime": "2025-07-29T07:30:10+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "6245866b-56d9-42c5-b867-2e6cd0c49b82",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T09:05:10+02:00",
            "lastTransitionTime": "2024-12-20T08:35:04+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "8c1ccfd8-4e43-4dfa-9ecd-41ff60c1a130",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T09:05:04+02:00",
            "lastTransitionTime": "2025-09-16T16:25:04+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "20197de2-02c6-4dfc-a353-0bd60204786e",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T09:05:04+02:00",
            "lastTransitionTime": "2024-12-20T08:35:04+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "3a91730b-2567-45d0-8626-6d6bcee973bb",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T09:05:04+02:00",
            "lastTransitionTime": "2024-12-20T08:35:04+01:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        }
    ]
}
```

Show full cluster description:
```json
{
    "cluster": {
        "name": "orb-prod-v2-sa-east-1",
        "arn": "arn:aws:eks:sa-east-1:573252405782:cluster/orb-prod-v2-sa-east-1",
        "createdAt": "2023-06-16T09:55:34.679000+02:00",
        "version": "1.32",
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
        "platformVersion": "eks.18",
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
NAME                                         STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-82-64-255.sa-east-1.compute.internal   Ready    <none>   21h     v1.32.8-eks-99d6cc0   10.82.64.255   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-sa-east-1
ip-10-82-65-250.sa-east-1.compute.internal   Ready    <none>   5h38m   v1.32.8-eks-99d6cc0   10.82.65.250   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-65-60.sa-east-1.compute.internal    Ready    <none>   5h40m   v1.32.8-eks-99d6cc0   10.82.65.60    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-65-93.sa-east-1.compute.internal    Ready    <none>   5h42m   v1.32.8-eks-99d6cc0   10.82.65.93    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-66-163.sa-east-1.compute.internal   Ready    <none>   21h     v1.32.8-eks-99d6cc0   10.82.66.163   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-sa-east-1
ip-10-82-67-15.sa-east-1.compute.internal    Ready    <none>   5h42m   v1.32.8-eks-99d6cc0   10.82.67.15    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-82-68-122.sa-east-1.compute.internal   Ready    <none>   9h      v1.32.8-eks-99d6cc0   10.82.68.122   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-68-163.sa-east-1.compute.internal   Ready    <none>   11h     v1.32.8-eks-99d6cc0   10.82.68.163   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-68-58.sa-east-1.compute.internal    Ready    <none>   10h     v1.32.8-eks-99d6cc0   10.82.68.58    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-68-92.sa-east-1.compute.internal    Ready    <none>   3d20h   v1.32.8-eks-99d6cc0   10.82.68.92    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-69-103.sa-east-1.compute.internal   Ready    <none>   31m     v1.32.8-eks-99d6cc0   10.82.69.103   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-82-69-220.sa-east-1.compute.internal   Ready    <none>   3d15h   v1.32.8-eks-99d6cc0   10.82.69.220   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                                         STATUS   ROLES    TAINTS
ip-10-82-64-255.sa-east-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-82-65-250.sa-east-1.compute.internal   Ready    <none>   <none>
ip-10-82-65-60.sa-east-1.compute.internal    Ready    <none>   <none>
ip-10-82-65-93.sa-east-1.compute.internal    Ready    <none>   <none>
ip-10-82-66-163.sa-east-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-82-67-15.sa-east-1.compute.internal    Ready    <none>   <none>
ip-10-82-68-122.sa-east-1.compute.internal   Ready    <none>   <none>
ip-10-82-68-163.sa-east-1.compute.internal   Ready    <none>   <none>
ip-10-82-68-58.sa-east-1.compute.internal    Ready    <none>   <none>
ip-10-82-68-92.sa-east-1.compute.internal    Ready    <none>   <none>
ip-10-82-69-103.sa-east-1.compute.internal   Ready    <none>   <none>
ip-10-82-69-220.sa-east-1.compute.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                                            MESSAGE
30m         Normal    Finalized                     node                                              Finalized karpenter.sh/termination
59s         Warning   Unsupported                   node/ip-10-82-64-255.sa-east-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
12m         Normal    Unconsolidatable              node/ip-10-82-65-250.sa-east-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
31m         Normal    Unconsolidatable              node/ip-10-82-65-250.sa-east-1.compute.internal   Not all pods would schedule, orb-manager-external/orb-manager-external-655bf66c8b-w7dgr => would schedule against uninitialized nodeclaim/main-amd64-cwhcl orb-monitoring-service/orb-monitoring-service-5547bdfddb-24gxz => would schedule against uninitialized nodeclaim/main-amd64-cwhcl
6m49s       Normal    Unconsolidatable              node/ip-10-82-65-60.sa-east-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
6m49s       Normal    Unconsolidatable              node/ip-10-82-65-93.sa-east-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
59s         Warning   Unsupported                   node/ip-10-82-66-163.sa-east-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
6m49s       Normal    Unconsolidatable              node/ip-10-82-67-15.sa-east-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
6m49s       Normal    Unconsolidatable              node/ip-10-82-68-122.sa-east-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
6m49s       Normal    Unconsolidatable              node/ip-10-82-68-163.sa-east-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
16m         Normal    Unconsolidatable              node/ip-10-82-68-58.sa-east-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
46m         Normal    Unconsolidatable              node/ip-10-82-68-98.sa-east-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
32m         Normal    SpotRebalanceRecommendation   node/ip-10-82-68-98.sa-east-1.compute.internal    Spot rebalance recommendation was triggered
32m         Warning   SpotInterrupted               node/ip-10-82-68-98.sa-east-1.compute.internal    Spot interruption warning was triggered
32m         Warning   TerminatingOnInterruption     node/ip-10-82-68-98.sa-east-1.compute.internal    Interruption triggered termination for the Node
32m         Warning   FailedDraining                node/ip-10-82-68-98.sa-east-1.compute.internal    Failed to drain node, 2 pods are waiting to be evicted
32m         Normal    DisruptionBlocked             node/ip-10-82-68-98.sa-east-1.compute.internal    Node is deleting or marked for deletion
31m         Warning   InstanceTerminating           node/ip-10-82-68-98.sa-east-1.compute.internal    Instance is terminating
30m         Normal    RemovingNode                  node/ip-10-82-68-98.sa-east-1.compute.internal    Node ip-10-82-68-98.sa-east-1.compute.internal event: Removing Node ip-10-82-68-98.sa-east-1.compute.internal from Controller
31m         Normal    Starting                      node/ip-10-82-69-103.sa-east-1.compute.internal   Starting kubelet.
31m         Warning   InvalidDiskCapacity           node/ip-10-82-69-103.sa-east-1.compute.internal   invalid capacity 0 on image filesystem
31m         Normal    NodeHasSufficientMemory       node/ip-10-82-69-103.sa-east-1.compute.internal   Node ip-10-82-69-103.sa-east-1.compute.internal status is now: NodeHasSufficientMemory
31m         Normal    NodeHasNoDiskPressure         node/ip-10-82-69-103.sa-east-1.compute.internal   Node ip-10-82-69-103.sa-east-1.compute.internal status is now: NodeHasNoDiskPressure
31m         Normal    NodeHasSufficientPID          node/ip-10-82-69-103.sa-east-1.compute.internal   Node ip-10-82-69-103.sa-east-1.compute.internal status is now: NodeHasSufficientPID
31m         Normal    NodeAllocatableEnforced       node/ip-10-82-69-103.sa-east-1.compute.internal   Updated Node Allocatable limit across pods
31m         Normal    Synced                        node/ip-10-82-69-103.sa-east-1.compute.internal   Node synced successfully
31m         Normal    RegisteredNode                node/ip-10-82-69-103.sa-east-1.compute.internal   Node ip-10-82-69-103.sa-east-1.compute.internal event: Registered Node ip-10-82-69-103.sa-east-1.compute.internal in Controller
31m         Normal    Starting                      node/ip-10-82-69-103.sa-east-1.compute.internal   
31m         Normal    DisruptionBlocked             node/ip-10-82-69-103.sa-east-1.compute.internal   Node isn't initialized
31m         Normal    ControllerVersionNotice       node/ip-10-82-69-103.sa-east-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
31m         Normal    NodeReady                     node/ip-10-82-69-103.sa-east-1.compute.internal   Node ip-10-82-69-103.sa-east-1.compute.internal status is now: NodeReady
31m         Normal    Ready                         node/ip-10-82-69-103.sa-east-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
31m         Normal    NodeTrunkInitiated            node/ip-10-82-69-103.sa-east-1.compute.internal   The node has trunk interface initialized successfully
12m         Normal    Unconsolidatable              node/ip-10-82-69-103.sa-east-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
16m         Normal    Unconsolidatable              node/ip-10-82-69-220.sa-east-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
```

Pods with issues
```
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-6j9rr                               0/1     CreateContainerConfigError   0          5h42m
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-nkxw7                               0/1     CreateContainerConfigError   0          3d14h
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

Detect deprecated or withdrawn apis with PLUTO
Helm...
```
There were no resources found with known deprecated apiVersions.
```
All-in-cluster...
```
There were no resources found with known deprecated apiVersions.
```

Generated on: Tue Sep 23 11:43:35 CEST 2025
