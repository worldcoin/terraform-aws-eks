# Cluster recon for tfh-orb-stage-infra,eu-central-1,orb-stage-v2-eu-central-1,tunnel-vpc-orb-stage-eu-central-1

TFH EKS login...
```console
2025/09/23 14:36:39 INFO Logging into AWS
2025/09/23 14:36:39 INFO Token found and valid
2025/09/23 14:36:41 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-stage-eu-central-1 id=5c975ff5-e46d-4e1d-bbcf-140d1af33538
2025/09/23 14:36:42 INFO Active WARP Virtual Network id=5c975ff5-e46d-4e1d-bbcf-140d1af33538
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
            "id": "0b0e2735-6a99-4740-b0f3-8c162c7b40c0",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T14:14:21+02:00",
            "lastTransitionTime": "2025-09-23T14:14:21+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "34218f71-3994-4080-88cd-eaff0c01276a",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T14:14:30+02:00",
            "lastTransitionTime": "2025-07-29T07:44:21+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "e66e2c89-f273-43f7-9f56-594f196a262a",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T14:14:30+02:00",
            "lastTransitionTime": "2024-12-20T08:59:20+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "e2654714-9807-4bc1-bc48-9df2422667a2",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T14:14:21+02:00",
            "lastTransitionTime": "2024-12-20T08:59:20+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "5e09a3c3-8a66-45e3-87d4-5de643f334d1",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T14:14:21+02:00",
            "lastTransitionTime": "2024-12-20T08:59:20+01:00",
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
NAME                                             STATUS   ROLES    AGE    VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-52-100-145.eu-central-1.compute.internal   Ready    <none>   4h5m   v1.32.8-eks-99d6cc0   10.52.100.145   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-52-97-78.eu-central-1.compute.internal     Ready    <none>   24h    v1.32.8-eks-99d6cc0   10.52.97.78     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-stage-v2-eu-central-1
ip-10-52-98-192.eu-central-1.compute.internal    Ready    <none>   40m    v1.32.8-eks-99d6cc0   10.52.98.192    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-52-98-239.eu-central-1.compute.internal    Ready    <none>   179m   v1.32.8-eks-99d6cc0   10.52.98.239    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-52-99-175.eu-central-1.compute.internal    Ready    <none>   24h    v1.32.8-eks-99d6cc0   10.52.99.175    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-stage-v2-eu-central-1
ip-10-52-99-193.eu-central-1.compute.internal    Ready    <none>   54m    v1.32.8-eks-99d6cc0   10.52.99.193    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-52-99-81.eu-central-1.compute.internal     Ready    <none>   23m    v1.32.8-eks-99d6cc0   10.52.99.81     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                                             STATUS   ROLES    TAINTS
ip-10-52-100-145.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-52-97-78.eu-central-1.compute.internal     Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-52-98-192.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-52-98-239.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-52-99-175.eu-central-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-52-99-193.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-52-99-81.eu-central-1.compute.internal     Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                                                MESSAGE
22m         Normal    Finalized                     node                                                  Finalized karpenter.sh/termination
39m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Node is nominated for a pending pod
56m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310460-m9wv7)
54m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=signup-service-app/signup-service-app-pdb)
51m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310465-j25qc)
46m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310470-sdmjj)
41m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310475-dc8fz)
36m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29310480-7mxcr)
31m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310485-8sz5z)
6m48s       Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29310510-6j484)
32m         Normal    Unconsolidatable              node/ip-10-52-100-18.eu-central-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
40m         Normal    DisruptionBlocked             node/ip-10-52-100-18.eu-central-1.compute.internal    Node is nominated for a pending pod
24m         Normal    SpotRebalanceRecommendation   node/ip-10-52-100-18.eu-central-1.compute.internal    Spot rebalance recommendation was triggered
24m         Warning   SpotInterrupted               node/ip-10-52-100-18.eu-central-1.compute.internal    Spot interruption warning was triggered
24m         Warning   TerminatingOnInterruption     node/ip-10-52-100-18.eu-central-1.compute.internal    Interruption triggered termination for the Node
24m         Warning   FailedDraining                node/ip-10-52-100-18.eu-central-1.compute.internal    Failed to drain node, 4 pods are waiting to be evicted
24m         Normal    DisruptionBlocked             node/ip-10-52-100-18.eu-central-1.compute.internal    Node is deleting or marked for deletion
23m         Warning   InstanceTerminating           node/ip-10-52-100-18.eu-central-1.compute.internal    Instance is terminating
22m         Normal    NodeNotReady                  node/ip-10-52-100-18.eu-central-1.compute.internal    Node ip-10-52-100-18.eu-central-1.compute.internal status is now: NodeNotReady
22m         Normal    MemoryPressure                node/ip-10-52-100-18.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure                  node/ip-10-52-100-18.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure                   node/ip-10-52-100-18.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                         node/ip-10-52-100-18.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DeletingNode                  node/ip-10-52-100-18.eu-central-1.compute.internal    Deleting node ip-10-52-100-18.eu-central-1.compute.internal because it does not exist in the cloud provider
22m         Normal    RemovingNode                  node/ip-10-52-100-18.eu-central-1.compute.internal    Node ip-10-52-100-18.eu-central-1.compute.internal event: Removing Node ip-10-52-100-18.eu-central-1.compute.internal from Controller
54m         Normal    DisruptionBlocked             node/ip-10-52-101-189.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-pdb)
39m         Normal    DisruptionTerminating         node/ip-10-52-101-189.eu-central-1.compute.internal   Disrupting Node: Underutilized
39m         Normal    DisruptionBlocked             node/ip-10-52-101-189.eu-central-1.compute.internal   Node is deleting or marked for deletion
39m         Warning   FailedDraining                node/ip-10-52-101-189.eu-central-1.compute.internal   Failed to drain node, 5 pods are waiting to be evicted
38m         Warning   InstanceTerminating           node/ip-10-52-101-189.eu-central-1.compute.internal   Instance is terminating
37m         Normal    MemoryPressure                node/ip-10-52-101-189.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
37m         Normal    DiskPressure                  node/ip-10-52-101-189.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
37m         Normal    PIDPressure                   node/ip-10-52-101-189.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
37m         Normal    Ready                         node/ip-10-52-101-189.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
37m         Normal    NodeNotReady                  node/ip-10-52-101-189.eu-central-1.compute.internal   Node ip-10-52-101-189.eu-central-1.compute.internal status is now: NodeNotReady
37m         Normal    RemovingNode                  node/ip-10-52-101-189.eu-central-1.compute.internal   Node ip-10-52-101-189.eu-central-1.compute.internal event: Removing Node ip-10-52-101-189.eu-central-1.compute.internal from Controller
54m         Normal    SpotRebalanceRecommendation   node/ip-10-52-101-19.eu-central-1.compute.internal    Spot rebalance recommendation was triggered
54m         Warning   SpotInterrupted               node/ip-10-52-101-19.eu-central-1.compute.internal    Spot interruption warning was triggered
54m         Warning   TerminatingOnInterruption     node/ip-10-52-101-19.eu-central-1.compute.internal    Interruption triggered termination for the Node
54m         Warning   FailedDraining                node/ip-10-52-101-19.eu-central-1.compute.internal    Failed to drain node, 5 pods are waiting to be evicted
54m         Normal    DisruptionBlocked             node/ip-10-52-101-19.eu-central-1.compute.internal    Node is deleting or marked for deletion
53m         Warning   InstanceTerminating           node/ip-10-52-101-19.eu-central-1.compute.internal    Instance is terminating
53m         Normal    RemovingNode                  node/ip-10-52-101-19.eu-central-1.compute.internal    Node ip-10-52-101-19.eu-central-1.compute.internal event: Removing Node ip-10-52-101-19.eu-central-1.compute.internal from Controller
40m         Normal    DisruptionTerminating         node/ip-10-52-97-243.eu-central-1.compute.internal    Disrupting Node: Underutilized
40m         Warning   FailedDraining                node/ip-10-52-97-243.eu-central-1.compute.internal    Failed to drain node, 9 pods are waiting to be evicted
39m         Normal    DisruptionBlocked             node/ip-10-52-97-243.eu-central-1.compute.internal    Node is deleting or marked for deletion
39m         Warning   InstanceTerminating           node/ip-10-52-97-243.eu-central-1.compute.internal    Instance is terminating
38m         Normal    RemovingNode                  node/ip-10-52-97-243.eu-central-1.compute.internal    Node ip-10-52-97-243.eu-central-1.compute.internal event: Removing Node ip-10-52-97-243.eu-central-1.compute.internal from Controller
2m36s       Warning   Unsupported                   node/ip-10-52-97-78.eu-central-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
40m         Normal    Starting                      node/ip-10-52-98-192.eu-central-1.compute.internal    Starting kubelet.
40m         Warning   InvalidDiskCapacity           node/ip-10-52-98-192.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
40m         Normal    NodeHasSufficientMemory       node/ip-10-52-98-192.eu-central-1.compute.internal    Node ip-10-52-98-192.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
40m         Normal    NodeHasNoDiskPressure         node/ip-10-52-98-192.eu-central-1.compute.internal    Node ip-10-52-98-192.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
40m         Normal    NodeHasSufficientPID          node/ip-10-52-98-192.eu-central-1.compute.internal    Node ip-10-52-98-192.eu-central-1.compute.internal status is now: NodeHasSufficientPID
40m         Normal    NodeAllocatableEnforced       node/ip-10-52-98-192.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
40m         Normal    Synced                        node/ip-10-52-98-192.eu-central-1.compute.internal    Node synced successfully
40m         Normal    RegisteredNode                node/ip-10-52-98-192.eu-central-1.compute.internal    Node ip-10-52-98-192.eu-central-1.compute.internal event: Registered Node ip-10-52-98-192.eu-central-1.compute.internal in Controller
40m         Normal    DisruptionBlocked             node/ip-10-52-98-192.eu-central-1.compute.internal    Node isn't initialized
40m         Normal    Starting                      node/ip-10-52-98-192.eu-central-1.compute.internal    
40m         Normal    ControllerVersionNotice       node/ip-10-52-98-192.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
40m         Normal    NodeReady                     node/ip-10-52-98-192.eu-central-1.compute.internal    Node ip-10-52-98-192.eu-central-1.compute.internal status is now: NodeReady
40m         Normal    Ready                         node/ip-10-52-98-192.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
40m         Normal    NodeTrunkInitiated            node/ip-10-52-98-192.eu-central-1.compute.internal    The node has trunk interface initialized successfully
40m         Normal    DisruptionBlocked             node/ip-10-52-98-239.eu-central-1.compute.internal    Node is nominated for a pending pod
60m         Normal    MemoryPressure                node/ip-10-52-99-164.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
60m         Normal    DiskPressure                  node/ip-10-52-99-164.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
60m         Normal    PIDPressure                   node/ip-10-52-99-164.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
60m         Normal    Ready                         node/ip-10-52-99-164.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
60m         Normal    DeletingNode                  node/ip-10-52-99-164.eu-central-1.compute.internal    Deleting node ip-10-52-99-164.eu-central-1.compute.internal because it does not exist in the cloud provider
3m41s       Warning   Unsupported                   node/ip-10-52-99-175.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
54m         Normal    Starting                      node/ip-10-52-99-193.eu-central-1.compute.internal    Starting kubelet.
54m         Warning   InvalidDiskCapacity           node/ip-10-52-99-193.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
54m         Normal    NodeHasSufficientMemory       node/ip-10-52-99-193.eu-central-1.compute.internal    Node ip-10-52-99-193.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
54m         Normal    NodeHasNoDiskPressure         node/ip-10-52-99-193.eu-central-1.compute.internal    Node ip-10-52-99-193.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
54m         Normal    NodeHasSufficientPID          node/ip-10-52-99-193.eu-central-1.compute.internal    Node ip-10-52-99-193.eu-central-1.compute.internal status is now: NodeHasSufficientPID
54m         Normal    NodeAllocatableEnforced       node/ip-10-52-99-193.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
54m         Normal    Synced                        node/ip-10-52-99-193.eu-central-1.compute.internal    Node synced successfully
54m         Normal    RegisteredNode                node/ip-10-52-99-193.eu-central-1.compute.internal    Node ip-10-52-99-193.eu-central-1.compute.internal event: Registered Node ip-10-52-99-193.eu-central-1.compute.internal in Controller
54m         Normal    Starting                      node/ip-10-52-99-193.eu-central-1.compute.internal    
54m         Normal    DisruptionBlocked             node/ip-10-52-99-193.eu-central-1.compute.internal    Node isn't initialized
54m         Normal    ControllerVersionNotice       node/ip-10-52-99-193.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
54m         Normal    NodeReady                     node/ip-10-52-99-193.eu-central-1.compute.internal    Node ip-10-52-99-193.eu-central-1.compute.internal status is now: NodeReady
54m         Normal    Ready                         node/ip-10-52-99-193.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
53m         Normal    NodeTrunkInitiated            node/ip-10-52-99-193.eu-central-1.compute.internal    The node has trunk interface initialized successfully
39m         Normal    DisruptionBlocked             node/ip-10-52-99-193.eu-central-1.compute.internal    Node is nominated for a pending pod
24m         Normal    DisruptionBlocked             node/ip-10-52-99-193.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
9m21s       Normal    Unconsolidatable              node/ip-10-52-99-193.eu-central-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
24m         Normal    Starting                      node/ip-10-52-99-81.eu-central-1.compute.internal     Starting kubelet.
24m         Warning   InvalidDiskCapacity           node/ip-10-52-99-81.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
24m         Normal    NodeHasSufficientMemory       node/ip-10-52-99-81.eu-central-1.compute.internal     Node ip-10-52-99-81.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
24m         Normal    NodeHasNoDiskPressure         node/ip-10-52-99-81.eu-central-1.compute.internal     Node ip-10-52-99-81.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
24m         Normal    NodeHasSufficientPID          node/ip-10-52-99-81.eu-central-1.compute.internal     Node ip-10-52-99-81.eu-central-1.compute.internal status is now: NodeHasSufficientPID
24m         Normal    NodeAllocatableEnforced       node/ip-10-52-99-81.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
24m         Normal    Synced                        node/ip-10-52-99-81.eu-central-1.compute.internal     Node synced successfully
23m         Normal    RegisteredNode                node/ip-10-52-99-81.eu-central-1.compute.internal     Node ip-10-52-99-81.eu-central-1.compute.internal event: Registered Node ip-10-52-99-81.eu-central-1.compute.internal in Controller
23m         Normal    Starting                      node/ip-10-52-99-81.eu-central-1.compute.internal     
23m         Normal    DisruptionBlocked             node/ip-10-52-99-81.eu-central-1.compute.internal     Node isn't initialized
23m         Normal    ControllerVersionNotice       node/ip-10-52-99-81.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.9
23m         Normal    NodeReady                     node/ip-10-52-99-81.eu-central-1.compute.internal     Node ip-10-52-99-81.eu-central-1.compute.internal status is now: NodeReady
23m         Normal    Ready                         node/ip-10-52-99-81.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
23m         Normal    NodeTrunkInitiated            node/ip-10-52-99-81.eu-central-1.compute.internal     The node has trunk interface initialized successfully
7m49s       Normal    Unconsolidatable              node/ip-10-52-99-81.eu-central-1.compute.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                             NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
app-authentication-service-external   app-authentication-service-external-pdb   N/A             1                 1                     64d
cluster-monitoring                    cluster-monitoring-pdb                    N/A             1                 1                     298d
data-ingestion-service                data-ingestion-service-pdb                N/A             1                 1                     279d
hello-world-rest-service              hello-world-rest-service-pdb              N/A             1                 1                     180d
karpenter                             karpenter                                 N/A             1                 1                     2y3d
kube-system                           coredns                                   N/A             1                 1                     651d
kube-system                           ebs-csi-controller                        N/A             1                 1                     2y3d
kyverno                               kyverno-admission-controller              1               N/A               2                     608d
orb-fleet-backend-docs-server         orb-fleet-backend-docs-server-pdb         N/A             1                 1                     159d
orb-fleet-backend-event-server        orb-fleet-backend-event-server-pdb        N/A             1                 1                     186d
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     286d
orb-fleet-backend-internal            orb-fleet-backend-internal-pdb            N/A             1                 1                     286d
orb-fleet-backend-job-server          orb-fleet-backend-job-server-pdb          N/A             1                 1                     215d
orb-fleet-backend-monitoring-server   orb-fleet-backend-monitoring-server-pdb   N/A             1                 1                     215d
orb-relay-service-canary              orb-relay-service-canary-pdb              N/A             1                 1                     278d
orb-relay-service-orb                 orb-relay-service-orb-pdb                 N/A             1                 1                     279d
orb-relay-service-orb                 orb-relay-service-sqs-cleanup-pdb         N/A             1                 0                     278d
proof-verification-srv                proof-verification-srv-pdb                N/A             1                 1                     214d
signup-service-app                    signup-service-app-pdb                    N/A             1                 1                     81d
signup-service-processor              signup-service-processor-pdb              N/A             1                 1                     55d
signup-service                        signup-service-pdb                        N/A             1                 1                     81d
signup-service                        signup-service-worker-pdb                 N/A             1                 1                     81d
```

Pods with Karpenter.sh/Do-Not-Disrupt Annotation
```
ip-10-52-100-145.eu-central-1.compute.internal  signup-integration-tests-29310450-jvhrx                         (signup-integration-tests)
ip-10-52-100-145.eu-central-1.compute.internal  signup-integration-tests-29310480-7mxcr                         (signup-integration-tests)
ip-10-52-100-145.eu-central-1.compute.internal  signup-integration-tests-29310510-6j484                         (signup-integration-tests)
ip-10-52-100-145.eu-central-1.compute.internal  update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310505-wvkc4  (pcp-backfill-service)
ip-10-52-100-145.eu-central-1.compute.internal  update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310510-wv6qx  (pcp-backfill-service)
ip-10-52-100-145.eu-central-1.compute.internal  update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310515-bsbw8  (pcp-backfill-service)
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

Generated on: Tue Sep 23 14:37:13 CEST 2025
