# Cluster recon for tfh-orb-prod-infra,eu-south-1,orb-prod-v2-eu-south-1,tunnel-vpc-orb-prod-eu-south-1

TFH EKS login...
```console
2025/09/23 13:01:14 INFO Logging into AWS
2025/09/23 13:01:14 INFO Token found and valid
2025/09/23 13:01:16 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-prod-eu-south-1 id=898f0059-7316-4f08-ba47-14f3017b327b
2025/09/23 13:01:18 INFO Active WARP Virtual Network id=898f0059-7316-4f08-ba47-14f3017b327b
Updated context tfh-orb-prod-v2-eu-south-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "000466b1-c1d3-4c45-8ea9-dc208fc1cabe",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T08:35:06+02:00",
            "lastTransitionTime": "2025-09-16T15:55:05+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "6d7d15e0-56dc-4330-85ba-f47d1ec99c3c",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T08:35:06+02:00",
            "lastTransitionTime": "2025-08-20T21:15:09+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "41394f88-aef1-45c4-b6df-80d85d6ec3d4",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T08:35:06+02:00",
            "lastTransitionTime": "2025-08-20T21:15:09+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "69fc2423-4587-4b28-8627-97b079b005ef",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T08:35:20+02:00",
            "lastTransitionTime": "2025-07-29T07:00:08+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "0154abde-1f1f-4139-83b1-d5f7e9619c95",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T08:35:20+02:00",
            "lastTransitionTime": "2024-12-20T08:10:09+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        }
    ]
}
```

Show full cluster description:
```json
{
    "cluster": {
        "name": "orb-prod-v2-eu-south-1",
        "arn": "arn:aws:eks:eu-south-1:573252405782:cluster/orb-prod-v2-eu-south-1",
        "createdAt": "2023-06-16T09:55:35.174000+02:00",
        "version": "1.32",
        "endpoint": "https://94101E01A8D8D186AA25A85FEBC3731C.sk1.eu-south-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::573252405782:role/eks-cluster-orb-prod-v2-eu-south-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-086b7afa02378db51",
                "subnet-0718550d58e14ea88",
                "subnet-0c8401bbfe7fb4ede"
            ],
            "securityGroupIds": [
                "sg-049d3f3b63e65d714"
            ],
            "clusterSecurityGroupId": "sg-0dadb1062fc6008df",
            "vpcId": "vpc-0c7d101e998cf043d",
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
                "issuer": "https://oidc.eks.eu-south-1.amazonaws.com/id/94101E01A8D8D186AA25A85FEBC3731C"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EWXhOakE0TURBeE5sb1hEVE16TURZeE16QTRNREF4Tmxvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTTJqClJWNktXRHR2dkhqOVB0YkJuUkFaV0VMZlduejErQlJQYktjWFozVnk3eGJRMlFLZW5NbS9wbldrTk50WFFjYW0KSzJkZ1BwbTFRVTVhL3oyeGVNL3ZIU2cveWY1dnp3R3RwaUNlQnlyZ1B6TWYzY1QreUJvWDBxanhERENreWN5SApYbG8yU2JvRVBlVnFPQmU0S2ZzdmczVTBxMXJMYUthY1VPSWlqT1ZOODJDeExrUDlOTjhEWlpNM2I2c05QaWUwCmdGQlIyUXZRbE5ydVZoQnJTb0wzL0ZtbGZwV2pxUjdpUzRJOXhBMExXODB0cExDSHFlSHhOM2pQTks1SXpGVVIKY3FFUVdBN3B0VENMdVgwY3Q5QjJ4RHVyNjhPdDE5dytTQW5XYXdlYUc0U0E4c01DcUo4Y1NPUW4zcHB4bUVCOQpUTkdnSXV2c1NUNGJETGRBTElVQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZPMDVwQXdxdTZrNEJuNU5vMnFCSkJiNXcxVDVNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBSXA1NHJKNjk3NXEyV2wvSEVmZApqSUQ1bEUwb1hLNllSaEZGc05GcmlpMW1ueXBoSzd1M1ZvMlFabWgyamZKWVV5VVVHYzA3TEV6UVE1TUwvV1ZOClk4ekJPMjJ2ZjV0ZEhDc1VNdGtBVlhNM0czcDg3cGdKRGgrMm5DYmxWY1JpYWpJdkp2RDVuWEJWMkFwZzkrRWkKRXNUQW00UlpydTBUMkNXUHZWSkNXRS9Sa1Y4MERMSFJWeTU5RkJOcXRMT1dIM0pwM045aEgwMHFTQ2l1WmprdAppcndTQlZLMEdlQjIzUUNVVkNZNW1IS3MzcUtETVQ1RU83UzBsbU56a3EvRjFqVkhiUTlzV0xHOXZaN3pZRkRsCndEei83UlZtY0lxYjczaXZWSUorUG1jUWhPaHVnZlJudldSRHVLVE9oRFZ4SDRmVXVpZUZMcmQ5TVJHVUVNWk4KdnMwPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-prod-v2-eu-south-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-south-1:573252405782:key/831c3b32-f9a7-492e-9495-c50d11ae2c5b"
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
ip-10-66-48-146.eu-south-1.compute.internal   Ready    <none>   22h     v1.32.8-eks-99d6cc0   10.66.48.146   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-eu-south-1
ip-10-66-50-221.eu-south-1.compute.internal   Ready    <none>   12h     v1.32.8-eks-99d6cc0   10.66.50.221   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-66-50-36.eu-south-1.compute.internal    Ready    <none>   7h      v1.32.8-eks-99d6cc0   10.66.50.36    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-66-51-154.eu-south-1.compute.internal   Ready    <none>   12h     v1.32.8-eks-99d6cc0   10.66.51.154   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-66-51-25.eu-south-1.compute.internal    Ready    <none>   22h     v1.32.8-eks-99d6cc0   10.66.51.25    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-eu-south-1
ip-10-66-52-120.eu-south-1.compute.internal   Ready    <none>   12h     v1.32.8-eks-99d6cc0   10.66.52.120   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-66-52-142.eu-south-1.compute.internal   Ready    <none>   4h47m   v1.32.8-eks-99d6cc0   10.66.52.142   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-66-52-145.eu-south-1.compute.internal   Ready    <none>   6h59m   v1.32.8-eks-99d6cc0   10.66.52.145   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-66-52-151.eu-south-1.compute.internal   Ready    <none>   54m     v1.32.8-eks-99d6cc0   10.66.52.151   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-66-52-33.eu-south-1.compute.internal    Ready    <none>   3d11h   v1.32.8-eks-99d6cc0   10.66.52.33    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-66-52-83.eu-south-1.compute.internal    Ready    <none>   25h     v1.32.8-eks-99d6cc0   10.66.52.83    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                          STATUS   ROLES    TAINTS
ip-10-66-48-146.eu-south-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-66-50-221.eu-south-1.compute.internal   Ready    <none>   <none>
ip-10-66-50-36.eu-south-1.compute.internal    Ready    <none>   <none>
ip-10-66-51-154.eu-south-1.compute.internal   Ready    <none>   <none>
ip-10-66-51-25.eu-south-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-66-52-120.eu-south-1.compute.internal   Ready    <none>   <none>
ip-10-66-52-142.eu-south-1.compute.internal   Ready    <none>   <none>
ip-10-66-52-145.eu-south-1.compute.internal   Ready    <none>   <none>
ip-10-66-52-151.eu-south-1.compute.internal   Ready    <none>   <none>
ip-10-66-52-33.eu-south-1.compute.internal    Ready    <none>   <none>
ip-10-66-52-83.eu-south-1.compute.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                                             MESSAGE
51m         Normal    Finalized                 node                                               Finalized karpenter.sh/termination
3m3s        Warning   Unsupported               node/ip-10-66-48-146.eu-south-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
54m         Normal    Starting                  node/ip-10-66-48-146.eu-south-1.compute.internal   
53m         Normal    DisruptionBlocked         node/ip-10-66-50-221.eu-south-1.compute.internal   Node is nominated for a pending pod
3m21s       Normal    Unconsolidatable          node/ip-10-66-50-221.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
54m         Normal    Starting                  node/ip-10-66-50-221.eu-south-1.compute.internal   
4m22s       Normal    Unconsolidatable          node/ip-10-66-50-36.eu-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
54m         Normal    DisruptionBlocked         node/ip-10-66-50-36.eu-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
54m         Normal    Starting                  node/ip-10-66-50-36.eu-south-1.compute.internal    
9m15s       Normal    Unconsolidatable          node/ip-10-66-51-154.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
54m         Normal    Starting                  node/ip-10-66-51-154.eu-south-1.compute.internal   
6m8s        Warning   Unsupported               node/ip-10-66-51-25.eu-south-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
54m         Normal    Starting                  node/ip-10-66-51-25.eu-south-1.compute.internal    
4m22s       Normal    Unconsolidatable          node/ip-10-66-52-120.eu-south-1.compute.internal   Can't remove without creating 2 candidates
54m         Normal    DisruptionBlocked         node/ip-10-66-52-120.eu-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
54m         Normal    Starting                  node/ip-10-66-52-120.eu-south-1.compute.internal   
4m22s       Normal    Unconsolidatable          node/ip-10-66-52-142.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
54m         Normal    DisruptionBlocked         node/ip-10-66-52-142.eu-south-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
54m         Normal    Starting                  node/ip-10-66-52-142.eu-south-1.compute.internal   
3m22s       Normal    Unconsolidatable          node/ip-10-66-52-145.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
54m         Normal    Starting                  node/ip-10-66-52-145.eu-south-1.compute.internal   
54m         Normal    Starting                  node/ip-10-66-52-151.eu-south-1.compute.internal   Starting kubelet.
54m         Warning   InvalidDiskCapacity       node/ip-10-66-52-151.eu-south-1.compute.internal   invalid capacity 0 on image filesystem
54m         Normal    NodeHasSufficientMemory   node/ip-10-66-52-151.eu-south-1.compute.internal   Node ip-10-66-52-151.eu-south-1.compute.internal status is now: NodeHasSufficientMemory
54m         Normal    NodeHasNoDiskPressure     node/ip-10-66-52-151.eu-south-1.compute.internal   Node ip-10-66-52-151.eu-south-1.compute.internal status is now: NodeHasNoDiskPressure
54m         Normal    NodeHasSufficientPID      node/ip-10-66-52-151.eu-south-1.compute.internal   Node ip-10-66-52-151.eu-south-1.compute.internal status is now: NodeHasSufficientPID
54m         Normal    NodeAllocatableEnforced   node/ip-10-66-52-151.eu-south-1.compute.internal   Updated Node Allocatable limit across pods
54m         Normal    Synced                    node/ip-10-66-52-151.eu-south-1.compute.internal   Node synced successfully
54m         Normal    DisruptionBlocked         node/ip-10-66-52-151.eu-south-1.compute.internal   Node isn't initialized
54m         Normal    RegisteredNode            node/ip-10-66-52-151.eu-south-1.compute.internal   Node ip-10-66-52-151.eu-south-1.compute.internal event: Registered Node ip-10-66-52-151.eu-south-1.compute.internal in Controller
54m         Normal    Starting                  node/ip-10-66-52-151.eu-south-1.compute.internal   
53m         Normal    ControllerVersionNotice   node/ip-10-66-52-151.eu-south-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
53m         Normal    NodeReady                 node/ip-10-66-52-151.eu-south-1.compute.internal   Node ip-10-66-52-151.eu-south-1.compute.internal status is now: NodeReady
53m         Normal    Ready                     node/ip-10-66-52-151.eu-south-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
53m         Normal    NodeTrunkInitiated        node/ip-10-66-52-151.eu-south-1.compute.internal   The node has trunk interface initialized successfully
4m22s       Normal    Unconsolidatable          node/ip-10-66-52-151.eu-south-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
23m         Normal    Unconsolidatable          node/ip-10-66-52-33.eu-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
54m         Normal    Starting                  node/ip-10-66-52-33.eu-south-1.compute.internal    
4m23s       Normal    DisruptionBlocked         node/ip-10-66-52-33.eu-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
54m         Normal    DisruptionBlocked         node/ip-10-66-52-83.eu-south-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
54m         Normal    Starting                  node/ip-10-66-52-83.eu-south-1.compute.internal    
56m         Normal    Unconsolidatable          node/ip-10-66-52-90.eu-south-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
54m         Normal    Starting                  node/ip-10-66-52-90.eu-south-1.compute.internal    
53m         Normal    DisruptionBlocked         node/ip-10-66-52-90.eu-south-1.compute.internal    Node is deleting or marked for deletion
53m         Normal    DisruptionTerminating     node/ip-10-66-52-90.eu-south-1.compute.internal    Disrupting Node: Underutilized/Delete
53m         Warning   FailedDraining            node/ip-10-66-52-90.eu-south-1.compute.internal    Failed to drain node, 4 pods are waiting to be evicted
52m         Warning   InstanceTerminating       node/ip-10-66-52-90.eu-south-1.compute.internal    Instance is terminating
51m         Normal    RemovingNode              node/ip-10-66-52-90.eu-south-1.compute.internal    Node ip-10-66-52-90.eu-south-1.compute.internal event: Removing Node ip-10-66-52-90.eu-south-1.compute.internal from Controller
```

Pods with issues
```
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-grzl8                               0/1     CreateContainerConfigError   0          12h
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-vfdmk                               0/1     CreateContainerConfigError   0          12h
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
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     290d
orb-fleet-backend-internal            orb-fleet-backend-internal-pdb            N/A             1                 1                     290d
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

Generated on: Tue Sep 23 13:01:53 CEST 2025
