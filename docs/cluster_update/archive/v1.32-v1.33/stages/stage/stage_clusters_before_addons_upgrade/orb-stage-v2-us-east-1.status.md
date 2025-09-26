# Cluster recon for tfh-orb-stage-infra,us-east-1,orb-stage-v2-us-east-1,tunnel-vpc-orb-stage-us-east-1

TFH EKS login...
```console
2025/09/17 17:03:59 INFO Logging into AWS
2025/09/17 17:03:59 INFO Token found and valid
2025/09/17 17:04:01 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-stage-us-east-1 id=44a9273a-4be4-42db-9ad7-e5b86d9cabe4
2025/09/17 17:04:03 INFO Active WARP Virtual Network id=44a9273a-4be4-42db-9ad7-e5b86d9cabe4
Added new context tfh-orb-stage-v2-us-east-1 to /Users/lukasz.glowacki/.kube/config
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
            "id": "f4e2fec4-b8ad-41ec-9625-f54ee4133b3a",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T08:24:15+02:00",
            "lastTransitionTime": "2024-12-21T14:24:04+01:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "86835f1e-aee4-422f-99f1-3aa6622788e5",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T08:24:15+02:00",
            "lastTransitionTime": "2024-12-21T14:24:04+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "f6b06031-fd67-40ec-bc64-86abeb1483ab",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T08:24:22+02:00",
            "lastTransitionTime": "2025-07-28T21:14:04+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "0ba7b3bb-597f-4b99-9888-2945048b580d",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T08:24:15+02:00",
            "lastTransitionTime": "2025-09-06T08:29:05+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "aac6e6e4-d855-4e43-9340-94c1ecf2f1d8",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T08:24:22+02:00",
            "lastTransitionTime": "2024-12-21T14:24:04+01:00",
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
        "name": "orb-stage-v2-us-east-1",
        "arn": "arn:aws:eks:us-east-1:510867353226:cluster/orb-stage-v2-us-east-1",
        "createdAt": "2023-04-12T17:18:46.057000+02:00",
        "version": "1.32",
        "endpoint": "https://30288A90E82763184318DF98C85E4FC0.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::510867353226:role/eks-cluster-orb-stage-v2-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0398c9f39a9b3c8ac",
                "subnet-02ff55c4b25cccfb8",
                "subnet-0ed580ddb73792d37"
            ],
            "securityGroupIds": [
                "sg-05ee6ad321717a45b"
            ],
            "clusterSecurityGroupId": "sg-09129eb54cad0b816",
            "vpcId": "vpc-0f5ea8952b9a4edf0",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/30288A90E82763184318DF98C85E4FC0"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EUXhNakUxTWpRME0xb1hEVE16TURRd09URTFNalEwTTFvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTVBVCjUvUWdXSmR2NXQ1bitRa05LeXVOcVhHajVmMEl0TXlmRjJ0Wi9qN3dCcFpwNFFkSG4yZjZ6THdFVWJCY3YyQmwKZGVIT2NPTHVTSGtUKzZLNnJqRUxXV21MaDdCZVpMZ1dXQ1NpKzlQSGk0WU93dDRKMVUvS0ljd2xpNG9WVVo2egpJQXVsMngxZHd1RFc0cythSENicU4wdUI4M2NBTVE3b1ZqNnJCR1hjTWFNdm5JR3MxSHdKY0RwWWU1b0l1a1JQCmdlMGVvVk5MVk9saStKczI0YXpxRDZjYXovL05aMFExZU1xMkJIaVY5RWhXYlZuY1FOdnpMTUM0Vkd4a2V2YnIKdW1scnlRVkZHUG9GNHdWS1VvSmZScjEyVEV0NllJeUY1WVJUY0EwQTkyZk1ObE1OYTBiUk5MZFk4L2xMZ21acworVE5QelVCZ3BZRm1pR0RPM2s4Q0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZGZHI5NE5nVzhaRFhyUnNvKzU3SHFwT0svYWdNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBQ0tNY1U3blNmVG84SnFQc0tESQpicHNtZ2l6N1k1dDE5aE9PeHpvMW96dDU2L0d1dkhqNVoxbnpvTTlISWRMbGJFTm0zbE9JWFZNQ3BsMGRhYTBTCnRTRGhkR0hBeHVRMGlROEdQZGRqM0I4aXlTUnpCb3hNTUJJa2xlT1lrOGdVS1d0Y1FhRXZhWUo5L29aWWlIdmwKdnVQMzNwTXdTUnBmNitURDZHVnYwTEluRitJQXgySExrOTd6RzNKWHNpZC9vUXMrWDZlSTJTS2VacllpRFZmUQpoZFpiQm9YZnN6aHBYMjhRKytVL0I2UjFZQzlHelhPU2x5M2IxSVZ4MndVSUZ5bGduVmZNL0diNm5HcDdVNHFiCnhxc1FtSVpSdnNyT1p1eHNORkZ0V3hHQU81UVQrdHRpY2lxSjlvVlE2aWI3SkZ4alZ1eklBdEJJejJoZkYzbjgKVS9ZPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "stage",
            "karpenter.sh/discovery": "orb-stage-v2-us-east-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:510867353226:key/b90e5768-0c3b-4d7e-9703-051601ab11f0"
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
NAME                         STATUS   ROLES    AGE     VERSION               INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME
ip-10-1-0-161.ec2.internal   Ready    <none>   73s     v1.32.8-eks-99d6cc0   10.1.0.161    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-0-217.ec2.internal   Ready    <none>   24h     v1.32.8-eks-99d6cc0   10.1.0.217    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-1-100.ec2.internal   Ready    <none>   6h26m   v1.32.8-eks-99d6cc0   10.1.1.100    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-1-136.ec2.internal   Ready    <none>   9d      v1.32.8-eks-99d6cc0   10.1.1.136    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-1-186.ec2.internal   Ready    <none>   12h     v1.32.8-eks-99d6cc0   10.1.1.186    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-1-19.ec2.internal    Ready    <none>   56m     v1.32.8-eks-99d6cc0   10.1.1.19     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-1-206.ec2.internal   Ready    <none>   14h     v1.32.8-eks-99d6cc0   10.1.1.206    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-1-229.ec2.internal   Ready    <none>   54m     v1.32.8-eks-99d6cc0   10.1.1.229    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-1-50.ec2.internal    Ready    <none>   53m     v1.32.8-eks-99d6cc0   10.1.1.50     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-5-113.ec2.internal   Ready    <none>   9d      v1.32.8-eks-99d6cc0   10.1.5.113    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                            MESSAGE
36m         Normal    Finalized                 node                              Finalized karpenter.sh/termination
80s         Normal    Starting                  node/ip-10-1-0-161.ec2.internal   Starting kubelet.
80s         Warning   InvalidDiskCapacity       node/ip-10-1-0-161.ec2.internal   invalid capacity 0 on image filesystem
80s         Normal    NodeHasSufficientMemory   node/ip-10-1-0-161.ec2.internal   Node ip-10-1-0-161.ec2.internal status is now: NodeHasSufficientMemory
80s         Normal    NodeHasNoDiskPressure     node/ip-10-1-0-161.ec2.internal   Node ip-10-1-0-161.ec2.internal status is now: NodeHasNoDiskPressure
80s         Normal    NodeHasSufficientPID      node/ip-10-1-0-161.ec2.internal   Node ip-10-1-0-161.ec2.internal status is now: NodeHasSufficientPID
80s         Normal    NodeAllocatableEnforced   node/ip-10-1-0-161.ec2.internal   Updated Node Allocatable limit across pods
77s         Normal    Synced                    node/ip-10-1-0-161.ec2.internal   Node synced successfully
76s         Normal    DisruptionBlocked         node/ip-10-1-0-161.ec2.internal   Node isn't initialized
74s         Normal    RegisteredNode            node/ip-10-1-0-161.ec2.internal   Node ip-10-1-0-161.ec2.internal event: Registered Node ip-10-1-0-161.ec2.internal in Controller
70s         Normal    Starting                  node/ip-10-1-0-161.ec2.internal   
66s         Normal    ControllerVersionNotice   node/ip-10-1-0-161.ec2.internal   The node is managed by VPC resource controller version v1.7.9
65s         Normal    NodeReady                 node/ip-10-1-0-161.ec2.internal   Node ip-10-1-0-161.ec2.internal status is now: NodeReady
65s         Normal    Ready                     node/ip-10-1-0-161.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
61s         Normal    NodeTrunkInitiated        node/ip-10-1-0-161.ec2.internal   The node has trunk interface initialized successfully
55m         Normal    DisruptionBlocked         node/ip-10-1-0-194.ec2.internal   Node is nominated for a pending pod
38m         Normal    DisruptionBlocked         node/ip-10-1-0-194.ec2.internal   Node is deleting or marked for deletion
38m         Normal    DisruptionTerminating     node/ip-10-1-0-194.ec2.internal   Disrupting Node: Underutilized/Delete
38m         Warning   FailedDraining            node/ip-10-1-0-194.ec2.internal   Failed to drain node, 6 pods are waiting to be evicted
36m         Warning   InstanceTerminating       node/ip-10-1-0-194.ec2.internal   Instance is terminating
36m         Normal    RemovingNode              node/ip-10-1-0-194.ec2.internal   Node ip-10-1-0-194.ec2.internal event: Removing Node ip-10-1-0-194.ec2.internal from Controller
59m         Normal    Unconsolidatable          node/ip-10-1-0-212.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
54m         Normal    DisruptionBlocked         node/ip-10-1-0-212.ec2.internal   Node is deleting or marked for deletion
54m         Normal    DisruptionTerminating     node/ip-10-1-0-212.ec2.internal   Disrupting Node: Underutilized/Delete
54m         Warning   FailedDraining            node/ip-10-1-0-212.ec2.internal   Failed to drain node, 4 pods are waiting to be evicted
53m         Normal    RemovingNode              node/ip-10-1-0-212.ec2.internal   Node ip-10-1-0-212.ec2.internal event: Removing Node ip-10-1-0-212.ec2.internal from Controller
38m         Normal    Unconsolidatable          node/ip-10-1-0-217.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
38m         Normal    DisruptionBlocked         node/ip-10-1-0-217.ec2.internal   Node is nominated for a pending pod
54m         Normal    DisruptionBlocked         node/ip-10-1-1-100.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
3m10s       Normal    Unconsolidatable          node/ip-10-1-1-100.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
2m56s       Warning   Unsupported               node/ip-10-1-1-136.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
3m11s       Normal    Unconsolidatable          node/ip-10-1-1-186.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
56m         Normal    Starting                  node/ip-10-1-1-19.ec2.internal    Starting kubelet.
56m         Warning   InvalidDiskCapacity       node/ip-10-1-1-19.ec2.internal    invalid capacity 0 on image filesystem
56m         Normal    NodeHasSufficientMemory   node/ip-10-1-1-19.ec2.internal    Node ip-10-1-1-19.ec2.internal status is now: NodeHasSufficientMemory
56m         Normal    NodeHasNoDiskPressure     node/ip-10-1-1-19.ec2.internal    Node ip-10-1-1-19.ec2.internal status is now: NodeHasNoDiskPressure
56m         Normal    NodeHasSufficientPID      node/ip-10-1-1-19.ec2.internal    Node ip-10-1-1-19.ec2.internal status is now: NodeHasSufficientPID
56m         Normal    NodeAllocatableEnforced   node/ip-10-1-1-19.ec2.internal    Updated Node Allocatable limit across pods
56m         Normal    Synced                    node/ip-10-1-1-19.ec2.internal    Node synced successfully
56m         Normal    RegisteredNode            node/ip-10-1-1-19.ec2.internal    Node ip-10-1-1-19.ec2.internal event: Registered Node ip-10-1-1-19.ec2.internal in Controller
56m         Normal    DisruptionBlocked         node/ip-10-1-1-19.ec2.internal    Node isn't initialized
56m         Normal    ControllerVersionNotice   node/ip-10-1-1-19.ec2.internal    The node is managed by VPC resource controller version v1.7.9
56m         Normal    NodeReady                 node/ip-10-1-1-19.ec2.internal    Node ip-10-1-1-19.ec2.internal status is now: NodeReady
56m         Normal    Ready                     node/ip-10-1-1-19.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
56m         Normal    Starting                  node/ip-10-1-1-19.ec2.internal    
55m         Normal    NodeTrunkInitiated        node/ip-10-1-1-19.ec2.internal    The node has trunk interface initialized successfully
3m11s       Normal    Unconsolidatable          node/ip-10-1-1-19.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
44m         Normal    Unconsolidatable          node/ip-10-1-1-206.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
13m         Normal    Unconsolidatable          node/ip-10-1-1-206.ec2.internal   Can't remove without creating 2 candidates
54m         Normal    ControllerVersionNotice   node/ip-10-1-1-229.ec2.internal   The node is managed by VPC resource controller version v1.7.9
54m         Normal    NodeTrunkInitiated        node/ip-10-1-1-229.ec2.internal   The node has trunk interface initialized successfully
55m         Normal    Starting                  node/ip-10-1-1-229.ec2.internal   Starting kubelet.
55m         Warning   InvalidDiskCapacity       node/ip-10-1-1-229.ec2.internal   invalid capacity 0 on image filesystem
55m         Normal    NodeHasSufficientMemory   node/ip-10-1-1-229.ec2.internal   Node ip-10-1-1-229.ec2.internal status is now: NodeHasSufficientMemory
55m         Normal    NodeHasNoDiskPressure     node/ip-10-1-1-229.ec2.internal   Node ip-10-1-1-229.ec2.internal status is now: NodeHasNoDiskPressure
55m         Normal    NodeHasSufficientPID      node/ip-10-1-1-229.ec2.internal   Node ip-10-1-1-229.ec2.internal status is now: NodeHasSufficientPID
55m         Normal    NodeAllocatableEnforced   node/ip-10-1-1-229.ec2.internal   Updated Node Allocatable limit across pods
54m         Normal    Synced                    node/ip-10-1-1-229.ec2.internal   Node synced successfully
54m         Normal    RegisteredNode            node/ip-10-1-1-229.ec2.internal   Node ip-10-1-1-229.ec2.internal event: Registered Node ip-10-1-1-229.ec2.internal in Controller
54m         Normal    DisruptionBlocked         node/ip-10-1-1-229.ec2.internal   Node isn't initialized
54m         Normal    Starting                  node/ip-10-1-1-229.ec2.internal   
54m         Normal    NodeReady                 node/ip-10-1-1-229.ec2.internal   Node ip-10-1-1-229.ec2.internal status is now: NodeReady
54m         Normal    Ready                     node/ip-10-1-1-229.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
38m         Normal    DisruptionBlocked         node/ip-10-1-1-229.ec2.internal   Node is nominated for a pending pod
3m11s       Normal    Unconsolidatable          node/ip-10-1-1-229.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
48s         Normal    DisruptionBlocked         node/ip-10-1-1-229.ec2.internal   Node is deleting or marked for deletion
48s         Normal    DisruptionTerminating     node/ip-10-1-1-229.ec2.internal   Disrupting Node: Underutilized/Delete
48s         Warning   FailedDraining            node/ip-10-1-1-229.ec2.internal   Failed to drain node, 10 pods are waiting to be evicted
55m         Normal    DisruptionBlocked         node/ip-10-1-1-247.ec2.internal   Node is deleting or marked for deletion
55m         Normal    DisruptionTerminating     node/ip-10-1-1-247.ec2.internal   Disrupting Node: Underutilized/Delete
55m         Warning   FailedDraining            node/ip-10-1-1-247.ec2.internal   Failed to drain node, 13 pods are waiting to be evicted
53m         Warning   InstanceTerminating       node/ip-10-1-1-247.ec2.internal   Instance is terminating
53m         Normal    RemovingNode              node/ip-10-1-1-247.ec2.internal   Node ip-10-1-1-247.ec2.internal event: Removing Node ip-10-1-1-247.ec2.internal from Controller
53m         Normal    Starting                  node/ip-10-1-1-50.ec2.internal    Starting kubelet.
53m         Warning   InvalidDiskCapacity       node/ip-10-1-1-50.ec2.internal    invalid capacity 0 on image filesystem
53m         Normal    NodeHasSufficientMemory   node/ip-10-1-1-50.ec2.internal    Node ip-10-1-1-50.ec2.internal status is now: NodeHasSufficientMemory
53m         Normal    NodeHasNoDiskPressure     node/ip-10-1-1-50.ec2.internal    Node ip-10-1-1-50.ec2.internal status is now: NodeHasNoDiskPressure
53m         Normal    NodeHasSufficientPID      node/ip-10-1-1-50.ec2.internal    Node ip-10-1-1-50.ec2.internal status is now: NodeHasSufficientPID
53m         Normal    NodeAllocatableEnforced   node/ip-10-1-1-50.ec2.internal    Updated Node Allocatable limit across pods
53m         Normal    Synced                    node/ip-10-1-1-50.ec2.internal    Node synced successfully
53m         Normal    RegisteredNode            node/ip-10-1-1-50.ec2.internal    Node ip-10-1-1-50.ec2.internal event: Registered Node ip-10-1-1-50.ec2.internal in Controller
53m         Normal    DisruptionBlocked         node/ip-10-1-1-50.ec2.internal    Node isn't initialized
53m         Normal    Starting                  node/ip-10-1-1-50.ec2.internal    
53m         Normal    ControllerVersionNotice   node/ip-10-1-1-50.ec2.internal    The node is managed by VPC resource controller version v1.7.9
53m         Normal    NodeReady                 node/ip-10-1-1-50.ec2.internal    Node ip-10-1-1-50.ec2.internal status is now: NodeReady
53m         Normal    Ready                     node/ip-10-1-1-50.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
53m         Normal    NodeTrunkInitiated        node/ip-10-1-1-50.ec2.internal    The node has trunk interface initialized successfully
3m11s       Normal    Unconsolidatable          node/ip-10-1-1-50.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
96s         Warning   Unsupported               node/ip-10-1-5-113.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
```

Pods with issues
```
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
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     280d
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
