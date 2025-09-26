# Cluster recon for tfh-crypto-dev-infra,eu-central-2,crypto-dev-eu-central-2

TFH EKS login...
```console
2025/09/17 13:54:31 INFO Logging into AWS
2025/09/17 13:54:31 INFO Token found and valid
2025/09/17 13:54:33 INFO Switch WARP Virtual Network to name=tunnel-vpc-crypto-dev-eu-central-2 id=7610318b-4bd6-4d0f-b393-94374362b672
2025/09/17 13:54:34 INFO Active WARP Virtual Network id=7610318b-4bd6-4d0f-b393-94374362b672
Updated context tfh-crypto-dev-eu-central-2 in /Users/lukasz.glowacki/.kube/config
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
        "name": "crypto-dev-eu-central-2",
        "arn": "arn:aws:eks:eu-central-2:348981876543:cluster/crypto-dev-eu-central-2",
        "createdAt": "2025-02-12T19:58:50.446000+01:00",
        "version": "1.33",
        "endpoint": "https://5FAEEEDFCE93C18B7DC53C03492BC2FC.gr7.eu-central-2.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::348981876543:role/eks-cluster-crypto-dev-eu-central-2",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0aeb25df144e5b58c",
                "subnet-0b6644ca3c5cda79a",
                "subnet-01496d819f622e6f2"
            ],
            "securityGroupIds": [
                "sg-048c19b4273179b40"
            ],
            "clusterSecurityGroupId": "sg-091c7b3c11886cf1d",
            "vpcId": "vpc-093b1910471ac933f",
            "endpointPublicAccess": false,
            "endpointPrivateAccess": true,
            "publicAccessCidrs": [
                "0.0.0.0/0"
            ]
        },
        "kubernetesNetworkConfig": {
            "serviceIpv4Cidr": "172.20.0.0/16",
            "ipFamily": "ipv4",
            "elasticLoadBalancing": {
                "enabled": false
            }
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
                "issuer": "https://oidc.eks.eu-central-2.amazonaws.com/id/5FAEEEDFCE93C18B7DC53C03492BC2FC"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJRmdYdnJUdFRNaTR3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBeU1USXhPRFU0TWpCYUZ3MHpOVEF5TVRBeE9UQXpNakJhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUNtYWFnUHZLZGZPTGlMMVdIOE5rOXV5YUdCdjVuaXVPRVVxWWI3enZ6NXJTb1YvRi94UEFKTGtINGcKQUJqSHFaYXhMa0Y0Y3BEMVIwWTZrSjNwWjA3dTlVMG9ETGRIanMxWjJWQjlCMjk3Q29GME5zNXdPMXR0Zk1TYQpQQUM1YzhsTlRRaWU2QWJVMEc1ZXoxcGJaN3ZZZVl4QWEyMmxyL1E4YU5odkQ1czUvQkR2czFPUE0yZHU1WDRtClRrMlJidTU1VmQyalBFSFVHTW1SdkIrSExWczFuOHM1bzhyaDcyTEQ2SHYvTW1kWlp4amZzTXc2Znh2KytSV08KQW84eFJYZXNQR2xUU0hsRjdEWk9FdEdTOE5iblFyamFYQWlQUzdUVVZtY2dQUEpTVHVYd3U5VXlJNnFSQXJmOQpzdDdBMkJGZzVYZzZzTVB6c05BMUJ5Vk9VaHdWQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJRRWdacHF0cjlSeTkvdnF3N3JYa2NDNkpjRWVUQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQ0NwdFNnb1BtUApRMmsxY2FYZE1rbVBoQ25BcnlkN1d0dHpMaVcrblF2T09mWU1mSjdUWWwrMU5lV0tQeU5tRUNMbFNvcUVqeXlPCnBEa3lXbGVWMUt6eEN0VHZqV3h2aHVBZlpJd1VFbitIeXVzc1RkOXpsVHJodmxvLzkwL2ZQanN5WC9nNVJwWCsKSFZoWFc0Vk5jbzhJWGJLdW5JZWlETFRWQmR1L3BOSTdCL2hicWZMdFFxN3dVUS90UEFPbHZnZmVza2pDbERPOApDS21DS1RqNVBteFE4dXA1dmtmTEp3d1Z3bTFjZGRWaU1FS0oreEhLd1ZHN2ZzSG5CdjBWeG1nVlFQZGpZT1UwCmVSVmRjdDhXQmprei9GbkkvMEdHb214TStiMmRHMU5wOUJvZlpvYzdyZGJFUXluQ1kvMUs0ajNXSExROC9id0wKb1JxNFlIR0dWeGlqCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.13",
        "tags": {
            "Environment": "dev",
            "karpenter.sh/discovery": "crypto-dev-eu-central-2",
            "Team": "crypto",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-central-2:348981876543:key/fade249b-2631-4b7b-9889-d3022ac2c1a4"
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
NAME                                             STATUS   ROLES    AGE     VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                   CONTAINER-RUNTIME
ip-10-84-178-141.eu-central-2.compute.internal   Ready    <none>   19h     v1.33.4-eks-99d6cc0   10.84.178.141   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-84-180-156.eu-central-2.compute.internal   Ready    <none>   19h     v1.33.4-eks-99d6cc0   10.84.180.156   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-84-180-236.eu-central-2.compute.internal   Ready    <none>   71m     v1.33.4-eks-99d6cc0   10.84.180.236   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-84-180-66.eu-central-2.compute.internal    Ready    <none>   70m     v1.33.4-eks-99d6cc0   10.84.180.66    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-84-181-132.eu-central-2.compute.internal   Ready    <none>   11h     v1.33.4-eks-99d6cc0   10.84.181.132   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-84-181-43.eu-central-2.compute.internal    Ready    <none>   4h32m   v1.33.4-eks-99d6cc0   10.84.181.43    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-84-181-61.eu-central-2.compute.internal    Ready    <none>   41m     v1.33.4-eks-99d6cc0   10.84.181.61    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                                                MESSAGE
40m         Normal    Finalized                 node                                                  Finalized karpenter.sh/termination
31s         Warning   Unsupported               node/ip-10-84-178-141.eu-central-2.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
41m         Warning   FailedDraining            node/ip-10-84-179-11.eu-central-2.compute.internal    Failed to drain node, 1 pods are waiting to be evicted
41m         Normal    DisruptionBlocked         node/ip-10-84-179-11.eu-central-2.compute.internal    Node is deleting or marked for deletion
41m         Warning   InstanceTerminating       node/ip-10-84-179-11.eu-central-2.compute.internal    Instance is terminating
40m         Normal    NodeNotReady              node/ip-10-84-179-11.eu-central-2.compute.internal    Node ip-10-84-179-11.eu-central-2.compute.internal status is now: NodeNotReady
40m         Normal    MemoryPressure            node/ip-10-84-179-11.eu-central-2.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
40m         Normal    DiskPressure              node/ip-10-84-179-11.eu-central-2.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
40m         Normal    PIDPressure               node/ip-10-84-179-11.eu-central-2.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
40m         Normal    Ready                     node/ip-10-84-179-11.eu-central-2.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
40m         Normal    DeletingNode              node/ip-10-84-179-11.eu-central-2.compute.internal    Deleting node ip-10-84-179-11.eu-central-2.compute.internal because it does not exist in the cloud provider
40m         Normal    RemovingNode              node/ip-10-84-179-11.eu-central-2.compute.internal    Node ip-10-84-179-11.eu-central-2.compute.internal event: Removing Node ip-10-84-179-11.eu-central-2.compute.internal from Controller
4m4s        Warning   Unsupported               node/ip-10-84-180-156.eu-central-2.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
53m         Normal    DisruptionBlocked         node/ip-10-84-180-236.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-op-node/world-chain-op-node-2)
57m         Normal    DisruptionBlocked         node/ip-10-84-180-236.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-tx-proxy/world-chain-tx-proxy-0)
51m         Normal    DisruptionBlocked         node/ip-10-84-180-236.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-builder/world-chain-builder-2)
50m         Normal    DisruptionBlocked         node/ip-10-84-180-236.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-tx-proxy/world-chain-tx-proxy-0)
98s         Normal    DisruptionBlocked         node/ip-10-84-180-236.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-builder/world-chain-builder-2)
19m         Normal    DisruptionBlocked         node/ip-10-84-180-236.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-tx-proxy/world-chain-tx-proxy-0)
5m39s       Normal    DisruptionBlocked         node/ip-10-84-180-236.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-op-node/world-chain-op-node-2)
52m         Normal    DisruptionBlocked         node/ip-10-84-180-66.eu-central-2.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-builder/world-chain-builder-1)
50m         Normal    DisruptionBlocked         node/ip-10-84-180-66.eu-central-2.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-builder/world-chain-builder-1)
98s         Normal    DisruptionBlocked         node/ip-10-84-180-66.eu-central-2.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-builder/world-chain-builder-1)
59m         Normal    DisruptionBlocked         node/ip-10-84-181-132.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-tx-proxy/world-chain-tx-proxy-2)
53m         Normal    DisruptionBlocked         node/ip-10-84-181-132.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-op-node/world-chain-op-node-0)
50m         Normal    DisruptionBlocked         node/ip-10-84-181-132.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-snapshotter-op-node/world-chain-snapshotter-op-node-0)
11m         Normal    DisruptionBlocked         node/ip-10-84-181-132.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-snapshotter-op-node/world-chain-snapshotter-op-node-0)
98s         Normal    DisruptionBlocked         node/ip-10-84-181-132.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-op-node/world-chain-op-node-0)
17m         Normal    DisruptionBlocked         node/ip-10-84-181-132.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-tx-proxy/world-chain-tx-proxy-2)
51m         Normal    DisruptionBlocked         node/ip-10-84-181-43.eu-central-2.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-tx-proxy/world-chain-tx-proxy-1)
50m         Normal    DisruptionBlocked         node/ip-10-84-181-43.eu-central-2.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-tx-proxy/world-chain-tx-proxy-1)
98s         Normal    DisruptionBlocked         node/ip-10-84-181-43.eu-central-2.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-tx-proxy/world-chain-tx-proxy-1)
5m39s       Normal    DisruptionBlocked         node/ip-10-84-181-43.eu-central-2.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-op-node/world-chain-op-node-1)
41m         Normal    Starting                  node/ip-10-84-181-61.eu-central-2.compute.internal    Starting kubelet.
41m         Warning   InvalidDiskCapacity       node/ip-10-84-181-61.eu-central-2.compute.internal    invalid capacity 0 on image filesystem
41m         Normal    NodeHasSufficientMemory   node/ip-10-84-181-61.eu-central-2.compute.internal    Node ip-10-84-181-61.eu-central-2.compute.internal status is now: NodeHasSufficientMemory
41m         Normal    NodeHasNoDiskPressure     node/ip-10-84-181-61.eu-central-2.compute.internal    Node ip-10-84-181-61.eu-central-2.compute.internal status is now: NodeHasNoDiskPressure
41m         Normal    NodeHasSufficientPID      node/ip-10-84-181-61.eu-central-2.compute.internal    Node ip-10-84-181-61.eu-central-2.compute.internal status is now: NodeHasSufficientPID
41m         Normal    NodeAllocatableEnforced   node/ip-10-84-181-61.eu-central-2.compute.internal    Updated Node Allocatable limit across pods
41m         Normal    Synced                    node/ip-10-84-181-61.eu-central-2.compute.internal    Node synced successfully
41m         Normal    DisruptionBlocked         node/ip-10-84-181-61.eu-central-2.compute.internal    Node isn't initialized
41m         Normal    RegisteredNode            node/ip-10-84-181-61.eu-central-2.compute.internal    Node ip-10-84-181-61.eu-central-2.compute.internal event: Registered Node ip-10-84-181-61.eu-central-2.compute.internal in Controller
41m         Normal    Starting                  node/ip-10-84-181-61.eu-central-2.compute.internal    
41m         Normal    ControllerVersionNotice   node/ip-10-84-181-61.eu-central-2.compute.internal    The node is managed by VPC resource controller version v1.7.11
41m         Normal    NodeReady                 node/ip-10-84-181-61.eu-central-2.compute.internal    Node ip-10-84-181-61.eu-central-2.compute.internal status is now: NodeReady
41m         Normal    Ready                     node/ip-10-84-181-61.eu-central-2.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
41m         Normal    NodeTrunkInitiated        node/ip-10-84-181-61.eu-central-2.compute.internal    The node has trunk interface initialized successfully
98s         Normal    DisruptionBlocked         node/ip-10-84-181-61.eu-central-2.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-builder/world-chain-builder-0)
52m         Normal    DisruptionBlocked         node/ip-10-84-181-90.eu-central-2.compute.internal    Node is deleting or marked for deletion
52m         Warning   FailedDraining            node/ip-10-84-181-90.eu-central-2.compute.internal    Failed to drain node, 2 pods are waiting to be evicted
50m         Warning   FailedDraining            node/ip-10-84-181-90.eu-central-2.compute.internal    Failed to drain node, 2 pods are waiting to be evicted
50m         Normal    DisruptionBlocked         node/ip-10-84-181-90.eu-central-2.compute.internal    Node is deleting or marked for deletion
43m         Warning   FailedDraining            node/ip-10-84-181-90.eu-central-2.compute.internal    Failed to drain node, 2 pods are waiting to be evicted
41m         Normal    DisruptionBlocked         node/ip-10-84-181-90.eu-central-2.compute.internal    Node is deleting or marked for deletion
41m         Warning   FailedDraining            node/ip-10-84-181-90.eu-central-2.compute.internal    Failed to drain node, 1 pods are waiting to be evicted
41m         Warning   InstanceTerminating       node/ip-10-84-181-90.eu-central-2.compute.internal    Instance is terminating
40m         Normal    RemovingNode              node/ip-10-84-181-90.eu-central-2.compute.internal    Node ip-10-84-181-90.eu-central-2.compute.internal event: Removing Node ip-10-84-181-90.eu-central-2.compute.internal from Controller
```

Pods with issues
```
cloudflared-tunnel                cloudflared-tunnel-746c5477d5-9tg6w                               0/1     CreateContainerConfigError   0                73m
cloudflared-tunnel                cloudflared-tunnel-746c5477d5-ppn8q                               0/1     CreateContainerConfigError   0                11h
world-chain-snapshotter-op-node   world-chain-snapshotter-op-node-0                                 0/1     CrashLoopBackOff             75 (64s ago)     4h32m
world-chain-snapshotter           world-chain-snapshotter-0                                         0/1     CrashLoopBackOff             56 (3m56s ago)   4h32m
```

PodDisruptionBudgets
```
NAMESPACE                         NAME                                  MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                cluster-monitoring-pdb                N/A             1                 1                     212d
karpenter                         karpenter                             N/A             1                 1                     212d
kube-system                       coredns                               N/A             1                 1                     216d
kube-system                       ebs-csi-controller                    N/A             1                 1                     216d
kyverno                           kyverno-admission-controller          1               N/A               2                     214d
world-chain-builder               world-chain-builder-pdb               50%             N/A               1                     91d
world-chain-op-node               world-chain-op-node-pdb               50%             N/A               1                     140d
world-chain-snapshotter-op-node   world-chain-snapshotter-op-node-pdb   50%             N/A               0                     145d
world-chain-snapshotter           world-chain-snapshotter-pdb           50%             N/A               0                     116d
world-chain-tx-proxy              world-chain-tx-proxy-pdb              50%             N/A               1                     136d
```

Cluster version up to date - no pluto apis detection rquired
