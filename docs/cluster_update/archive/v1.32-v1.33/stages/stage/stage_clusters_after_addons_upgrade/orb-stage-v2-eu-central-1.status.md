# Cluster recon for tfh-orb-stage-infra,eu-central-1,orb-stage-v2-eu-central-1,tunnel-vpc-orb-stage-eu-central-1

TFH EKS login...
```console
2025/09/18 11:12:25 INFO Logging into AWS
2025/09/18 11:12:25 INFO Token found and valid
2025/09/18 11:12:27 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-stage-eu-central-1 id=5c975ff5-e46d-4e1d-bbcf-140d1af33538
2025/09/18 11:12:28 INFO Active WARP Virtual Network id=5c975ff5-e46d-4e1d-bbcf-140d1af33538
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
            "id": "076fb9b2-d415-45c2-a268-bf338e0fce56",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T17:41:52+02:00",
            "lastTransitionTime": "2024-12-20T08:59:20+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "70b8d08d-a61e-4092-8b60-6cf632e8805f",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T17:41:52+02:00",
            "lastTransitionTime": "2024-12-20T08:59:20+01:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "6dbcf01e-c0f2-404b-97be-630594864f75",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T17:41:52+02:00",
            "lastTransitionTime": "2025-09-16T16:39:20+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "ERROR",
                "reason": "The cluster contains legacy Amazon Linux 2 (AL2) nodes. Migrate Amazon Linux 2 node groups to Amazon Linux 2023 before November 26, 2025 or before upgrading to EKS 1.33."
            }
        },
        {
            "id": "afb6371b-7117-4dcb-8d0a-d106a29b6ee2",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T17:41:57+02:00",
            "lastTransitionTime": "2024-12-20T08:59:20+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "27d67c43-0203-4837-9525-9aca96029618",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T17:41:57+02:00",
            "lastTransitionTime": "2025-07-29T07:44:21+02:00",
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
NAME                                             STATUS   ROLES    AGE    VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME
ip-10-52-101-104.eu-central-1.compute.internal   Ready    <none>   9h     v1.32.8-eks-99d6cc0   10.52.101.104   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-52-101-137.eu-central-1.compute.internal   Ready    <none>   9d     v1.32.8-eks-99d6cc0   10.52.101.137   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-52-96-181.eu-central-1.compute.internal    Ready    <none>   78m    v1.32.8-eks-99d6cc0   10.52.96.181    <none>        Amazon Linux 2                 5.10.240-238.959.amzn2.x86_64      containerd://1.7.27
ip-10-52-96-42.eu-central-1.compute.internal     Ready    <none>   79m    v1.32.8-eks-99d6cc0   10.52.96.42     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27
ip-10-52-97-128.eu-central-1.compute.internal    Ready    <none>   78m    v1.32.8-eks-99d6cc0   10.52.97.128    <none>        Amazon Linux 2                 5.10.240-238.959.amzn2.x86_64      containerd://1.7.27
ip-10-52-97-24.eu-central-1.compute.internal     Ready    <none>   78m    v1.32.8-eks-99d6cc0   10.52.97.24     <none>        Amazon Linux 2                 5.10.240-238.959.amzn2.x86_64      containerd://1.7.27
ip-10-52-97-76.eu-central-1.compute.internal     Ready    <none>   9d     v1.32.8-eks-99d6cc0   10.52.97.76     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-52-99-191.eu-central-1.compute.internal    Ready    <none>   24h    v1.32.8-eks-99d6cc0   10.52.99.191    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-52-99-251.eu-central-1.compute.internal    Ready    <none>   43m    v1.32.8-eks-99d6cc0   10.52.99.251    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-52-99-41.eu-central-1.compute.internal     Ready    <none>   79m    v1.32.8-eks-99d6cc0   10.52.99.41     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-52-99-64.eu-central-1.compute.internal     Ready    <none>   118m   v1.32.8-eks-99d6cc0   10.52.99.64     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                                                MESSAGE
41m         Normal    Finalized                     node                                                  Finalized karpenter.sh/termination
87s         Normal    DisruptionBlocked             node/ip-10-52-101-104.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/mongodb-arbiter-0)
3m29s       Normal    DisruptionBlocked             node/ip-10-52-101-104.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/mongodb-0)
53m         Normal    DisruptionBlocked             node/ip-10-52-101-104.eu-central-1.compute.internal   Node is nominated for a pending pod
56m         Normal    DisruptionBlocked             node/ip-10-52-101-104.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-orb-api-65c97bbb75-z9g9j)
38m         Normal    DisruptionBlocked             node/ip-10-52-101-104.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-app-api-796d758447-kvbhq)
17m         Normal    DisruptionBlocked             node/ip-10-52-101-104.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-app-api-796d758447-pwksf)
5m30s       Normal    DisruptionBlocked             node/ip-10-52-101-104.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-app-api-796d758447-64t68)
56m         Normal    DisruptionBlocked             node/ip-10-52-101-11.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-processor-66d85c69b8-2rd59)
53m         Normal    SpotRebalanceRecommendation   node/ip-10-52-101-11.eu-central-1.compute.internal    Spot rebalance recommendation was triggered
53m         Warning   SpotInterrupted               node/ip-10-52-101-11.eu-central-1.compute.internal    Spot interruption warning was triggered
53m         Warning   TerminatingOnInterruption     node/ip-10-52-101-11.eu-central-1.compute.internal    Interruption triggered termination for the Node
53m         Warning   FailedDraining                node/ip-10-52-101-11.eu-central-1.compute.internal    Failed to drain node, 3 pods are waiting to be evicted
53m         Normal    DisruptionBlocked             node/ip-10-52-101-11.eu-central-1.compute.internal    Node is deleting or marked for deletion
52m         Warning   InstanceTerminating           node/ip-10-52-101-11.eu-central-1.compute.internal    Instance is terminating
52m         Normal    NodeNotReady                  node/ip-10-52-101-11.eu-central-1.compute.internal    Node ip-10-52-101-11.eu-central-1.compute.internal status is now: NodeNotReady
52m         Normal    MemoryPressure                node/ip-10-52-101-11.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
52m         Normal    DiskPressure                  node/ip-10-52-101-11.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
52m         Normal    PIDPressure                   node/ip-10-52-101-11.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
52m         Normal    Ready                         node/ip-10-52-101-11.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
52m         Normal    RemovingNode                  node/ip-10-52-101-11.eu-central-1.compute.internal    Node ip-10-52-101-11.eu-central-1.compute.internal event: Removing Node ip-10-52-101-11.eu-central-1.compute.internal from Controller
3m20s       Warning   Unsupported                   node/ip-10-52-101-137.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
51m         Normal    Starting                      node/ip-10-52-101-186.eu-central-1.compute.internal   Starting kubelet.
51m         Warning   InvalidDiskCapacity           node/ip-10-52-101-186.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
51m         Normal    NodeHasSufficientMemory       node/ip-10-52-101-186.eu-central-1.compute.internal   Node ip-10-52-101-186.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
51m         Normal    NodeHasNoDiskPressure         node/ip-10-52-101-186.eu-central-1.compute.internal   Node ip-10-52-101-186.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
51m         Normal    NodeHasSufficientPID          node/ip-10-52-101-186.eu-central-1.compute.internal   Node ip-10-52-101-186.eu-central-1.compute.internal status is now: NodeHasSufficientPID
51m         Normal    NodeAllocatableEnforced       node/ip-10-52-101-186.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
50m         Normal    Synced                        node/ip-10-52-101-186.eu-central-1.compute.internal   Node synced successfully
50m         Normal    RegisteredNode                node/ip-10-52-101-186.eu-central-1.compute.internal   Node ip-10-52-101-186.eu-central-1.compute.internal event: Registered Node ip-10-52-101-186.eu-central-1.compute.internal in Controller
50m         Normal    Starting                      node/ip-10-52-101-186.eu-central-1.compute.internal   
50m         Normal    ControllerVersionNotice       node/ip-10-52-101-186.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
50m         Normal    DisruptionBlocked             node/ip-10-52-101-186.eu-central-1.compute.internal   Node isn't initialized
50m         Normal    NodeReady                     node/ip-10-52-101-186.eu-central-1.compute.internal   Node ip-10-52-101-186.eu-central-1.compute.internal status is now: NodeReady
50m         Normal    Ready                         node/ip-10-52-101-186.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
50m         Normal    NodeTrunkInitiated            node/ip-10-52-101-186.eu-central-1.compute.internal   The node has trunk interface initialized successfully
43m         Normal    SpotRebalanceRecommendation   node/ip-10-52-101-186.eu-central-1.compute.internal   Spot rebalance recommendation was triggered
43m         Warning   SpotInterrupted               node/ip-10-52-101-186.eu-central-1.compute.internal   Spot interruption warning was triggered
43m         Warning   TerminatingOnInterruption     node/ip-10-52-101-186.eu-central-1.compute.internal   Interruption triggered termination for the Node
43m         Warning   FailedDraining                node/ip-10-52-101-186.eu-central-1.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
43m         Normal    DisruptionBlocked             node/ip-10-52-101-186.eu-central-1.compute.internal   Node is deleting or marked for deletion
43m         Warning   InstanceTerminating           node/ip-10-52-101-186.eu-central-1.compute.internal   Instance is terminating
42m         Normal    NodeNotReady                  node/ip-10-52-101-186.eu-central-1.compute.internal   Node ip-10-52-101-186.eu-central-1.compute.internal status is now: NodeNotReady
42m         Normal    MemoryPressure                node/ip-10-52-101-186.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
42m         Normal    DiskPressure                  node/ip-10-52-101-186.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
42m         Normal    PIDPressure                   node/ip-10-52-101-186.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
42m         Normal    Ready                         node/ip-10-52-101-186.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
41m         Normal    DeletingNode                  node/ip-10-52-101-186.eu-central-1.compute.internal   Deleting node ip-10-52-101-186.eu-central-1.compute.internal because it does not exist in the cloud provider
41m         Normal    RemovingNode                  node/ip-10-52-101-186.eu-central-1.compute.internal   Node ip-10-52-101-186.eu-central-1.compute.internal event: Removing Node ip-10-52-101-186.eu-central-1.compute.internal from Controller
50m         Normal    Starting                      node/ip-10-52-101-189.eu-central-1.compute.internal   Starting kubelet.
50m         Warning   InvalidDiskCapacity           node/ip-10-52-101-189.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
50m         Normal    NodeHasSufficientMemory       node/ip-10-52-101-189.eu-central-1.compute.internal   Node ip-10-52-101-189.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
50m         Normal    NodeHasNoDiskPressure         node/ip-10-52-101-189.eu-central-1.compute.internal   Node ip-10-52-101-189.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
50m         Normal    NodeHasSufficientPID          node/ip-10-52-101-189.eu-central-1.compute.internal   Node ip-10-52-101-189.eu-central-1.compute.internal status is now: NodeHasSufficientPID
50m         Normal    NodeAllocatableEnforced       node/ip-10-52-101-189.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
50m         Normal    Synced                        node/ip-10-52-101-189.eu-central-1.compute.internal   Node synced successfully
50m         Normal    RegisteredNode                node/ip-10-52-101-189.eu-central-1.compute.internal   Node ip-10-52-101-189.eu-central-1.compute.internal event: Registered Node ip-10-52-101-189.eu-central-1.compute.internal in Controller
50m         Normal    DisruptionBlocked             node/ip-10-52-101-189.eu-central-1.compute.internal   Node isn't initialized
50m         Normal    Starting                      node/ip-10-52-101-189.eu-central-1.compute.internal   
50m         Normal    ControllerVersionNotice       node/ip-10-52-101-189.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
50m         Normal    NodeReady                     node/ip-10-52-101-189.eu-central-1.compute.internal   Node ip-10-52-101-189.eu-central-1.compute.internal status is now: NodeReady
50m         Normal    Ready                         node/ip-10-52-101-189.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
50m         Normal    NodeTrunkInitiated            node/ip-10-52-101-189.eu-central-1.compute.internal   The node has trunk interface initialized successfully
43m         Warning   SpotInterrupted               node/ip-10-52-101-189.eu-central-1.compute.internal   Spot interruption warning was triggered
43m         Warning   TerminatingOnInterruption     node/ip-10-52-101-189.eu-central-1.compute.internal   Interruption triggered termination for the Node
43m         Warning   FailedDraining                node/ip-10-52-101-189.eu-central-1.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
43m         Normal    SpotRebalanceRecommendation   node/ip-10-52-101-189.eu-central-1.compute.internal   Spot rebalance recommendation was triggered
43m         Normal    DisruptionBlocked             node/ip-10-52-101-189.eu-central-1.compute.internal   Node is deleting or marked for deletion
43m         Warning   InstanceTerminating           node/ip-10-52-101-189.eu-central-1.compute.internal   Instance is terminating
42m         Normal    NodeNotReady                  node/ip-10-52-101-189.eu-central-1.compute.internal   Node ip-10-52-101-189.eu-central-1.compute.internal status is now: NodeNotReady
42m         Normal    MemoryPressure                node/ip-10-52-101-189.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
42m         Normal    DiskPressure                  node/ip-10-52-101-189.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
42m         Normal    PIDPressure                   node/ip-10-52-101-189.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
42m         Normal    Ready                         node/ip-10-52-101-189.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
41m         Normal    RemovingNode                  node/ip-10-52-101-189.eu-central-1.compute.internal   Node ip-10-52-101-189.eu-central-1.compute.internal event: Removing Node ip-10-52-101-189.eu-central-1.compute.internal from Controller
16m         Normal    DisruptionBlocked             node/ip-10-52-96-181.eu-central-1.compute.internal    Node is deleting or marked for deletion
16m         Normal    Unconsolidatable              node/ip-10-52-96-181.eu-central-1.compute.internal    Can't replace with a cheaper node
17m         Normal    DisruptionBlocked             node/ip-10-52-96-42.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/postgresql-0)
56m         Normal    DisruptionBlocked             node/ip-10-52-96-42.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/proof-verification-srv-5db85676bd-bj6bl)
53m         Normal    DisruptionBlocked             node/ip-10-52-96-42.eu-central-1.compute.internal     Node is nominated for a pending pod
87s         Normal    DisruptionBlocked             node/ip-10-52-96-42.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/redis-master-0)
16m         Normal    Unconsolidatable              node/ip-10-52-97-128.eu-central-1.compute.internal    Can't replace with a cheaper node
16m         Normal    Unconsolidatable              node/ip-10-52-97-24.eu-central-1.compute.internal     Can't replace with a cheaper node
2m28s       Warning   Unsupported                   node/ip-10-52-97-76.eu-central-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
53m         Normal    DisruptionBlocked             node/ip-10-52-99-148.eu-central-1.compute.internal    Node is deleting or marked for deletion
53m         Normal    DisruptionTerminating         node/ip-10-52-99-148.eu-central-1.compute.internal    Disrupting Node: Underutilized/Delete
53m         Warning   FailedDraining                node/ip-10-52-99-148.eu-central-1.compute.internal    Failed to drain node, 7 pods are waiting to be evicted
52m         Warning   InstanceTerminating           node/ip-10-52-99-148.eu-central-1.compute.internal    Instance is terminating
52m         Normal    RemovingNode                  node/ip-10-52-99-148.eu-central-1.compute.internal    Node ip-10-52-99-148.eu-central-1.compute.internal event: Removing Node ip-10-52-99-148.eu-central-1.compute.internal from Controller
37m         Normal    DisruptionBlocked             node/ip-10-52-99-191.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29303075-dsxx2)
27m         Normal    DisruptionBlocked             node/ip-10-52-99-191.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29303085-8crnq)
22m         Normal    DisruptionBlocked             node/ip-10-52-99-191.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29303090-wsbpp)
9m24s       Normal    DisruptionBlocked             node/ip-10-52-99-191.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=signup-service-processor/signup-service-processor-pdb)
2m38s       Normal    DisruptionBlocked             node/ip-10-52-99-191.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29303110-pdsk2)
43m         Normal    Starting                      node/ip-10-52-99-251.eu-central-1.compute.internal    Starting kubelet.
43m         Warning   InvalidDiskCapacity           node/ip-10-52-99-251.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
43m         Normal    NodeHasSufficientMemory       node/ip-10-52-99-251.eu-central-1.compute.internal    Node ip-10-52-99-251.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
43m         Normal    NodeHasNoDiskPressure         node/ip-10-52-99-251.eu-central-1.compute.internal    Node ip-10-52-99-251.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
43m         Normal    NodeHasSufficientPID          node/ip-10-52-99-251.eu-central-1.compute.internal    Node ip-10-52-99-251.eu-central-1.compute.internal status is now: NodeHasSufficientPID
43m         Normal    NodeAllocatableEnforced       node/ip-10-52-99-251.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
43m         Normal    Synced                        node/ip-10-52-99-251.eu-central-1.compute.internal    Node synced successfully
43m         Normal    RegisteredNode                node/ip-10-52-99-251.eu-central-1.compute.internal    Node ip-10-52-99-251.eu-central-1.compute.internal event: Registered Node ip-10-52-99-251.eu-central-1.compute.internal in Controller
43m         Normal    Starting                      node/ip-10-52-99-251.eu-central-1.compute.internal    
43m         Normal    DisruptionBlocked             node/ip-10-52-99-251.eu-central-1.compute.internal    Node isn't initialized
43m         Normal    ControllerVersionNotice       node/ip-10-52-99-251.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
43m         Normal    NodeReady                     node/ip-10-52-99-251.eu-central-1.compute.internal    Node ip-10-52-99-251.eu-central-1.compute.internal status is now: NodeReady
43m         Normal    Ready                         node/ip-10-52-99-251.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
43m         Normal    NodeTrunkInitiated            node/ip-10-52-99-251.eu-central-1.compute.internal    The node has trunk interface initialized successfully
36m         Normal    DisruptionBlocked             node/ip-10-52-99-251.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-processor-66d85c69b8-f8xqt)
12m         Normal    DisruptionBlocked             node/ip-10-52-99-251.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29303100-xhnn6)
10m         Normal    DisruptionBlocked             node/ip-10-52-99-251.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-worker-pdb)
57m         Normal    DisruptionBlocked             node/ip-10-52-99-41.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29303055-2df8v)
53m         Normal    DisruptionBlocked             node/ip-10-52-99-41.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=signup-service-app/signup-service-app-pdb)
43m         Normal    DisruptionBlocked             node/ip-10-52-99-41.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-processor-66d85c69b8-n9cpr)
47m         Normal    DisruptionBlocked             node/ip-10-52-99-41.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-worker-844794bb86-5h97c)
17m         Normal    DisruptionBlocked             node/ip-10-52-99-41.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-processor-66d85c69b8-jq8zw)
87s         Normal    DisruptionBlocked             node/ip-10-52-99-41.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-processor-66d85c69b8-k5sfq)
5m30s       Normal    DisruptionBlocked             node/ip-10-52-99-41.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-worker-844794bb86-n586g)
51m         Normal    DisruptionBlocked             node/ip-10-52-99-64.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-external-85f45d777c-hpmtp)
49m         Normal    DisruptionBlocked             node/ip-10-52-99-64.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/proof-verification-srv-5db85676bd-qzj2t)
43m         Normal    DisruptionBlocked             node/ip-10-52-99-64.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-app-external-64659b4bff-f9lfc)
38m         Normal    DisruptionBlocked             node/ip-10-52-99-64.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-external-85f45d777c-xvkkz)
36m         Normal    DisruptionBlocked             node/ip-10-52-99-64.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-app-external-64659b4bff-gdznb)
19m         Normal    DisruptionBlocked             node/ip-10-52-99-64.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-external-85f45d777c-z2pcz)
24m         Normal    DisruptionBlocked             node/ip-10-52-99-64.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/proof-verification-srv-5db85676bd-ghsrv)
17m         Normal    DisruptionBlocked             node/ip-10-52-99-64.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-app-external-64659b4bff-jhrzg)
5m30s       Normal    DisruptionBlocked             node/ip-10-52-99-64.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/proof-verification-srv-5db85676bd-wf2qq)
7m32s       Normal    DisruptionBlocked             node/ip-10-52-99-64.eu-central-1.compute.internal     (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-external-85f45d777c-scdw5)
87s         Normal    DisruptionBlocked             node/ip-10-52-99-64.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-external-85f45d777c-scdw5)
```

Pods with issues
```
e2e                                   hnsw-smpc-0-6f96bc9c5-fw6tv                                       0/1     CrashLoopBackOff   5 (2m ago)      9m39s
e2e                                   hnsw-smpc-1-d7b888c95-9dqtz                                       0/1     CrashLoopBackOff   5 (2m4s ago)    9m39s
e2e                                   hnsw-smpc-2-5f7b88f5bc-ln2q7                                      0/1     CrashLoopBackOff   5 (119s ago)    9m39s
e2e                                   iris-mpc-0-5c9f46c55b-v7gcl                                       0/1     CrashLoopBackOff   5 (2m1s ago)    9m38s
e2e                                   iris-mpc-1-6b5744f4dd-b6tc4                                       0/1     CrashLoopBackOff   5 (2m12s ago)   9m37s
e2e                                   iris-mpc-2-797445cc9b-tcnjx                                       0/1     CrashLoopBackOff   5 (2m9s ago)    9m38s
e2e                                   mongodb-0                                                         0/1     ImagePullBackOff   0               9m37s
e2e                                   mongodb-arbiter-0                                                 0/1     ImagePullBackOff   0               9m37s
e2e                                   orb-data-service-app-external-64659b4bff-gm98r                    0/1     CrashLoopBackOff   6 (44s ago)     9m38s
e2e                                   orb-data-service-external-85f45d777c-scdw5                        0/1     CrashLoopBackOff   6 (39s ago)     9m39s
e2e                                   postgresql-0                                                      0/1     ImagePullBackOff   0               9m37s
e2e                                   redis-master-0                                                    0/1     ImagePullBackOff   0               9m37s
e2e                                   signup-service-app-api-796d758447-64t68                           0/1     CrashLoopBackOff   7 (32s ago)     9m38s
e2e                                   signup-service-orb-api-65c97bbb75-dw9hq                           0/1     CrashLoopBackOff   7 (26s ago)     9m38s
e2e                                   signup-service-processor-66d85c69b8-k5sfq                         0/1     CrashLoopBackOff   7 (40s ago)     9m38s
e2e                                   signup-service-worker-844794bb86-n586g                            0/1     CrashLoopBackOff   7 (43s ago)     9m39s
```

PodDisruptionBudgets
```
NAMESPACE                             NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
app-authentication-service-external   app-authentication-service-external-pdb   N/A             1                 1                     59d
cluster-monitoring                    cluster-monitoring-pdb                    N/A             1                 1                     292d
data-ingestion-service                data-ingestion-service-pdb                N/A             1                 1                     274d
hello-world-rest-service              hello-world-rest-service-pdb              N/A             1                 1                     175d
karpenter                             karpenter                                 N/A             1                 1                     728d
kube-system                           coredns                                   N/A             1                 1                     645d
kube-system                           ebs-csi-controller                        N/A             1                 1                     728d
kyverno                               kyverno-admission-controller              1               N/A               2                     603d
orb-fleet-backend-docs-server         orb-fleet-backend-docs-server-pdb         N/A             1                 1                     154d
orb-fleet-backend-event-server        orb-fleet-backend-event-server-pdb        N/A             1                 1                     181d
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     281d
orb-fleet-backend-internal            orb-fleet-backend-internal-pdb            N/A             1                 1                     281d
orb-fleet-backend-job-server          orb-fleet-backend-job-server-pdb          N/A             1                 1                     210d
orb-fleet-backend-monitoring-server   orb-fleet-backend-monitoring-server-pdb   N/A             1                 1                     210d
orb-relay-service-canary              orb-relay-service-canary-pdb              N/A             1                 1                     273d
orb-relay-service-orb                 orb-relay-service-orb-pdb                 N/A             1                 1                     274d
orb-relay-service-orb                 orb-relay-service-sqs-cleanup-pdb         N/A             1                 0                     273d
proof-verification-srv                proof-verification-srv-pdb                N/A             1                 1                     209d
signup-service-app                    signup-service-app-pdb                    N/A             1                 1                     76d
signup-service-processor              signup-service-processor-pdb              N/A             1                 1                     50d
signup-service                        signup-service-pdb                        N/A             1                 1                     76d
signup-service                        signup-service-worker-pdb                 N/A             1                 1                     76d
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
