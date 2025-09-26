# Cluster recon for tfh-orb-stage-infra,us-east-1,orb-stage-v2-us-east-1,tunnel-vpc-orb-stage-us-east-1

TFH EKS login...
```console
2025/09/18 15:49:03 INFO Logging into AWS
2025/09/18 15:49:03 INFO Token found and valid
2025/09/18 15:49:06 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-stage-us-east-1 id=44a9273a-4be4-42db-9ad7-e5b86d9cabe4
2025/09/18 15:49:08 INFO Active WARP Virtual Network id=44a9273a-4be4-42db-9ad7-e5b86d9cabe4
Updated context tfh-orb-stage-v2-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "orb-stage-v2-us-east-1",
        "arn": "arn:aws:eks:us-east-1:510867353226:cluster/orb-stage-v2-us-east-1",
        "createdAt": "2023-04-12T17:18:46.057000+02:00",
        "version": "1.33",
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
        "platformVersion": "eks.14",
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
NAME                         STATUS   ROLES    AGE    VERSION               INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-1-0-111.ec2.internal   Ready    <none>   147m   v1.33.4-eks-99d6cc0   10.1.0.111    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-1-0-211.ec2.internal   Ready    <none>   152m   v1.33.4-eks-99d6cc0   10.1.0.211    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-1-0-252.ec2.internal   Ready    <none>   149m   v1.33.4-eks-99d6cc0   10.1.0.252    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-1-0-67.ec2.internal    Ready    <none>   144m   v1.33.4-eks-99d6cc0   10.1.0.67     <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-1-1-1.ec2.internal     Ready    <none>   92m    v1.33.4-eks-99d6cc0   10.1.1.1      <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-1-1-190.ec2.internal   Ready    <none>   133m   v1.33.4-eks-99d6cc0   10.1.1.190    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-1-1-46.ec2.internal    Ready    <none>   112m   v1.33.4-eks-99d6cc0   10.1.1.46     <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-1-1-66.ec2.internal    Ready    <none>   49m    v1.33.4-eks-99d6cc0   10.1.1.66     <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-1-2-48.ec2.internal    Ready    <none>   161m   v1.33.4-eks-99d6cc0   10.1.2.48     <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-stage-v2-us-east-1
ip-10-1-5-17.ec2.internal    Ready    <none>   160m   v1.33.4-eks-99d6cc0   10.1.5.17     <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-stage-v2-us-east-1
ip-10-1-5-26.ec2.internal    Ready    <none>   154m   v1.33.4-eks-99d6cc0   10.1.5.26     <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                         STATUS   ROLES    TAINTS
ip-10-1-0-111.ec2.internal   Ready    <none>   <none>
ip-10-1-0-211.ec2.internal   Ready    <none>   <none>
ip-10-1-0-252.ec2.internal   Ready    <none>   <none>
ip-10-1-0-67.ec2.internal    Ready    <none>   <none>
ip-10-1-1-1.ec2.internal     Ready    <none>   <none>
ip-10-1-1-190.ec2.internal   Ready    <none>   <none>
ip-10-1-1-46.ec2.internal    Ready    <none>   <none>
ip-10-1-1-66.ec2.internal    Ready    <none>   <none>
ip-10-1-2-48.ec2.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-1-5-17.ec2.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-1-5-26.ec2.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                            MESSAGE
48m         Normal    Finalized                     node                              Finalized karpenter.sh/termination
49m         Normal    DisruptionBlocked             node/ip-10-1-0-111.ec2.internal   Node is nominated for a pending pod
8m20s       Normal    Unconsolidatable              node/ip-10-1-0-111.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
8m21s       Normal    Unconsolidatable              node/ip-10-1-0-211.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
8m19s       Normal    Unconsolidatable              node/ip-10-1-0-252.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
8m18s       Normal    Unconsolidatable              node/ip-10-1-0-67.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
3m32s       Normal    Unconsolidatable              node/ip-10-1-1-1.ec2.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
8m20s       Normal    Unconsolidatable              node/ip-10-1-1-190.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
2m26s       Normal    Unconsolidatable              node/ip-10-1-1-46.ec2.internal    Can't remove without creating 2 candidates
3m33s       Normal    DisruptionBlocked             node/ip-10-1-1-46.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
49m         Normal    Starting                      node/ip-10-1-1-66.ec2.internal    Starting kubelet.
49m         Warning   InvalidDiskCapacity           node/ip-10-1-1-66.ec2.internal    invalid capacity 0 on image filesystem
49m         Normal    NodeHasSufficientMemory       node/ip-10-1-1-66.ec2.internal    Node ip-10-1-1-66.ec2.internal status is now: NodeHasSufficientMemory
49m         Normal    NodeHasNoDiskPressure         node/ip-10-1-1-66.ec2.internal    Node ip-10-1-1-66.ec2.internal status is now: NodeHasNoDiskPressure
49m         Normal    NodeHasSufficientPID          node/ip-10-1-1-66.ec2.internal    Node ip-10-1-1-66.ec2.internal status is now: NodeHasSufficientPID
49m         Normal    NodeAllocatableEnforced       node/ip-10-1-1-66.ec2.internal    Updated Node Allocatable limit across pods
49m         Normal    Synced                        node/ip-10-1-1-66.ec2.internal    Node synced successfully
49m         Normal    DisruptionBlocked             node/ip-10-1-1-66.ec2.internal    Node isn't initialized
49m         Normal    RegisteredNode                node/ip-10-1-1-66.ec2.internal    Node ip-10-1-1-66.ec2.internal event: Registered Node ip-10-1-1-66.ec2.internal in Controller
49m         Normal    Starting                      node/ip-10-1-1-66.ec2.internal    
49m         Normal    ControllerVersionNotice       node/ip-10-1-1-66.ec2.internal    The node is managed by VPC resource controller version v1.7.11
49m         Normal    NodeReady                     node/ip-10-1-1-66.ec2.internal    Node ip-10-1-1-66.ec2.internal status is now: NodeReady
49m         Normal    Ready                         node/ip-10-1-1-66.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
49m         Normal    NodeTrunkInitiated            node/ip-10-1-1-66.ec2.internal    The node has trunk interface initialized successfully
41s         Warning   Unsupported                   node/ip-10-1-2-48.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
58m         Normal    Unconsolidatable              node/ip-10-1-3-41.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
49m         Normal    SpotRebalanceRecommendation   node/ip-10-1-3-41.ec2.internal    Spot rebalance recommendation was triggered
49m         Warning   SpotInterrupted               node/ip-10-1-3-41.ec2.internal    Spot interruption warning was triggered
49m         Warning   TerminatingOnInterruption     node/ip-10-1-3-41.ec2.internal    Interruption triggered termination for the Node
49m         Warning   FailedDraining                node/ip-10-1-3-41.ec2.internal    Failed to drain node, 7 pods are waiting to be evicted
49m         Normal    DisruptionBlocked             node/ip-10-1-3-41.ec2.internal    Node is deleting or marked for deletion
48m         Warning   InstanceTerminating           node/ip-10-1-3-41.ec2.internal    Instance is terminating
48m         Normal    RemovingNode                  node/ip-10-1-3-41.ec2.internal    Node ip-10-1-3-41.ec2.internal event: Removing Node ip-10-1-3-41.ec2.internal from Controller
2m24s       Warning   Unsupported                   node/ip-10-1-5-17.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
8m19s       Normal    Unconsolidatable              node/ip-10-1-5-26.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                             NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                    cluster-monitoring-pdb                    N/A             1                 1                     293d
karpenter                             karpenter                                 N/A             1                 1                     2y147d
kube-system                           coredns                                   N/A             1                 1                     646d
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

Cluster version up to date - no pluto apis detection rquired
