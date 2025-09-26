# Cluster recon for tfh-internal-tools-infra,eu-central-1,terraform-enterprise-eu-central-1,tunnel-vpc-terraform-enterprise-eu-central-1

TFH EKS login...
```console
2025/09/22 11:45:17 INFO Logging into AWS
2025/09/22 11:45:17 INFO Token found and valid
2025/09/22 11:45:19 INFO Switch WARP Virtual Network to name=tunnel-vpc-terraform-enterprise-eu-central-1 id=fcbd426e-6a45-40db-8217-d912467742e4
2025/09/22 11:45:20 INFO Active WARP Virtual Network id=fcbd426e-6a45-40db-8217-d912467742e4
Updated context tfh-terraform-enterprise-eu-central-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "terraform-enterprise-eu-central-1",
        "arn": "arn:aws:eks:eu-central-1:507152310572:cluster/terraform-enterprise-eu-central-1",
        "createdAt": "2024-05-08T13:27:38.390000+02:00",
        "version": "1.33",
        "endpoint": "https://EC133FAD8614E7648912C6F02BAE9443.gr7.eu-central-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::507152310572:role/eks-cluster-terraform-enterprise-eu-central-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-09d492121ba9f8cad",
                "subnet-0078b4e1e01f72cca",
                "subnet-0e6efaadfe94dcd4a"
            ],
            "securityGroupIds": [
                "sg-0aa15518a1ad976fc"
            ],
            "clusterSecurityGroupId": "sg-01e44e8a70318696d",
            "vpcId": "vpc-0e724f6f5da58eb9b",
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
                "issuer": "https://oidc.eks.eu-central-1.amazonaws.com/id/EC133FAD8614E7648912C6F02BAE9443"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJQ2ZoVk1TOXovczB3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TkRBMU1EZ3hNVEkzTWpCYUZ3MHpOREExTURZeE1UTXlNakJhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUM2RUZFTU1xSnFrSHRETUFqR3YwL21hRWhCb2lWZGs5SGc4NDFXUk1xUTFwdVcwVlpMMFZKNkorcmsKc21wYXVPelM0b29veG9uZXhiSitldmllN0VJSnB2clZGRDErK0hwLzBYME14ZFZWOHlDa1RZeSsrdThwYnhiNwp2eUh3cWxzaXNCQU5GT1FlTEgvNDB2UUFQT1gwcHNFL1doZmxmU3Z4eGd5QlhFRlJhMjNuRDNEMGN0d3N4NEhPCng3TGhlZkhiNGpaNUh2bEExWHFRd2o2YWNoQkFRS1ZJajhOY2g4S0xvRG5iSkQvV0w4dFUrMy95NEV1MFozRUwKdkE5N2hFMFdGNmh1ZVBETnFuc25IOTJjU2wvZjdKTjVQbThaSG1jZ1hTYVYwZDNvOTM5c0d2ZnNnYVptbEN0bQozbzNIUE56SzV3aEtFWmVRYUI5YTYxQ0l3bXdQQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUNXBBT3NvckpRZm0reE1hVlFxTE5hVFlncDR6QVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQnhpUktCaGJDRApLUGZtdittbWpFbjlhMGlVSjFsS2RwVlBxendDSHdtNjE1YWpCdW1oOTFzTHY1d3JhVENIVDh1dW5oc2ljUlRsCjk0MDUzQ0FCMXpCeDN5Q2ZlUGRTT3V1TWZkM1RoWmIvVjRoeE9DdlRRemJhYU9nTUM0Z2Q1NVFhUk05bFFoR24KaytaS2xvWlFtN0ZVZ1VmVTFuTnV1VlNtUi9OUmVycFVPSk1tL1dhYkdlNXV1Z2RCQzFVVHhZSFdEUUpZOVRCUAp6ampxbExPL0lLMlZFcVF1Qi9FUTNsSG04VWM2RFZPWTUzVVloMXFaWEcxbG40U1Myd0NQblpuNG02T21JWWpJCkY2TWdRa2dRVkdVZXJIbDJKUVI4bndJK09rc21TODRYYmdmbHVWQ0NyV21Kai8wM0I2eGpGNFN6d0p6bTl5TmsKeEIxN09qOXlRT1JBCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "terraform-enterprise-eu-central-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-central-1:507152310572:key/7651912b-5e19-42df-8b76-af8ce753addf"
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
ip-10-52-160-242.eu-central-1.compute.internal   Ready    <none>   27m     v1.33.4-eks-99d6cc0   10.52.160.242   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-terraform-enterprise-eu-central-1
ip-10-52-162-110.eu-central-1.compute.internal   Ready    <none>   5d19h   v1.32.8-eks-99d6cc0   10.52.162.110   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27   
ip-10-52-162-15.eu-central-1.compute.internal    Ready    <none>   61m     v1.32.8-eks-99d6cc0   10.52.162.15    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-52-162-183.eu-central-1.compute.internal   Ready    <none>   2d19h   v1.32.8-eks-99d6cc0   10.52.162.183   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-52-162-231.eu-central-1.compute.internal   Ready    <none>   2d22h   v1.32.8-eks-99d6cc0   10.52.162.231   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-52-162-38.eu-central-1.compute.internal    Ready    <none>   28m     v1.33.4-eks-99d6cc0   10.52.162.38    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-terraform-enterprise-eu-central-1
ip-10-52-162-65.eu-central-1.compute.internal    Ready    <none>   56m     v1.32.8-eks-99d6cc0   10.52.162.65    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-52-163-151.eu-central-1.compute.internal   Ready    <none>   31m     v1.32.8-eks-99d6cc0   10.52.163.151   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-52-165-195.eu-central-1.compute.internal   Ready    <none>   5d19h   v1.32.8-eks-99d6cc0   10.52.165.195   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                             STATUS   ROLES    TAINTS
ip-10-52-160-242.eu-central-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-52-162-110.eu-central-1.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-52-162-15.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-52-162-183.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-52-162-231.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-52-162-38.eu-central-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-52-162-65.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-52-163-151.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-52-165-195.eu-central-1.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                                                MESSAGE
53m         Normal    Finalized                     node                                                  Finalized karpenter.sh/termination
27m         Normal    Starting                      node/ip-10-52-160-242.eu-central-1.compute.internal   Starting kubelet.
27m         Warning   InvalidDiskCapacity           node/ip-10-52-160-242.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory       node/ip-10-52-160-242.eu-central-1.compute.internal   Node ip-10-52-160-242.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure         node/ip-10-52-160-242.eu-central-1.compute.internal   Node ip-10-52-160-242.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID          node/ip-10-52-160-242.eu-central-1.compute.internal   Node ip-10-52-160-242.eu-central-1.compute.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced       node/ip-10-52-160-242.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
27m         Normal    Synced                        node/ip-10-52-160-242.eu-central-1.compute.internal   Node synced successfully
27m         Normal    RegisteredNode                node/ip-10-52-160-242.eu-central-1.compute.internal   Node ip-10-52-160-242.eu-central-1.compute.internal event: Registered Node ip-10-52-160-242.eu-central-1.compute.internal in Controller
27m         Normal    Starting                      node/ip-10-52-160-242.eu-central-1.compute.internal   
27m         Normal    ControllerVersionNotice       node/ip-10-52-160-242.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
27m         Warning   Unsupported                   node/ip-10-52-160-242.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
27m         Normal    NodeReady                     node/ip-10-52-160-242.eu-central-1.compute.internal   Node ip-10-52-160-242.eu-central-1.compute.internal status is now: NodeReady
27m         Normal    Ready                         node/ip-10-52-160-242.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26m         Normal    RegisteredNode                node/ip-10-52-160-242.eu-central-1.compute.internal   Node ip-10-52-160-242.eu-central-1.compute.internal event: Registered Node ip-10-52-160-242.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-52-160-242.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Warning   Unsupported                   node/ip-10-52-160-242.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    ControllerVersionNotice       node/ip-10-52-160-242.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
2m17s       Warning   Unsupported                   node/ip-10-52-160-242.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
31m         Warning   Unsupported                   node/ip-10-52-160-247.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    RegisteredNode                node/ip-10-52-160-247.eu-central-1.compute.internal   Node ip-10-52-160-247.eu-central-1.compute.internal event: Registered Node ip-10-52-160-247.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-52-160-247.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
23m         Warning   Unsupported                   node/ip-10-52-160-247.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    NodeNotSchedulable            node/ip-10-52-160-247.eu-central-1.compute.internal   Node ip-10-52-160-247.eu-central-1.compute.internal status is now: NodeNotSchedulable
23m         Normal    NodeNotReady                  node/ip-10-52-160-247.eu-central-1.compute.internal   Node ip-10-52-160-247.eu-central-1.compute.internal status is now: NodeNotReady
23m         Normal    MemoryPressure                node/ip-10-52-160-247.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    DiskPressure                  node/ip-10-52-160-247.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    PIDPressure                   node/ip-10-52-160-247.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
23m         Normal    Ready                         node/ip-10-52-160-247.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DeletingNode                  node/ip-10-52-160-247.eu-central-1.compute.internal   Deleting node ip-10-52-160-247.eu-central-1.compute.internal because it does not exist in the cloud provider
22m         Normal    RemovingNode                  node/ip-10-52-160-247.eu-central-1.compute.internal   Node ip-10-52-160-247.eu-central-1.compute.internal event: Removing Node ip-10-52-160-247.eu-central-1.compute.internal from Controller
31m         Normal    DisruptionBlocked             node/ip-10-52-162-110.eu-central-1.compute.internal   Node is deleting or marked for deletion
30m         Warning   FailedDraining                node/ip-10-52-162-110.eu-central-1.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
26m         Normal    RegisteredNode                node/ip-10-52-162-110.eu-central-1.compute.internal   Node ip-10-52-162-110.eu-central-1.compute.internal event: Registered Node ip-10-52-162-110.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-52-162-110.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated            node/ip-10-52-162-110.eu-central-1.compute.internal   The node has trunk interface initialized successfully
23m         Warning   FailedDraining                node/ip-10-52-162-110.eu-central-1.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
23m         Normal    DisruptionBlocked             node/ip-10-52-162-110.eu-central-1.compute.internal   Node is deleting or marked for deletion
45s         Warning   FailedDraining                node/ip-10-52-162-110.eu-central-1.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
37s         Normal    DisruptionBlocked             node/ip-10-52-162-110.eu-central-1.compute.internal   Node is deleting or marked for deletion
21m         Normal    ControllerVersionNotice       node/ip-10-52-162-110.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeTrunkInitiated            node/ip-10-52-162-110.eu-central-1.compute.internal   The node has trunk interface initialized successfully
17m         Warning   OOMKilling                    node/ip-10-52-162-110.eu-central-1.compute.internal   Memory cgroup out of memory: Killed process 2179068 (bundle) total-vm:3752480kB, anon-rss:1626408kB, file-rss:19828kB, shmem-rss:0kB, UID:1011 pgtables:3856kB oom_score_adj:476
17m         Warning   OOMKilling                    node/ip-10-52-162-110.eu-central-1.compute.internal   Memory cgroup out of memory: Killed process 2177766 (supervisord) total-vm:37040kB, anon-rss:17552kB, file-rss:10504kB, shmem-rss:0kB, UID:1000 pgtables:116kB oom_score_adj:476
17m         Warning   OOMKilling                    node/ip-10-52-162-110.eu-central-1.compute.internal   Memory cgroup out of memory: Killed process 2177978 (sudo) total-vm:10264kB, anon-rss:528kB, file-rss:4044kB, shmem-rss:0kB, UID:1000 pgtables:56kB oom_score_adj:476
17m         Warning   OOMKilling                    node/ip-10-52-162-110.eu-central-1.compute.internal   Memory cgroup out of memory: Killed process 2177979 (logwatch) total-vm:1227484kB, anon-rss:6092kB, file-rss:2248kB, shmem-rss:0kB, UID:1000 pgtables:108kB oom_score_adj:476
17m         Warning   OOMKilling                    node/ip-10-52-162-110.eu-central-1.compute.internal   Memory cgroup out of memory: Killed process 2177980 (terraform-enter) total-vm:1975748kB, anon-rss:12448kB, file-rss:34904kB, shmem-rss:0kB, UID:1000 pgtables:320kB oom_score_adj:476
17m         Warning   OOMKilling                    node/ip-10-52-162-110.eu-central-1.compute.internal   Memory cgroup out of memory: Killed process 2178128 (terraform-state) total-vm:2300492kB, anon-rss:14596kB, file-rss:17392kB, shmem-rss:0kB, UID:1003 pgtables:1192kB oom_score_adj:476
17m         Warning   OOMKilling                    node/ip-10-52-162-110.eu-central-1.compute.internal   Memory cgroup out of memory: Killed process 2179649 (bundle) total-vm:574884kB, anon-rss:32256kB, file-rss:10576kB, shmem-rss:0kB, UID:1011 pgtables:200kB oom_score_adj:476
17m         Warning   OOMKilling                    node/ip-10-52-162-110.eu-central-1.compute.internal   Memory cgroup out of memory: Killed process 2155243 (tfce) total-vm:2526976kB, anon-rss:1250936kB, file-rss:17060kB, shmem-rss:0kB, UID:1012 pgtables:2584kB oom_score_adj:476
61m         Normal    Starting                      node/ip-10-52-162-15.eu-central-1.compute.internal    Starting kubelet.
61m         Warning   InvalidDiskCapacity           node/ip-10-52-162-15.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
61m         Normal    NodeHasSufficientMemory       node/ip-10-52-162-15.eu-central-1.compute.internal    Node ip-10-52-162-15.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
61m         Normal    NodeHasNoDiskPressure         node/ip-10-52-162-15.eu-central-1.compute.internal    Node ip-10-52-162-15.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
61m         Normal    NodeHasSufficientPID          node/ip-10-52-162-15.eu-central-1.compute.internal    Node ip-10-52-162-15.eu-central-1.compute.internal status is now: NodeHasSufficientPID
61m         Normal    NodeAllocatableEnforced       node/ip-10-52-162-15.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
61m         Normal    Synced                        node/ip-10-52-162-15.eu-central-1.compute.internal    Node synced successfully
61m         Normal    RegisteredNode                node/ip-10-52-162-15.eu-central-1.compute.internal    Node ip-10-52-162-15.eu-central-1.compute.internal event: Registered Node ip-10-52-162-15.eu-central-1.compute.internal in Controller
61m         Normal    Starting                      node/ip-10-52-162-15.eu-central-1.compute.internal    
61m         Normal    DisruptionBlocked             node/ip-10-52-162-15.eu-central-1.compute.internal    Node isn't initialized
61m         Normal    ControllerVersionNotice       node/ip-10-52-162-15.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
61m         Normal    NodeReady                     node/ip-10-52-162-15.eu-central-1.compute.internal    Node ip-10-52-162-15.eu-central-1.compute.internal status is now: NodeReady
61m         Normal    Ready                         node/ip-10-52-162-15.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
61m         Normal    NodeTrunkInitiated            node/ip-10-52-162-15.eu-central-1.compute.internal    The node has trunk interface initialized successfully
27m         Normal    DisruptionBlocked             node/ip-10-52-162-15.eu-central-1.compute.internal    Node is nominated for a pending pod
26m         Normal    RegisteredNode                node/ip-10-52-162-15.eu-central-1.compute.internal    Node ip-10-52-162-15.eu-central-1.compute.internal event: Registered Node ip-10-52-162-15.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-52-162-15.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated            node/ip-10-52-162-15.eu-central-1.compute.internal    The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked             node/ip-10-52-162-15.eu-central-1.compute.internal    Node is nominated for a pending pod
37s         Normal    DisruptionBlocked             node/ip-10-52-162-15.eu-central-1.compute.internal    Node is nominated for a pending pod
21m         Normal    ControllerVersionNotice       node/ip-10-52-162-15.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeTrunkInitiated            node/ip-10-52-162-15.eu-central-1.compute.internal    The node has trunk interface initialized successfully
56m         Normal    DisruptionBlocked             node/ip-10-52-162-183.eu-central-1.compute.internal   Node is nominated for a pending pod
26m         Normal    RegisteredNode                node/ip-10-52-162-183.eu-central-1.compute.internal   Node ip-10-52-162-183.eu-central-1.compute.internal event: Registered Node ip-10-52-162-183.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-52-162-183.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated            node/ip-10-52-162-183.eu-central-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    ControllerVersionNotice       node/ip-10-52-162-183.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeTrunkInitiated            node/ip-10-52-162-183.eu-central-1.compute.internal   The node has trunk interface initialized successfully
56m         Normal    DisruptionBlocked             node/ip-10-52-162-231.eu-central-1.compute.internal   Node is nominated for a pending pod
26m         Normal    RegisteredNode                node/ip-10-52-162-231.eu-central-1.compute.internal   Node ip-10-52-162-231.eu-central-1.compute.internal event: Registered Node ip-10-52-162-231.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-52-162-231.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated            node/ip-10-52-162-231.eu-central-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    ControllerVersionNotice       node/ip-10-52-162-231.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeTrunkInitiated            node/ip-10-52-162-231.eu-central-1.compute.internal   The node has trunk interface initialized successfully
28m         Normal    Starting                      node/ip-10-52-162-38.eu-central-1.compute.internal    Starting kubelet.
28m         Warning   InvalidDiskCapacity           node/ip-10-52-162-38.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
28m         Normal    NodeHasSufficientMemory       node/ip-10-52-162-38.eu-central-1.compute.internal    Node ip-10-52-162-38.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure         node/ip-10-52-162-38.eu-central-1.compute.internal    Node ip-10-52-162-38.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID          node/ip-10-52-162-38.eu-central-1.compute.internal    Node ip-10-52-162-38.eu-central-1.compute.internal status is now: NodeHasSufficientPID
28m         Normal    NodeAllocatableEnforced       node/ip-10-52-162-38.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
28m         Normal    Synced                        node/ip-10-52-162-38.eu-central-1.compute.internal    Node synced successfully
28m         Normal    RegisteredNode                node/ip-10-52-162-38.eu-central-1.compute.internal    Node ip-10-52-162-38.eu-central-1.compute.internal event: Registered Node ip-10-52-162-38.eu-central-1.compute.internal in Controller
28m         Normal    Starting                      node/ip-10-52-162-38.eu-central-1.compute.internal    
28m         Normal    ControllerVersionNotice       node/ip-10-52-162-38.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
27m         Warning   Unsupported                   node/ip-10-52-162-38.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    NodeReady                     node/ip-10-52-162-38.eu-central-1.compute.internal    Node ip-10-52-162-38.eu-central-1.compute.internal status is now: NodeReady
28m         Normal    Ready                         node/ip-10-52-162-38.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26m         Normal    RegisteredNode                node/ip-10-52-162-38.eu-central-1.compute.internal    Node ip-10-52-162-38.eu-central-1.compute.internal event: Registered Node ip-10-52-162-38.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-52-162-38.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
23m         Warning   Unsupported                   node/ip-10-52-162-38.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    ControllerVersionNotice       node/ip-10-52-162-38.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
10s         Warning   Unsupported                   node/ip-10-52-162-38.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
56m         Normal    Starting                      node/ip-10-52-162-65.eu-central-1.compute.internal    Starting kubelet.
56m         Warning   InvalidDiskCapacity           node/ip-10-52-162-65.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
56m         Normal    NodeHasSufficientMemory       node/ip-10-52-162-65.eu-central-1.compute.internal    Node ip-10-52-162-65.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
56m         Normal    NodeHasNoDiskPressure         node/ip-10-52-162-65.eu-central-1.compute.internal    Node ip-10-52-162-65.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
56m         Normal    NodeHasSufficientPID          node/ip-10-52-162-65.eu-central-1.compute.internal    Node ip-10-52-162-65.eu-central-1.compute.internal status is now: NodeHasSufficientPID
56m         Normal    NodeAllocatableEnforced       node/ip-10-52-162-65.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
56m         Normal    Synced                        node/ip-10-52-162-65.eu-central-1.compute.internal    Node synced successfully
56m         Normal    RegisteredNode                node/ip-10-52-162-65.eu-central-1.compute.internal    Node ip-10-52-162-65.eu-central-1.compute.internal event: Registered Node ip-10-52-162-65.eu-central-1.compute.internal in Controller
56m         Normal    DisruptionBlocked             node/ip-10-52-162-65.eu-central-1.compute.internal    Node isn't initialized
56m         Normal    Starting                      node/ip-10-52-162-65.eu-central-1.compute.internal    
56m         Normal    ControllerVersionNotice       node/ip-10-52-162-65.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
56m         Normal    NodeReady                     node/ip-10-52-162-65.eu-central-1.compute.internal    Node ip-10-52-162-65.eu-central-1.compute.internal status is now: NodeReady
56m         Normal    Ready                         node/ip-10-52-162-65.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
56m         Normal    NodeTrunkInitiated            node/ip-10-52-162-65.eu-central-1.compute.internal    The node has trunk interface initialized successfully
26m         Normal    RegisteredNode                node/ip-10-52-162-65.eu-central-1.compute.internal    Node ip-10-52-162-65.eu-central-1.compute.internal event: Registered Node ip-10-52-162-65.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-52-162-65.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated            node/ip-10-52-162-65.eu-central-1.compute.internal    The node has trunk interface initialized successfully
21m         Normal    ControllerVersionNotice       node/ip-10-52-162-65.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeTrunkInitiated            node/ip-10-52-162-65.eu-central-1.compute.internal    The node has trunk interface initialized successfully
31m         Normal    Starting                      node/ip-10-52-163-151.eu-central-1.compute.internal   Starting kubelet.
31m         Warning   InvalidDiskCapacity           node/ip-10-52-163-151.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
31m         Normal    NodeHasSufficientMemory       node/ip-10-52-163-151.eu-central-1.compute.internal   Node ip-10-52-163-151.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
31m         Normal    NodeHasNoDiskPressure         node/ip-10-52-163-151.eu-central-1.compute.internal   Node ip-10-52-163-151.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
31m         Normal    NodeHasSufficientPID          node/ip-10-52-163-151.eu-central-1.compute.internal   Node ip-10-52-163-151.eu-central-1.compute.internal status is now: NodeHasSufficientPID
31m         Normal    NodeAllocatableEnforced       node/ip-10-52-163-151.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
31m         Normal    Synced                        node/ip-10-52-163-151.eu-central-1.compute.internal   Node synced successfully
31m         Normal    DisruptionBlocked             node/ip-10-52-163-151.eu-central-1.compute.internal   Node isn't initialized
31m         Normal    RegisteredNode                node/ip-10-52-163-151.eu-central-1.compute.internal   Node ip-10-52-163-151.eu-central-1.compute.internal event: Registered Node ip-10-52-163-151.eu-central-1.compute.internal in Controller
31m         Normal    Starting                      node/ip-10-52-163-151.eu-central-1.compute.internal   
31m         Normal    ControllerVersionNotice       node/ip-10-52-163-151.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
31m         Normal    NodeReady                     node/ip-10-52-163-151.eu-central-1.compute.internal   Node ip-10-52-163-151.eu-central-1.compute.internal status is now: NodeReady
31m         Normal    Ready                         node/ip-10-52-163-151.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
31m         Normal    NodeTrunkInitiated            node/ip-10-52-163-151.eu-central-1.compute.internal   The node has trunk interface initialized successfully
26m         Normal    RegisteredNode                node/ip-10-52-163-151.eu-central-1.compute.internal   Node ip-10-52-163-151.eu-central-1.compute.internal event: Registered Node ip-10-52-163-151.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-52-163-151.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated            node/ip-10-52-163-151.eu-central-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    ControllerVersionNotice       node/ip-10-52-163-151.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeTrunkInitiated            node/ip-10-52-163-151.eu-central-1.compute.internal   The node has trunk interface initialized successfully
28m         Normal    Starting                      node/ip-10-52-163-89.eu-central-1.compute.internal    Starting kubelet.
28m         Warning   InvalidDiskCapacity           node/ip-10-52-163-89.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
28m         Normal    NodeHasSufficientMemory       node/ip-10-52-163-89.eu-central-1.compute.internal    Node ip-10-52-163-89.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure         node/ip-10-52-163-89.eu-central-1.compute.internal    Node ip-10-52-163-89.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID          node/ip-10-52-163-89.eu-central-1.compute.internal    Node ip-10-52-163-89.eu-central-1.compute.internal status is now: NodeHasSufficientPID
28m         Normal    NodeAllocatableEnforced       node/ip-10-52-163-89.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
28m         Normal    Synced                        node/ip-10-52-163-89.eu-central-1.compute.internal    Node synced successfully
28m         Normal    RegisteredNode                node/ip-10-52-163-89.eu-central-1.compute.internal    Node ip-10-52-163-89.eu-central-1.compute.internal event: Registered Node ip-10-52-163-89.eu-central-1.compute.internal in Controller
28m         Normal    Starting                      node/ip-10-52-163-89.eu-central-1.compute.internal    
28m         Normal    ControllerVersionNotice       node/ip-10-52-163-89.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
27m         Warning   Unsupported                   node/ip-10-52-163-89.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    NodeReady                     node/ip-10-52-163-89.eu-central-1.compute.internal    Node ip-10-52-163-89.eu-central-1.compute.internal status is now: NodeReady
28m         Normal    Ready                         node/ip-10-52-163-89.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26m         Normal    RegisteredNode                node/ip-10-52-163-89.eu-central-1.compute.internal    Node ip-10-52-163-89.eu-central-1.compute.internal event: Registered Node ip-10-52-163-89.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-52-163-89.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
22m         Warning   Unsupported                   node/ip-10-52-163-89.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    ControllerVersionNotice       node/ip-10-52-163-89.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
18m         Warning   Unsupported                   node/ip-10-52-163-89.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
19m         Normal    NodeNotSchedulable            node/ip-10-52-163-89.eu-central-1.compute.internal    Node ip-10-52-163-89.eu-central-1.compute.internal status is now: NodeNotSchedulable
18m         Normal    NodeNotReady                  node/ip-10-52-163-89.eu-central-1.compute.internal    Node ip-10-52-163-89.eu-central-1.compute.internal status is now: NodeNotReady
18m         Normal    MemoryPressure                node/ip-10-52-163-89.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    DiskPressure                  node/ip-10-52-163-89.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    PIDPressure                   node/ip-10-52-163-89.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    Ready                         node/ip-10-52-163-89.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DeletingNode                  node/ip-10-52-163-89.eu-central-1.compute.internal    Deleting node ip-10-52-163-89.eu-central-1.compute.internal because it does not exist in the cloud provider
17m         Normal    RemovingNode                  node/ip-10-52-163-89.eu-central-1.compute.internal    Node ip-10-52-163-89.eu-central-1.compute.internal event: Removing Node ip-10-52-163-89.eu-central-1.compute.internal from Controller
56m         Normal    SpotRebalanceRecommendation   node/ip-10-52-164-143.eu-central-1.compute.internal   Spot rebalance recommendation was triggered
56m         Warning   SpotInterrupted               node/ip-10-52-164-143.eu-central-1.compute.internal   Spot interruption warning was triggered
56m         Warning   TerminatingOnInterruption     node/ip-10-52-164-143.eu-central-1.compute.internal   Interruption triggered termination for the Node
56m         Warning   FailedDraining                node/ip-10-52-164-143.eu-central-1.compute.internal   Failed to drain node, 19 pods are waiting to be evicted
54m         Normal    DisruptionBlocked             node/ip-10-52-164-143.eu-central-1.compute.internal   Node is deleting or marked for deletion
54m         Warning   FailedDraining                node/ip-10-52-164-143.eu-central-1.compute.internal   Failed to drain node, 7 pods are waiting to be evicted
54m         Warning   InstanceTerminating           node/ip-10-52-164-143.eu-central-1.compute.internal   Instance is terminating
53m         Normal    NodeNotReady                  node/ip-10-52-164-143.eu-central-1.compute.internal   Node ip-10-52-164-143.eu-central-1.compute.internal status is now: NodeNotReady
53m         Normal    MemoryPressure                node/ip-10-52-164-143.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
53m         Normal    DiskPressure                  node/ip-10-52-164-143.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
53m         Normal    PIDPressure                   node/ip-10-52-164-143.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
53m         Normal    Ready                         node/ip-10-52-164-143.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
53m         Normal    RemovingNode                  node/ip-10-52-164-143.eu-central-1.compute.internal   Node ip-10-52-164-143.eu-central-1.compute.internal event: Removing Node ip-10-52-164-143.eu-central-1.compute.internal from Controller
31m         Warning   Unsupported                   node/ip-10-52-165-12.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    RegisteredNode                node/ip-10-52-165-12.eu-central-1.compute.internal    Node ip-10-52-165-12.eu-central-1.compute.internal event: Registered Node ip-10-52-165-12.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-52-165-12.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
22m         Warning   Unsupported                   node/ip-10-52-165-12.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    NodeNotSchedulable            node/ip-10-52-165-12.eu-central-1.compute.internal    Node ip-10-52-165-12.eu-central-1.compute.internal status is now: NodeNotSchedulable
21m         Normal    ControllerVersionNotice       node/ip-10-52-165-12.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
20m         Warning   Unsupported                   node/ip-10-52-165-12.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
20m         Normal    NodeNotReady                  node/ip-10-52-165-12.eu-central-1.compute.internal    Node ip-10-52-165-12.eu-central-1.compute.internal status is now: NodeNotReady
20m         Normal    MemoryPressure                node/ip-10-52-165-12.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    DiskPressure                  node/ip-10-52-165-12.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    PIDPressure                   node/ip-10-52-165-12.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    Ready                         node/ip-10-52-165-12.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    DeletingNode                  node/ip-10-52-165-12.eu-central-1.compute.internal    Deleting node ip-10-52-165-12.eu-central-1.compute.internal because it does not exist in the cloud provider
20m         Normal    RemovingNode                  node/ip-10-52-165-12.eu-central-1.compute.internal    Node ip-10-52-165-12.eu-central-1.compute.internal event: Removing Node ip-10-52-165-12.eu-central-1.compute.internal from Controller
31m         Normal    DisruptionBlocked             node/ip-10-52-165-195.eu-central-1.compute.internal   Node is deleting or marked for deletion
30m         Warning   FailedDraining                node/ip-10-52-165-195.eu-central-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
26m         Normal    RegisteredNode                node/ip-10-52-165-195.eu-central-1.compute.internal   Node ip-10-52-165-195.eu-central-1.compute.internal event: Registered Node ip-10-52-165-195.eu-central-1.compute.internal in Controller
26m         Normal    ControllerVersionNotice       node/ip-10-52-165-195.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
26m         Normal    NodeTrunkInitiated            node/ip-10-52-165-195.eu-central-1.compute.internal   The node has trunk interface initialized successfully
23m         Warning   FailedDraining                node/ip-10-52-165-195.eu-central-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
23m         Normal    DisruptionBlocked             node/ip-10-52-165-195.eu-central-1.compute.internal   Node is deleting or marked for deletion
45s         Warning   FailedDraining                node/ip-10-52-165-195.eu-central-1.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
37s         Normal    DisruptionBlocked             node/ip-10-52-165-195.eu-central-1.compute.internal   Node is deleting or marked for deletion
21m         Normal    ControllerVersionNotice       node/ip-10-52-165-195.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeTrunkInitiated            node/ip-10-52-165-195.eu-central-1.compute.internal   The node has trunk interface initialized successfully
26m         Normal    Starting                      node/ip-10-52-165-89.eu-central-1.compute.internal    Starting kubelet.
26m         Warning   InvalidDiskCapacity           node/ip-10-52-165-89.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
26m         Normal    NodeHasSufficientMemory       node/ip-10-52-165-89.eu-central-1.compute.internal    Node ip-10-52-165-89.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
26m         Normal    NodeHasNoDiskPressure         node/ip-10-52-165-89.eu-central-1.compute.internal    Node ip-10-52-165-89.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
26m         Normal    NodeHasSufficientPID          node/ip-10-52-165-89.eu-central-1.compute.internal    Node ip-10-52-165-89.eu-central-1.compute.internal status is now: NodeHasSufficientPID
26m         Normal    NodeAllocatableEnforced       node/ip-10-52-165-89.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
26m         Normal    RegisteredNode                node/ip-10-52-165-89.eu-central-1.compute.internal    Node ip-10-52-165-89.eu-central-1.compute.internal event: Registered Node ip-10-52-165-89.eu-central-1.compute.internal in Controller
26m         Normal    Starting                      node/ip-10-52-165-89.eu-central-1.compute.internal    
26m         Normal    ControllerVersionNotice       node/ip-10-52-165-89.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
22m         Warning   Unsupported                   node/ip-10-52-165-89.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    NodeReady                     node/ip-10-52-165-89.eu-central-1.compute.internal    Node ip-10-52-165-89.eu-central-1.compute.internal status is now: NodeReady
26m         Normal    Ready                         node/ip-10-52-165-89.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
25m         Normal    Synced                        node/ip-10-52-165-89.eu-central-1.compute.internal    Node synced successfully
21m         Normal    ControllerVersionNotice       node/ip-10-52-165-89.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
16m         Warning   Unsupported                   node/ip-10-52-165-89.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    NodeNotSchedulable            node/ip-10-52-165-89.eu-central-1.compute.internal    Node ip-10-52-165-89.eu-central-1.compute.internal status is now: NodeNotSchedulable
16m         Normal    NodeNotReady                  node/ip-10-52-165-89.eu-central-1.compute.internal    Node ip-10-52-165-89.eu-central-1.compute.internal status is now: NodeNotReady
16m         Normal    MemoryPressure                node/ip-10-52-165-89.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    DiskPressure                  node/ip-10-52-165-89.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    PIDPressure                   node/ip-10-52-165-89.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    Ready                         node/ip-10-52-165-89.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DeletingNode                  node/ip-10-52-165-89.eu-central-1.compute.internal    Deleting node ip-10-52-165-89.eu-central-1.compute.internal because it does not exist in the cloud provider
15m         Normal    RemovingNode                  node/ip-10-52-165-89.eu-central-1.compute.internal    Node ip-10-52-165-89.eu-central-1.compute.internal event: Removing Node ip-10-52-165-89.eu-central-1.compute.internal from Controller
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE              NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
karpenter              karpenter                      N/A             1                 1                     500d
kube-system            coredns                        N/A             1                 1                     501d
kube-system            ebs-csi-controller             N/A             1                 1                     501d
kyverno                kyverno-admission-controller   1               N/A               2                     500d
terraform-enterprise   tfe-metrics-pdb                N/A             1                 1                     296d
```

Pods with Karpenter.sh/Do-Not-Disrupt Annotation
```
ip-10-52-162-110.eu-central-1.compute.internal  terraform-enterprise-584c74868b-ddb9p  (terraform-enterprise)
ip-10-52-165-195.eu-central-1.compute.internal  terraform-enterprise-584c74868b-4shhp  (terraform-enterprise)
```

Pods Tolerating karpenter.sh/disrupted
```
```

Static Pods
```
```

Cluster version up to date - no pluto apis detection rquired

Generated on: Mon Sep 22 11:45:35 CEST 2025
