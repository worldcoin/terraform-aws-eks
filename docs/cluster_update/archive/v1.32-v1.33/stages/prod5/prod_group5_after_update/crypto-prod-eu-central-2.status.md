# Cluster recon for tfh-crypto-prod-infra,eu-central-2,crypto-prod-eu-central-2,tunnel-vpc-crypto-prod-eu-central-2

TFH EKS login...
```console
2025/09/25 13:27:09 INFO Logging into AWS
2025/09/25 13:27:09 INFO Token found and valid
2025/09/25 13:27:11 INFO Switch WARP Virtual Network to name=tunnel-vpc-crypto-prod-eu-central-2 id=41228611-1731-4be2-921c-1ce5afaa369f
2025/09/25 13:27:13 INFO Active WARP Virtual Network id=41228611-1731-4be2-921c-1ce5afaa369f
Updated context tfh-crypto-prod-eu-central-2 in /Users/lukasz.glowacki/.kube/config
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
        "name": "crypto-prod-eu-central-2",
        "arn": "arn:aws:eks:eu-central-2:866736719513:cluster/crypto-prod-eu-central-2",
        "createdAt": "2025-02-13T10:21:57.510000+01:00",
        "version": "1.33",
        "endpoint": "https://7B5D7E686284E8967FA038AC2486050F.gr7.eu-central-2.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::866736719513:role/eks-cluster-crypto-prod-eu-central-2",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-063c529ca98ecea11",
                "subnet-0c4a2add2e60556ba",
                "subnet-0d23f094de145ef3d"
            ],
            "securityGroupIds": [
                "sg-0a2881f1c3149f901"
            ],
            "clusterSecurityGroupId": "sg-0d406ffa3bd28dd09",
            "vpcId": "vpc-0bfe624051e7428c4",
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
                "issuer": "https://oidc.eks.eu-central-2.amazonaws.com/id/7B5D7E686284E8967FA038AC2486050F"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJZUxOdFQ4anlBb2t3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBeU1UTXdPVEl4TWpaYUZ3MHpOVEF5TVRFd09USTJNalphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURGT0xZV0FTeFkyemVoSTdvbFIxS0l4V2psdjN3NnJ5aytTQnlIa1lTcDZEQjd3UUxyT3k0alFoQ0UKWnErVlhnSWdEQlNMSmVGR3ZIUUtxbWNZSHYwakpJZmZGWXY5U1VOZk4yV1E1VFB1a2lPSmh4ZkRGbXJmUnFxUgpDdHJhV1lQTjdSL2wrL0IzRjRlaldDUzVzc2VGVzF2cUhEZGVER2R5TWRLQnI2ZkJaMGhTaTJUZlRRbDg0WWtNCllMYndkWmZuSXQ1VUhMZFVWK0xXdGJCeStHd1h0aFN1RDFDRnBBcFZpUElRcVArUnNtWlJKRjVBUU9EclJhUlcKVUtNTk53RDREdEMxTzVNRDdPMyt5SyttNzl5NzdrNDN6a1FlVUJmMUI0UElqeTRSenJzdzQwUDVtMEs1WkJaLwpsRlkxQkx4WUU2Tm1uVStwRlpOSUVvUHYxL2wvQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJTWExMUjRSL3p5L2JxVzk4Z1ZJc05Wd0dnR256QVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQXl5NlZFM3l0OQpLY2VXNVdBa2J3NDJrU1MwSkg1VCtCeUtTSmdRZzZRNjhYNS9XQ3hodUkyS0hlVVFwUkc0STNISThBOHFaWXVpCjRET0dFTFJ5Y21RdEYyUUtBNTcxdW1VaFlMbmZoUTlCUVdIUW1pbmhMQXlwNElVYnBtUmFiMWZWTjJhdHJvOXIKRTI0NFgxbjFTeThSVGZ2VEIvWUxnUjJiQnNqRGZ6c0FGNFJJN0ZaMFpKNlZqdzI3dThjRDdTV2NONkQyOGs5VQpDVVQ0Y21BZHo5NFN1RXEzbUdKUVhNTHh6b0hGUFN4WVBIWG96L25Ib1VGVzc5RjNJWnNBZUE0cGkwb2NuNm9uCnpUZ3VVb2lpRE1WRlpTUURjeHVCK2xDNEEyU1JJcGRBaVd0NTA3U3VHTmhPd01kYzZueVJaSmdhallLNTBheWwKREpaZDFGNENSWmJtCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "crypto-prod-eu-central-2",
            "Team": "crypto",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-central-2:866736719513:key/95ff509f-0a2b-45f8-8a32-e6fe55376637"
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
NAME                                             STATUS                     ROLES    AGE    VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-84-194-33.eu-central-2.compute.internal    Ready                      <none>   166m   v1.33.4-eks-99d6cc0   10.84.194.33    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-crypto-prod-eu-central-2
ip-10-84-196-101.eu-central-2.compute.internal   Ready,SchedulingDisabled   <none>   13d    v1.32.8-eks-99d6cc0   10.84.196.101   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27   
ip-10-84-196-121.eu-central-2.compute.internal   Ready,SchedulingDisabled   <none>   13d    v1.32.8-eks-99d6cc0   10.84.196.121   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27   
ip-10-84-196-167.eu-central-2.compute.internal   Ready,SchedulingDisabled   <none>   99d    v1.32.3-eks-473151a   10.84.196.167   <none>        Amazon Linux 2                 5.10.237-230.949.amzn2.x86_64     containerd://1.7.27   
ip-10-84-196-190.eu-central-2.compute.internal   Ready,SchedulingDisabled   <none>   105d   v1.32.3-eks-473151a   10.84.196.190   <none>        Amazon Linux 2                 5.10.236-228.935.amzn2.x86_64     containerd://1.7.27   
ip-10-84-196-197.eu-central-2.compute.internal   Ready                      <none>   165m   v1.33.4-eks-99d6cc0   10.84.196.197   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-crypto-prod-eu-central-2
ip-10-84-196-239.eu-central-2.compute.internal   Ready,SchedulingDisabled   <none>   99d    v1.32.3-eks-473151a   10.84.196.239   <none>        Amazon Linux 2                 5.10.237-230.949.amzn2.x86_64     containerd://1.7.27   
ip-10-84-196-32.eu-central-2.compute.internal    Ready,SchedulingDisabled   <none>   2d2h   v1.32.8-eks-99d6cc0   10.84.196.32    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-84-196-37.eu-central-2.compute.internal    Ready                      <none>   120m   v1.33.4-eks-99d6cc0   10.84.196.37    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-84-196-53.eu-central-2.compute.internal    Ready,SchedulingDisabled   <none>   50d    v1.32.3-eks-473151a   10.84.196.53    <none>        Amazon Linux 2                 5.10.239-236.958.amzn2.x86_64     containerd://1.7.27   
ip-10-84-196-84.eu-central-2.compute.internal    Ready,SchedulingDisabled   <none>   13d    v1.32.8-eks-99d6cc0   10.84.196.84    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27   
ip-10-84-197-0.eu-central-2.compute.internal     Ready,SchedulingDisabled   <none>   50d    v1.32.3-eks-473151a   10.84.197.0     <none>        Amazon Linux 2                 5.10.239-236.958.amzn2.x86_64     containerd://1.7.27   
ip-10-84-197-147.eu-central-2.compute.internal   Ready,SchedulingDisabled   <none>   33h    v1.32.8-eks-99d6cc0   10.84.197.147   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-84-197-149.eu-central-2.compute.internal   Ready                      <none>   55m    v1.33.4-eks-99d6cc0   10.84.197.149   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-84-197-156.eu-central-2.compute.internal   Ready,SchedulingDisabled   <none>   50d    v1.32.3-eks-473151a   10.84.197.156   <none>        Amazon Linux 2                 5.10.239-236.958.amzn2.x86_64     containerd://1.7.27   
ip-10-84-197-192.eu-central-2.compute.internal   Ready,SchedulingDisabled   <none>   105d   v1.32.3-eks-473151a   10.84.197.192   <none>        Amazon Linux 2                 5.10.236-228.935.amzn2.x86_64     containerd://1.7.27   
ip-10-84-197-240.eu-central-2.compute.internal   Ready,SchedulingDisabled   <none>   99d    v1.32.3-eks-473151a   10.84.197.240   <none>        Amazon Linux 2                 5.10.237-230.949.amzn2.x86_64     containerd://1.7.27   
```

Nodes and their taints
```
NAME                                             STATUS   ROLES    TAINTS
ip-10-84-194-33.eu-central-2.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-84-196-101.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted] map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T09:01:02Z]]
ip-10-84-196-121.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted] map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T09:01:04Z]]
ip-10-84-196-167.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted] map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T09:01:06Z]]
ip-10-84-196-190.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted] map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T09:01:07Z]]
ip-10-84-196-197.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-84-196-239.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted] map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T09:01:10Z]]
ip-10-84-196-32.eu-central-2.compute.internal    Ready    <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T09:01:25Z]]
ip-10-84-196-37.eu-central-2.compute.internal    Ready    <none>   <none>
ip-10-84-196-53.eu-central-2.compute.internal    Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted] map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T09:00:58Z]]
ip-10-84-196-84.eu-central-2.compute.internal    Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted] map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T09:01:00Z]]
ip-10-84-197-0.eu-central-2.compute.internal     Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted] map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T09:01:11Z]]
ip-10-84-197-147.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T09:01:13Z]]
ip-10-84-197-149.eu-central-2.compute.internal   Ready    <none>   <none>
ip-10-84-197-156.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted] map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T09:01:14Z]]
ip-10-84-197-192.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted] map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T09:01:16Z]]
ip-10-84-197-240.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted] map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T09:01:20Z]]
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                                                MESSAGE
38m         Normal    Finalized                 node                                                  Finalized karpenter.sh/termination
92s         Warning   Unsupported               node/ip-10-84-194-33.eu-central-2.compute.internal    The instance type t3.large is not supported for trunk interface (Security Group for Pods)
3m20s       Warning   FailedDraining            node/ip-10-84-196-101.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
2m55s       Normal    DisruptionBlocked         node/ip-10-84-196-101.eu-central-2.compute.internal   Node is deleting or marked for deletion
3m19s       Warning   FailedDraining            node/ip-10-84-196-121.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
2m55s       Normal    DisruptionBlocked         node/ip-10-84-196-121.eu-central-2.compute.internal   Node is deleting or marked for deletion
3m19s       Warning   FailedDraining            node/ip-10-84-196-167.eu-central-2.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
2m55s       Normal    DisruptionBlocked         node/ip-10-84-196-167.eu-central-2.compute.internal   Node is deleting or marked for deletion
3m18s       Warning   FailedDraining            node/ip-10-84-196-190.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
2m55s       Normal    DisruptionBlocked         node/ip-10-84-196-190.eu-central-2.compute.internal   Node is deleting or marked for deletion
98s         Warning   Unsupported               node/ip-10-84-196-197.eu-central-2.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
3m19s       Warning   FailedDraining            node/ip-10-84-196-239.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
2m55s       Normal    DisruptionBlocked         node/ip-10-84-196-239.eu-central-2.compute.internal   Node is deleting or marked for deletion
27m         Warning   OOMKilling                node/ip-10-84-196-32.eu-central-2.compute.internal    Memory cgroup out of memory: Killed process 10632 (prometheus) total-vm:6049544kB, anon-rss:2084792kB, file-rss:65240kB, shmem-rss:0kB, UID:65534 pgtables:4700kB oom_score_adj:935
27m         Warning   OOMKilling                node/ip-10-84-196-32.eu-central-2.compute.internal    Memory cgroup out of memory: Killed process 10670 (prometheus) total-vm:6049544kB, anon-rss:2085672kB, file-rss:65492kB, shmem-rss:0kB, UID:65534 pgtables:4700kB oom_score_adj:935
26m         Warning   OOMKilling                node/ip-10-84-196-32.eu-central-2.compute.internal    Memory cgroup out of memory: Killed process 1142650 (prometheus) total-vm:6073748kB, anon-rss:2089904kB, file-rss:64056kB, shmem-rss:0kB, UID:65534 pgtables:4900kB oom_score_adj:935
26m         Warning   OOMKilling                node/ip-10-84-196-32.eu-central-2.compute.internal    Memory cgroup out of memory: Killed process 1142668 (prometheus) total-vm:6073748kB, anon-rss:2090848kB, file-rss:64756kB, shmem-rss:0kB, UID:65534 pgtables:4900kB oom_score_adj:935
25m         Warning   OOMKilling                node/ip-10-84-196-32.eu-central-2.compute.internal    Memory cgroup out of memory: Killed process 1144970 (prometheus) total-vm:6075732kB, anon-rss:2089884kB, file-rss:64864kB, shmem-rss:0kB, UID:65534 pgtables:4940kB oom_score_adj:935
25m         Warning   OOMKilling                node/ip-10-84-196-32.eu-central-2.compute.internal    Memory cgroup out of memory: Killed process 1144999 (prometheus) total-vm:6075732kB, anon-rss:2091056kB, file-rss:65112kB, shmem-rss:0kB, UID:65534 pgtables:4940kB oom_score_adj:935
24m         Warning   OOMKilling                node/ip-10-84-196-32.eu-central-2.compute.internal    Memory cgroup out of memory: Killed process 1146988 (prometheus) total-vm:6192476kB, anon-rss:2089932kB, file-rss:62960kB, shmem-rss:0kB, UID:65534 pgtables:4784kB oom_score_adj:935
24m         Warning   OOMKilling                node/ip-10-84-196-32.eu-central-2.compute.internal    Memory cgroup out of memory: Killed process 1147024 (prometheus) total-vm:6192476kB, anon-rss:2090868kB, file-rss:64860kB, shmem-rss:0kB, UID:65534 pgtables:4784kB oom_score_adj:935
2m45s       Normal    DisruptionBlocked         node/ip-10-84-196-37.eu-central-2.compute.internal    Node is nominated for a pending pod
3m19s       Warning   FailedDraining            node/ip-10-84-196-53.eu-central-2.compute.internal    Failed to drain node, 2 pods are waiting to be evicted
2m55s       Normal    DisruptionBlocked         node/ip-10-84-196-53.eu-central-2.compute.internal    Node is deleting or marked for deletion
3m19s       Warning   FailedDraining            node/ip-10-84-196-84.eu-central-2.compute.internal    Failed to drain node, 2 pods are waiting to be evicted
2m55s       Normal    DisruptionBlocked         node/ip-10-84-196-84.eu-central-2.compute.internal    Node is deleting or marked for deletion
3m19s       Warning   FailedDraining            node/ip-10-84-197-0.eu-central-2.compute.internal     Failed to drain node, 2 pods are waiting to be evicted
2m55s       Normal    DisruptionBlocked         node/ip-10-84-197-0.eu-central-2.compute.internal     Node is deleting or marked for deletion
55m         Normal    Starting                  node/ip-10-84-197-149.eu-central-2.compute.internal   Starting kubelet.
55m         Warning   InvalidDiskCapacity       node/ip-10-84-197-149.eu-central-2.compute.internal   invalid capacity 0 on image filesystem
55m         Normal    NodeHasSufficientMemory   node/ip-10-84-197-149.eu-central-2.compute.internal   Node ip-10-84-197-149.eu-central-2.compute.internal status is now: NodeHasSufficientMemory
55m         Normal    NodeHasNoDiskPressure     node/ip-10-84-197-149.eu-central-2.compute.internal   Node ip-10-84-197-149.eu-central-2.compute.internal status is now: NodeHasNoDiskPressure
55m         Normal    NodeHasSufficientPID      node/ip-10-84-197-149.eu-central-2.compute.internal   Node ip-10-84-197-149.eu-central-2.compute.internal status is now: NodeHasSufficientPID
55m         Normal    NodeAllocatableEnforced   node/ip-10-84-197-149.eu-central-2.compute.internal   Updated Node Allocatable limit across pods
55m         Normal    Synced                    node/ip-10-84-197-149.eu-central-2.compute.internal   Node synced successfully
55m         Normal    RegisteredNode            node/ip-10-84-197-149.eu-central-2.compute.internal   Node ip-10-84-197-149.eu-central-2.compute.internal event: Registered Node ip-10-84-197-149.eu-central-2.compute.internal in Controller
55m         Normal    DisruptionBlocked         node/ip-10-84-197-149.eu-central-2.compute.internal   Node isn't initialized
55m         Normal    Starting                  node/ip-10-84-197-149.eu-central-2.compute.internal   
55m         Normal    ControllerVersionNotice   node/ip-10-84-197-149.eu-central-2.compute.internal   The node is managed by VPC resource controller version v1.7.11
55m         Normal    NodeReady                 node/ip-10-84-197-149.eu-central-2.compute.internal   Node ip-10-84-197-149.eu-central-2.compute.internal status is now: NodeReady
55m         Normal    Ready                     node/ip-10-84-197-149.eu-central-2.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
55m         Normal    NodeTrunkInitiated        node/ip-10-84-197-149.eu-central-2.compute.internal   The node has trunk interface initialized successfully
64s         Normal    DisruptionBlocked         node/ip-10-84-197-149.eu-central-2.compute.internal   Node is nominated for a pending pod
3m18s       Warning   FailedDraining            node/ip-10-84-197-156.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
2m55s       Normal    DisruptionBlocked         node/ip-10-84-197-156.eu-central-2.compute.internal   Node is deleting or marked for deletion
55m         Normal    DisruptionBlocked         node/ip-10-84-197-180.eu-central-2.compute.internal   Node is nominated for a pending pod
40m         Normal    DisruptionTerminating     node/ip-10-84-197-180.eu-central-2.compute.internal   Disrupting Node: Underutilized
40m         Normal    DisruptionBlocked         node/ip-10-84-197-180.eu-central-2.compute.internal   Node is deleting or marked for deletion
40m         Warning   FailedDraining            node/ip-10-84-197-180.eu-central-2.compute.internal   Failed to drain node, 6 pods are waiting to be evicted
39m         Warning   InstanceTerminating       node/ip-10-84-197-180.eu-central-2.compute.internal   Instance is terminating
39m         Normal    MemoryPressure            node/ip-10-84-197-180.eu-central-2.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
39m         Normal    DiskPressure              node/ip-10-84-197-180.eu-central-2.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
39m         Normal    PIDPressure               node/ip-10-84-197-180.eu-central-2.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
39m         Normal    Ready                     node/ip-10-84-197-180.eu-central-2.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
39m         Normal    NodeNotReady              node/ip-10-84-197-180.eu-central-2.compute.internal   Node ip-10-84-197-180.eu-central-2.compute.internal status is now: NodeNotReady
38m         Normal    DeletingNode              node/ip-10-84-197-180.eu-central-2.compute.internal   Deleting node ip-10-84-197-180.eu-central-2.compute.internal because it does not exist in the cloud provider
38m         Normal    RemovingNode              node/ip-10-84-197-180.eu-central-2.compute.internal   Node ip-10-84-197-180.eu-central-2.compute.internal event: Removing Node ip-10-84-197-180.eu-central-2.compute.internal from Controller
25m         Warning   FailedDraining            node/ip-10-84-197-192.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
2m55s       Normal    DisruptionBlocked         node/ip-10-84-197-192.eu-central-2.compute.internal   Node is deleting or marked for deletion
3m24s       Warning   FailedDraining            node/ip-10-84-197-192.eu-central-2.compute.internal   Failed to drain node, evicting pod violates a PDB (Pod=world-chain-snapshotter/world-chain-snapshotter-0)
3m18s       Warning   FailedDraining            node/ip-10-84-197-240.eu-central-2.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
2m55s       Normal    DisruptionBlocked         node/ip-10-84-197-240.eu-central-2.compute.internal   Node is deleting or marked for deletion
```

Pods with issues
```
cloudflared-tunnel                cloudflared-tunnel-66bccf69db-qmrbr                               0/1     CreateContainerConfigError   0                44h
cloudflared-tunnel                cloudflared-tunnel-746c5477d5-fckc6                               0/1     CreateContainerConfigError   0                40m
cloudflared-tunnel                cloudflared-tunnel-746c5477d5-pzljk                               0/1     CreateContainerConfigError   0                33h
```

PodDisruptionBudgets
```
NAMESPACE                         NAME                                  MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                cluster-monitoring-pdb                N/A             1                 1                     220d
karpenter                         karpenter                             N/A             1                 1                     220d
kube-system                       coredns                               N/A             1                 1                     224d
kube-system                       ebs-csi-controller                    N/A             1                 1                     224d
kyverno                           kyverno-admission-controller          1               N/A               2                     220d
world-chain-builder               world-chain-builder-pdb               50%             N/A               1                     99d
world-chain-op-node               world-chain-op-node-pdb               50%             N/A               1                     149d
world-chain-snapshotter-op-node   world-chain-snapshotter-op-node-pdb   50%             N/A               0                     149d
world-chain-snapshotter           world-chain-snapshotter-pdb           50%             N/A               0                     149d
world-chain-tx-proxy              world-chain-tx-proxy-pdb              50%             N/A               1                     134d
```

Pods with Karpenter.sh/Do-Not-Disrupt Annotation
```
ip-10-84-196-101.eu-central-2.compute.internal  world-chain-tx-proxy-0             (world-chain-tx-proxy)
ip-10-84-196-121.eu-central-2.compute.internal  world-chain-tx-proxy-1             (world-chain-tx-proxy)
ip-10-84-196-167.eu-central-2.compute.internal  world-chain-op-node-0              (world-chain-op-node)
ip-10-84-196-190.eu-central-2.compute.internal  world-chain-snapshotter-op-node-0  (world-chain-snapshotter-op-node)
ip-10-84-196-239.eu-central-2.compute.internal  world-chain-op-node-1              (world-chain-op-node)
ip-10-84-196-53.eu-central-2.compute.internal   world-chain-builder-2              (world-chain-builder)
ip-10-84-196-84.eu-central-2.compute.internal   world-chain-tx-proxy-2             (world-chain-tx-proxy)
ip-10-84-197-0.eu-central-2.compute.internal    world-chain-builder-1              (world-chain-builder)
ip-10-84-197-156.eu-central-2.compute.internal  world-chain-builder-0              (world-chain-builder)
ip-10-84-197-240.eu-central-2.compute.internal  world-chain-op-node-2              (world-chain-op-node)
```

Pods Tolerating karpenter.sh/disrupted
```
```

Static Pods
```
```

Cluster version up to date - no pluto apis detection rquired

Generated on: Thu Sep 25 13:27:29 CEST 2025
