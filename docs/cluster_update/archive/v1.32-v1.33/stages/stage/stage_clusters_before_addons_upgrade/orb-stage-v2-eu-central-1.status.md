# Cluster recon for tfh-orb-stage-infra,eu-central-1,orb-stage-v2-eu-central-1,tunnel-vpc-orb-stage-eu-central-1

TFH EKS login...
```console
2025/09/17 17:02:54 INFO Logging into AWS
2025/09/17 17:02:54 INFO Token found and valid
2025/09/17 17:02:55 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-stage-eu-central-1 id=5c975ff5-e46d-4e1d-bbcf-140d1af33538
2025/09/17 17:02:57 INFO Active WARP Virtual Network id=5c975ff5-e46d-4e1d-bbcf-140d1af33538
Updated context tfh-orb-stage-v2-eu-central-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "01483ef9-8e35-49ec-9074-ce82c8ac8591",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T12:44:44+02:00",
            "lastTransitionTime": "2025-07-29T07:44:21+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "8dcc2f56-b383-4b04-8d53-d079c3eda094",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T12:44:44+02:00",
            "lastTransitionTime": "2024-12-20T08:59:20+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "b93de04b-3812-4905-9f1e-a6a8c58864ec",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T12:44:29+02:00",
            "lastTransitionTime": "2024-12-20T08:59:20+01:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "5cc07ab2-fad7-4930-9303-3734090cfab7",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T12:44:29+02:00",
            "lastTransitionTime": "2024-12-20T08:59:20+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "4b94ab4e-61c1-4367-aa7e-d619e64936c9",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T12:44:29+02:00",
            "lastTransitionTime": "2025-09-16T16:39:20+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "ERROR",
                "reason": "The cluster contains legacy Amazon Linux 2 (AL2) nodes. Migrate Amazon Linux 2 node groups to Amazon Linux 2023 before November 26, 2025 or before upgrading to EKS 1.33."
            }
        }
    ]
}
```

Show full cluster description:
```json
{
    "cluster": {
        "name": "orb-stage-v2-eu-central-1",
        "arn": "arn:aws:eks:eu-central-1:510867353226:cluster/orb-stage-v2-eu-central-1",
        "createdAt": "2023-09-20T16:15:38.794000+02:00",
        "version": "1.32",
        "endpoint": "https://A459B156272C419267A8AA40733F4DCE.gr7.eu-central-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::510867353226:role/eks-cluster-orb-stage-v2-eu-central-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0468fa70a235c9874",
                "subnet-0a09b68199097806d",
                "subnet-0fc8f7455f9b5dc9b"
            ],
            "securityGroupIds": [
                "sg-09ec07f78637b5d52"
            ],
            "clusterSecurityGroupId": "sg-0023160ba2a861f55",
            "vpcId": "vpc-04477bef6b9d37a6e",
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
                "issuer": "https://oidc.eks.eu-central-1.amazonaws.com/id/A459B156272C419267A8AA40733F4DCE"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJT1RtMzZISTRJb2d3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TXpBNU1qQXhOREU1TWpOYUZ3MHpNekE1TVRjeE5ERTVNak5hTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURWL2w5cGxvTkNSYWN2amtYQ2pERlZuT3U0dUdid3RMMXg2dVV4WXFnTm1Wbm1qYTY2RUFGd2NIQjQKN010ZElLZ0pwRmZoR2VMa05vSnBiS3dYbTE3WWhEdWFaU0hUdHlGYmpXSmpKU3M0OU5XdFNlb3JOdlZHU3c4bgpNTWdnSENveEtRQXlrUVUvalhwYnJMWGJzZlU2TGJaWWhyNnNGMzdQSkZNL0tSZmgrSkV5MjFzZVNEMW1YajJjClg4OXVlK0JYRHNuMVRodVlqd2M2S1JGOWgybmZuck5PVFova0RMTjRsY0Y2cmM4NUVFSk9JdE9QdmFmQ0RPWFIKVjhHK0hBbUROR1JjZzhlcWh5TzFFU1l0RGozM1NoaEsxNlZJaFVxWUNmSTNwSXN3NVY4OGN2M0crVlZEek4wRworaFJwSmxkNjE4WEdjazdtMTRRWDgwVW9iU2hIQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUMVBFNHIyYmRNaHhKWlY4bVZXN1o1TVg1Z2hqQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQ0hmdzdpeXhDOQpoZm5VZldWdnJOcnZ6c1ZFNWdvVEdqRW5td055eE9QWHhLMGVKclg5SGpmenhLdFJaOFRwUm16RVVkUU9UV0ZtCjlLclN3L0t6QjByMTZnOWRFY0VHaFFqeldQMEZScmhRRHFTeTVKSUc2dTFud1JWeUxaSVNBKzZFUzI1ME5sRnIKV2lTMmR2enk2TFZuUnp6VVpGaFNVRzFqM2hLaWRWaC9OTjJkQlIzT0ZuYVVvbGwwcERIRzFkcDJmeDVPMkw2dwpLWG9nV3l4bkFkcWRrU1FwUVYxS1ZINXVJSTdGS25acEtKaTN6UmVVMksxYVFNcUludnFscjBXa1ZZMHNNUXg2Cmc0Z3VmYVVSMGF4ajVwK3IyYmtXVS9jNzJIelV2RGxJdDVucE4xN1NFNVlWeUJrVWFXSkFVSW0rRUExYlBtcDkKWG40bDkvU0p3bXphCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "stage",
            "karpenter.sh/discovery": "orb-stage-v2-eu-central-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-central-1:510867353226:key/494f2dc7-4ea1-4af0-b274-4f9239bfdd70"
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
NAME                                             STATUS   ROLES    AGE     VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME
ip-10-52-100-104.eu-central-1.compute.internal   Ready    <none>   12m     v1.32.8-eks-99d6cc0   10.52.100.104   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-52-101-137.eu-central-1.compute.internal   Ready    <none>   9d      v1.32.8-eks-99d6cc0   10.52.101.137   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-52-101-84.eu-central-1.compute.internal    Ready    <none>   6h40m   v1.32.8-eks-99d6cc0   10.52.101.84    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27
ip-10-52-96-80.eu-central-1.compute.internal     Ready    <none>   11m     v1.32.8-eks-99d6cc0   10.52.96.80     <none>        Amazon Linux 2                 5.10.240-238.959.amzn2.x86_64      containerd://1.7.27
ip-10-52-97-118.eu-central-1.compute.internal    Ready    <none>   11m     v1.32.8-eks-99d6cc0   10.52.97.118    <none>        Amazon Linux 2                 5.10.240-238.959.amzn2.x86_64      containerd://1.7.27
ip-10-52-97-166.eu-central-1.compute.internal    Ready    <none>   11m     v1.32.8-eks-99d6cc0   10.52.97.166    <none>        Amazon Linux 2                 5.10.240-238.959.amzn2.x86_64      containerd://1.7.27
ip-10-52-97-76.eu-central-1.compute.internal     Ready    <none>   9d      v1.32.8-eks-99d6cc0   10.52.97.76     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-52-98-193.eu-central-1.compute.internal    Ready    <none>   22h     v1.32.8-eks-99d6cc0   10.52.98.193    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-52-98-30.eu-central-1.compute.internal     Ready    <none>   15m     v1.32.8-eks-99d6cc0   10.52.98.30     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-52-98-6.eu-central-1.compute.internal      Ready    <none>   84s     v1.32.8-eks-99d6cc0   10.52.98.6      <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-52-99-191.eu-central-1.compute.internal    Ready    <none>   6h30m   v1.32.8-eks-99d6cc0   10.52.99.191    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-52-99-7.eu-central-1.compute.internal      Ready    <none>   14h     v1.32.8-eks-99d6cc0   10.52.99.7      <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                                                MESSAGE
25s         Normal    Finalized                 node                                                  Finalized karpenter.sh/termination
12m         Normal    Starting                  node/ip-10-52-100-104.eu-central-1.compute.internal   Starting kubelet.
12m         Warning   InvalidDiskCapacity       node/ip-10-52-100-104.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
12m         Normal    NodeHasSufficientMemory   node/ip-10-52-100-104.eu-central-1.compute.internal   Node ip-10-52-100-104.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
12m         Normal    NodeHasNoDiskPressure     node/ip-10-52-100-104.eu-central-1.compute.internal   Node ip-10-52-100-104.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
12m         Normal    NodeHasSufficientPID      node/ip-10-52-100-104.eu-central-1.compute.internal   Node ip-10-52-100-104.eu-central-1.compute.internal status is now: NodeHasSufficientPID
12m         Normal    NodeAllocatableEnforced   node/ip-10-52-100-104.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
12m         Normal    Synced                    node/ip-10-52-100-104.eu-central-1.compute.internal   Node synced successfully
12m         Normal    RegisteredNode            node/ip-10-52-100-104.eu-central-1.compute.internal   Node ip-10-52-100-104.eu-central-1.compute.internal event: Registered Node ip-10-52-100-104.eu-central-1.compute.internal in Controller
12m         Normal    Starting                  node/ip-10-52-100-104.eu-central-1.compute.internal   
12m         Normal    DisruptionBlocked         node/ip-10-52-100-104.eu-central-1.compute.internal   Node isn't initialized
12m         Normal    ControllerVersionNotice   node/ip-10-52-100-104.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
12m         Normal    NodeReady                 node/ip-10-52-100-104.eu-central-1.compute.internal   Node ip-10-52-100-104.eu-central-1.compute.internal status is now: NodeReady
12m         Normal    Ready                     node/ip-10-52-100-104.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
12m         Normal    NodeTrunkInitiated        node/ip-10-52-100-104.eu-central-1.compute.internal   The node has trunk interface initialized successfully
10m         Normal    DisruptionBlocked         node/ip-10-52-100-104.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29302010-9qlvg)
8m7s        Normal    DisruptionBlocked         node/ip-10-52-100-104.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29302015-5vktw)
3m26s       Normal    DisruptionBlocked         node/ip-10-52-100-104.eu-central-1.compute.internal   Node is nominated for a pending pod
54m         Normal    ControllerVersionNotice   node/ip-10-52-100-80.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
54m         Normal    NodeTrunkInitiated        node/ip-10-52-100-80.eu-central-1.compute.internal    The node has trunk interface initialized successfully
54m         Normal    Starting                  node/ip-10-52-100-80.eu-central-1.compute.internal    Starting kubelet.
54m         Warning   InvalidDiskCapacity       node/ip-10-52-100-80.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
54m         Normal    NodeHasSufficientMemory   node/ip-10-52-100-80.eu-central-1.compute.internal    Node ip-10-52-100-80.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
54m         Normal    NodeHasNoDiskPressure     node/ip-10-52-100-80.eu-central-1.compute.internal    Node ip-10-52-100-80.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
54m         Normal    NodeHasSufficientPID      node/ip-10-52-100-80.eu-central-1.compute.internal    Node ip-10-52-100-80.eu-central-1.compute.internal status is now: NodeHasSufficientPID
54m         Normal    NodeAllocatableEnforced   node/ip-10-52-100-80.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
54m         Normal    Synced                    node/ip-10-52-100-80.eu-central-1.compute.internal    Node synced successfully
54m         Normal    RegisteredNode            node/ip-10-52-100-80.eu-central-1.compute.internal    Node ip-10-52-100-80.eu-central-1.compute.internal event: Registered Node ip-10-52-100-80.eu-central-1.compute.internal in Controller
54m         Normal    Starting                  node/ip-10-52-100-80.eu-central-1.compute.internal    
54m         Normal    DisruptionBlocked         node/ip-10-52-100-80.eu-central-1.compute.internal    Node isn't initialized
54m         Normal    NodeReady                 node/ip-10-52-100-80.eu-central-1.compute.internal    Node ip-10-52-100-80.eu-central-1.compute.internal status is now: NodeReady
54m         Normal    Ready                     node/ip-10-52-100-80.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    DisruptionBlocked         node/ip-10-52-100-80.eu-central-1.compute.internal    Node is nominated for a pending pod
2m8s        Normal    DisruptionBlocked         node/ip-10-52-100-80.eu-central-1.compute.internal    Node is deleting or marked for deletion
2m8s        Normal    DisruptionTerminating     node/ip-10-52-100-80.eu-central-1.compute.internal    Disrupting Node: Underutilized/Delete
2m7s        Warning   FailedDraining            node/ip-10-52-100-80.eu-central-1.compute.internal    Failed to drain node, 7 pods are waiting to be evicted
77s         Warning   InstanceTerminating       node/ip-10-52-100-80.eu-central-1.compute.internal    Instance is terminating
25s         Normal    RemovingNode              node/ip-10-52-100-80.eu-central-1.compute.internal    Node ip-10-52-100-80.eu-central-1.compute.internal event: Removing Node ip-10-52-100-80.eu-central-1.compute.internal from Controller
3m7s        Warning   Unsupported               node/ip-10-52-101-137.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
19m         Normal    Starting                  node/ip-10-52-101-183.eu-central-1.compute.internal   Starting kubelet.
19m         Warning   InvalidDiskCapacity       node/ip-10-52-101-183.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
19m         Normal    NodeHasSufficientMemory   node/ip-10-52-101-183.eu-central-1.compute.internal   Node ip-10-52-101-183.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
19m         Normal    NodeHasNoDiskPressure     node/ip-10-52-101-183.eu-central-1.compute.internal   Node ip-10-52-101-183.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
19m         Normal    NodeHasSufficientPID      node/ip-10-52-101-183.eu-central-1.compute.internal   Node ip-10-52-101-183.eu-central-1.compute.internal status is now: NodeHasSufficientPID
19m         Normal    NodeAllocatableEnforced   node/ip-10-52-101-183.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
19m         Normal    Synced                    node/ip-10-52-101-183.eu-central-1.compute.internal   Node synced successfully
19m         Normal    RegisteredNode            node/ip-10-52-101-183.eu-central-1.compute.internal   Node ip-10-52-101-183.eu-central-1.compute.internal event: Registered Node ip-10-52-101-183.eu-central-1.compute.internal in Controller
19m         Normal    DisruptionBlocked         node/ip-10-52-101-183.eu-central-1.compute.internal   Node isn't initialized
19m         Normal    Starting                  node/ip-10-52-101-183.eu-central-1.compute.internal   
19m         Normal    ControllerVersionNotice   node/ip-10-52-101-183.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
18m         Normal    NodeReady                 node/ip-10-52-101-183.eu-central-1.compute.internal   Node ip-10-52-101-183.eu-central-1.compute.internal status is now: NodeReady
18m         Normal    Ready                     node/ip-10-52-101-183.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
18m         Normal    NodeTrunkInitiated        node/ip-10-52-101-183.eu-central-1.compute.internal   The node has trunk interface initialized successfully
78s         Normal    DisruptionBlocked         node/ip-10-52-101-183.eu-central-1.compute.internal   Node is deleting or marked for deletion
3m26s       Normal    DisruptionTerminating     node/ip-10-52-101-183.eu-central-1.compute.internal   Disrupting Node: Underutilized/Delete
3m26s       Warning   FailedDraining            node/ip-10-52-101-183.eu-central-1.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
2m28s       Warning   InstanceTerminating       node/ip-10-52-101-183.eu-central-1.compute.internal   Instance is terminating
95s         Normal    NodeNotReady              node/ip-10-52-101-183.eu-central-1.compute.internal   Node ip-10-52-101-183.eu-central-1.compute.internal status is now: NodeNotReady
95s         Normal    MemoryPressure            node/ip-10-52-101-183.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
95s         Normal    DiskPressure              node/ip-10-52-101-183.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
95s         Normal    PIDPressure               node/ip-10-52-101-183.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
95s         Normal    Ready                     node/ip-10-52-101-183.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
75s         Normal    DeletingNode              node/ip-10-52-101-183.eu-central-1.compute.internal   Deleting node ip-10-52-101-183.eu-central-1.compute.internal because it does not exist in the cloud provider
70s         Normal    RemovingNode              node/ip-10-52-101-183.eu-central-1.compute.internal   Node ip-10-52-101-183.eu-central-1.compute.internal event: Removing Node ip-10-52-101-183.eu-central-1.compute.internal from Controller
55m         Normal    Starting                  node/ip-10-52-101-201.eu-central-1.compute.internal   Starting kubelet.
55m         Warning   InvalidDiskCapacity       node/ip-10-52-101-201.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
55m         Normal    NodeHasSufficientMemory   node/ip-10-52-101-201.eu-central-1.compute.internal   Node ip-10-52-101-201.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
55m         Normal    NodeHasNoDiskPressure     node/ip-10-52-101-201.eu-central-1.compute.internal   Node ip-10-52-101-201.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
55m         Normal    NodeHasSufficientPID      node/ip-10-52-101-201.eu-central-1.compute.internal   Node ip-10-52-101-201.eu-central-1.compute.internal status is now: NodeHasSufficientPID
55m         Normal    NodeAllocatableEnforced   node/ip-10-52-101-201.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
55m         Normal    Synced                    node/ip-10-52-101-201.eu-central-1.compute.internal   Node synced successfully
55m         Normal    RegisteredNode            node/ip-10-52-101-201.eu-central-1.compute.internal   Node ip-10-52-101-201.eu-central-1.compute.internal event: Registered Node ip-10-52-101-201.eu-central-1.compute.internal in Controller
55m         Normal    DisruptionBlocked         node/ip-10-52-101-201.eu-central-1.compute.internal   Node isn't initialized
55m         Normal    Starting                  node/ip-10-52-101-201.eu-central-1.compute.internal   
54m         Normal    ControllerVersionNotice   node/ip-10-52-101-201.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
54m         Normal    NodeReady                 node/ip-10-52-101-201.eu-central-1.compute.internal   Node ip-10-52-101-201.eu-central-1.compute.internal status is now: NodeReady
54m         Normal    Ready                     node/ip-10-52-101-201.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
54m         Normal    NodeTrunkInitiated        node/ip-10-52-101-201.eu-central-1.compute.internal   The node has trunk interface initialized successfully
38m         Normal    DisruptionBlocked         node/ip-10-52-101-201.eu-central-1.compute.internal   Node is deleting or marked for deletion
38m         Normal    DisruptionTerminating     node/ip-10-52-101-201.eu-central-1.compute.internal   Disrupting Node: Underutilized/Delete
38m         Warning   FailedDraining            node/ip-10-52-101-201.eu-central-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
37m         Warning   InstanceTerminating       node/ip-10-52-101-201.eu-central-1.compute.internal   Instance is terminating
36m         Normal    RemovingNode              node/ip-10-52-101-201.eu-central-1.compute.internal   Node ip-10-52-101-201.eu-central-1.compute.internal event: Removing Node ip-10-52-101-201.eu-central-1.compute.internal from Controller
7m26s       Normal    DisruptionBlocked         node/ip-10-52-101-84.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/postgresql-0)
45m         Normal    DisruptionBlocked         node/ip-10-52-101-84.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/proof-verification-srv-5db85676bd-4gckx)
5m24s       Normal    DisruptionBlocked         node/ip-10-52-101-84.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/redis-master-0)
15m         Normal    DisruptionBlocked         node/ip-10-52-101-84.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/proof-verification-srv-5db85676bd-dvnxs)
9m28s       Normal    DisruptionBlocked         node/ip-10-52-101-84.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-external-85f45d777c-7dz6q)
3m16s       Normal    DisruptionBlocked         node/ip-10-52-101-84.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-app-external-64659b4bff-r8wfk)
35m         Normal    Unconsolidatable          node/ip-10-52-96-124.eu-central-1.compute.internal    Can't replace with a cheaper node
12m         Normal    DisruptionBlocked         node/ip-10-52-96-124.eu-central-1.compute.internal    Node is deleting or marked for deletion
18m         Normal    DisruptionTerminating     node/ip-10-52-96-124.eu-central-1.compute.internal    Disrupting Node: Empty/Delete
18m         Warning   FailedDraining            node/ip-10-52-96-124.eu-central-1.compute.internal    Failed to drain node, 1 pods are waiting to be evicted
12m         Warning   InstanceTerminating       node/ip-10-52-96-124.eu-central-1.compute.internal    Instance is terminating
17m         Normal    NodeNotReady              node/ip-10-52-96-124.eu-central-1.compute.internal    Node ip-10-52-96-124.eu-central-1.compute.internal status is now: NodeNotReady
17m         Normal    MemoryPressure            node/ip-10-52-96-124.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure              node/ip-10-52-96-124.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure               node/ip-10-52-96-124.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                     node/ip-10-52-96-124.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DeletingNode              node/ip-10-52-96-124.eu-central-1.compute.internal    Deleting node ip-10-52-96-124.eu-central-1.compute.internal because it does not exist in the cloud provider
12m         Normal    RemovingNode              node/ip-10-52-96-124.eu-central-1.compute.internal    Node ip-10-52-96-124.eu-central-1.compute.internal event: Removing Node ip-10-52-96-124.eu-central-1.compute.internal from Controller
11m         Normal    Starting                  node/ip-10-52-96-80.eu-central-1.compute.internal     Starting kubelet.
11m         Warning   CgroupV1                  node/ip-10-52-96-80.eu-central-1.compute.internal     cgroup v1 support is in maintenance mode, please migrate to cgroup v2
11m         Warning   InvalidDiskCapacity       node/ip-10-52-96-80.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
11m         Normal    NodeHasSufficientMemory   node/ip-10-52-96-80.eu-central-1.compute.internal     Node ip-10-52-96-80.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
11m         Normal    NodeHasNoDiskPressure     node/ip-10-52-96-80.eu-central-1.compute.internal     Node ip-10-52-96-80.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
11m         Normal    NodeHasSufficientPID      node/ip-10-52-96-80.eu-central-1.compute.internal     Node ip-10-52-96-80.eu-central-1.compute.internal status is now: NodeHasSufficientPID
11m         Normal    NodeAllocatableEnforced   node/ip-10-52-96-80.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
11m         Normal    Synced                    node/ip-10-52-96-80.eu-central-1.compute.internal     Node synced successfully
11m         Normal    DisruptionBlocked         node/ip-10-52-96-80.eu-central-1.compute.internal     Node isn't initialized
11m         Normal    RegisteredNode            node/ip-10-52-96-80.eu-central-1.compute.internal     Node ip-10-52-96-80.eu-central-1.compute.internal event: Registered Node ip-10-52-96-80.eu-central-1.compute.internal in Controller
11m         Normal    Starting                  node/ip-10-52-96-80.eu-central-1.compute.internal     
11m         Normal    ControllerVersionNotice   node/ip-10-52-96-80.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.9
11m         Normal    NodeReady                 node/ip-10-52-96-80.eu-central-1.compute.internal     Node ip-10-52-96-80.eu-central-1.compute.internal status is now: NodeReady
11m         Normal    Ready                     node/ip-10-52-96-80.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
11m         Normal    NodeTrunkInitiated        node/ip-10-52-96-80.eu-central-1.compute.internal     The node has trunk interface initialized successfully
11m         Normal    Starting                  node/ip-10-52-97-118.eu-central-1.compute.internal    Starting kubelet.
11m         Warning   CgroupV1                  node/ip-10-52-97-118.eu-central-1.compute.internal    cgroup v1 support is in maintenance mode, please migrate to cgroup v2
11m         Warning   InvalidDiskCapacity       node/ip-10-52-97-118.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
11m         Normal    NodeHasSufficientMemory   node/ip-10-52-97-118.eu-central-1.compute.internal    Node ip-10-52-97-118.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
11m         Normal    NodeHasNoDiskPressure     node/ip-10-52-97-118.eu-central-1.compute.internal    Node ip-10-52-97-118.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
11m         Normal    NodeHasSufficientPID      node/ip-10-52-97-118.eu-central-1.compute.internal    Node ip-10-52-97-118.eu-central-1.compute.internal status is now: NodeHasSufficientPID
11m         Normal    NodeAllocatableEnforced   node/ip-10-52-97-118.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
11m         Normal    Synced                    node/ip-10-52-97-118.eu-central-1.compute.internal    Node synced successfully
11m         Normal    RegisteredNode            node/ip-10-52-97-118.eu-central-1.compute.internal    Node ip-10-52-97-118.eu-central-1.compute.internal event: Registered Node ip-10-52-97-118.eu-central-1.compute.internal in Controller
11m         Normal    DisruptionBlocked         node/ip-10-52-97-118.eu-central-1.compute.internal    Node isn't initialized
11m         Normal    Starting                  node/ip-10-52-97-118.eu-central-1.compute.internal    
11m         Normal    ControllerVersionNotice   node/ip-10-52-97-118.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
11m         Normal    NodeReady                 node/ip-10-52-97-118.eu-central-1.compute.internal    Node ip-10-52-97-118.eu-central-1.compute.internal status is now: NodeReady
11m         Normal    Ready                     node/ip-10-52-97-118.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
11m         Normal    NodeTrunkInitiated        node/ip-10-52-97-118.eu-central-1.compute.internal    The node has trunk interface initialized successfully
35m         Normal    Unconsolidatable          node/ip-10-52-97-161.eu-central-1.compute.internal    Can't replace with a cheaper node
15m         Normal    DisruptionBlocked         node/ip-10-52-97-161.eu-central-1.compute.internal    Node is deleting or marked for deletion
19m         Normal    DisruptionTerminating     node/ip-10-52-97-161.eu-central-1.compute.internal    Disrupting Node: Empty/Delete
19m         Warning   FailedDraining            node/ip-10-52-97-161.eu-central-1.compute.internal    Failed to drain node, 1 pods are waiting to be evicted
13m         Warning   InstanceTerminating       node/ip-10-52-97-161.eu-central-1.compute.internal    Instance is terminating
18m         Normal    NodeNotReady              node/ip-10-52-97-161.eu-central-1.compute.internal    Node ip-10-52-97-161.eu-central-1.compute.internal status is now: NodeNotReady
18m         Normal    MemoryPressure            node/ip-10-52-97-161.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    DiskPressure              node/ip-10-52-97-161.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    PIDPressure               node/ip-10-52-97-161.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    Ready                     node/ip-10-52-97-161.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DeletingNode              node/ip-10-52-97-161.eu-central-1.compute.internal    Deleting node ip-10-52-97-161.eu-central-1.compute.internal because it does not exist in the cloud provider
13m         Normal    RemovingNode              node/ip-10-52-97-161.eu-central-1.compute.internal    Node ip-10-52-97-161.eu-central-1.compute.internal event: Removing Node ip-10-52-97-161.eu-central-1.compute.internal from Controller
11m         Normal    Starting                  node/ip-10-52-97-166.eu-central-1.compute.internal    Starting kubelet.
11m         Warning   CgroupV1                  node/ip-10-52-97-166.eu-central-1.compute.internal    cgroup v1 support is in maintenance mode, please migrate to cgroup v2
11m         Warning   InvalidDiskCapacity       node/ip-10-52-97-166.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
11m         Normal    NodeHasSufficientMemory   node/ip-10-52-97-166.eu-central-1.compute.internal    Node ip-10-52-97-166.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
11m         Normal    NodeHasNoDiskPressure     node/ip-10-52-97-166.eu-central-1.compute.internal    Node ip-10-52-97-166.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
11m         Normal    NodeHasSufficientPID      node/ip-10-52-97-166.eu-central-1.compute.internal    Node ip-10-52-97-166.eu-central-1.compute.internal status is now: NodeHasSufficientPID
11m         Normal    NodeAllocatableEnforced   node/ip-10-52-97-166.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
11m         Normal    Synced                    node/ip-10-52-97-166.eu-central-1.compute.internal    Node synced successfully
11m         Normal    RegisteredNode            node/ip-10-52-97-166.eu-central-1.compute.internal    Node ip-10-52-97-166.eu-central-1.compute.internal event: Registered Node ip-10-52-97-166.eu-central-1.compute.internal in Controller
11m         Normal    DisruptionBlocked         node/ip-10-52-97-166.eu-central-1.compute.internal    Node isn't initialized
11m         Normal    Starting                  node/ip-10-52-97-166.eu-central-1.compute.internal    
11m         Normal    ControllerVersionNotice   node/ip-10-52-97-166.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
11m         Normal    NodeReady                 node/ip-10-52-97-166.eu-central-1.compute.internal    Node ip-10-52-97-166.eu-central-1.compute.internal status is now: NodeReady
11m         Normal    Ready                     node/ip-10-52-97-166.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
11m         Normal    NodeTrunkInitiated        node/ip-10-52-97-166.eu-central-1.compute.internal    The node has trunk interface initialized successfully
44m         Normal    DisruptionBlocked         node/ip-10-52-97-216.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/mongodb-1)
38m         Normal    DisruptionBlocked         node/ip-10-52-97-216.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-orb-api-65c97bbb75-ltm2p)
48m         Normal    DisruptionBlocked         node/ip-10-52-97-216.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-app-api-796d758447-zp6rt)
17m         Normal    DisruptionBlocked         node/ip-10-52-97-216.eu-central-1.compute.internal    Node is deleting or marked for deletion
18m         Normal    DisruptionTerminating     node/ip-10-52-97-216.eu-central-1.compute.internal    Disrupting Node: Underutilized/Replace
18m         Warning   FailedDraining            node/ip-10-52-97-216.eu-central-1.compute.internal    Failed to drain node, 16 pods are waiting to be evicted
17m         Warning   InstanceTerminating       node/ip-10-52-97-216.eu-central-1.compute.internal    Instance is terminating
17m         Normal    NodeNotReady              node/ip-10-52-97-216.eu-central-1.compute.internal    Node ip-10-52-97-216.eu-central-1.compute.internal status is now: NodeNotReady
17m         Normal    MemoryPressure            node/ip-10-52-97-216.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    DeletingNode              node/ip-10-52-97-216.eu-central-1.compute.internal    Deleting node ip-10-52-97-216.eu-central-1.compute.internal because it does not exist in the cloud provider
16m         Normal    RemovingNode              node/ip-10-52-97-216.eu-central-1.compute.internal    Node ip-10-52-97-216.eu-central-1.compute.internal event: Removing Node ip-10-52-97-216.eu-central-1.compute.internal from Controller
35m         Normal    Unconsolidatable          node/ip-10-52-97-22.eu-central-1.compute.internal     Can't replace with a cheaper node
15m         Normal    DisruptionBlocked         node/ip-10-52-97-22.eu-central-1.compute.internal     Node is deleting or marked for deletion
19m         Normal    DisruptionTerminating     node/ip-10-52-97-22.eu-central-1.compute.internal     Disrupting Node: Empty/Delete
19m         Warning   FailedDraining            node/ip-10-52-97-22.eu-central-1.compute.internal     Failed to drain node, 1 pods are waiting to be evicted
13m         Warning   InstanceTerminating       node/ip-10-52-97-22.eu-central-1.compute.internal     Instance is terminating
19m         Normal    NodeNotReady              node/ip-10-52-97-22.eu-central-1.compute.internal     Node ip-10-52-97-22.eu-central-1.compute.internal status is now: NodeNotReady
19m         Normal    MemoryPressure            node/ip-10-52-97-22.eu-central-1.compute.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DiskPressure              node/ip-10-52-97-22.eu-central-1.compute.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    PIDPressure               node/ip-10-52-97-22.eu-central-1.compute.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    Ready                     node/ip-10-52-97-22.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    RemovingNode              node/ip-10-52-97-22.eu-central-1.compute.internal     Node ip-10-52-97-22.eu-central-1.compute.internal event: Removing Node ip-10-52-97-22.eu-central-1.compute.internal from Controller
2m49s       Warning   Unsupported               node/ip-10-52-97-76.eu-central-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
19m         Normal    DisruptionBlocked         node/ip-10-52-98-193.eu-central-1.compute.internal    Node is nominated for a pending pod
48m         Normal    DisruptionBlocked         node/ip-10-52-98-193.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29301975-7djqm)
43m         Normal    DisruptionBlocked         node/ip-10-52-98-193.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29301980-gssjt)
3m16s       Normal    DisruptionBlocked         node/ip-10-52-98-193.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-processor-66d85c69b8-4gsdc)
67s         Normal    DisruptionBlocked         node/ip-10-52-98-193.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-processor-66d85c69b8-pbjv5)
15m         Normal    Starting                  node/ip-10-52-98-30.eu-central-1.compute.internal     Starting kubelet.
15m         Warning   InvalidDiskCapacity       node/ip-10-52-98-30.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory   node/ip-10-52-98-30.eu-central-1.compute.internal     Node ip-10-52-98-30.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure     node/ip-10-52-98-30.eu-central-1.compute.internal     Node ip-10-52-98-30.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID      node/ip-10-52-98-30.eu-central-1.compute.internal     Node ip-10-52-98-30.eu-central-1.compute.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced   node/ip-10-52-98-30.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
15m         Normal    Synced                    node/ip-10-52-98-30.eu-central-1.compute.internal     Node synced successfully
15m         Normal    RegisteredNode            node/ip-10-52-98-30.eu-central-1.compute.internal     Node ip-10-52-98-30.eu-central-1.compute.internal event: Registered Node ip-10-52-98-30.eu-central-1.compute.internal in Controller
15m         Normal    Starting                  node/ip-10-52-98-30.eu-central-1.compute.internal     
15m         Normal    DisruptionBlocked         node/ip-10-52-98-30.eu-central-1.compute.internal     Node isn't initialized
15m         Normal    ControllerVersionNotice   node/ip-10-52-98-30.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.9
15m         Normal    NodeReady                 node/ip-10-52-98-30.eu-central-1.compute.internal     Node ip-10-52-98-30.eu-central-1.compute.internal status is now: NodeReady
15m         Normal    Ready                     node/ip-10-52-98-30.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    NodeTrunkInitiated        node/ip-10-52-98-30.eu-central-1.compute.internal     The node has trunk interface initialized successfully
37s         Normal    DisruptionBlocked         node/ip-10-52-98-30.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/mongodb-arbiter-0)
2m45s       Normal    DisruptionBlocked         node/ip-10-52-98-30.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29302020-rsl2q)
89s         Normal    Starting                  node/ip-10-52-98-6.eu-central-1.compute.internal      Starting kubelet.
89s         Warning   InvalidDiskCapacity       node/ip-10-52-98-6.eu-central-1.compute.internal      invalid capacity 0 on image filesystem
88s         Normal    NodeHasSufficientMemory   node/ip-10-52-98-6.eu-central-1.compute.internal      Node ip-10-52-98-6.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
88s         Normal    NodeHasNoDiskPressure     node/ip-10-52-98-6.eu-central-1.compute.internal      Node ip-10-52-98-6.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
88s         Normal    NodeHasSufficientPID      node/ip-10-52-98-6.eu-central-1.compute.internal      Node ip-10-52-98-6.eu-central-1.compute.internal status is now: NodeHasSufficientPID
88s         Normal    NodeAllocatableEnforced   node/ip-10-52-98-6.eu-central-1.compute.internal      Updated Node Allocatable limit across pods
86s         Normal    Synced                    node/ip-10-52-98-6.eu-central-1.compute.internal      Node synced successfully
85s         Normal    RegisteredNode            node/ip-10-52-98-6.eu-central-1.compute.internal      Node ip-10-52-98-6.eu-central-1.compute.internal event: Registered Node ip-10-52-98-6.eu-central-1.compute.internal in Controller
80s         Normal    Starting                  node/ip-10-52-98-6.eu-central-1.compute.internal      
78s         Normal    DisruptionBlocked         node/ip-10-52-98-6.eu-central-1.compute.internal      Node isn't initialized
77s         Normal    ControllerVersionNotice   node/ip-10-52-98-6.eu-central-1.compute.internal      The node is managed by VPC resource controller version v1.7.9
76s         Normal    NodeReady                 node/ip-10-52-98-6.eu-central-1.compute.internal      Node ip-10-52-98-6.eu-central-1.compute.internal status is now: NodeReady
76s         Normal    Ready                     node/ip-10-52-98-6.eu-central-1.compute.internal      Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
74s         Normal    NodeTrunkInitiated        node/ip-10-52-98-6.eu-central-1.compute.internal      The node has trunk interface initialized successfully
19m         Normal    DisruptionBlocked         node/ip-10-52-99-191.eu-central-1.compute.internal    Node is nominated for a pending pod
35m         Normal    DisruptionBlocked         node/ip-10-52-99-191.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-processor-66d85c69b8-q9tfk)
23m         Normal    DisruptionBlocked         node/ip-10-52-99-191.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29302000-gjlbl)
5m14s       Normal    DisruptionBlocked         node/ip-10-52-99-191.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-worker-844794bb86-bt64s)
35m         Normal    DisruptionBlocked         node/ip-10-52-99-7.eu-central-1.compute.internal      Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-external-85f45d777c-qcgr5)
19m         Normal    Unconsolidatable          node/ip-10-52-99-7.eu-central-1.compute.internal      SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
108s        Normal    DisruptionBlocked         node/ip-10-52-99-7.eu-central-1.compute.internal      Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-external-85f45d777c-d4kdc)
```

Pods with issues
```
e2e                                   mongodb-0                                                         0/1     ImagePullBackOff   0             116s
```

PodDisruptionBudgets
```
NAMESPACE                             NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
app-authentication-service-external   app-authentication-service-external-pdb   N/A             1                 1                     58d
cluster-monitoring                    cluster-monitoring-pdb                    N/A             1                 1                     292d
data-ingestion-service                data-ingestion-service-pdb                N/A             1                 1                     273d
hello-world-rest-service              hello-world-rest-service-pdb              N/A             1                 1                     175d
karpenter                             karpenter                                 N/A             1                 1                     728d
kube-system                           coredns                                   N/A             1                 1                     645d
kube-system                           ebs-csi-controller                        N/A             1                 1                     728d
kyverno                               kyverno-admission-controller              1               N/A               2                     603d
orb-fleet-backend-docs-server         orb-fleet-backend-docs-server-pdb         N/A             1                 1                     153d
orb-fleet-backend-event-server        orb-fleet-backend-event-server-pdb        N/A             1                 1                     180d
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     280d
orb-fleet-backend-internal            orb-fleet-backend-internal-pdb            N/A             1                 1                     280d
orb-fleet-backend-job-server          orb-fleet-backend-job-server-pdb          N/A             1                 1                     209d
orb-fleet-backend-monitoring-server   orb-fleet-backend-monitoring-server-pdb   N/A             1                 1                     209d
orb-relay-service-canary              orb-relay-service-canary-pdb              N/A             1                 1                     272d
orb-relay-service-orb                 orb-relay-service-orb-pdb                 N/A             1                 1                     273d
orb-relay-service-orb                 orb-relay-service-sqs-cleanup-pdb         N/A             1                 0                     272d
proof-verification-srv                proof-verification-srv-pdb                N/A             1                 1                     208d
signup-service-app                    signup-service-app-pdb                    N/A             1                 1                     75d
signup-service-processor              signup-service-processor-pdb              N/A             1                 1                     49d
signup-service                        signup-service-pdb                        N/A             1                 1                     75d
signup-service                        signup-service-worker-pdb                 N/A             1                 1                     75d
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
