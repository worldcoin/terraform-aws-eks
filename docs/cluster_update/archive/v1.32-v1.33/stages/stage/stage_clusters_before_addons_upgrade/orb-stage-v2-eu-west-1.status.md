# Cluster recon for tfh-orb-stage-infra,eu-west-1,orb-stage-v2-eu-west-1,tunnel-vpc-orb-stage-eu-west-1

TFH EKS login...
```console
2025/09/17 17:03:26 INFO Logging into AWS
2025/09/17 17:03:26 INFO Token found and valid
2025/09/17 17:03:29 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-stage-eu-west-1 id=ea718745-0878-456b-bf33-b3d760a03a66
2025/09/17 17:03:30 INFO Active WARP Virtual Network id=ea718745-0878-456b-bf33-b3d760a03a66
Added new context tfh-orb-stage-v2-eu-west-1 to /Users/lukasz.glowacki/.kube/config
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
            "id": "3ae1ddf9-670f-414c-947a-5121f7cb52df",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T11:19:43+02:00",
            "lastTransitionTime": "2024-12-21T03:34:40+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "e1704c1f-785f-4c7c-a5a1-9dbcc5aeb448",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T11:19:39+02:00",
            "lastTransitionTime": "2025-08-20T20:34:36+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "af7a06a8-d890-4623-9d97-205ba3fcf94c",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T11:19:43+02:00",
            "lastTransitionTime": "2025-07-29T06:19:35+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "aa764dc9-1063-4b56-bcc8-32170ff1da4b",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T11:19:39+02:00",
            "lastTransitionTime": "2025-08-20T20:34:36+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "bc7d1a65-107d-4edf-b5c3-aa9ded875b30",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T11:19:39+02:00",
            "lastTransitionTime": "2025-09-05T18:09:32+02:00",
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
NAME                                         STATUS   ROLES    AGE   VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME
ip-10-57-16-35.eu-west-1.compute.internal    Ready    <none>   28h   v1.32.8-eks-99d6cc0   10.57.16.35    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-57-16-85.eu-west-1.compute.internal    Ready    <none>   17h   v1.32.8-eks-99d6cc0   10.57.16.85    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-57-17-208.eu-west-1.compute.internal   Ready    <none>   14h   v1.32.8-eks-99d6cc0   10.57.17.208   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-57-17-92.eu-west-1.compute.internal    Ready    <none>   16h   v1.32.8-eks-99d6cc0   10.57.17.92    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-57-18-51.eu-west-1.compute.internal    Ready    <none>   9d    v1.32.8-eks-99d6cc0   10.57.18.51    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-57-20-213.eu-west-1.compute.internal   Ready    <none>   37s   v1.32.8-eks-99d6cc0   10.57.20.213   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-57-20-6.eu-west-1.compute.internal     Ready    <none>   14h   v1.32.8-eks-99d6cc0   10.57.20.6     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27
ip-10-57-20-76.eu-west-1.compute.internal    Ready    <none>   55m   v1.32.8-eks-99d6cc0   10.57.20.76    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-57-21-193.eu-west-1.compute.internal   Ready    <none>   9d    v1.32.8-eks-99d6cc0   10.57.21.193   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                                            MESSAGE
53m         Normal    Finalized                 node                                              Finalized karpenter.sh/termination
9m58s       Normal    Unconsolidatable          node/ip-10-57-16-35.eu-west-1.compute.internal    Can't remove without creating 2 candidates
3s          Normal    DisruptionBlocked         node/ip-10-57-16-35.eu-west-1.compute.internal    Node is nominated for a pending pod
62s         Normal    DisruptionBlocked         node/ip-10-57-16-85.eu-west-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
13m         Normal    Unconsolidatable          node/ip-10-57-17-208.eu-west-1.compute.internal   Can't remove without creating 2 candidates
3s          Normal    DisruptionBlocked         node/ip-10-57-17-208.eu-west-1.compute.internal   Node is deleting or marked for deletion
2s          Normal    DisruptionTerminating     node/ip-10-57-17-208.eu-west-1.compute.internal   Disrupting Node: Underutilized/Delete
2s          Warning   FailedDraining            node/ip-10-57-17-208.eu-west-1.compute.internal   Failed to drain node, 5 pods are waiting to be evicted
9m58s       Normal    Unconsolidatable          node/ip-10-57-17-92.eu-west-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
55m         Normal    Unconsolidatable          node/ip-10-57-18-201.eu-west-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
54m         Normal    DisruptionBlocked         node/ip-10-57-18-201.eu-west-1.compute.internal   Node is deleting or marked for deletion
54m         Normal    DisruptionTerminating     node/ip-10-57-18-201.eu-west-1.compute.internal   Disrupting Node: Underutilized/Delete
54m         Warning   FailedDraining            node/ip-10-57-18-201.eu-west-1.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
54m         Warning   InstanceTerminating       node/ip-10-57-18-201.eu-west-1.compute.internal   Instance is terminating
53m         Normal    RemovingNode              node/ip-10-57-18-201.eu-west-1.compute.internal   Node ip-10-57-18-201.eu-west-1.compute.internal event: Removing Node ip-10-57-18-201.eu-west-1.compute.internal from Controller
118s        Warning   Unsupported               node/ip-10-57-18-51.eu-west-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
43s         Normal    Starting                  node/ip-10-57-20-213.eu-west-1.compute.internal   Starting kubelet.
43s         Warning   InvalidDiskCapacity       node/ip-10-57-20-213.eu-west-1.compute.internal   invalid capacity 0 on image filesystem
42s         Normal    NodeHasSufficientMemory   node/ip-10-57-20-213.eu-west-1.compute.internal   Node ip-10-57-20-213.eu-west-1.compute.internal status is now: NodeHasSufficientMemory
42s         Normal    NodeHasNoDiskPressure     node/ip-10-57-20-213.eu-west-1.compute.internal   Node ip-10-57-20-213.eu-west-1.compute.internal status is now: NodeHasNoDiskPressure
42s         Normal    NodeHasSufficientPID      node/ip-10-57-20-213.eu-west-1.compute.internal   Node ip-10-57-20-213.eu-west-1.compute.internal status is now: NodeHasSufficientPID
42s         Normal    NodeAllocatableEnforced   node/ip-10-57-20-213.eu-west-1.compute.internal   Updated Node Allocatable limit across pods
39s         Normal    Synced                    node/ip-10-57-20-213.eu-west-1.compute.internal   Node synced successfully
39s         Normal    RegisteredNode            node/ip-10-57-20-213.eu-west-1.compute.internal   Node ip-10-57-20-213.eu-west-1.compute.internal event: Registered Node ip-10-57-20-213.eu-west-1.compute.internal in Controller
32s         Normal    Starting                  node/ip-10-57-20-213.eu-west-1.compute.internal   
29s         Normal    DisruptionBlocked         node/ip-10-57-20-213.eu-west-1.compute.internal   Node isn't initialized
27s         Normal    ControllerVersionNotice   node/ip-10-57-20-213.eu-west-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
26s         Normal    NodeReady                 node/ip-10-57-20-213.eu-west-1.compute.internal   Node ip-10-57-20-213.eu-west-1.compute.internal status is now: NodeReady
26s         Normal    Ready                     node/ip-10-57-20-213.eu-west-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
23s         Normal    NodeTrunkInitiated        node/ip-10-57-20-213.eu-west-1.compute.internal   The node has trunk interface initialized successfully
4m56s       Normal    Unconsolidatable          node/ip-10-57-20-6.eu-west-1.compute.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
55m         Normal    Starting                  node/ip-10-57-20-76.eu-west-1.compute.internal    Starting kubelet.
55m         Warning   InvalidDiskCapacity       node/ip-10-57-20-76.eu-west-1.compute.internal    invalid capacity 0 on image filesystem
55m         Normal    NodeHasSufficientMemory   node/ip-10-57-20-76.eu-west-1.compute.internal    Node ip-10-57-20-76.eu-west-1.compute.internal status is now: NodeHasSufficientMemory
55m         Normal    NodeHasNoDiskPressure     node/ip-10-57-20-76.eu-west-1.compute.internal    Node ip-10-57-20-76.eu-west-1.compute.internal status is now: NodeHasNoDiskPressure
55m         Normal    NodeHasSufficientPID      node/ip-10-57-20-76.eu-west-1.compute.internal    Node ip-10-57-20-76.eu-west-1.compute.internal status is now: NodeHasSufficientPID
55m         Normal    NodeAllocatableEnforced   node/ip-10-57-20-76.eu-west-1.compute.internal    Updated Node Allocatable limit across pods
55m         Normal    Synced                    node/ip-10-57-20-76.eu-west-1.compute.internal    Node synced successfully
55m         Normal    RegisteredNode            node/ip-10-57-20-76.eu-west-1.compute.internal    Node ip-10-57-20-76.eu-west-1.compute.internal event: Registered Node ip-10-57-20-76.eu-west-1.compute.internal in Controller
55m         Normal    DisruptionBlocked         node/ip-10-57-20-76.eu-west-1.compute.internal    Node isn't initialized
55m         Normal    Starting                  node/ip-10-57-20-76.eu-west-1.compute.internal    
55m         Normal    ControllerVersionNotice   node/ip-10-57-20-76.eu-west-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
55m         Normal    NodeReady                 node/ip-10-57-20-76.eu-west-1.compute.internal    Node ip-10-57-20-76.eu-west-1.compute.internal status is now: NodeReady
55m         Normal    Ready                     node/ip-10-57-20-76.eu-west-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
55m         Normal    NodeTrunkInitiated        node/ip-10-57-20-76.eu-west-1.compute.internal    The node has trunk interface initialized successfully
4m56s       Normal    Unconsolidatable          node/ip-10-57-20-76.eu-west-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
3m52s       Warning   Unsupported               node/ip-10-57-21-193.eu-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
```

Pods with issues
```
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-6gp7f                               0/1     CreateContainerConfigError   0          28h
```

PodDisruptionBudgets
```
NAMESPACE                             NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                    cluster-monitoring-pdb                    N/A             1                 1                     292d
karpenter                             karpenter                                 N/A             1                 1                     2y146d
kube-system                           coredns                                   N/A             1                 1                     645d
kube-system                           ebs-csi-controller                        N/A             1                 1                     2y158d
kyverno                               kyverno-admission-controller              1               N/A               2                     603d
orb-fleet-backend-docs-server         orb-fleet-backend-docs-server-pdb         N/A             1                 0                     153d
orb-fleet-backend-event-server        orb-fleet-backend-event-server-pdb        N/A             1                 0                     180d
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 0                     280d
orb-fleet-backend-internal            orb-fleet-backend-internal-pdb            N/A             1                 1                     280d
orb-fleet-backend-job-server          orb-fleet-backend-job-server-pdb          N/A             1                 0                     211d
orb-fleet-backend-job-worker          orb-fleet-backend-job-worker-pdb          N/A             1                 0                     215d
orb-fleet-backend-location-server     orb-fleet-backend-location-server-pdb     N/A             1                 0                     189d
orb-fleet-backend-monitoring-server   orb-fleet-backend-monitoring-server-pdb   N/A             1                 0                     211d
orb-fleet-backend-monitoring-worker   orb-fleet-backend-monitoring-worker-pdb   N/A             1                 0                     232d
signup-service                        signup-service-pdb                        N/A             1                 1                     75d
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
