# Cluster recon for tfh-orb-prod-infra,af-south-1,orb-prod-v2-af-south-1,tunnel-vpc-orb-prod-af-south-1

TFH EKS login...
```console
2025/09/23 12:39:39 INFO Logging into AWS
2025/09/23 12:39:39 INFO Token not found or expired error="no valid token found"
2025/09/23 12:39:39 INFO Attempting to automatically open the SSO authorization page in your default browser...
2025/09/23 12:40:11 INFO Token found and valid
2025/09/23 12:40:13 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-prod-af-south-1 id=e5e74117-f2e3-4207-b0b7-f483e538e489
2025/09/23 12:40:15 INFO Active WARP Virtual Network id=e5e74117-f2e3-4207-b0b7-f483e538e489
Updated context tfh-orb-prod-v2-af-south-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "0e0404af-eb7a-4a91-9001-0834f4fded4e",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T07:40:40+02:00",
            "lastTransitionTime": "2025-07-29T06:05:24+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "3fa175bc-ce24-4b26-8527-eaff17944b5b",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T07:40:28+02:00",
            "lastTransitionTime": "2024-12-20T07:25:29+01:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "065781e3-0881-4593-b112-62a665302d7b",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T07:40:40+02:00",
            "lastTransitionTime": "2024-12-20T07:25:29+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "1fbff43b-28cb-46c1-b75a-6c4bf6af39b3",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T07:40:29+02:00",
            "lastTransitionTime": "2025-09-16T15:00:29+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "7de6b0b1-03b2-476e-adee-9275d9b011be",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T07:40:29+02:00",
            "lastTransitionTime": "2024-12-20T07:25:29+01:00",
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
        "name": "orb-prod-v2-af-south-1",
        "arn": "arn:aws:eks:af-south-1:573252405782:cluster/orb-prod-v2-af-south-1",
        "createdAt": "2023-06-16T09:55:41.093000+02:00",
        "version": "1.32",
        "endpoint": "https://ABFCA820594A1C34559B37258614F570.gr7.af-south-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::573252405782:role/eks-cluster-orb-prod-v2-af-south-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-06eea5c708e4b6cf7",
                "subnet-047f42aabd40084b7",
                "subnet-0c532db20ee6ea85c"
            ],
            "securityGroupIds": [
                "sg-04c54b076914e2632"
            ],
            "clusterSecurityGroupId": "sg-0c3f01801a9372ef5",
            "vpcId": "vpc-02187f690bd6c4f53",
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
                "issuer": "https://oidc.eks.af-south-1.amazonaws.com/id/ABFCA820594A1C34559B37258614F570"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EWXhOakE0TURBeU5Wb1hEVE16TURZeE16QTRNREF5TlZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTWVoCjNieE9CYmVGbUlLN0kyd01McGM3d3dubFJHRW1rL0N4UGpmUWdBWFB3TWpYMFZ1a2gxc1NuZFNBSTdmR0lkV2QKcFg0eERibGorRHlnaG1rMU9QYWo1ZHVoUzI5M0c2SkxkOElEbGVnOGNrVmZGcFFNQUF6OFpWdlljaU9TMFBLdApwc1p6SXdTRzRnRFhxTk94WHNsdHMwODJlbTdwSm51YVo4STBsdjRuMmJxcVUvTjlNVVpFWWV0SkxhVGRYcXVSCmUwNEM0ZVkrU3J2MFFBeG5NOEcxaVNWbkJYemF4NU5NVTJhVXErUkoxWGltOFYwU2NWVE9VSTdJcHY0OUlueSsKa0NCNVVlN1UwcUdiUDdnSnRSdHYwUGxrNXZJY0I4dVZJSktIaG5iWm05ZVgxV2tmeDh2VXpPUlFPSjdMK1RCRgpadGRkeE5INXVDcjRpZVd0SXZNQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZOTEZpUUFYTHpJZUFzdXZ2N2YrSVdBK0RCRWRNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBSkVVcHkyQ2xiWmM0Ui9ENEF1NgpCVlRaUDdwb01pWENHTjhobUNsUkhHUHREM2tXeGpvNE5WWEhSSm5IUTRmcHB4VGtFOHNPRURDMEUvb1BaK2JkCjlpWXExTVlDWVdjOFNsQlFIN1NnbnVHbzlTYitWT2k0Sm9UOExZUlQzckwzTFFjekZvYktqeFNIVVRibVZwTUIKU1JGSlV0cEhYYlFXR2lCdWwrNk9jYk1aa0MycVkxWGE4Y0JUY1R1T0ZTc2M1cm1aZGdWczEyQktKenlJQWkzQgpZdmJWNGxmakp4azFacEo1Nk1RVE5OUWltTC9LNzB3SHhLYXg5RkNCNzRrNzZ2Y0JXVHluZXEvOVVEaDdEWlorCldiNHZUak9BVVVlejNqV0xaak1pTTEvditoTlE5U05FcjFnK0xiSis1L2JScklnaDZ6S2JTNTBXVGVHYW5SSXoKUWk0PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-prod-v2-af-south-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:af-south-1:573252405782:key/1ad0a6fe-7df2-44f5-b565-a529b96b41aa"
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
NAME                                         STATUS   ROLES    AGE     VERSION               INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-18-0-113.af-south-1.compute.internal   Ready    <none>   22h     v1.32.8-eks-99d6cc0   10.18.0.113   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-af-south-1
ip-10-18-0-159.af-south-1.compute.internal   Ready    <none>   3d19h   v1.32.8-eks-99d6cc0   10.18.0.159   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-18-1-169.af-south-1.compute.internal   Ready    <none>   3h11m   v1.32.8-eks-99d6cc0   10.18.1.169   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-18-2-217.af-south-1.compute.internal   Ready    <none>   10h     v1.32.8-eks-99d6cc0   10.18.2.217   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-18-2-49.af-south-1.compute.internal    Ready    <none>   22h     v1.32.8-eks-99d6cc0   10.18.2.49    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-af-south-1
ip-10-18-2-76.af-south-1.compute.internal    Ready    <none>   6h41m   v1.32.8-eks-99d6cc0   10.18.2.76    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-18-3-112.af-south-1.compute.internal   Ready    <none>   3h10m   v1.32.8-eks-99d6cc0   10.18.3.112   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-18-3-137.af-south-1.compute.internal   Ready    <none>   27m     v1.32.8-eks-99d6cc0   10.18.3.137   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-18-3-90.af-south-1.compute.internal    Ready    <none>   115m    v1.32.8-eks-99d6cc0   10.18.3.90    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                                         STATUS   ROLES    TAINTS
ip-10-18-0-113.af-south-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-18-0-159.af-south-1.compute.internal   Ready    <none>   <none>
ip-10-18-1-169.af-south-1.compute.internal   Ready    <none>   <none>
ip-10-18-2-217.af-south-1.compute.internal   Ready    <none>   <none>
ip-10-18-2-49.af-south-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-18-2-76.af-south-1.compute.internal    Ready    <none>   <none>
ip-10-18-3-112.af-south-1.compute.internal   Ready    <none>   <none>
ip-10-18-3-137.af-south-1.compute.internal   Ready    <none>   <none>
ip-10-18-3-90.af-south-1.compute.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                                            MESSAGE
8m32s       Normal    Finalized                 node                                              Finalized karpenter.sh/termination
3m48s       Warning   Unsupported               node/ip-10-18-0-113.af-south-1.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
33m         Normal    Starting                  node/ip-10-18-0-113.af-south-1.compute.internal   
10m         Normal    Unconsolidatable          node/ip-10-18-0-159.af-south-1.compute.internal   Can't remove without creating 2 candidates
28m         Normal    DisruptionBlocked         node/ip-10-18-0-159.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
33m         Normal    Starting                  node/ip-10-18-0-159.af-south-1.compute.internal   
10m         Normal    DisruptionBlocked         node/ip-10-18-1-169.af-south-1.compute.internal   Node is nominated for a pending pod
8m44s       Normal    Unconsolidatable          node/ip-10-18-1-169.af-south-1.compute.internal   Can't remove without creating 2 candidates
35m         Normal    Unconsolidatable          node/ip-10-18-1-169.af-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
33m         Normal    DisruptionBlocked         node/ip-10-18-1-169.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
33m         Normal    Starting                  node/ip-10-18-1-169.af-south-1.compute.internal   
2m          Normal    Unconsolidatable          node/ip-10-18-2-217.af-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
10m         Normal    DisruptionBlocked         node/ip-10-18-2-217.af-south-1.compute.internal   Node is nominated for a pending pod
28m         Normal    DisruptionBlocked         node/ip-10-18-2-217.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
33m         Normal    DisruptionBlocked         node/ip-10-18-2-217.af-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
32m         Normal    Starting                  node/ip-10-18-2-217.af-south-1.compute.internal   
76s         Warning   Unsupported               node/ip-10-18-2-49.af-south-1.compute.internal    The instance type t3.large is not supported for trunk interface (Security Group for Pods)
32m         Normal    Starting                  node/ip-10-18-2-49.af-south-1.compute.internal    
10m         Normal    Unconsolidatable          node/ip-10-18-2-76.af-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
27m         Normal    DisruptionBlocked         node/ip-10-18-2-76.af-south-1.compute.internal    Node is nominated for a pending pod
33m         Normal    Starting                  node/ip-10-18-2-76.af-south-1.compute.internal    
2m1s        Normal    Unconsolidatable          node/ip-10-18-3-112.af-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
33m         Normal    Starting                  node/ip-10-18-3-112.af-south-1.compute.internal   
27m         Normal    Starting                  node/ip-10-18-3-137.af-south-1.compute.internal   Starting kubelet.
27m         Warning   InvalidDiskCapacity       node/ip-10-18-3-137.af-south-1.compute.internal   invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory   node/ip-10-18-3-137.af-south-1.compute.internal   Node ip-10-18-3-137.af-south-1.compute.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure     node/ip-10-18-3-137.af-south-1.compute.internal   Node ip-10-18-3-137.af-south-1.compute.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID      node/ip-10-18-3-137.af-south-1.compute.internal   Node ip-10-18-3-137.af-south-1.compute.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced   node/ip-10-18-3-137.af-south-1.compute.internal   Updated Node Allocatable limit across pods
27m         Normal    Synced                    node/ip-10-18-3-137.af-south-1.compute.internal   Node synced successfully
27m         Normal    RegisteredNode            node/ip-10-18-3-137.af-south-1.compute.internal   Node ip-10-18-3-137.af-south-1.compute.internal event: Registered Node ip-10-18-3-137.af-south-1.compute.internal in Controller
27m         Normal    DisruptionBlocked         node/ip-10-18-3-137.af-south-1.compute.internal   Node isn't initialized
27m         Normal    Starting                  node/ip-10-18-3-137.af-south-1.compute.internal   
27m         Normal    ControllerVersionNotice   node/ip-10-18-3-137.af-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
27m         Normal    NodeReady                 node/ip-10-18-3-137.af-south-1.compute.internal   Node ip-10-18-3-137.af-south-1.compute.internal status is now: NodeReady
27m         Normal    Ready                     node/ip-10-18-3-137.af-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
27m         Normal    NodeTrunkInitiated        node/ip-10-18-3-137.af-south-1.compute.internal   The node has trunk interface initialized successfully
10m         Normal    DisruptionBlocked         node/ip-10-18-3-137.af-south-1.compute.internal   Node is nominated for a pending pod
59m         Normal    Unconsolidatable          node/ip-10-18-3-69.af-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
33m         Normal    Starting                  node/ip-10-18-3-69.af-south-1.compute.internal    
10m         Normal    DisruptionBlocked         node/ip-10-18-3-69.af-south-1.compute.internal    Node is deleting or marked for deletion
10m         Normal    DisruptionTerminating     node/ip-10-18-3-69.af-south-1.compute.internal    Disrupting Node: Underutilized/Delete
10m         Warning   FailedDraining            node/ip-10-18-3-69.af-south-1.compute.internal    Failed to drain node, 5 pods are waiting to be evicted
9m8s        Warning   InstanceTerminating       node/ip-10-18-3-69.af-south-1.compute.internal    Instance is terminating
8m30s       Normal    RemovingNode              node/ip-10-18-3-69.af-south-1.compute.internal    Node ip-10-18-3-69.af-south-1.compute.internal event: Removing Node ip-10-18-3-69.af-south-1.compute.internal from Controller
35m         Normal    Unconsolidatable          node/ip-10-18-3-90.af-south-1.compute.internal    Can't remove without creating 2 candidates
33m         Normal    Starting                  node/ip-10-18-3-90.af-south-1.compute.internal    
14m         Normal    Unconsolidatable          node/ip-10-18-3-90.af-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
```

Pods with issues
```
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-5s8bl                               0/1     CreateContainerConfigError   0          10h
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-8psgv                               0/1     CreateContainerConfigError   0          3d19h
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
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     279d
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

Generated on: Tue Sep 23 12:41:25 CEST 2025
