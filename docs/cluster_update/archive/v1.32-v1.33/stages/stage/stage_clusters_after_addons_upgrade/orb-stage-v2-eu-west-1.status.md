# Cluster recon for tfh-orb-stage-infra,eu-west-1,orb-stage-v2-eu-west-1,tunnel-vpc-orb-stage-eu-west-1

TFH EKS login...
```console
2025/09/18 11:13:02 INFO Logging into AWS
2025/09/18 11:13:02 INFO Token found and valid
2025/09/18 11:13:04 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-stage-eu-west-1 id=ea718745-0878-456b-bf33-b3d760a03a66
2025/09/18 11:13:06 INFO Active WARP Virtual Network id=ea718745-0878-456b-bf33-b3d760a03a66
Updated context tfh-orb-stage-v2-eu-west-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "1147b74c-a0bc-4384-a0ad-dcd978892c2c",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T07:24:50+02:00",
            "lastTransitionTime": "2025-07-29T06:19:35+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "5987a184-8ea9-4f49-b033-bcbabab67dd3",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T07:24:37+02:00",
            "lastTransitionTime": "2025-08-20T20:34:36+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "d00d4cb3-63ad-4245-b7b7-bcb38eb9f97a",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T07:24:37+02:00",
            "lastTransitionTime": "2025-08-20T20:34:36+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "59eeb3c5-b142-4ab3-b615-21d76df7dee6",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T07:24:38+02:00",
            "lastTransitionTime": "2025-09-05T18:09:32+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "2d7542f7-5921-445d-8e9f-88e0db35bc73",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T07:24:50+02:00",
            "lastTransitionTime": "2024-12-21T03:34:40+01:00",
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
        "name": "orb-stage-v2-eu-west-1",
        "arn": "arn:aws:eks:eu-west-1:510867353226:cluster/orb-stage-v2-eu-west-1",
        "createdAt": "2023-04-12T16:38:37.464000+02:00",
        "version": "1.32",
        "endpoint": "https://F5278E70B5341DF6E34C40EDEFB64A08.gr7.eu-west-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::510867353226:role/eks-cluster-orb-stage-v2-eu-west-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0a7dafbbc62245790",
                "subnet-0b16e399a8f70150e",
                "subnet-051684ce671865bb1"
            ],
            "securityGroupIds": [
                "sg-01fb59b6c9ef5133d"
            ],
            "clusterSecurityGroupId": "sg-05733a83bdf1b0d38",
            "vpcId": "vpc-046dd9276c9c75c25",
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
                "issuer": "https://oidc.eks.eu-west-1.amazonaws.com/id/F5278E70B5341DF6E34C40EDEFB64A08"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EUXhNakUwTkRNek5Wb1hEVE16TURRd09URTBORE16TlZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTEhWCmllVUUxVnQ1ckF2ZUhQR3N0NE5GbEFWOG4vcm1XV3ZaVUQ4eENZekZ4RDFFSjBhbld3N3Vjb0JsU1RzYmZFSm0Kd09PYUh4UitGSDJVTlU2Vm1QYmhwbTg4ckRRbkw0TktYaUE5SitJKzRVOE4wMWlPd2xDcDVvbmRVem5PcXNpOQpFWmI2dElldGU5akJsZ1pTeHQ4Q1NNQnhNWkxtVVpES2pKWmp3b0luYmhXYStUaU9BOXdxdTgzSzJVVCtIczRjClRaK1R3RkVEQ0pPajZPL2gxanBibG44U0FoTU4zZVRWeUdBeXUweDRYV1QwekoxNDNoK0xVQ2FvZk9TMThCb0wKdWtqbVp3ZXRZd1gyb205M3lNT1o1Q1R6NlVrcTRubzlWTGxZS3hIVEk4L05uUm9HM21UWDdNTS92YWZseEpQVQpyVkR1TDBMdWs3UURpUkJQT01VQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZPeTZ1a2dGbHhJQjFPaXpBcGt6VnE2NXd0TWVNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBRy9Ndnc4b01ENlFnNkNpeWhvNgppZkgwTHRLZEtqSDAzS0dUSEtzS3B2a0Y1U093YU5KbXRoNGlmd0xjNFlVbVF2aHRMMGJXckR2d3N0QlNwQ3hYClIzeU04bmZOVHdKcTBNRHdKckZmSWRLdnhCRGRQTUZSaFRPTmF5b0tCcmN1dmgyUEozTWErUlhyQ1Buc3M2U04KdHA5NUkzNkNUZW9QQW5BRFdYMiswZ0xCS0Vzc0ZiUkRxYUN3WTJLNTE3NmRHMWlBcXhWb1VxaFl3ZjdSLzIyTQplWlJkeUVHUy9TVWJvYWtyc0lrTzJXaXEwN3l4LzVXNU5YVHZNTzgvR2M5bW8yKzNiblVVcDJnbm5YZE1YTGduCkx4RjZrRko0V2p0ellkbnRnemRZb1VsYk83SGRZNXJsa3dKeExYNkFyQ2ZMamNzTitNZW5pQnlkMGdVbmJHbmQKQzBRPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "stage",
            "karpenter.sh/discovery": "orb-stage-v2-eu-west-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-west-1:510867353226:key/eab10138-a25f-4774-a5e0-108377c29ead"
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
NAME                                         STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME
ip-10-57-18-51.eu-west-1.compute.internal    Ready    <none>   9d      v1.32.8-eks-99d6cc0   10.57.18.51    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-57-20-160.eu-west-1.compute.internal   Ready    <none>   8h      v1.32.8-eks-99d6cc0   10.57.20.160   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-57-20-162.eu-west-1.compute.internal   Ready    <none>   10m     v1.32.8-eks-99d6cc0   10.57.20.162   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-57-20-244.eu-west-1.compute.internal   Ready    <none>   10h     v1.32.8-eks-99d6cc0   10.57.20.244   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-57-20-8.eu-west-1.compute.internal     Ready    <none>   3h15m   v1.32.8-eks-99d6cc0   10.57.20.8     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-57-21-114.eu-west-1.compute.internal   Ready    <none>   80m     v1.32.8-eks-99d6cc0   10.57.21.114   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-57-21-193.eu-west-1.compute.internal   Ready    <none>   9d      v1.32.8-eks-99d6cc0   10.57.21.193   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-57-21-236.eu-west-1.compute.internal   Ready    <none>   72m     v1.32.8-eks-99d6cc0   10.57.21.236   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                                            MESSAGE
7m54s       Normal    Finalized                 node                                              Finalized karpenter.sh/termination
2m11s       Warning   Unsupported               node/ip-10-57-18-51.eu-west-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    Starting                  node/ip-10-57-18-51.eu-west-1.compute.internal    
57m         Normal    Unconsolidatable          node/ip-10-57-20-156.eu-west-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
23m         Normal    Unconsolidatable          node/ip-10-57-20-156.eu-west-1.compute.internal   Can't remove without creating 2 candidates
18m         Normal    Starting                  node/ip-10-57-20-156.eu-west-1.compute.internal   
9m34s       Normal    DisruptionBlocked         node/ip-10-57-20-156.eu-west-1.compute.internal   Node is deleting or marked for deletion
9m34s       Normal    DisruptionTerminating     node/ip-10-57-20-156.eu-west-1.compute.internal   Disrupting Node: Underutilized/Delete
9m34s       Warning   FailedDraining            node/ip-10-57-20-156.eu-west-1.compute.internal   Failed to drain node, 5 pods are waiting to be evicted
8m56s       Warning   InstanceTerminating       node/ip-10-57-20-156.eu-west-1.compute.internal   Instance is terminating
8m9s        Normal    NodeNotReady              node/ip-10-57-20-156.eu-west-1.compute.internal   Node ip-10-57-20-156.eu-west-1.compute.internal status is now: NodeNotReady
8m9s        Normal    MemoryPressure            node/ip-10-57-20-156.eu-west-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m9s        Normal    DiskPressure              node/ip-10-57-20-156.eu-west-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m9s        Normal    PIDPressure               node/ip-10-57-20-156.eu-west-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m9s        Normal    Ready                     node/ip-10-57-20-156.eu-west-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m55s       Normal    DeletingNode              node/ip-10-57-20-156.eu-west-1.compute.internal   Deleting node ip-10-57-20-156.eu-west-1.compute.internal because it does not exist in the cloud provider
7m54s       Normal    RemovingNode              node/ip-10-57-20-156.eu-west-1.compute.internal   Node ip-10-57-20-156.eu-west-1.compute.internal event: Removing Node ip-10-57-20-156.eu-west-1.compute.internal from Controller
9m34s       Normal    DisruptionBlocked         node/ip-10-57-20-160.eu-west-1.compute.internal   Node is nominated for a pending pod
27m         Normal    Unconsolidatable          node/ip-10-57-20-160.eu-west-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
18m         Normal    Starting                  node/ip-10-57-20-160.eu-west-1.compute.internal   
10m         Normal    Starting                  node/ip-10-57-20-162.eu-west-1.compute.internal   Starting kubelet.
10m         Warning   InvalidDiskCapacity       node/ip-10-57-20-162.eu-west-1.compute.internal   invalid capacity 0 on image filesystem
10m         Normal    NodeHasSufficientMemory   node/ip-10-57-20-162.eu-west-1.compute.internal   Node ip-10-57-20-162.eu-west-1.compute.internal status is now: NodeHasSufficientMemory
10m         Normal    NodeHasNoDiskPressure     node/ip-10-57-20-162.eu-west-1.compute.internal   Node ip-10-57-20-162.eu-west-1.compute.internal status is now: NodeHasNoDiskPressure
10m         Normal    NodeHasSufficientPID      node/ip-10-57-20-162.eu-west-1.compute.internal   Node ip-10-57-20-162.eu-west-1.compute.internal status is now: NodeHasSufficientPID
10m         Normal    NodeAllocatableEnforced   node/ip-10-57-20-162.eu-west-1.compute.internal   Updated Node Allocatable limit across pods
10m         Normal    Synced                    node/ip-10-57-20-162.eu-west-1.compute.internal   Node synced successfully
10m         Normal    DisruptionBlocked         node/ip-10-57-20-162.eu-west-1.compute.internal   Node isn't initialized
10m         Normal    RegisteredNode            node/ip-10-57-20-162.eu-west-1.compute.internal   Node ip-10-57-20-162.eu-west-1.compute.internal event: Registered Node ip-10-57-20-162.eu-west-1.compute.internal in Controller
10m         Normal    Starting                  node/ip-10-57-20-162.eu-west-1.compute.internal   
10m         Normal    ControllerVersionNotice   node/ip-10-57-20-162.eu-west-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
9m59s       Normal    NodeReady                 node/ip-10-57-20-162.eu-west-1.compute.internal   Node ip-10-57-20-162.eu-west-1.compute.internal status is now: NodeReady
9m59s       Normal    Ready                     node/ip-10-57-20-162.eu-west-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
9m56s       Normal    NodeTrunkInitiated        node/ip-10-57-20-162.eu-west-1.compute.internal   The node has trunk interface initialized successfully
33m         Normal    Unconsolidatable          node/ip-10-57-20-244.eu-west-1.compute.internal   Can't remove without creating 2 candidates
52m         Normal    DisruptionBlocked         node/ip-10-57-20-244.eu-west-1.compute.internal   Node is nominated for a pending pod
53m         Normal    Unconsolidatable          node/ip-10-57-20-244.eu-west-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
13m         Normal    DisruptionBlocked         node/ip-10-57-20-244.eu-west-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
18m         Normal    Starting                  node/ip-10-57-20-244.eu-west-1.compute.internal   
27m         Normal    Unconsolidatable          node/ip-10-57-20-8.eu-west-1.compute.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
52m         Normal    DisruptionBlocked         node/ip-10-57-20-8.eu-west-1.compute.internal     Node is nominated for a pending pod
18m         Normal    Starting                  node/ip-10-57-20-8.eu-west-1.compute.internal     
53m         Normal    Unconsolidatable          node/ip-10-57-21-114.eu-west-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
52m         Normal    DisruptionBlocked         node/ip-10-57-21-114.eu-west-1.compute.internal   Node is nominated for a pending pod
22m         Normal    Unconsolidatable          node/ip-10-57-21-114.eu-west-1.compute.internal   Can't remove without creating 2 candidates
18m         Normal    Starting                  node/ip-10-57-21-114.eu-west-1.compute.internal   
13m         Normal    DisruptionBlocked         node/ip-10-57-21-114.eu-west-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
96s         Warning   Unsupported               node/ip-10-57-21-193.eu-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
18m         Normal    Starting                  node/ip-10-57-21-193.eu-west-1.compute.internal   
52m         Normal    DisruptionBlocked         node/ip-10-57-21-236.eu-west-1.compute.internal   Node is nominated for a pending pod
18m         Normal    Starting                  node/ip-10-57-21-236.eu-west-1.compute.internal   
52m         Normal    DisruptionBlocked         node/ip-10-57-21-43.eu-west-1.compute.internal    Node is deleting or marked for deletion
52m         Normal    DisruptionTerminating     node/ip-10-57-21-43.eu-west-1.compute.internal    Disrupting Node: Underutilized/Delete
52m         Warning   FailedDraining            node/ip-10-57-21-43.eu-west-1.compute.internal    Failed to drain node, 7 pods are waiting to be evicted
51m         Warning   InstanceTerminating       node/ip-10-57-21-43.eu-west-1.compute.internal    Instance is terminating
50m         Normal    NodeNotReady              node/ip-10-57-21-43.eu-west-1.compute.internal    Node ip-10-57-21-43.eu-west-1.compute.internal status is now: NodeNotReady
50m         Normal    MemoryPressure            node/ip-10-57-21-43.eu-west-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
50m         Normal    DiskPressure              node/ip-10-57-21-43.eu-west-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
50m         Normal    PIDPressure               node/ip-10-57-21-43.eu-west-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
50m         Normal    Ready                     node/ip-10-57-21-43.eu-west-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
50m         Normal    RemovingNode              node/ip-10-57-21-43.eu-west-1.compute.internal    Node ip-10-57-21-43.eu-west-1.compute.internal event: Removing Node ip-10-57-21-43.eu-west-1.compute.internal from Controller
```

Pods with issues
```
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-fhc8s                               0/1     CreateContainerConfigError   0          52m
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-ggfjt                               0/1     CreateContainerConfigError   0          79m
```

PodDisruptionBudgets
```
NAMESPACE                             NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                    cluster-monitoring-pdb                    N/A             1                 1                     292d
karpenter                             karpenter                                 N/A             1                 1                     2y147d
kube-system                           coredns                                   N/A             1                 1                     645d
kube-system                           ebs-csi-controller                        N/A             1                 1                     2y159d
kyverno                               kyverno-admission-controller              1               N/A               2                     603d
orb-fleet-backend-docs-server         orb-fleet-backend-docs-server-pdb         N/A             1                 0                     154d
orb-fleet-backend-event-server        orb-fleet-backend-event-server-pdb        N/A             1                 0                     181d
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     281d
orb-fleet-backend-internal            orb-fleet-backend-internal-pdb            N/A             1                 1                     281d
orb-fleet-backend-job-server          orb-fleet-backend-job-server-pdb          N/A             1                 0                     212d
orb-fleet-backend-job-worker          orb-fleet-backend-job-worker-pdb          N/A             1                 0                     216d
orb-fleet-backend-location-server     orb-fleet-backend-location-server-pdb     N/A             1                 0                     190d
orb-fleet-backend-monitoring-server   orb-fleet-backend-monitoring-server-pdb   N/A             1                 0                     212d
orb-fleet-backend-monitoring-worker   orb-fleet-backend-monitoring-worker-pdb   N/A             1                 0                     233d
signup-service                        signup-service-pdb                        N/A             1                 1                     76d
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
