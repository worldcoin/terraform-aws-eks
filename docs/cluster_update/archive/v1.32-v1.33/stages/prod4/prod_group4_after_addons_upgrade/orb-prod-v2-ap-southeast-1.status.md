# Cluster recon for tfh-orb-prod-infra,ap-southeast-1,orb-prod-v2-ap-southeast-1,tunnel-vpc-orb-prod-ap-southeast-1

TFH EKS login...
```console
2025/09/23 12:59:18 INFO Logging into AWS
2025/09/23 12:59:18 INFO Token found and valid
2025/09/23 12:59:21 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-prod-ap-southeast-1 id=efc3c31b-95de-40dc-bb6b-4e9656bd3176
2025/09/23 12:59:22 INFO Active WARP Virtual Network id=efc3c31b-95de-40dc-bb6b-4e9656bd3176
Updated context tfh-orb-prod-v2-ap-southeast-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "77019b3f-0466-4630-af62-c3ae043deaa3",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T10:44:14+02:00",
            "lastTransitionTime": "2024-12-20T10:23:58+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "9dd4a194-cffd-4641-a7f0-0966f9fde84f",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T10:44:03+02:00",
            "lastTransitionTime": "2025-09-16T18:04:02+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "0a129485-1af6-4060-8b2b-7ae38ad9de0f",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T10:44:02+02:00",
            "lastTransitionTime": "2024-12-20T10:23:58+01:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "98dd29e6-b583-4cff-bc7e-5b22dbff2788",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T10:44:03+02:00",
            "lastTransitionTime": "2024-12-20T10:23:58+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "c1b99bd2-145b-4f77-bedd-b56f050553fd",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T10:44:14+02:00",
            "lastTransitionTime": "2025-07-29T09:09:02+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        }
    ]
}
```

Show full cluster description:
```json
{
    "cluster": {
        "name": "orb-prod-v2-ap-southeast-1",
        "arn": "arn:aws:eks:ap-southeast-1:573252405782:cluster/orb-prod-v2-ap-southeast-1",
        "createdAt": "2023-06-16T09:55:40.714000+02:00",
        "version": "1.32",
        "endpoint": "https://F25A6F0466CADDBD48437D251F04E91A.gr7.ap-southeast-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::573252405782:role/eks-cluster-orb-prod-v2-ap-southeast-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0168fd04693fd3a9b",
                "subnet-0d00886963b01715a",
                "subnet-04b43e6f5485e9c5b"
            ],
            "securityGroupIds": [
                "sg-023d7c4bbd1e8c395"
            ],
            "clusterSecurityGroupId": "sg-0d30ddbfcdb50aa3b",
            "vpcId": "vpc-072adef03cbafdb8c",
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
                "issuer": "https://oidc.eks.ap-southeast-1.amazonaws.com/id/F25A6F0466CADDBD48437D251F04E91A"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EWXhOakE0TURBek9Gb1hEVE16TURZeE16QTRNREF6T0Zvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTWdNClA0c0hiN1ErM3dLNkhUTVR3dVhkZldwbWdiRVpTZlFwM0hBRUszaXg1MFQwdGo5RXNBRWU3YnNQMXlBMjhOWUwKNU95WEdybnBFK3c5N1o2cmFRS0ZXVEFidkZRTFdaU2pCQ2xuMG9oNStNQWdCNG1xeVVCYnlwTld6VC9MVE9HeQpiYXNWODlHcnlrVTQxN2IwRHNRNnZ3VVFrcUpqVW5Kd2ZyMERxbDdVQTdNcDNmaUJZSnZ6VHFBSDRySVJCb3c3CmJBeWV4ak5VNE9KTnI2WTBnbWtzRDJ0YTlXYUtRQ0RLS2ZWcmNsb05QWHFlWlR1R004eW5HSWxlSkwxS2pqQUwKNUhTWGVtQXcrNDhBT1FnNDlrSEpkZ0s0eGdWY2UyQWd5Wm5SQzEvckd0RFZvc3V1SE16ZW1hZ2YxQzZ6YmhZYQpHOUxZRnBMUFhublUxL3RBNlRzQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZPWWNXazNvVW0vUEJ2TjhwWlBON0h4UXAzUXBNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBRUthK2trb1huYitmSEEwa2RaRgpsL1ZwTit2bDBkQUZnUnloMzl1Zy9GSTExKzdoK2ZqdG1rZXJoRVl0aDZ0eFpRY1Fza3NaQnRpV3lZazEzdmpmCkdEYmhEMnRHUjd2bDhmZ0c2aWNHdmt4aWRyVTZUQ3ZWdi9TSW4rTm1adDVUZEZUZFZsbWd6Tnd6c3Yvb1FpUFYKOUZDUS9pU1FBVVNLcDVXQUEvUElnVGRBNXBLQjkxdGdUNjVBYlVRZXpRcmFjelRNVnd5eXpHVkxJNnNtOGFDRQpyMVlha1RPa2tlK2dLaFBTcXhSVUJmTDhKWWtRandraEdsZnpwVFBpd25kWkJ2cmx0ay9DeHFTR2JHWFZoM3ZiCm5TMXVrNVpWdC9xb2NVWGlPUFY4Q3pjN09BYVFDWHFFOWdlbk1Jb3d3M3lxbjNXZVBEVUdlN0hNUGtxSzh3QkIKYkpZPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-prod-v2-ap-southeast-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:ap-southeast-1:573252405782:key/ada82ff4-3d49-4d0f-b9b5-053821a896cf"
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
NAME                                              STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-38-32-109.ap-southeast-1.compute.internal   Ready    <none>   2d23h   v1.32.8-eks-99d6cc0   10.38.32.109   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-32-5.ap-southeast-1.compute.internal     Ready    <none>   47h     v1.32.8-eks-99d6cc0   10.38.32.5     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-32-50.ap-southeast-1.compute.internal    Ready    <none>   2d      v1.32.8-eks-99d6cc0   10.38.32.50    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-33-163.ap-southeast-1.compute.internal   Ready    <none>   22h     v1.32.8-eks-99d6cc0   10.38.33.163   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-ap-southeast-1
ip-10-38-34-142.ap-southeast-1.compute.internal   Ready    <none>   34h     v1.32.8-eks-99d6cc0   10.38.34.142   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-34-192.ap-southeast-1.compute.internal   Ready    <none>   7h      v1.32.8-eks-99d6cc0   10.38.34.192   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-34-215.ap-southeast-1.compute.internal   Ready    <none>   12h     v1.32.8-eks-99d6cc0   10.38.34.215   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-35-218.ap-southeast-1.compute.internal   Ready    <none>   6h59m   v1.32.8-eks-99d6cc0   10.38.35.218   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-36-248.ap-southeast-1.compute.internal   Ready    <none>   9h      v1.32.8-eks-99d6cc0   10.38.36.248   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-36-26.ap-southeast-1.compute.internal    Ready    <none>   34h     v1.32.8-eks-99d6cc0   10.38.36.26    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-38-37-154.ap-southeast-1.compute.internal   Ready    <none>   6h41m   v1.32.8-eks-99d6cc0   10.38.37.154   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-38-37-215.ap-southeast-1.compute.internal   Ready    <none>   22h     v1.32.8-eks-99d6cc0   10.38.37.215   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-ap-southeast-1
ip-10-38-37-75.ap-southeast-1.compute.internal    Ready    <none>   6h39m   v1.32.8-eks-99d6cc0   10.38.37.75    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                              STATUS   ROLES    TAINTS
ip-10-38-32-109.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-38-32-5.ap-southeast-1.compute.internal     Ready    <none>   <none>
ip-10-38-32-50.ap-southeast-1.compute.internal    Ready    <none>   <none>
ip-10-38-33-163.ap-southeast-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-38-34-142.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-38-34-192.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-38-34-215.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-38-35-218.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-38-36-248.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-38-36-26.ap-southeast-1.compute.internal    Ready    <none>   <none>
ip-10-38-37-154.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-38-37-215.ap-southeast-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-38-37-75.ap-southeast-1.compute.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON              OBJECT                                                 MESSAGE
3m43s       Normal    Unconsolidatable    node/ip-10-38-32-109.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
52m         Normal    Starting            node/ip-10-38-32-109.ap-southeast-1.compute.internal   
52m         Normal    Starting            node/ip-10-38-32-5.ap-southeast-1.compute.internal     
47m         Normal    DisruptionBlocked   node/ip-10-38-32-5.ap-southeast-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
54m         Normal    Unconsolidatable    node/ip-10-38-32-50.ap-southeast-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
23m         Normal    Unconsolidatable    node/ip-10-38-32-50.ap-southeast-1.compute.internal    Can't remove without creating 2 candidates
52m         Normal    Starting            node/ip-10-38-32-50.ap-southeast-1.compute.internal    
12s         Warning   Unsupported         node/ip-10-38-33-163.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
51m         Normal    Starting            node/ip-10-38-33-163.ap-southeast-1.compute.internal   
15m         Normal    Unconsolidatable    node/ip-10-38-34-142.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
52m         Normal    Starting            node/ip-10-38-34-142.ap-southeast-1.compute.internal   
32m         Normal    Unconsolidatable    node/ip-10-38-34-192.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
36m         Normal    DisruptionBlocked   node/ip-10-38-34-192.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
51m         Normal    Starting            node/ip-10-38-34-192.ap-southeast-1.compute.internal   
15m         Normal    Unconsolidatable    node/ip-10-38-34-215.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
36m         Normal    DisruptionBlocked   node/ip-10-38-34-215.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
47m         Normal    DisruptionBlocked   node/ip-10-38-34-215.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
52m         Normal    Starting            node/ip-10-38-34-215.ap-southeast-1.compute.internal   
36m         Warning   OOMKilling          node/ip-10-38-34-215.ap-southeast-1.compute.internal   Memory cgroup out of memory: Killed process 375926 (backend) total-vm:7218624kB, anon-rss:6273668kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:12640kB oom_score_adj:607
36m         Warning   OOMKilling          node/ip-10-38-34-215.ap-southeast-1.compute.internal   Memory cgroup out of memory: Killed process 375942 (tokio-runtime-w) total-vm:7218624kB, anon-rss:6273720kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:12640kB oom_score_adj:607
15m         Normal    Unconsolidatable    node/ip-10-38-35-218.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
36m         Normal    DisruptionBlocked   node/ip-10-38-35-218.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-external/orb-fleet-backend-external-pdb)
52m         Normal    DisruptionBlocked   node/ip-10-38-35-218.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
52m         Normal    Starting            node/ip-10-38-35-218.ap-southeast-1.compute.internal   
3m43s       Normal    Unconsolidatable    node/ip-10-38-36-248.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
52m         Normal    Starting            node/ip-10-38-36-248.ap-southeast-1.compute.internal   
52m         Normal    DisruptionBlocked   node/ip-10-38-36-26.ap-southeast-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
3m43s       Normal    Unconsolidatable    node/ip-10-38-36-26.ap-southeast-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
52m         Normal    Starting            node/ip-10-38-36-26.ap-southeast-1.compute.internal    
3m43s       Normal    Unconsolidatable    node/ip-10-38-37-154.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
52m         Normal    DisruptionBlocked   node/ip-10-38-37-154.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
51m         Normal    Starting            node/ip-10-38-37-154.ap-southeast-1.compute.internal   
2m54s       Warning   Unsupported         node/ip-10-38-37-215.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
52m         Normal    Starting            node/ip-10-38-37-215.ap-southeast-1.compute.internal   
32m         Normal    Unconsolidatable    node/ip-10-38-37-75.ap-southeast-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
52m         Normal    Starting            node/ip-10-38-37-75.ap-southeast-1.compute.internal    
```

Pods with issues
```
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-44xt6                               0/1     CreateContainerConfigError   0              34h
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-ps9s5                               0/1     CreateContainerConfigError   0              34h
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

Generated on: Tue Sep 23 13:00:31 CEST 2025
