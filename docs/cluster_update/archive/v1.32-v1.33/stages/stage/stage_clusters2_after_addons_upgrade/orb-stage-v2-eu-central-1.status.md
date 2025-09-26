# Cluster recon for tfh-orb-stage-infra,eu-central-1,orb-stage-v2-eu-central-1,tunnel-vpc-orb-stage-eu-central-1

TFH EKS login...
```console
2025/09/23 15:12:57 INFO Logging into AWS
2025/09/23 15:12:57 INFO Token not found or expired error="no valid token found"
2025/09/23 15:12:57 INFO Attempting to automatically open the SSO authorization page in your default browser...
2025/09/23 15:13:12 INFO Token found and valid
2025/09/23 15:13:14 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-stage-eu-central-1 id=5c975ff5-e46d-4e1d-bbcf-140d1af33538
2025/09/23 15:13:15 INFO Active WARP Virtual Network id=5c975ff5-e46d-4e1d-bbcf-140d1af33538
Updated context tfh-orb-stage-v2-eu-central-1 in /Users/lukasz.glowacki/.kube/config
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
NAME                                             STATUS   ROLES    AGE     VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-52-100-145.eu-central-1.compute.internal   Ready    <none>   4h41m   v1.32.8-eks-99d6cc0   10.52.100.145   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-52-101-25.eu-central-1.compute.internal    Ready    <none>   3m6s    v1.32.8-eks-99d6cc0   10.52.101.25    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-52-97-228.eu-central-1.compute.internal    Ready    <none>   100s    v1.32.8-eks-99d6cc0   10.52.97.228    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-52-97-52.eu-central-1.compute.internal     Ready    <none>   103s    v1.32.8-eks-99d6cc0   10.52.97.52     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-52-97-78.eu-central-1.compute.internal     Ready    <none>   24h     v1.32.8-eks-99d6cc0   10.52.97.78     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-stage-v2-eu-central-1
ip-10-52-98-192.eu-central-1.compute.internal    Ready    <none>   76m     v1.32.8-eks-99d6cc0   10.52.98.192    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-52-98-239.eu-central-1.compute.internal    Ready    <none>   3h35m   v1.32.8-eks-99d6cc0   10.52.98.239    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-52-99-175.eu-central-1.compute.internal    Ready    <none>   24h     v1.32.8-eks-99d6cc0   10.52.99.175    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-stage-v2-eu-central-1
ip-10-52-99-193.eu-central-1.compute.internal    Ready    <none>   90m     v1.32.8-eks-99d6cc0   10.52.99.193    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-52-99-81.eu-central-1.compute.internal     Ready    <none>   60m     v1.32.8-eks-99d6cc0   10.52.99.81     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                                             STATUS   ROLES    TAINTS
ip-10-52-100-145.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-52-101-25.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-52-97-228.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-52-97-52.eu-central-1.compute.internal     Ready    <none>   <none>
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
LAST SEEN   TYPE      REASON                    OBJECT                                                MESSAGE
59m         Normal    Finalized                 node                                                  Finalized karpenter.sh/termination
43m         Normal    DisruptionBlocked         node/ip-10-52-100-145.eu-central-1.compute.internal   (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29310510-6j484)
28m         Normal    DisruptionBlocked         node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310525-wkbr6)
23m         Normal    DisruptionBlocked         node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310530-gdm6r)
18m         Normal    DisruptionBlocked         node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310535-hm5bx)
13m         Normal    DisruptionBlocked         node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310540-h54jg)
8m25s       Normal    DisruptionBlocked         node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310545-vvplz)
3m47s       Normal    DisruptionBlocked         node/ip-10-52-100-145.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-worker-pdb)
2m4s        Normal    Starting                  node/ip-10-52-100-145.eu-central-1.compute.internal   
103s        Normal    DisruptionBlocked         node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-processor-66d85c69b8-ctzw2)
59m         Normal    NodeNotReady              node/ip-10-52-100-18.eu-central-1.compute.internal    Node ip-10-52-100-18.eu-central-1.compute.internal status is now: NodeNotReady
59m         Normal    MemoryPressure            node/ip-10-52-100-18.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
59m         Normal    DiskPressure              node/ip-10-52-100-18.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
59m         Normal    PIDPressure               node/ip-10-52-100-18.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
59m         Normal    Ready                     node/ip-10-52-100-18.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
59m         Normal    DeletingNode              node/ip-10-52-100-18.eu-central-1.compute.internal    Deleting node ip-10-52-100-18.eu-central-1.compute.internal because it does not exist in the cloud provider
59m         Normal    RemovingNode              node/ip-10-52-100-18.eu-central-1.compute.internal    Node ip-10-52-100-18.eu-central-1.compute.internal event: Removing Node ip-10-52-100-18.eu-central-1.compute.internal from Controller
3m10s       Normal    Starting                  node/ip-10-52-101-25.eu-central-1.compute.internal    Starting kubelet.
3m10s       Warning   InvalidDiskCapacity       node/ip-10-52-101-25.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
3m10s       Normal    NodeHasSufficientMemory   node/ip-10-52-101-25.eu-central-1.compute.internal    Node ip-10-52-101-25.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
3m10s       Normal    NodeHasNoDiskPressure     node/ip-10-52-101-25.eu-central-1.compute.internal    Node ip-10-52-101-25.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
3m10s       Normal    NodeHasSufficientPID      node/ip-10-52-101-25.eu-central-1.compute.internal    Node ip-10-52-101-25.eu-central-1.compute.internal status is now: NodeHasSufficientPID
3m10s       Normal    NodeAllocatableEnforced   node/ip-10-52-101-25.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
3m7s        Normal    Synced                    node/ip-10-52-101-25.eu-central-1.compute.internal    Node synced successfully
3m6s        Normal    DisruptionBlocked         node/ip-10-52-101-25.eu-central-1.compute.internal    Node isn't initialized
3m3s        Normal    RegisteredNode            node/ip-10-52-101-25.eu-central-1.compute.internal    Node ip-10-52-101-25.eu-central-1.compute.internal event: Registered Node ip-10-52-101-25.eu-central-1.compute.internal in Controller
3m2s        Normal    Starting                  node/ip-10-52-101-25.eu-central-1.compute.internal    
2m57s       Normal    ControllerVersionNotice   node/ip-10-52-101-25.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
2m56s       Normal    NodeReady                 node/ip-10-52-101-25.eu-central-1.compute.internal    Node ip-10-52-101-25.eu-central-1.compute.internal status is now: NodeReady
2m56s       Normal    Ready                     node/ip-10-52-101-25.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
2m54s       Normal    NodeTrunkInitiated        node/ip-10-52-101-25.eu-central-1.compute.internal    The node has trunk interface initialized successfully
2m26s       Normal    Starting                  node/ip-10-52-101-25.eu-central-1.compute.internal    
62s         Normal    DisruptionBlocked         node/ip-10-52-101-25.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-worker-844794bb86-fzm9m)
106s        Normal    Starting                  node/ip-10-52-97-228.eu-central-1.compute.internal    Starting kubelet.
106s        Warning   InvalidDiskCapacity       node/ip-10-52-97-228.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
105s        Normal    NodeHasSufficientMemory   node/ip-10-52-97-228.eu-central-1.compute.internal    Node ip-10-52-97-228.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
105s        Normal    NodeHasNoDiskPressure     node/ip-10-52-97-228.eu-central-1.compute.internal    Node ip-10-52-97-228.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
105s        Normal    NodeHasSufficientPID      node/ip-10-52-97-228.eu-central-1.compute.internal    Node ip-10-52-97-228.eu-central-1.compute.internal status is now: NodeHasSufficientPID
105s        Normal    NodeAllocatableEnforced   node/ip-10-52-97-228.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
102s        Normal    Synced                    node/ip-10-52-97-228.eu-central-1.compute.internal    Node synced successfully
98s         Normal    RegisteredNode            node/ip-10-52-97-228.eu-central-1.compute.internal    Node ip-10-52-97-228.eu-central-1.compute.internal event: Registered Node ip-10-52-97-228.eu-central-1.compute.internal in Controller
95s         Normal    Starting                  node/ip-10-52-97-228.eu-central-1.compute.internal    
93s         Normal    DisruptionBlocked         node/ip-10-52-97-228.eu-central-1.compute.internal    Node isn't initialized
92s         Normal    ControllerVersionNotice   node/ip-10-52-97-228.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
91s         Normal    NodeReady                 node/ip-10-52-97-228.eu-central-1.compute.internal    Node ip-10-52-97-228.eu-central-1.compute.internal status is now: NodeReady
91s         Normal    Ready                     node/ip-10-52-97-228.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
90s         Normal    NodeTrunkInitiated        node/ip-10-52-97-228.eu-central-1.compute.internal    The node has trunk interface initialized successfully
107s        Normal    Starting                  node/ip-10-52-97-52.eu-central-1.compute.internal     Starting kubelet.
107s        Warning   InvalidDiskCapacity       node/ip-10-52-97-52.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
107s        Normal    NodeHasSufficientMemory   node/ip-10-52-97-52.eu-central-1.compute.internal     Node ip-10-52-97-52.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
107s        Normal    NodeHasNoDiskPressure     node/ip-10-52-97-52.eu-central-1.compute.internal     Node ip-10-52-97-52.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
107s        Normal    NodeHasSufficientPID      node/ip-10-52-97-52.eu-central-1.compute.internal     Node ip-10-52-97-52.eu-central-1.compute.internal status is now: NodeHasSufficientPID
107s        Normal    NodeAllocatableEnforced   node/ip-10-52-97-52.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
104s        Normal    Synced                    node/ip-10-52-97-52.eu-central-1.compute.internal     Node synced successfully
103s        Normal    DisruptionBlocked         node/ip-10-52-97-52.eu-central-1.compute.internal     Node isn't initialized
103s        Normal    RegisteredNode            node/ip-10-52-97-52.eu-central-1.compute.internal     Node ip-10-52-97-52.eu-central-1.compute.internal event: Registered Node ip-10-52-97-52.eu-central-1.compute.internal in Controller
98s         Normal    Starting                  node/ip-10-52-97-52.eu-central-1.compute.internal     
94s         Normal    ControllerVersionNotice   node/ip-10-52-97-52.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.9
93s         Normal    NodeReady                 node/ip-10-52-97-52.eu-central-1.compute.internal     Node ip-10-52-97-52.eu-central-1.compute.internal status is now: NodeReady
93s         Normal    Ready                     node/ip-10-52-97-52.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
90s         Normal    NodeTrunkInitiated        node/ip-10-52-97-52.eu-central-1.compute.internal     The node has trunk interface initialized successfully
2m2s        Warning   Unsupported               node/ip-10-52-97-78.eu-central-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
2m9s        Normal    Starting                  node/ip-10-52-97-78.eu-central-1.compute.internal     
2m45s       Normal    Starting                  node/ip-10-52-98-192.eu-central-1.compute.internal    
2m45s       Normal    DisruptionBlocked         node/ip-10-52-98-192.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
42s         Normal    DisruptionBlocked         node/ip-10-52-98-192.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-app-external-64659b4bff-mq77c)
2m15s       Normal    Starting                  node/ip-10-52-98-239.eu-central-1.compute.internal    
2s          Normal    DisruptionBlocked         node/ip-10-52-98-239.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-external-85f45d777c-hxt5q)
3m10s       Warning   Unsupported               node/ip-10-52-99-175.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
2m21s       Normal    Starting                  node/ip-10-52-99-175.eu-central-1.compute.internal    
15m         Normal    Unconsolidatable          node/ip-10-52-99-193.eu-central-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
2m41s       Normal    Starting                  node/ip-10-52-99-193.eu-central-1.compute.internal    
60m         Normal    RegisteredNode            node/ip-10-52-99-81.eu-central-1.compute.internal     Node ip-10-52-99-81.eu-central-1.compute.internal event: Registered Node ip-10-52-99-81.eu-central-1.compute.internal in Controller
60m         Normal    Starting                  node/ip-10-52-99-81.eu-central-1.compute.internal     
60m         Normal    NodeReady                 node/ip-10-52-99-81.eu-central-1.compute.internal     Node ip-10-52-99-81.eu-central-1.compute.internal status is now: NodeReady
13m         Normal    Unconsolidatable          node/ip-10-52-99-81.eu-central-1.compute.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
2m38s       Normal    Starting                  node/ip-10-52-99-81.eu-central-1.compute.internal     
```

Pods with issues
```
e2e                                   iris-mpc-0-5c9f46c55b-ts4wp                                       0/1     Pending            0             2m11s
e2e                                   iris-mpc-1-6b5744f4dd-dwth8                                       0/1     Pending            0             2m12s
e2e                                   iris-mpc-2-797445cc9b-db7qq                                       0/1     Pending            0             2m9s
e2e                                   signup-service-worker-844794bb86-fzm9m                            0/1     CrashLoopBackOff   3 (34s ago)   2m11s
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
ip-10-52-100-145.eu-central-1.compute.internal  signup-integration-tests-29310480-7mxcr                         (signup-integration-tests)
ip-10-52-100-145.eu-central-1.compute.internal  signup-integration-tests-29310510-6j484                         (signup-integration-tests)
ip-10-52-100-145.eu-central-1.compute.internal  signup-integration-tests-29310540-xk72c                         (signup-integration-tests)
ip-10-52-100-145.eu-central-1.compute.internal  signup-service-processor-66d85c69b8-ctzw2                       (e2e)
ip-10-52-100-145.eu-central-1.compute.internal  update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310540-h54jg  (pcp-backfill-service)
ip-10-52-100-145.eu-central-1.compute.internal  update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310545-vvplz  (pcp-backfill-service)
ip-10-52-100-145.eu-central-1.compute.internal  update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310550-vrp2d  (pcp-backfill-service)
ip-10-52-101-25.eu-central-1.compute.internal   signup-service-worker-844794bb86-fzm9m                          (e2e)
ip-10-52-97-228.eu-central-1.compute.internal   mongodb-0                                                       (e2e)
ip-10-52-97-228.eu-central-1.compute.internal   mongodb-1                                                       (e2e)
ip-10-52-97-228.eu-central-1.compute.internal   mongodb-arbiter-0                                               (e2e)
ip-10-52-97-228.eu-central-1.compute.internal   signup-service-app-api-796d758447-v9rpd                         (e2e)
ip-10-52-97-228.eu-central-1.compute.internal   signup-service-orb-api-65c97bbb75-szsqz                         (e2e)
ip-10-52-97-52.eu-central-1.compute.internal    postgresql-0                                                    (e2e)
ip-10-52-97-52.eu-central-1.compute.internal    redis-master-0                                                  (e2e)
ip-10-52-98-192.eu-central-1.compute.internal   orb-data-service-app-external-64659b4bff-mq77c                  (e2e)
ip-10-52-98-239.eu-central-1.compute.internal   orb-data-service-external-85f45d777c-hxt5q                      (e2e)
ip-10-52-98-239.eu-central-1.compute.internal   proof-verification-srv-5db85676bd-f45zt                         (e2e)
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

Generated on: Tue Sep 23 15:13:48 CEST 2025
