# Cluster recon for tfh-orb-stage-infra,eu-central-1,orb-stage-v2-eu-central-1,tunnel-vpc-orb-stage-eu-central-1

TFH EKS login...
```console
2025/09/23 15:58:17 INFO Logging into AWS
2025/09/23 15:58:17 INFO Token found and valid
2025/09/23 15:58:18 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-stage-eu-central-1 id=5c975ff5-e46d-4e1d-bbcf-140d1af33538
2025/09/23 15:58:20 INFO Active WARP Virtual Network id=5c975ff5-e46d-4e1d-bbcf-140d1af33538
Updated context tfh-orb-stage-v2-eu-central-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "orb-stage-v2-eu-central-1",
        "arn": "arn:aws:eks:eu-central-1:510867353226:cluster/orb-stage-v2-eu-central-1",
        "createdAt": "2023-09-20T16:15:38.794000+02:00",
        "version": "1.33",
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
        "platformVersion": "eks.14",
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
NAME                                             STATUS   ROLES    AGE     VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-52-100-83.eu-central-1.compute.internal    Ready    <none>   13m     v1.33.4-eks-99d6cc0   10.52.100.83    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-52-100-92.eu-central-1.compute.internal    Ready    <none>   15m     v1.33.4-eks-99d6cc0   10.52.100.92    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-52-101-146.eu-central-1.compute.internal   Ready    <none>   18m     v1.33.4-eks-99d6cc0   10.52.101.146   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-stage-v2-eu-central-1
ip-10-52-98-183.eu-central-1.compute.internal    Ready    <none>   9m54s   v1.33.4-eks-99d6cc0   10.52.98.183    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-52-98-95.eu-central-1.compute.internal     Ready    <none>   16m     v1.33.4-eks-99d6cc0   10.52.98.95     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-stage-v2-eu-central-1
ip-10-52-99-40.eu-central-1.compute.internal     Ready    <none>   13m     v1.33.4-eks-99d6cc0   10.52.99.40     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-52-99-5.eu-central-1.compute.internal      Ready    <none>   10m     v1.33.4-eks-99d6cc0   10.52.99.5      <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                                             STATUS   ROLES    TAINTS
ip-10-52-100-83.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-52-100-92.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-52-101-146.eu-central-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-52-98-183.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-52-98-95.eu-central-1.compute.internal     Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-52-99-40.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-52-99-5.eu-central-1.compute.internal      Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                                                MESSAGE
8m30s       Normal    Finalized                     node                                                  Finalized karpenter.sh/termination
7m33s       Normal    Finalized                     node                                                  Finalized karpenter.sh/termination
12m         Normal    Finalized                     node                                                  Finalized karpenter.sh/termination
21m         Normal    Finalized                     node                                                  Finalized karpenter.sh/termination
15m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Node is nominated for a pending pod
18m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310580-q4vjg)
73m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310525-wkbr6)
68m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310530-gdm6r)
63m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310535-hm5bx)
58m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310540-h54jg)
53m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310545-vvplz)
48m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-worker-pdb)
47m         Normal    Starting                      node/ip-10-52-100-145.eu-central-1.compute.internal   
32m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-processor-66d85c69b8-ctzw2)
34m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-worker-844794bb86-5dxw8)
17m         Normal    RegisteredNode                node/ip-10-52-100-145.eu-central-1.compute.internal   Node ip-10-52-100-145.eu-central-1.compute.internal event: Registered Node ip-10-52-100-145.eu-central-1.compute.internal in Controller
16m         Normal    ControllerVersionNotice       node/ip-10-52-100-145.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
16m         Normal    NodeTrunkInitiated            node/ip-10-52-100-145.eu-central-1.compute.internal   The node has trunk interface initialized successfully
12m         Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Node is nominated for a pending pod
10m         Normal    DisruptionTerminating         node/ip-10-52-100-145.eu-central-1.compute.internal   Disrupting Node: Drifted
10m         Warning   FailedDraining                node/ip-10-52-100-145.eu-central-1.compute.internal   Failed to drain node, 33 pods are waiting to be evicted
8m32s       Normal    DisruptionBlocked             node/ip-10-52-100-145.eu-central-1.compute.internal   Node is deleting or marked for deletion
9m22s       Warning   InstanceTerminating           node/ip-10-52-100-145.eu-central-1.compute.internal   Instance is terminating
8m29s       Normal    RemovingNode                  node/ip-10-52-100-145.eu-central-1.compute.internal   Node ip-10-52-100-145.eu-central-1.compute.internal event: Removing Node ip-10-52-100-145.eu-central-1.compute.internal from Controller
18m         Normal    Starting                      node/ip-10-52-100-199.eu-central-1.compute.internal   Starting kubelet.
18m         Warning   InvalidDiskCapacity           node/ip-10-52-100-199.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
18m         Normal    NodeHasSufficientMemory       node/ip-10-52-100-199.eu-central-1.compute.internal   Node ip-10-52-100-199.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
18m         Normal    NodeHasNoDiskPressure         node/ip-10-52-100-199.eu-central-1.compute.internal   Node ip-10-52-100-199.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
18m         Normal    NodeHasSufficientPID          node/ip-10-52-100-199.eu-central-1.compute.internal   Node ip-10-52-100-199.eu-central-1.compute.internal status is now: NodeHasSufficientPID
18m         Normal    NodeAllocatableEnforced       node/ip-10-52-100-199.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
18m         Normal    Synced                        node/ip-10-52-100-199.eu-central-1.compute.internal   Node synced successfully
18m         Normal    RegisteredNode                node/ip-10-52-100-199.eu-central-1.compute.internal   Node ip-10-52-100-199.eu-central-1.compute.internal event: Registered Node ip-10-52-100-199.eu-central-1.compute.internal in Controller
18m         Normal    Starting                      node/ip-10-52-100-199.eu-central-1.compute.internal   
18m         Normal    ControllerVersionNotice       node/ip-10-52-100-199.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
17m         Warning   Unsupported                   node/ip-10-52-100-199.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
18m         Normal    NodeReady                     node/ip-10-52-100-199.eu-central-1.compute.internal   Node ip-10-52-100-199.eu-central-1.compute.internal status is now: NodeReady
18m         Normal    Ready                         node/ip-10-52-100-199.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    RegisteredNode                node/ip-10-52-100-199.eu-central-1.compute.internal   Node ip-10-52-100-199.eu-central-1.compute.internal event: Registered Node ip-10-52-100-199.eu-central-1.compute.internal in Controller
16m         Normal    ControllerVersionNotice       node/ip-10-52-100-199.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
6m4s        Warning   Unsupported                   node/ip-10-52-100-199.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
7m50s       Normal    NodeNotSchedulable            node/ip-10-52-100-199.eu-central-1.compute.internal   Node ip-10-52-100-199.eu-central-1.compute.internal status is now: NodeNotSchedulable
6m4s        Normal    NodeNotReady                  node/ip-10-52-100-199.eu-central-1.compute.internal   Node ip-10-52-100-199.eu-central-1.compute.internal status is now: NodeNotReady
6m4s        Normal    MemoryPressure                node/ip-10-52-100-199.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m4s        Normal    DiskPressure                  node/ip-10-52-100-199.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m4s        Normal    PIDPressure                   node/ip-10-52-100-199.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
6m4s        Normal    Ready                         node/ip-10-52-100-199.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
5m59s       Normal    DeletingNode                  node/ip-10-52-100-199.eu-central-1.compute.internal   Deleting node ip-10-52-100-199.eu-central-1.compute.internal because it does not exist in the cloud provider
5m58s       Normal    RemovingNode                  node/ip-10-52-100-199.eu-central-1.compute.internal   Node ip-10-52-100-199.eu-central-1.compute.internal event: Removing Node ip-10-52-100-199.eu-central-1.compute.internal from Controller
13m         Normal    Starting                      node/ip-10-52-100-83.eu-central-1.compute.internal    Starting kubelet.
13m         Warning   InvalidDiskCapacity           node/ip-10-52-100-83.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
13m         Normal    NodeHasSufficientMemory       node/ip-10-52-100-83.eu-central-1.compute.internal    Node ip-10-52-100-83.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
13m         Normal    NodeHasNoDiskPressure         node/ip-10-52-100-83.eu-central-1.compute.internal    Node ip-10-52-100-83.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
13m         Normal    NodeHasSufficientPID          node/ip-10-52-100-83.eu-central-1.compute.internal    Node ip-10-52-100-83.eu-central-1.compute.internal status is now: NodeHasSufficientPID
13m         Normal    NodeAllocatableEnforced       node/ip-10-52-100-83.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
13m         Normal    Synced                        node/ip-10-52-100-83.eu-central-1.compute.internal    Node synced successfully
13m         Normal    RegisteredNode                node/ip-10-52-100-83.eu-central-1.compute.internal    Node ip-10-52-100-83.eu-central-1.compute.internal event: Registered Node ip-10-52-100-83.eu-central-1.compute.internal in Controller
13m         Normal    DisruptionBlocked             node/ip-10-52-100-83.eu-central-1.compute.internal    Node isn't initialized
13m         Normal    Starting                      node/ip-10-52-100-83.eu-central-1.compute.internal    
13m         Normal    ControllerVersionNotice       node/ip-10-52-100-83.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
13m         Normal    NodeReady                     node/ip-10-52-100-83.eu-central-1.compute.internal    Node ip-10-52-100-83.eu-central-1.compute.internal status is now: NodeReady
13m         Normal    Ready                         node/ip-10-52-100-83.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
12m         Normal    NodeTrunkInitiated            node/ip-10-52-100-83.eu-central-1.compute.internal    The node has trunk interface initialized successfully
9m33s       Normal    DisruptionBlocked             node/ip-10-52-100-83.eu-central-1.compute.internal    Node is nominated for a pending pod
15m         Normal    Starting                      node/ip-10-52-100-92.eu-central-1.compute.internal    Starting kubelet.
15m         Warning   InvalidDiskCapacity           node/ip-10-52-100-92.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory       node/ip-10-52-100-92.eu-central-1.compute.internal    Node ip-10-52-100-92.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure         node/ip-10-52-100-92.eu-central-1.compute.internal    Node ip-10-52-100-92.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID          node/ip-10-52-100-92.eu-central-1.compute.internal    Node ip-10-52-100-92.eu-central-1.compute.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced       node/ip-10-52-100-92.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
15m         Normal    Synced                        node/ip-10-52-100-92.eu-central-1.compute.internal    Node synced successfully
15m         Normal    DisruptionBlocked             node/ip-10-52-100-92.eu-central-1.compute.internal    Node isn't initialized
15m         Normal    RegisteredNode                node/ip-10-52-100-92.eu-central-1.compute.internal    Node ip-10-52-100-92.eu-central-1.compute.internal event: Registered Node ip-10-52-100-92.eu-central-1.compute.internal in Controller
15m         Normal    Starting                      node/ip-10-52-100-92.eu-central-1.compute.internal    
14m         Normal    ControllerVersionNotice       node/ip-10-52-100-92.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeReady                     node/ip-10-52-100-92.eu-central-1.compute.internal    Node ip-10-52-100-92.eu-central-1.compute.internal status is now: NodeReady
14m         Normal    NodeTrunkInitiated            node/ip-10-52-100-92.eu-central-1.compute.internal    The node has trunk interface initialized successfully
14m         Normal    DisruptionBlocked             node/ip-10-52-100-92.eu-central-1.compute.internal    Node is nominated for a pending pod
9m33s       Normal    DisruptionBlocked             node/ip-10-52-100-92.eu-central-1.compute.internal    Node is nominated for a pending pod
18m         Normal    Starting                      node/ip-10-52-101-146.eu-central-1.compute.internal   Starting kubelet.
18m         Warning   InvalidDiskCapacity           node/ip-10-52-101-146.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
18m         Normal    NodeHasSufficientMemory       node/ip-10-52-101-146.eu-central-1.compute.internal   Node ip-10-52-101-146.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
18m         Normal    NodeHasNoDiskPressure         node/ip-10-52-101-146.eu-central-1.compute.internal   Node ip-10-52-101-146.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
18m         Normal    NodeHasSufficientPID          node/ip-10-52-101-146.eu-central-1.compute.internal   Node ip-10-52-101-146.eu-central-1.compute.internal status is now: NodeHasSufficientPID
18m         Normal    NodeAllocatableEnforced       node/ip-10-52-101-146.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
18m         Normal    Synced                        node/ip-10-52-101-146.eu-central-1.compute.internal   Node synced successfully
18m         Normal    RegisteredNode                node/ip-10-52-101-146.eu-central-1.compute.internal   Node ip-10-52-101-146.eu-central-1.compute.internal event: Registered Node ip-10-52-101-146.eu-central-1.compute.internal in Controller
18m         Normal    Starting                      node/ip-10-52-101-146.eu-central-1.compute.internal   
18m         Normal    ControllerVersionNotice       node/ip-10-52-101-146.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
17m         Warning   Unsupported                   node/ip-10-52-101-146.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
18m         Normal    NodeReady                     node/ip-10-52-101-146.eu-central-1.compute.internal   Node ip-10-52-101-146.eu-central-1.compute.internal status is now: NodeReady
18m         Normal    Ready                         node/ip-10-52-101-146.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    RegisteredNode                node/ip-10-52-101-146.eu-central-1.compute.internal   Node ip-10-52-101-146.eu-central-1.compute.internal event: Registered Node ip-10-52-101-146.eu-central-1.compute.internal in Controller
16m         Normal    ControllerVersionNotice       node/ip-10-52-101-146.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
80s         Warning   Unsupported                   node/ip-10-52-101-146.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
48m         Normal    Starting                      node/ip-10-52-101-25.eu-central-1.compute.internal    Starting kubelet.
48m         Warning   InvalidDiskCapacity           node/ip-10-52-101-25.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
48m         Normal    NodeHasSufficientMemory       node/ip-10-52-101-25.eu-central-1.compute.internal    Node ip-10-52-101-25.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
48m         Normal    NodeHasNoDiskPressure         node/ip-10-52-101-25.eu-central-1.compute.internal    Node ip-10-52-101-25.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
48m         Normal    NodeHasSufficientPID          node/ip-10-52-101-25.eu-central-1.compute.internal    Node ip-10-52-101-25.eu-central-1.compute.internal status is now: NodeHasSufficientPID
48m         Normal    NodeAllocatableEnforced       node/ip-10-52-101-25.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
48m         Normal    Synced                        node/ip-10-52-101-25.eu-central-1.compute.internal    Node synced successfully
48m         Normal    DisruptionBlocked             node/ip-10-52-101-25.eu-central-1.compute.internal    Node isn't initialized
48m         Normal    RegisteredNode                node/ip-10-52-101-25.eu-central-1.compute.internal    Node ip-10-52-101-25.eu-central-1.compute.internal event: Registered Node ip-10-52-101-25.eu-central-1.compute.internal in Controller
48m         Normal    Starting                      node/ip-10-52-101-25.eu-central-1.compute.internal    
48m         Normal    ControllerVersionNotice       node/ip-10-52-101-25.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
48m         Normal    NodeReady                     node/ip-10-52-101-25.eu-central-1.compute.internal    Node ip-10-52-101-25.eu-central-1.compute.internal status is now: NodeReady
48m         Normal    Ready                         node/ip-10-52-101-25.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
47m         Normal    NodeTrunkInitiated            node/ip-10-52-101-25.eu-central-1.compute.internal    The node has trunk interface initialized successfully
47m         Normal    Starting                      node/ip-10-52-101-25.eu-central-1.compute.internal    
39m         Normal    DisruptionBlocked             node/ip-10-52-101-25.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-worker-844794bb86-fzm9m)
38m         Normal    SpotRebalanceRecommendation   node/ip-10-52-101-25.eu-central-1.compute.internal    Spot rebalance recommendation was triggered
38m         Warning   SpotInterrupted               node/ip-10-52-101-25.eu-central-1.compute.internal    Spot interruption warning was triggered
38m         Warning   TerminatingOnInterruption     node/ip-10-52-101-25.eu-central-1.compute.internal    Interruption triggered termination for the Node
38m         Warning   FailedDraining                node/ip-10-52-101-25.eu-central-1.compute.internal    Failed to drain node, 7 pods are waiting to be evicted
37m         Normal    DisruptionBlocked             node/ip-10-52-101-25.eu-central-1.compute.internal    Node is deleting or marked for deletion
36m         Warning   FailedDraining                node/ip-10-52-101-25.eu-central-1.compute.internal    Failed to drain node, 4 pods are waiting to be evicted
36m         Warning   InstanceTerminating           node/ip-10-52-101-25.eu-central-1.compute.internal    Instance is terminating
35m         Normal    NodeNotReady                  node/ip-10-52-101-25.eu-central-1.compute.internal    Node ip-10-52-101-25.eu-central-1.compute.internal status is now: NodeNotReady
35m         Normal    MemoryPressure                node/ip-10-52-101-25.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
35m         Normal    DiskPressure                  node/ip-10-52-101-25.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
35m         Normal    PIDPressure                   node/ip-10-52-101-25.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
35m         Normal    Ready                         node/ip-10-52-101-25.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
35m         Normal    RemovingNode                  node/ip-10-52-101-25.eu-central-1.compute.internal    Node ip-10-52-101-25.eu-central-1.compute.internal event: Removing Node ip-10-52-101-25.eu-central-1.compute.internal from Controller
15m         Normal    Starting                      node/ip-10-52-97-152.eu-central-1.compute.internal    Starting kubelet.
15m         Warning   InvalidDiskCapacity           node/ip-10-52-97-152.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory       node/ip-10-52-97-152.eu-central-1.compute.internal    Node ip-10-52-97-152.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure         node/ip-10-52-97-152.eu-central-1.compute.internal    Node ip-10-52-97-152.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID          node/ip-10-52-97-152.eu-central-1.compute.internal    Node ip-10-52-97-152.eu-central-1.compute.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced       node/ip-10-52-97-152.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
15m         Normal    Synced                        node/ip-10-52-97-152.eu-central-1.compute.internal    Node synced successfully
15m         Normal    RegisteredNode                node/ip-10-52-97-152.eu-central-1.compute.internal    Node ip-10-52-97-152.eu-central-1.compute.internal event: Registered Node ip-10-52-97-152.eu-central-1.compute.internal in Controller
15m         Normal    Starting                      node/ip-10-52-97-152.eu-central-1.compute.internal    
15m         Normal    ControllerVersionNotice       node/ip-10-52-97-152.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
3m3s        Warning   Unsupported                   node/ip-10-52-97-152.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
15m         Normal    NodeReady                     node/ip-10-52-97-152.eu-central-1.compute.internal    Node ip-10-52-97-152.eu-central-1.compute.internal status is now: NodeReady
15m         Normal    Ready                         node/ip-10-52-97-152.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
4m47s       Normal    NodeNotSchedulable            node/ip-10-52-97-152.eu-central-1.compute.internal    Node ip-10-52-97-152.eu-central-1.compute.internal status is now: NodeNotSchedulable
3m3s        Normal    NodeNotReady                  node/ip-10-52-97-152.eu-central-1.compute.internal    Node ip-10-52-97-152.eu-central-1.compute.internal status is now: NodeNotReady
3m3s        Normal    MemoryPressure                node/ip-10-52-97-152.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
3m3s        Normal    DiskPressure                  node/ip-10-52-97-152.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
3m3s        Normal    PIDPressure                   node/ip-10-52-97-152.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
3m3s        Normal    Ready                         node/ip-10-52-97-152.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
2m59s       Normal    DeletingNode                  node/ip-10-52-97-152.eu-central-1.compute.internal    Deleting node ip-10-52-97-152.eu-central-1.compute.internal because it does not exist in the cloud provider
2m58s       Normal    RemovingNode                  node/ip-10-52-97-152.eu-central-1.compute.internal    Node ip-10-52-97-152.eu-central-1.compute.internal event: Removing Node ip-10-52-97-152.eu-central-1.compute.internal from Controller
46m         Normal    Starting                      node/ip-10-52-97-228.eu-central-1.compute.internal    Starting kubelet.
46m         Warning   InvalidDiskCapacity           node/ip-10-52-97-228.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
46m         Normal    NodeHasSufficientMemory       node/ip-10-52-97-228.eu-central-1.compute.internal    Node ip-10-52-97-228.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
46m         Normal    NodeHasNoDiskPressure         node/ip-10-52-97-228.eu-central-1.compute.internal    Node ip-10-52-97-228.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
46m         Normal    NodeHasSufficientPID          node/ip-10-52-97-228.eu-central-1.compute.internal    Node ip-10-52-97-228.eu-central-1.compute.internal status is now: NodeHasSufficientPID
46m         Normal    NodeAllocatableEnforced       node/ip-10-52-97-228.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
46m         Normal    Synced                        node/ip-10-52-97-228.eu-central-1.compute.internal    Node synced successfully
46m         Normal    RegisteredNode                node/ip-10-52-97-228.eu-central-1.compute.internal    Node ip-10-52-97-228.eu-central-1.compute.internal event: Registered Node ip-10-52-97-228.eu-central-1.compute.internal in Controller
46m         Normal    Starting                      node/ip-10-52-97-228.eu-central-1.compute.internal    
46m         Normal    DisruptionBlocked             node/ip-10-52-97-228.eu-central-1.compute.internal    Node isn't initialized
46m         Normal    ControllerVersionNotice       node/ip-10-52-97-228.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
46m         Normal    NodeReady                     node/ip-10-52-97-228.eu-central-1.compute.internal    Node ip-10-52-97-228.eu-central-1.compute.internal status is now: NodeReady
46m         Normal    Ready                         node/ip-10-52-97-228.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
46m         Normal    NodeTrunkInitiated            node/ip-10-52-97-228.eu-central-1.compute.internal    The node has trunk interface initialized successfully
34m         Normal    DisruptionBlocked             node/ip-10-52-97-228.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/signup-service-orb-api-65c97bbb75-szsqz)
32m         Normal    DisruptionBlocked             node/ip-10-52-97-228.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/mongodb-arbiter-0)
28m         Normal    DisruptionBlocked             node/ip-10-52-97-228.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29310570-kqxpv)
15m         Normal    DisruptionBlocked             node/ip-10-52-97-228.eu-central-1.compute.internal    Node is nominated for a pending pod
17m         Normal    RegisteredNode                node/ip-10-52-97-228.eu-central-1.compute.internal    Node ip-10-52-97-228.eu-central-1.compute.internal event: Registered Node ip-10-52-97-228.eu-central-1.compute.internal in Controller
16m         Normal    ControllerVersionNotice       node/ip-10-52-97-228.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
16m         Normal    NodeTrunkInitiated            node/ip-10-52-97-228.eu-central-1.compute.internal    The node has trunk interface initialized successfully
14m         Normal    DisruptionBlocked             node/ip-10-52-97-228.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
12m         Normal    DisruptionTerminating         node/ip-10-52-97-228.eu-central-1.compute.internal    Disrupting Node: Drifted
12m         Warning   FailedDraining                node/ip-10-52-97-228.eu-central-1.compute.internal    Failed to drain node, 6 pods are waiting to be evicted
12m         Normal    DisruptionBlocked             node/ip-10-52-97-228.eu-central-1.compute.internal    Node is deleting or marked for deletion
12m         Warning   InstanceTerminating           node/ip-10-52-97-228.eu-central-1.compute.internal    Instance is terminating
11m         Normal    DisruptionBlocked             node/ip-10-52-97-228.eu-central-1.compute.internal    Node is deleting or marked for deletion
11m         Warning   InstanceTerminating           node/ip-10-52-97-228.eu-central-1.compute.internal    Instance is terminating
11m         Normal    RemovingNode                  node/ip-10-52-97-228.eu-central-1.compute.internal    Node ip-10-52-97-228.eu-central-1.compute.internal event: Removing Node ip-10-52-97-228.eu-central-1.compute.internal from Controller
46m         Normal    Starting                      node/ip-10-52-97-52.eu-central-1.compute.internal     Starting kubelet.
46m         Warning   InvalidDiskCapacity           node/ip-10-52-97-52.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
46m         Normal    NodeHasSufficientMemory       node/ip-10-52-97-52.eu-central-1.compute.internal     Node ip-10-52-97-52.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
46m         Normal    NodeHasNoDiskPressure         node/ip-10-52-97-52.eu-central-1.compute.internal     Node ip-10-52-97-52.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
46m         Normal    NodeHasSufficientPID          node/ip-10-52-97-52.eu-central-1.compute.internal     Node ip-10-52-97-52.eu-central-1.compute.internal status is now: NodeHasSufficientPID
46m         Normal    NodeAllocatableEnforced       node/ip-10-52-97-52.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
46m         Normal    Synced                        node/ip-10-52-97-52.eu-central-1.compute.internal     Node synced successfully
46m         Normal    DisruptionBlocked             node/ip-10-52-97-52.eu-central-1.compute.internal     Node isn't initialized
46m         Normal    RegisteredNode                node/ip-10-52-97-52.eu-central-1.compute.internal     Node ip-10-52-97-52.eu-central-1.compute.internal event: Registered Node ip-10-52-97-52.eu-central-1.compute.internal in Controller
46m         Normal    Starting                      node/ip-10-52-97-52.eu-central-1.compute.internal     
46m         Normal    ControllerVersionNotice       node/ip-10-52-97-52.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.9
46m         Normal    NodeReady                     node/ip-10-52-97-52.eu-central-1.compute.internal     Node ip-10-52-97-52.eu-central-1.compute.internal status is now: NodeReady
46m         Normal    Ready                         node/ip-10-52-97-52.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
46m         Normal    NodeTrunkInitiated            node/ip-10-52-97-52.eu-central-1.compute.internal     The node has trunk interface initialized successfully
34m         Normal    DisruptionBlocked             node/ip-10-52-97-52.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/postgresql-0)
32m         Normal    DisruptionBlocked             node/ip-10-52-97-52.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/redis-master-0)
17m         Normal    RegisteredNode                node/ip-10-52-97-52.eu-central-1.compute.internal     Node ip-10-52-97-52.eu-central-1.compute.internal event: Registered Node ip-10-52-97-52.eu-central-1.compute.internal in Controller
16m         Normal    ControllerVersionNotice       node/ip-10-52-97-52.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
16m         Normal    NodeTrunkInitiated            node/ip-10-52-97-52.eu-central-1.compute.internal     The node has trunk interface initialized successfully
15m         Normal    DisruptionBlocked             node/ip-10-52-97-52.eu-central-1.compute.internal     Node is nominated for a pending pod
14m         Normal    DisruptionBlocked             node/ip-10-52-97-52.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
13m         Normal    DisruptionTerminating         node/ip-10-52-97-52.eu-central-1.compute.internal     Disrupting Node: Drifted
13m         Warning   FailedDraining                node/ip-10-52-97-52.eu-central-1.compute.internal     Failed to drain node, 13 pods are waiting to be evicted
12m         Normal    DisruptionBlocked             node/ip-10-52-97-52.eu-central-1.compute.internal     Node is deleting or marked for deletion
12m         Warning   InstanceTerminating           node/ip-10-52-97-52.eu-central-1.compute.internal     Instance is terminating
11m         Normal    DisruptionBlocked             node/ip-10-52-97-52.eu-central-1.compute.internal     Node is deleting or marked for deletion
11m         Normal    NodeNotReady                  node/ip-10-52-97-52.eu-central-1.compute.internal     Node ip-10-52-97-52.eu-central-1.compute.internal status is now: NodeNotReady
11m         Normal    MemoryPressure                node/ip-10-52-97-52.eu-central-1.compute.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DiskPressure                  node/ip-10-52-97-52.eu-central-1.compute.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    PIDPressure                   node/ip-10-52-97-52.eu-central-1.compute.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    Ready                         node/ip-10-52-97-52.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Warning   InstanceTerminating           node/ip-10-52-97-52.eu-central-1.compute.internal     Instance is terminating
10m         Normal    RemovingNode                  node/ip-10-52-97-52.eu-central-1.compute.internal     Node ip-10-52-97-52.eu-central-1.compute.internal event: Removing Node ip-10-52-97-52.eu-central-1.compute.internal from Controller
21m         Warning   Unsupported                   node/ip-10-52-97-78.eu-central-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
47m         Normal    Starting                      node/ip-10-52-97-78.eu-central-1.compute.internal     
17m         Normal    RegisteredNode                node/ip-10-52-97-78.eu-central-1.compute.internal     Node ip-10-52-97-78.eu-central-1.compute.internal event: Registered Node ip-10-52-97-78.eu-central-1.compute.internal in Controller
16m         Normal    ControllerVersionNotice       node/ip-10-52-97-78.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
12m         Warning   Unsupported                   node/ip-10-52-97-78.eu-central-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
14m         Normal    NodeNotSchedulable            node/ip-10-52-97-78.eu-central-1.compute.internal     Node ip-10-52-97-78.eu-central-1.compute.internal status is now: NodeNotSchedulable
12m         Normal    NodeNotReady                  node/ip-10-52-97-78.eu-central-1.compute.internal     Node ip-10-52-97-78.eu-central-1.compute.internal status is now: NodeNotReady
12m         Normal    MemoryPressure                node/ip-10-52-97-78.eu-central-1.compute.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DiskPressure                  node/ip-10-52-97-78.eu-central-1.compute.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    PIDPressure                   node/ip-10-52-97-78.eu-central-1.compute.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    Ready                         node/ip-10-52-97-78.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DeletingNode                  node/ip-10-52-97-78.eu-central-1.compute.internal     Deleting node ip-10-52-97-78.eu-central-1.compute.internal because it does not exist in the cloud provider
12m         Normal    RemovingNode                  node/ip-10-52-97-78.eu-central-1.compute.internal     Node ip-10-52-97-78.eu-central-1.compute.internal event: Removing Node ip-10-52-97-78.eu-central-1.compute.internal from Controller
9m58s       Normal    Starting                      node/ip-10-52-98-183.eu-central-1.compute.internal    Starting kubelet.
9m58s       Warning   InvalidDiskCapacity           node/ip-10-52-98-183.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
9m58s       Normal    NodeHasSufficientMemory       node/ip-10-52-98-183.eu-central-1.compute.internal    Node ip-10-52-98-183.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
9m58s       Normal    NodeHasNoDiskPressure         node/ip-10-52-98-183.eu-central-1.compute.internal    Node ip-10-52-98-183.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
9m58s       Normal    NodeHasSufficientPID          node/ip-10-52-98-183.eu-central-1.compute.internal    Node ip-10-52-98-183.eu-central-1.compute.internal status is now: NodeHasSufficientPID
9m58s       Normal    NodeAllocatableEnforced       node/ip-10-52-98-183.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
9m56s       Normal    Synced                        node/ip-10-52-98-183.eu-central-1.compute.internal    Node synced successfully
9m54s       Normal    RegisteredNode                node/ip-10-52-98-183.eu-central-1.compute.internal    Node ip-10-52-98-183.eu-central-1.compute.internal event: Registered Node ip-10-52-98-183.eu-central-1.compute.internal in Controller
9m53s       Normal    DisruptionBlocked             node/ip-10-52-98-183.eu-central-1.compute.internal    Node isn't initialized
9m50s       Normal    Starting                      node/ip-10-52-98-183.eu-central-1.compute.internal    
9m45s       Normal    ControllerVersionNotice       node/ip-10-52-98-183.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
9m44s       Normal    NodeReady                     node/ip-10-52-98-183.eu-central-1.compute.internal    Node ip-10-52-98-183.eu-central-1.compute.internal status is now: NodeReady
9m44s       Normal    Ready                         node/ip-10-52-98-183.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
9m41s       Normal    NodeTrunkInitiated            node/ip-10-52-98-183.eu-central-1.compute.internal    The node has trunk interface initialized successfully
2m6s        Normal    DisruptionBlocked             node/ip-10-52-98-183.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
47m         Normal    Starting                      node/ip-10-52-98-192.eu-central-1.compute.internal    
47m         Normal    DisruptionBlocked             node/ip-10-52-98-192.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
33m         Normal    DisruptionBlocked             node/ip-10-52-98-192.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-app-external-64659b4bff-mq77c)
17m         Normal    RegisteredNode                node/ip-10-52-98-192.eu-central-1.compute.internal    Node ip-10-52-98-192.eu-central-1.compute.internal event: Registered Node ip-10-52-98-192.eu-central-1.compute.internal in Controller
16m         Normal    ControllerVersionNotice       node/ip-10-52-98-192.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
16m         Normal    NodeTrunkInitiated            node/ip-10-52-98-192.eu-central-1.compute.internal    The node has trunk interface initialized successfully
15m         Normal    DisruptionTerminating         node/ip-10-52-98-192.eu-central-1.compute.internal    Disrupting Node: Drifted
15m         Normal    DisruptionBlocked             node/ip-10-52-98-192.eu-central-1.compute.internal    Node is deleting or marked for deletion
15m         Warning   FailedDraining                node/ip-10-52-98-192.eu-central-1.compute.internal    Failed to drain node, 7 pods are waiting to be evicted
14m         Warning   FailedDraining                node/ip-10-52-98-192.eu-central-1.compute.internal    Failed to drain node, 3 pods are waiting to be evicted
14m         Normal    DisruptionBlocked             node/ip-10-52-98-192.eu-central-1.compute.internal    Node is deleting or marked for deletion
14m         Warning   InstanceTerminating           node/ip-10-52-98-192.eu-central-1.compute.internal    Instance is terminating
13m         Normal    RemovingNode                  node/ip-10-52-98-192.eu-central-1.compute.internal    Node ip-10-52-98-192.eu-central-1.compute.internal event: Removing Node ip-10-52-98-192.eu-central-1.compute.internal from Controller
47m         Normal    Starting                      node/ip-10-52-98-239.eu-central-1.compute.internal    
32m         Normal    DisruptionBlocked             node/ip-10-52-98-239.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=e2e/orb-data-service-external-85f45d777c-hxt5q)
17m         Normal    RegisteredNode                node/ip-10-52-98-239.eu-central-1.compute.internal    Node ip-10-52-98-239.eu-central-1.compute.internal event: Registered Node ip-10-52-98-239.eu-central-1.compute.internal in Controller
16m         Normal    ControllerVersionNotice       node/ip-10-52-98-239.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
16m         Normal    NodeTrunkInitiated            node/ip-10-52-98-239.eu-central-1.compute.internal    The node has trunk interface initialized successfully
15m         Normal    DisruptionBlocked             node/ip-10-52-98-239.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=data-ingestion-service/data-ingestion-service-pdb)
12m         Normal    DisruptionBlocked             node/ip-10-52-98-239.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
11m         Normal    DisruptionBlocked             node/ip-10-52-98-239.eu-central-1.compute.internal    Node is nominated for a pending pod
9m43s       Normal    DisruptionTerminating         node/ip-10-52-98-239.eu-central-1.compute.internal    Disrupting Node: Drifted
9m42s       Warning   FailedDraining                node/ip-10-52-98-239.eu-central-1.compute.internal    Failed to drain node, 27 pods are waiting to be evicted
9m33s       Normal    DisruptionBlocked             node/ip-10-52-98-239.eu-central-1.compute.internal    Node is deleting or marked for deletion
8m38s       Warning   InstanceTerminating           node/ip-10-52-98-239.eu-central-1.compute.internal    Instance is terminating
7m44s       Normal    NodeNotReady                  node/ip-10-52-98-239.eu-central-1.compute.internal    Node ip-10-52-98-239.eu-central-1.compute.internal status is now: NodeNotReady
7m34s       Normal    DeletingNode                  node/ip-10-52-98-239.eu-central-1.compute.internal    Deleting node ip-10-52-98-239.eu-central-1.compute.internal because it does not exist in the cloud provider
7m34s       Warning   InstanceTerminating           node/ip-10-52-98-239.eu-central-1.compute.internal    Instance is terminating
7m29s       Normal    RemovingNode                  node/ip-10-52-98-239.eu-central-1.compute.internal    Node ip-10-52-98-239.eu-central-1.compute.internal event: Removing Node ip-10-52-98-239.eu-central-1.compute.internal from Controller
16m         Normal    Starting                      node/ip-10-52-98-95.eu-central-1.compute.internal     Starting kubelet.
16m         Warning   InvalidDiskCapacity           node/ip-10-52-98-95.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
16m         Normal    NodeHasSufficientMemory       node/ip-10-52-98-95.eu-central-1.compute.internal     Node ip-10-52-98-95.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
16m         Normal    NodeHasNoDiskPressure         node/ip-10-52-98-95.eu-central-1.compute.internal     Node ip-10-52-98-95.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
16m         Normal    NodeHasSufficientPID          node/ip-10-52-98-95.eu-central-1.compute.internal     Node ip-10-52-98-95.eu-central-1.compute.internal status is now: NodeHasSufficientPID
16m         Normal    NodeAllocatableEnforced       node/ip-10-52-98-95.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
16m         Normal    Synced                        node/ip-10-52-98-95.eu-central-1.compute.internal     Node synced successfully
16m         Normal    RegisteredNode                node/ip-10-52-98-95.eu-central-1.compute.internal     Node ip-10-52-98-95.eu-central-1.compute.internal event: Registered Node ip-10-52-98-95.eu-central-1.compute.internal in Controller
16m         Normal    Starting                      node/ip-10-52-98-95.eu-central-1.compute.internal     
16m         Normal    ControllerVersionNotice       node/ip-10-52-98-95.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
47s         Warning   Unsupported                   node/ip-10-52-98-95.eu-central-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
16m         Normal    NodeReady                     node/ip-10-52-98-95.eu-central-1.compute.internal     Node ip-10-52-98-95.eu-central-1.compute.internal status is now: NodeReady
16m         Normal    Ready                         node/ip-10-52-98-95.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Warning   Unsupported                   node/ip-10-52-99-175.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
47m         Normal    Starting                      node/ip-10-52-99-175.eu-central-1.compute.internal    
17m         Normal    RegisteredNode                node/ip-10-52-99-175.eu-central-1.compute.internal    Node ip-10-52-99-175.eu-central-1.compute.internal event: Registered Node ip-10-52-99-175.eu-central-1.compute.internal in Controller
16m         Normal    ControllerVersionNotice       node/ip-10-52-99-175.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
9m4s        Warning   Unsupported                   node/ip-10-52-99-175.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
14m         Normal    NodeNotSchedulable            node/ip-10-52-99-175.eu-central-1.compute.internal    Node ip-10-52-99-175.eu-central-1.compute.internal status is now: NodeNotSchedulable
9m9s        Normal    NodeNotReady                  node/ip-10-52-99-175.eu-central-1.compute.internal    Node ip-10-52-99-175.eu-central-1.compute.internal status is now: NodeNotReady
9m9s        Normal    MemoryPressure                node/ip-10-52-99-175.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m9s        Normal    DiskPressure                  node/ip-10-52-99-175.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m9s        Normal    PIDPressure                   node/ip-10-52-99-175.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m9s        Normal    Ready                         node/ip-10-52-99-175.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m50s       Normal    DeletingNode                  node/ip-10-52-99-175.eu-central-1.compute.internal    Deleting node ip-10-52-99-175.eu-central-1.compute.internal because it does not exist in the cloud provider
8m49s       Normal    RemovingNode                  node/ip-10-52-99-175.eu-central-1.compute.internal    Node ip-10-52-99-175.eu-central-1.compute.internal event: Removing Node ip-10-52-99-175.eu-central-1.compute.internal from Controller
17m         Normal    Unconsolidatable              node/ip-10-52-99-193.eu-central-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
47m         Normal    Starting                      node/ip-10-52-99-193.eu-central-1.compute.internal    
23m         Normal    DisruptionBlocked             node/ip-10-52-99-193.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-pdb)
17m         Normal    RegisteredNode                node/ip-10-52-99-193.eu-central-1.compute.internal    Node ip-10-52-99-193.eu-central-1.compute.internal event: Registered Node ip-10-52-99-193.eu-central-1.compute.internal in Controller
16m         Normal    ControllerVersionNotice       node/ip-10-52-99-193.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
16m         Normal    NodeTrunkInitiated            node/ip-10-52-99-193.eu-central-1.compute.internal    The node has trunk interface initialized successfully
14m         Normal    DisruptionTerminating         node/ip-10-52-99-193.eu-central-1.compute.internal    Disrupting Node: Drifted
14m         Normal    DisruptionBlocked             node/ip-10-52-99-193.eu-central-1.compute.internal    Node is deleting or marked for deletion
14m         Warning   FailedDraining                node/ip-10-52-99-193.eu-central-1.compute.internal    Failed to drain node, 8 pods are waiting to be evicted
13m         Warning   InstanceTerminating           node/ip-10-52-99-193.eu-central-1.compute.internal    Instance is terminating
12m         Normal    NodeNotReady                  node/ip-10-52-99-193.eu-central-1.compute.internal    Node ip-10-52-99-193.eu-central-1.compute.internal status is now: NodeNotReady
12m         Normal    MemoryPressure                node/ip-10-52-99-193.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DiskPressure                  node/ip-10-52-99-193.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    PIDPressure                   node/ip-10-52-99-193.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    Ready                         node/ip-10-52-99-193.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    RemovingNode                  node/ip-10-52-99-193.eu-central-1.compute.internal    Node ip-10-52-99-193.eu-central-1.compute.internal event: Removing Node ip-10-52-99-193.eu-central-1.compute.internal from Controller
13m         Normal    Starting                      node/ip-10-52-99-40.eu-central-1.compute.internal     Starting kubelet.
13m         Warning   InvalidDiskCapacity           node/ip-10-52-99-40.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
13m         Normal    NodeHasSufficientMemory       node/ip-10-52-99-40.eu-central-1.compute.internal     Node ip-10-52-99-40.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
13m         Normal    NodeHasNoDiskPressure         node/ip-10-52-99-40.eu-central-1.compute.internal     Node ip-10-52-99-40.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
13m         Normal    NodeHasSufficientPID          node/ip-10-52-99-40.eu-central-1.compute.internal     Node ip-10-52-99-40.eu-central-1.compute.internal status is now: NodeHasSufficientPID
13m         Normal    NodeAllocatableEnforced       node/ip-10-52-99-40.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
13m         Normal    Synced                        node/ip-10-52-99-40.eu-central-1.compute.internal     Node synced successfully
13m         Normal    RegisteredNode                node/ip-10-52-99-40.eu-central-1.compute.internal     Node ip-10-52-99-40.eu-central-1.compute.internal event: Registered Node ip-10-52-99-40.eu-central-1.compute.internal in Controller
13m         Normal    DisruptionBlocked             node/ip-10-52-99-40.eu-central-1.compute.internal     Node isn't initialized
13m         Normal    Starting                      node/ip-10-52-99-40.eu-central-1.compute.internal     
13m         Normal    ControllerVersionNotice       node/ip-10-52-99-40.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
13m         Normal    NodeReady                     node/ip-10-52-99-40.eu-central-1.compute.internal     Node ip-10-52-99-40.eu-central-1.compute.internal status is now: NodeReady
13m         Normal    Ready                         node/ip-10-52-99-40.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
13m         Normal    NodeTrunkInitiated            node/ip-10-52-99-40.eu-central-1.compute.internal     The node has trunk interface initialized successfully
9m33s       Normal    DisruptionBlocked             node/ip-10-52-99-40.eu-central-1.compute.internal     Node is nominated for a pending pod
2m6s        Normal    DisruptionBlocked             node/ip-10-52-99-40.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
11m         Normal    Starting                      node/ip-10-52-99-5.eu-central-1.compute.internal      Starting kubelet.
11m         Warning   InvalidDiskCapacity           node/ip-10-52-99-5.eu-central-1.compute.internal      invalid capacity 0 on image filesystem
11m         Normal    NodeHasSufficientMemory       node/ip-10-52-99-5.eu-central-1.compute.internal      Node ip-10-52-99-5.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
11m         Normal    NodeHasNoDiskPressure         node/ip-10-52-99-5.eu-central-1.compute.internal      Node ip-10-52-99-5.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
11m         Normal    NodeHasSufficientPID          node/ip-10-52-99-5.eu-central-1.compute.internal      Node ip-10-52-99-5.eu-central-1.compute.internal status is now: NodeHasSufficientPID
11m         Normal    NodeAllocatableEnforced       node/ip-10-52-99-5.eu-central-1.compute.internal      Updated Node Allocatable limit across pods
10m         Normal    Synced                        node/ip-10-52-99-5.eu-central-1.compute.internal      Node synced successfully
10m         Normal    DisruptionBlocked             node/ip-10-52-99-5.eu-central-1.compute.internal      Node isn't initialized
10m         Normal    RegisteredNode                node/ip-10-52-99-5.eu-central-1.compute.internal      Node ip-10-52-99-5.eu-central-1.compute.internal event: Registered Node ip-10-52-99-5.eu-central-1.compute.internal in Controller
10m         Normal    Starting                      node/ip-10-52-99-5.eu-central-1.compute.internal      
10m         Normal    ControllerVersionNotice       node/ip-10-52-99-5.eu-central-1.compute.internal      The node is managed by VPC resource controller version v1.7.11
10m         Normal    NodeReady                     node/ip-10-52-99-5.eu-central-1.compute.internal      Node ip-10-52-99-5.eu-central-1.compute.internal status is now: NodeReady
10m         Normal    Ready                         node/ip-10-52-99-5.eu-central-1.compute.internal      Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
10m         Normal    NodeTrunkInitiated            node/ip-10-52-99-5.eu-central-1.compute.internal      The node has trunk interface initialized successfully
8m22s       Normal    DisruptionBlocked             node/ip-10-52-99-5.eu-central-1.compute.internal      Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310590-ccbtb)
3m27s       Normal    DisruptionBlocked             node/ip-10-52-99-5.eu-central-1.compute.internal      Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310595-m669v)
58m         Normal    Unconsolidatable              node/ip-10-52-99-81.eu-central-1.compute.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
47m         Normal    Starting                      node/ip-10-52-99-81.eu-central-1.compute.internal     
38m         Normal    DisruptionBlocked             node/ip-10-52-99-81.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=signup-service-processor/signup-service-processor-pdb)
23m         Normal    DisruptionTerminating         node/ip-10-52-99-81.eu-central-1.compute.internal     Disrupting Node: Underutilized
23m         Normal    DisruptionBlocked             node/ip-10-52-99-81.eu-central-1.compute.internal     Node is deleting or marked for deletion
23m         Warning   FailedDraining                node/ip-10-52-99-81.eu-central-1.compute.internal     Failed to drain node, 5 pods are waiting to be evicted
22m         Warning   InstanceTerminating           node/ip-10-52-99-81.eu-central-1.compute.internal     Instance is terminating
21m         Normal    NodeNotReady                  node/ip-10-52-99-81.eu-central-1.compute.internal     Node ip-10-52-99-81.eu-central-1.compute.internal status is now: NodeNotReady
21m         Normal    MemoryPressure                node/ip-10-52-99-81.eu-central-1.compute.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    DiskPressure                  node/ip-10-52-99-81.eu-central-1.compute.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    PIDPressure                   node/ip-10-52-99-81.eu-central-1.compute.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    Ready                         node/ip-10-52-99-81.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    RemovingNode                  node/ip-10-52-99-81.eu-central-1.compute.internal     Node ip-10-52-99-81.eu-central-1.compute.internal event: Removing Node ip-10-52-99-81.eu-central-1.compute.internal from Controller
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
ip-10-52-99-5.eu-central-1.compute.internal  update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310590-ccbtb  (pcp-backfill-service)
ip-10-52-99-5.eu-central-1.compute.internal  update-aedf68184e6a838d937aa101bc0a8d3187c574b8-29310595-m669v  (pcp-backfill-service)
```

Pods Tolerating karpenter.sh/disrupted
```
```

Static Pods
```
```

Cluster version up to date - no pluto apis detection rquired

Generated on: Tue Sep 23 15:58:35 CEST 2025
