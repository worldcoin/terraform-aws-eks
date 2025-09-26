# Cluster recon for tfh-security-prod-infra,us-east-1,security-prod-us-east-1,tunnel-vpc-security-prod-us-east-1

TFH EKS login...
```console
2025/09/22 18:21:29 INFO Logging into AWS
2025/09/22 18:21:29 INFO Token found and valid
2025/09/22 18:21:31 INFO Switch WARP Virtual Network to name=tunnel-vpc-security-prod-us-east-1 id=aada3cde-bca6-4a89-8ae2-ba8fb588083c
2025/09/22 18:21:32 INFO Active WARP Virtual Network id=aada3cde-bca6-4a89-8ae2-ba8fb588083c
Updated context tfh-security-prod-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "security-prod-us-east-1",
        "arn": "arn:aws:eks:us-east-1:338165278394:cluster/security-prod-us-east-1",
        "createdAt": "2025-05-29T13:41:02.577000+02:00",
        "version": "1.33",
        "endpoint": "https://3DCB9F1309476317CE31AEB6767E0620.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::338165278394:role/eks-cluster-security-prod-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-01a732216de7c7806",
                "subnet-09c5d37a7ad150213",
                "subnet-0191b2afc0a0ce9f3"
            ],
            "securityGroupIds": [
                "sg-06037033cb43e4057"
            ],
            "clusterSecurityGroupId": "sg-01f97184ddba08493",
            "vpcId": "vpc-032177dc2f56e23e9",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/3DCB9F1309476317CE31AEB6767E0620"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJYWN4UHBSMmU5MGt3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMU1qa3hNVFF3TkRWYUZ3MHpOVEExTWpjeE1UUTFORFZhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURuK0pXUldkQUpvYUtVZXhvZS9VUjRtRDUwU2dUSVY3ajJkZG9MZk9jVlVaWUlJVUpKT3lHZTd6U1EKUkM4U1RIZEpHSnZSU0FMZHFFS2kzQ1REZEl1WlhpeWthWFlSY1VxQUVKdXVmSk9kaVdQTFpNNGZsRWx2K2NueApSdHBwTndiZkh3dnRucmFOZlFlSHA3WlFuYUV0YnprRU9wYUtId1p5WHZ0ZW1yTkl0a1dWa0QvVnQrMmNkTXc1Ck93Z3NSQTJTUW1mN1ZYdlVDS3BQb3VnOGhZRGYyVEkxTEVnbzRRTElFb1lYZmRVOXJiUEFhN2N2OE5Ta2VzV0cKdHBqSit5YkpZcVdxMTJnWGVJZDZuZkh3aC9NQXJXY2oyNENTWkVTZTZkSDJMd1lHL2xnZWY0Vmd5QzlmS3R2NgpqUjVxQ0R1YjR6K2M2NlEwUUFDQVBtTlFUS2xQQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJTYjJ1bkdlbDJZaENPUUd3bktFbzNvTjljcENUQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQitxei80N05xNgp5cE9mcFA2MjN1eDQvZkdLWXJKR1l4MEh5SGZleWJFd2dZNGU5a1daSFE2emlPWGtuTnlXanBoZis1eGRpaFhMCkIzV011ZXExb1ZBc3JXZGRLdWx1MTV1eG44TWZIbzI1OUhUWVN5OVlmd25WUXd6QTBhdmRzdVUyYjRTN3dDWWcKYkxzSmx5Zy8rQStWVVBRdXhXSEpWNTQ1VTBpK3ZMdU41ako3a1Jrc29XQmhPbndPblBuK2oxMjR4UGp4WlpyOAppaCtaTlM5L0RLc1NMZFJpdmpGeWZKYkg2Z3NHYXBFVithSzFWa21qNUFocjBaOW5HSGd3SSs4SlBmQStxYjV1CnQwOWQyVXFiRHFaZmxxUXdIdlBCdFB2MkJoVUMvT2ViN0lTMDJYYkV2Y1cvbkhpa1hLOWZNSEhXcFZMKzVMajYKUnlMT0ptRU5vTFU3Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "security-prod-us-east-1",
            "Team": "security",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:338165278394:key/e57e10db-eeb0-4bf5-8547-fc6e6e584650"
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
NAME                           STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-2-241-123.ec2.internal   Ready    <none>   38m     v1.33.4-eks-99d6cc0   10.2.241.123   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-security-prod-us-east-1
ip-10-2-241-197.ec2.internal   Ready    <none>   7h29m   v1.32.8-eks-99d6cc0   10.2.241.197   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-242-11.ec2.internal    Ready    <none>   36m     v1.33.4-eks-99d6cc0   10.2.242.11    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-security-prod-us-east-1
ip-10-2-243-177.ec2.internal   Ready    <none>   3h40m   v1.32.8-eks-99d6cc0   10.2.243.177   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-244-213.ec2.internal   Ready    <none>   47h     v1.32.8-eks-99d6cc0   10.2.244.213   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-245-104.ec2.internal   Ready    <none>   4d23h   v1.32.8-eks-99d6cc0   10.2.245.104   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-245-182.ec2.internal   Ready    <none>   47h     v1.32.8-eks-99d6cc0   10.2.245.182   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                           STATUS   ROLES    TAINTS
ip-10-2-241-123.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-2-241-197.ec2.internal   Ready    <none>   <none>
ip-10-2-242-11.ec2.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-2-243-177.ec2.internal   Ready    <none>   <none>
ip-10-2-244-213.ec2.internal   Ready    <none>   <none>
ip-10-2-245-104.ec2.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-2-245-182.ec2.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                              MESSAGE
38m         Normal    Starting                  node/ip-10-2-241-123.ec2.internal   Starting kubelet.
38m         Warning   InvalidDiskCapacity       node/ip-10-2-241-123.ec2.internal   invalid capacity 0 on image filesystem
38m         Normal    NodeHasSufficientMemory   node/ip-10-2-241-123.ec2.internal   Node ip-10-2-241-123.ec2.internal status is now: NodeHasSufficientMemory
38m         Normal    NodeHasNoDiskPressure     node/ip-10-2-241-123.ec2.internal   Node ip-10-2-241-123.ec2.internal status is now: NodeHasNoDiskPressure
38m         Normal    NodeHasSufficientPID      node/ip-10-2-241-123.ec2.internal   Node ip-10-2-241-123.ec2.internal status is now: NodeHasSufficientPID
38m         Normal    NodeAllocatableEnforced   node/ip-10-2-241-123.ec2.internal   Updated Node Allocatable limit across pods
38m         Normal    Synced                    node/ip-10-2-241-123.ec2.internal   Node synced successfully
38m         Normal    RegisteredNode            node/ip-10-2-241-123.ec2.internal   Node ip-10-2-241-123.ec2.internal event: Registered Node ip-10-2-241-123.ec2.internal in Controller
38m         Normal    Starting                  node/ip-10-2-241-123.ec2.internal   
38m         Normal    ControllerVersionNotice   node/ip-10-2-241-123.ec2.internal   The node is managed by VPC resource controller version v1.7.9
37m         Warning   Unsupported               node/ip-10-2-241-123.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
38m         Normal    NodeReady                 node/ip-10-2-241-123.ec2.internal   Node ip-10-2-241-123.ec2.internal status is now: NodeReady
38m         Normal    Ready                     node/ip-10-2-241-123.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
36m         Normal    ControllerVersionNotice   node/ip-10-2-241-123.ec2.internal   The node is managed by VPC resource controller version v1.7.11
3m10s       Warning   Unsupported               node/ip-10-2-241-123.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
36m         Normal    RegisteredNode            node/ip-10-2-241-123.ec2.internal   Node ip-10-2-241-123.ec2.internal event: Registered Node ip-10-2-241-123.ec2.internal in Controller
35m         Normal    DisruptionBlocked         node/ip-10-2-241-197.ec2.internal   Node is nominated for a pending pod
73m         Normal    Starting                  node/ip-10-2-241-197.ec2.internal   
36m         Normal    ControllerVersionNotice   node/ip-10-2-241-197.ec2.internal   The node is managed by VPC resource controller version v1.7.11
36m         Normal    NodeTrunkInitiated        node/ip-10-2-241-197.ec2.internal   The node has trunk interface initialized successfully
36m         Normal    RegisteredNode            node/ip-10-2-241-197.ec2.internal   Node ip-10-2-241-197.ec2.internal event: Registered Node ip-10-2-241-197.ec2.internal in Controller
15s         Normal    DisruptionBlocked         node/ip-10-2-241-197.ec2.internal   Node is nominated for a pending pod
38m         Normal    Starting                  node/ip-10-2-241-227.ec2.internal   Starting kubelet.
38m         Warning   InvalidDiskCapacity       node/ip-10-2-241-227.ec2.internal   invalid capacity 0 on image filesystem
38m         Normal    NodeHasSufficientMemory   node/ip-10-2-241-227.ec2.internal   Node ip-10-2-241-227.ec2.internal status is now: NodeHasSufficientMemory
38m         Normal    NodeHasNoDiskPressure     node/ip-10-2-241-227.ec2.internal   Node ip-10-2-241-227.ec2.internal status is now: NodeHasNoDiskPressure
38m         Normal    NodeHasSufficientPID      node/ip-10-2-241-227.ec2.internal   Node ip-10-2-241-227.ec2.internal status is now: NodeHasSufficientPID
38m         Normal    NodeAllocatableEnforced   node/ip-10-2-241-227.ec2.internal   Updated Node Allocatable limit across pods
38m         Normal    Synced                    node/ip-10-2-241-227.ec2.internal   Node synced successfully
38m         Normal    RegisteredNode            node/ip-10-2-241-227.ec2.internal   Node ip-10-2-241-227.ec2.internal event: Registered Node ip-10-2-241-227.ec2.internal in Controller
38m         Normal    Starting                  node/ip-10-2-241-227.ec2.internal   
38m         Normal    ControllerVersionNotice   node/ip-10-2-241-227.ec2.internal   The node is managed by VPC resource controller version v1.7.9
37m         Warning   Unsupported               node/ip-10-2-241-227.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
38m         Normal    NodeReady                 node/ip-10-2-241-227.ec2.internal   Node ip-10-2-241-227.ec2.internal status is now: NodeReady
38m         Normal    Ready                     node/ip-10-2-241-227.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
36m         Normal    ControllerVersionNotice   node/ip-10-2-241-227.ec2.internal   The node is managed by VPC resource controller version v1.7.11
26m         Warning   Unsupported               node/ip-10-2-241-227.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
36m         Normal    RegisteredNode            node/ip-10-2-241-227.ec2.internal   Node ip-10-2-241-227.ec2.internal event: Registered Node ip-10-2-241-227.ec2.internal in Controller
27m         Normal    NodeNotSchedulable        node/ip-10-2-241-227.ec2.internal   Node ip-10-2-241-227.ec2.internal status is now: NodeNotSchedulable
26m         Normal    NodeNotReady              node/ip-10-2-241-227.ec2.internal   Node ip-10-2-241-227.ec2.internal status is now: NodeNotReady
26m         Normal    MemoryPressure            node/ip-10-2-241-227.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    DiskPressure              node/ip-10-2-241-227.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    PIDPressure               node/ip-10-2-241-227.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    Ready                     node/ip-10-2-241-227.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    DeletingNode              node/ip-10-2-241-227.ec2.internal   Deleting node ip-10-2-241-227.ec2.internal because it does not exist in the cloud provider
25m         Normal    RemovingNode              node/ip-10-2-241-227.ec2.internal   Node ip-10-2-241-227.ec2.internal event: Removing Node ip-10-2-241-227.ec2.internal from Controller
36m         Normal    Starting                  node/ip-10-2-242-11.ec2.internal    Starting kubelet.
36m         Warning   InvalidDiskCapacity       node/ip-10-2-242-11.ec2.internal    invalid capacity 0 on image filesystem
36m         Normal    NodeHasSufficientMemory   node/ip-10-2-242-11.ec2.internal    Node ip-10-2-242-11.ec2.internal status is now: NodeHasSufficientMemory
36m         Normal    NodeHasNoDiskPressure     node/ip-10-2-242-11.ec2.internal    Node ip-10-2-242-11.ec2.internal status is now: NodeHasNoDiskPressure
36m         Normal    NodeHasSufficientPID      node/ip-10-2-242-11.ec2.internal    Node ip-10-2-242-11.ec2.internal status is now: NodeHasSufficientPID
36m         Normal    NodeAllocatableEnforced   node/ip-10-2-242-11.ec2.internal    Updated Node Allocatable limit across pods
36m         Normal    Synced                    node/ip-10-2-242-11.ec2.internal    Node synced successfully
36m         Normal    RegisteredNode            node/ip-10-2-242-11.ec2.internal    Node ip-10-2-242-11.ec2.internal event: Registered Node ip-10-2-242-11.ec2.internal in Controller
36m         Normal    Starting                  node/ip-10-2-242-11.ec2.internal    
36m         Normal    ControllerVersionNotice   node/ip-10-2-242-11.ec2.internal    The node is managed by VPC resource controller version v1.7.11
36m         Normal    NodeReady                 node/ip-10-2-242-11.ec2.internal    Node ip-10-2-242-11.ec2.internal status is now: NodeReady
51s         Warning   Unsupported               node/ip-10-2-242-11.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
36m         Normal    Ready                     node/ip-10-2-242-11.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
69m         Normal    DisruptionBlocked         node/ip-10-2-243-177.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
73m         Normal    Starting                  node/ip-10-2-243-177.ec2.internal   
36m         Normal    ControllerVersionNotice   node/ip-10-2-243-177.ec2.internal   The node is managed by VPC resource controller version v1.7.11
36m         Normal    NodeTrunkInitiated        node/ip-10-2-243-177.ec2.internal   The node has trunk interface initialized successfully
36m         Normal    RegisteredNode            node/ip-10-2-243-177.ec2.internal   Node ip-10-2-243-177.ec2.internal event: Registered Node ip-10-2-243-177.ec2.internal in Controller
37m         Warning   Unsupported               node/ip-10-2-243-26.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
74m         Normal    Starting                  node/ip-10-2-243-26.ec2.internal    
36m         Normal    ControllerVersionNotice   node/ip-10-2-243-26.ec2.internal    The node is managed by VPC resource controller version v1.7.11
31m         Warning   Unsupported               node/ip-10-2-243-26.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
36m         Normal    RegisteredNode            node/ip-10-2-243-26.ec2.internal    Node ip-10-2-243-26.ec2.internal event: Registered Node ip-10-2-243-26.ec2.internal in Controller
34m         Normal    NodeNotSchedulable        node/ip-10-2-243-26.ec2.internal    Node ip-10-2-243-26.ec2.internal status is now: NodeNotSchedulable
31m         Normal    NodeNotReady              node/ip-10-2-243-26.ec2.internal    Node ip-10-2-243-26.ec2.internal status is now: NodeNotReady
31m         Normal    MemoryPressure            node/ip-10-2-243-26.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
31m         Normal    DiskPressure              node/ip-10-2-243-26.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
31m         Normal    PIDPressure               node/ip-10-2-243-26.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
31m         Normal    Ready                     node/ip-10-2-243-26.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
31m         Normal    DeletingNode              node/ip-10-2-243-26.ec2.internal    Deleting node ip-10-2-243-26.ec2.internal because it does not exist in the cloud provider
31m         Normal    RemovingNode              node/ip-10-2-243-26.ec2.internal    Node ip-10-2-243-26.ec2.internal event: Removing Node ip-10-2-243-26.ec2.internal from Controller
38m         Warning   Unsupported               node/ip-10-2-244-105.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
74m         Normal    Starting                  node/ip-10-2-244-105.ec2.internal   
36m         Normal    ControllerVersionNotice   node/ip-10-2-244-105.ec2.internal   The node is managed by VPC resource controller version v1.7.11
28m         Warning   Unsupported               node/ip-10-2-244-105.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
36m         Normal    RegisteredNode            node/ip-10-2-244-105.ec2.internal   Node ip-10-2-244-105.ec2.internal event: Registered Node ip-10-2-244-105.ec2.internal in Controller
34m         Normal    NodeNotSchedulable        node/ip-10-2-244-105.ec2.internal   Node ip-10-2-244-105.ec2.internal status is now: NodeNotSchedulable
28m         Normal    NodeNotReady              node/ip-10-2-244-105.ec2.internal   Node ip-10-2-244-105.ec2.internal status is now: NodeNotReady
28m         Normal    MemoryPressure            node/ip-10-2-244-105.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
28m         Normal    DiskPressure              node/ip-10-2-244-105.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
28m         Normal    PIDPressure               node/ip-10-2-244-105.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
28m         Normal    Ready                     node/ip-10-2-244-105.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
28m         Normal    DeletingNode              node/ip-10-2-244-105.ec2.internal   Deleting node ip-10-2-244-105.ec2.internal because it does not exist in the cloud provider
28m         Normal    RemovingNode              node/ip-10-2-244-105.ec2.internal   Node ip-10-2-244-105.ec2.internal event: Removing Node ip-10-2-244-105.ec2.internal from Controller
73m         Normal    Starting                  node/ip-10-2-244-213.ec2.internal   
36m         Normal    ControllerVersionNotice   node/ip-10-2-244-213.ec2.internal   The node is managed by VPC resource controller version v1.7.11
36m         Normal    NodeTrunkInitiated        node/ip-10-2-244-213.ec2.internal   The node has trunk interface initialized successfully
36m         Normal    RegisteredNode            node/ip-10-2-244-213.ec2.internal   Node ip-10-2-244-213.ec2.internal event: Registered Node ip-10-2-244-213.ec2.internal in Controller
35m         Warning   FailedDraining            node/ip-10-2-245-104.ec2.internal   Failed to drain node, 5 pods are waiting to be evicted
35m         Normal    DisruptionBlocked         node/ip-10-2-245-104.ec2.internal   Node is deleting or marked for deletion
73m         Normal    Starting                  node/ip-10-2-245-104.ec2.internal   
36m         Normal    ControllerVersionNotice   node/ip-10-2-245-104.ec2.internal   The node is managed by VPC resource controller version v1.7.11
36m         Normal    NodeTrunkInitiated        node/ip-10-2-245-104.ec2.internal   The node has trunk interface initialized successfully
36m         Normal    RegisteredNode            node/ip-10-2-245-104.ec2.internal   Node ip-10-2-245-104.ec2.internal event: Registered Node ip-10-2-245-104.ec2.internal in Controller
40s         Warning   FailedDraining            node/ip-10-2-245-104.ec2.internal   Failed to drain node, 5 pods are waiting to be evicted
25s         Normal    DisruptionBlocked         node/ip-10-2-245-104.ec2.internal   Node is deleting or marked for deletion
34m         Normal    DisruptionBlocked         node/ip-10-2-245-182.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
74m         Normal    Starting                  node/ip-10-2-245-182.ec2.internal   
36m         Normal    ControllerVersionNotice   node/ip-10-2-245-182.ec2.internal   The node is managed by VPC resource controller version v1.7.11
36m         Normal    NodeTrunkInitiated        node/ip-10-2-245-182.ec2.internal   The node has trunk interface initialized successfully
36m         Normal    RegisteredNode            node/ip-10-2-245-182.ec2.internal   Node ip-10-2-245-182.ec2.internal event: Registered Node ip-10-2-245-182.ec2.internal in Controller
27m         Normal    DisruptionBlocked         node/ip-10-2-245-182.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
35m         Normal    Starting                  node/ip-10-2-245-196.ec2.internal   Starting kubelet.
35m         Warning   InvalidDiskCapacity       node/ip-10-2-245-196.ec2.internal   invalid capacity 0 on image filesystem
35m         Normal    NodeHasSufficientMemory   node/ip-10-2-245-196.ec2.internal   Node ip-10-2-245-196.ec2.internal status is now: NodeHasSufficientMemory
35m         Normal    NodeHasNoDiskPressure     node/ip-10-2-245-196.ec2.internal   Node ip-10-2-245-196.ec2.internal status is now: NodeHasNoDiskPressure
35m         Normal    NodeHasSufficientPID      node/ip-10-2-245-196.ec2.internal   Node ip-10-2-245-196.ec2.internal status is now: NodeHasSufficientPID
35m         Normal    NodeAllocatableEnforced   node/ip-10-2-245-196.ec2.internal   Updated Node Allocatable limit across pods
35m         Normal    Synced                    node/ip-10-2-245-196.ec2.internal   Node synced successfully
35m         Normal    RegisteredNode            node/ip-10-2-245-196.ec2.internal   Node ip-10-2-245-196.ec2.internal event: Registered Node ip-10-2-245-196.ec2.internal in Controller
35m         Normal    Starting                  node/ip-10-2-245-196.ec2.internal   
35m         Normal    ControllerVersionNotice   node/ip-10-2-245-196.ec2.internal   The node is managed by VPC resource controller version v1.7.11
22m         Warning   Unsupported               node/ip-10-2-245-196.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
35m         Normal    NodeReady                 node/ip-10-2-245-196.ec2.internal   Node ip-10-2-245-196.ec2.internal status is now: NodeReady
35m         Normal    Ready                     node/ip-10-2-245-196.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
24m         Normal    NodeNotSchedulable        node/ip-10-2-245-196.ec2.internal   Node ip-10-2-245-196.ec2.internal status is now: NodeNotSchedulable
22m         Normal    NodeNotReady              node/ip-10-2-245-196.ec2.internal   Node ip-10-2-245-196.ec2.internal status is now: NodeNotReady
22m         Normal    MemoryPressure            node/ip-10-2-245-196.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure              node/ip-10-2-245-196.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure               node/ip-10-2-245-196.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                     node/ip-10-2-245-196.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DeletingNode              node/ip-10-2-245-196.ec2.internal   Deleting node ip-10-2-245-196.ec2.internal because it does not exist in the cloud provider
22m         Normal    RemovingNode              node/ip-10-2-245-196.ec2.internal   Node ip-10-2-245-196.ec2.internal event: Removing Node ip-10-2-245-196.ec2.internal from Controller
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                   NAME                            MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring          cluster-monitoring-pdb          N/A             1                 1                     116d
fskp-signing-tools          fskp-signing-tools-pdb          N/A             1                 1                     54d
karpenter                   karpenter                       N/A             1                 1                     116d
kube-system                 coredns                         N/A             1                 1                     116d
kube-system                 ebs-csi-controller              N/A             1                 1                     116d
kyverno                     kyverno-admission-controller    1               N/A               2                     116d
orb-os-signing-tools        orb-os-signing-tools-pdb        N/A             1                 0                     73d
service-security-memgraph   service-security-memgraph-pdb   N/A             1                 1                     32d
vuln-mgmt-app               vuln-mgmt-api-pdb               50%             N/A               0                     115d
```

Pods with Karpenter.sh/Do-Not-Disrupt Annotation
```
```

Pods Tolerating karpenter.sh/disrupted
```
```

Static Pods
```
```

Cluster version up to date - no pluto apis detection rquired

Generated on: Mon Sep 22 18:21:53 CEST 2025
