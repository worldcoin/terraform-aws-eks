# Cluster recon for tfh-orb-mini-prod-infra,ap-southeast-1,orb-mini-prod-ap-southeast-1,tunnel-vpc-orb-mini-prod-ap-southeast-1

TFH EKS login...
```console
2025/09/23 14:07:27 INFO Logging into AWS
2025/09/23 14:07:27 INFO Token not found or expired error="no valid token found"
2025/09/23 14:07:27 INFO Attempting to automatically open the SSO authorization page in your default browser...
2025/09/23 14:07:44 INFO Token found and valid
2025/09/23 14:07:47 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-mini-prod-ap-southeast-1 id=7269c9e6-fbfa-4c41-89ec-ef315cc9a876
2025/09/23 14:07:48 INFO Active WARP Virtual Network id=7269c9e6-fbfa-4c41-89ec-ef315cc9a876
Updated context tfh-orb-mini-prod-ap-southeast-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "orb-mini-prod-ap-southeast-1",
        "arn": "arn:aws:eks:ap-southeast-1:829856906111:cluster/orb-mini-prod-ap-southeast-1",
        "createdAt": "2025-08-04T16:04:40.994000+02:00",
        "version": "1.33",
        "endpoint": "https://62FAC0DB16F93DFAA2A4041FEB26E5D3.gr7.ap-southeast-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::829856906111:role/eks-cluster-orb-mini-prod-ap-southeast-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0046f893d4dcf05fd",
                "subnet-0233dbf15bfd65edf",
                "subnet-03c2fe8d5a6c9d69f"
            ],
            "securityGroupIds": [
                "sg-02364e642a24f9253"
            ],
            "clusterSecurityGroupId": "sg-0100d00d5b438f7a5",
            "vpcId": "vpc-04e4a0e82f4f6067c",
            "endpointPublicAccess": false,
            "endpointPrivateAccess": true,
            "publicAccessCidrs": []
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
                "issuer": "https://oidc.eks.ap-southeast-1.amazonaws.com/id/62FAC0DB16F93DFAA2A4041FEB26E5D3"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJZXdGdnN5UlJHMW93RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBNE1EUXhOREEwTVRkYUZ3MHpOVEE0TURJeE5EQTVNVGRhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUN6amVMZW1YSnFHaCtTeWpUcnFjTVhFcCtqSVQvZmMzWUVZZkgrU0hBc1JjRWY4UEh1NktWcnYwczUKYjI1d29oWXpudU9nWnY1eE1OWGxjMW5NS1hJMnkrNXA3SzV6bEJGZ2pSVkpXV1ljTjM3RWtBTWQ5emhZSWxNcwpEV3A2c1dkdHBPRnpYQ0FtakJaeEpkTzc3VFcxOEtCanZ4Nk1neFZnbkdoWi9XaGdwbkFZdzlrMFZCSE43TFRzClNzRWJWTlErTHViYU1jeU5ldXZFMm5VUTJqbFZuTldTWmxpd1NncFM5dXI5bDBiMG1hWUcvdE0rcjZ6N0wrenQKbmprQmVTY04waWZvZ0ZCK3NldG9DaDI2dlJLZjh4ZUdacUVoSFdYaG9EKzd2aVdiUUhISWQ1eUlmc3M5T1FSRQozQ2RTN29pWmx1eXltb1lvei9RRWtRSEpIQVl6QWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSVnFQeFB6MmVjZThkRU5TT2x5djZrano3TjFqQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQWE5UWcxbUJpUQpyZGZEQ2E2b0QyYzZIeFEwVXNveUl3RHlJVFNtVFgzMUdhaEhWcEZNTFQ1VkU3cjlrOVZqT3lMTWxHRkV3cEtMCkZmUmovUGNjZVhpd2ZnNmlOZEdLTXVqVnBpZk84S0pWK3lnWG5FQzZva21DV1VaY3h6dzBiTURNcTdnMVpVSGMKektvZ2phL2FxRjZaWEdOUW14N3BLR1NaMWwvUmt2WW9LYXdseXJIN1IwSFdnN0dyZHh0Rjl1Tk9BNUFZM0NSZApKUlZDM2pqam5TK3Q1RldvamFjcWVhTm9wS1U5aklCVUxnVkdZRGNqRm5KM29LY0ozUXJrSU5tQmw5MitsbUt6CmVIZzhOS2ZMY25ZeVZGdk4vY2FOaHFiSkN5TTh0OFhoUDhzU2hQQUJ0bTk1TjcrRTZNWTlUaUtZcEZkNFgyRWwKclVoTDVld29oYzE3Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-mini-prod-ap-southeast-1",
            "Team": "orb-mini",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:ap-southeast-1:829856906111:key/cee1c119-0462-41af-8faf-b7181eb93d46"
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
NAME                                               STATUS   ROLES    AGE   VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-37-144-47.ap-southeast-1.compute.internal    Ready    <none>   28m   v1.33.4-eks-99d6cc0   10.37.144.47    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-mini-prod-ap-southeast-1
ip-10-37-146-32.ap-southeast-1.compute.internal    Ready    <none>   22m   v1.33.4-eks-99d6cc0   10.37.146.32    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-37-148-244.ap-southeast-1.compute.internal   Ready    <none>   22m   v1.33.4-eks-99d6cc0   10.37.148.244   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-37-149-118.ap-southeast-1.compute.internal   Ready    <none>   20m   v1.33.4-eks-99d6cc0   10.37.149.118   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-37-149-120.ap-southeast-1.compute.internal   Ready    <none>   27m   v1.33.4-eks-99d6cc0   10.37.149.120   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-mini-prod-ap-southeast-1
```

Nodes and their taints
```
NAME                                               STATUS   ROLES    TAINTS
ip-10-37-144-47.ap-southeast-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-37-146-32.ap-southeast-1.compute.internal    Ready    <none>   <none>
ip-10-37-148-244.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-37-149-118.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-37-149-120.ap-southeast-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                                                  MESSAGE
24m         Normal    Finalized                 node                                                    Finalized karpenter.sh/termination
3m39s       Normal    Finalized                 node                                                    Finalized karpenter.sh/termination
28m         Normal    Starting                  node/ip-10-37-144-197.ap-southeast-1.compute.internal   Starting kubelet.
28m         Warning   InvalidDiskCapacity       node/ip-10-37-144-197.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
28m         Normal    NodeHasSufficientMemory   node/ip-10-37-144-197.ap-southeast-1.compute.internal   Node ip-10-37-144-197.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure     node/ip-10-37-144-197.ap-southeast-1.compute.internal   Node ip-10-37-144-197.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID      node/ip-10-37-144-197.ap-southeast-1.compute.internal   Node ip-10-37-144-197.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
28m         Normal    NodeAllocatableEnforced   node/ip-10-37-144-197.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
28m         Normal    Synced                    node/ip-10-37-144-197.ap-southeast-1.compute.internal   Node synced successfully
28m         Normal    RegisteredNode            node/ip-10-37-144-197.ap-southeast-1.compute.internal   Node ip-10-37-144-197.ap-southeast-1.compute.internal event: Registered Node ip-10-37-144-197.ap-southeast-1.compute.internal in Controller
28m         Normal    Starting                  node/ip-10-37-144-197.ap-southeast-1.compute.internal   
28m         Normal    ControllerVersionNotice   node/ip-10-37-144-197.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
27m         Warning   Unsupported               node/ip-10-37-144-197.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    NodeReady                 node/ip-10-37-144-197.ap-southeast-1.compute.internal   Node ip-10-37-144-197.ap-southeast-1.compute.internal status is now: NodeReady
28m         Normal    Ready                     node/ip-10-37-144-197.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
27m         Normal    RegisteredNode            node/ip-10-37-144-197.ap-southeast-1.compute.internal   Node ip-10-37-144-197.ap-southeast-1.compute.internal event: Registered Node ip-10-37-144-197.ap-southeast-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice   node/ip-10-37-144-197.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
15m         Warning   Unsupported               node/ip-10-37-144-197.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    NodeNotSchedulable        node/ip-10-37-144-197.ap-southeast-1.compute.internal   Node ip-10-37-144-197.ap-southeast-1.compute.internal status is now: NodeNotSchedulable
15m         Normal    NodeNotReady              node/ip-10-37-144-197.ap-southeast-1.compute.internal   Node ip-10-37-144-197.ap-southeast-1.compute.internal status is now: NodeNotReady
15m         Normal    MemoryPressure            node/ip-10-37-144-197.ap-southeast-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DiskPressure              node/ip-10-37-144-197.ap-southeast-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    PIDPressure               node/ip-10-37-144-197.ap-southeast-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    Ready                     node/ip-10-37-144-197.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DeletingNode              node/ip-10-37-144-197.ap-southeast-1.compute.internal   Deleting node ip-10-37-144-197.ap-southeast-1.compute.internal because it does not exist in the cloud provider
15m         Normal    RemovingNode              node/ip-10-37-144-197.ap-southeast-1.compute.internal   Node ip-10-37-144-197.ap-southeast-1.compute.internal event: Removing Node ip-10-37-144-197.ap-southeast-1.compute.internal from Controller
28m         Normal    Starting                  node/ip-10-37-144-47.ap-southeast-1.compute.internal    Starting kubelet.
28m         Warning   InvalidDiskCapacity       node/ip-10-37-144-47.ap-southeast-1.compute.internal    invalid capacity 0 on image filesystem
28m         Normal    NodeHasSufficientMemory   node/ip-10-37-144-47.ap-southeast-1.compute.internal    Node ip-10-37-144-47.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure     node/ip-10-37-144-47.ap-southeast-1.compute.internal    Node ip-10-37-144-47.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID      node/ip-10-37-144-47.ap-southeast-1.compute.internal    Node ip-10-37-144-47.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
28m         Normal    NodeAllocatableEnforced   node/ip-10-37-144-47.ap-southeast-1.compute.internal    Updated Node Allocatable limit across pods
28m         Normal    Synced                    node/ip-10-37-144-47.ap-southeast-1.compute.internal    Node synced successfully
28m         Normal    RegisteredNode            node/ip-10-37-144-47.ap-southeast-1.compute.internal    Node ip-10-37-144-47.ap-southeast-1.compute.internal event: Registered Node ip-10-37-144-47.ap-southeast-1.compute.internal in Controller
28m         Normal    Starting                  node/ip-10-37-144-47.ap-southeast-1.compute.internal    
28m         Normal    ControllerVersionNotice   node/ip-10-37-144-47.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
27m         Warning   Unsupported               node/ip-10-37-144-47.ap-southeast-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    NodeReady                 node/ip-10-37-144-47.ap-southeast-1.compute.internal    Node ip-10-37-144-47.ap-southeast-1.compute.internal status is now: NodeReady
28m         Normal    Ready                     node/ip-10-37-144-47.ap-southeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
27m         Normal    RegisteredNode            node/ip-10-37-144-47.ap-southeast-1.compute.internal    Node ip-10-37-144-47.ap-southeast-1.compute.internal event: Registered Node ip-10-37-144-47.ap-southeast-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice   node/ip-10-37-144-47.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
98s         Warning   Unsupported               node/ip-10-37-144-47.ap-southeast-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    Starting                  node/ip-10-37-146-156.ap-southeast-1.compute.internal   Starting kubelet.
26m         Warning   InvalidDiskCapacity       node/ip-10-37-146-156.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
26m         Normal    NodeHasSufficientMemory   node/ip-10-37-146-156.ap-southeast-1.compute.internal   Node ip-10-37-146-156.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
26m         Normal    NodeHasNoDiskPressure     node/ip-10-37-146-156.ap-southeast-1.compute.internal   Node ip-10-37-146-156.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
26m         Normal    NodeHasSufficientPID      node/ip-10-37-146-156.ap-southeast-1.compute.internal   Node ip-10-37-146-156.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
26m         Normal    NodeAllocatableEnforced   node/ip-10-37-146-156.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
26m         Normal    Synced                    node/ip-10-37-146-156.ap-southeast-1.compute.internal   Node synced successfully
26m         Normal    RegisteredNode            node/ip-10-37-146-156.ap-southeast-1.compute.internal   Node ip-10-37-146-156.ap-southeast-1.compute.internal event: Registered Node ip-10-37-146-156.ap-southeast-1.compute.internal in Controller
26m         Normal    Starting                  node/ip-10-37-146-156.ap-southeast-1.compute.internal   
26m         Normal    ControllerVersionNotice   node/ip-10-37-146-156.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
12m         Warning   Unsupported               node/ip-10-37-146-156.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    NodeReady                 node/ip-10-37-146-156.ap-southeast-1.compute.internal   Node ip-10-37-146-156.ap-southeast-1.compute.internal status is now: NodeReady
26m         Normal    Ready                     node/ip-10-37-146-156.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeNotSchedulable        node/ip-10-37-146-156.ap-southeast-1.compute.internal   Node ip-10-37-146-156.ap-southeast-1.compute.internal status is now: NodeNotSchedulable
12m         Normal    NodeNotReady              node/ip-10-37-146-156.ap-southeast-1.compute.internal   Node ip-10-37-146-156.ap-southeast-1.compute.internal status is now: NodeNotReady
12m         Normal    MemoryPressure            node/ip-10-37-146-156.ap-southeast-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DiskPressure              node/ip-10-37-146-156.ap-southeast-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    PIDPressure               node/ip-10-37-146-156.ap-southeast-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    Ready                     node/ip-10-37-146-156.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DeletingNode              node/ip-10-37-146-156.ap-southeast-1.compute.internal   Deleting node ip-10-37-146-156.ap-southeast-1.compute.internal because it does not exist in the cloud provider
12m         Normal    RemovingNode              node/ip-10-37-146-156.ap-southeast-1.compute.internal   Node ip-10-37-146-156.ap-southeast-1.compute.internal event: Removing Node ip-10-37-146-156.ap-southeast-1.compute.internal from Controller
23m         Normal    Starting                  node/ip-10-37-146-170.ap-southeast-1.compute.internal   Starting kubelet.
23m         Warning   InvalidDiskCapacity       node/ip-10-37-146-170.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory   node/ip-10-37-146-170.ap-southeast-1.compute.internal   Node ip-10-37-146-170.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure     node/ip-10-37-146-170.ap-southeast-1.compute.internal   Node ip-10-37-146-170.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID      node/ip-10-37-146-170.ap-southeast-1.compute.internal   Node ip-10-37-146-170.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced   node/ip-10-37-146-170.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
23m         Normal    Synced                    node/ip-10-37-146-170.ap-southeast-1.compute.internal   Node synced successfully
23m         Normal    RegisteredNode            node/ip-10-37-146-170.ap-southeast-1.compute.internal   Node ip-10-37-146-170.ap-southeast-1.compute.internal event: Registered Node ip-10-37-146-170.ap-southeast-1.compute.internal in Controller
22m         Normal    DisruptionBlocked         node/ip-10-37-146-170.ap-southeast-1.compute.internal   Node isn't initialized
22m         Normal    Starting                  node/ip-10-37-146-170.ap-southeast-1.compute.internal   
22m         Normal    ControllerVersionNotice   node/ip-10-37-146-170.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeReady                 node/ip-10-37-146-170.ap-southeast-1.compute.internal   Node ip-10-37-146-170.ap-southeast-1.compute.internal status is now: NodeReady
22m         Normal    Ready                     node/ip-10-37-146-170.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    NodeTrunkInitiated        node/ip-10-37-146-170.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked         node/ip-10-37-146-170.ap-southeast-1.compute.internal   Node is nominated for a pending pod
4m56s       Normal    DisruptionBlocked         node/ip-10-37-146-170.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
4m56s       Normal    DisruptionTerminating     node/ip-10-37-146-170.ap-southeast-1.compute.internal   Disrupting Node: Underutilized/Delete
4m56s       Warning   FailedDraining            node/ip-10-37-146-170.ap-southeast-1.compute.internal   Failed to drain node, 5 pods are waiting to be evicted
4m36s       Warning   InstanceTerminating       node/ip-10-37-146-170.ap-southeast-1.compute.internal   Instance is terminating
3m49s       Normal    NodeNotReady              node/ip-10-37-146-170.ap-southeast-1.compute.internal   Node ip-10-37-146-170.ap-southeast-1.compute.internal status is now: NodeNotReady
3m49s       Normal    MemoryPressure            node/ip-10-37-146-170.ap-southeast-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
3m49s       Normal    DiskPressure              node/ip-10-37-146-170.ap-southeast-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
3m49s       Normal    PIDPressure               node/ip-10-37-146-170.ap-southeast-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
3m49s       Normal    Ready                     node/ip-10-37-146-170.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
3m39s       Normal    RemovingNode              node/ip-10-37-146-170.ap-southeast-1.compute.internal   Node ip-10-37-146-170.ap-southeast-1.compute.internal event: Removing Node ip-10-37-146-170.ap-southeast-1.compute.internal from Controller
22m         Normal    Starting                  node/ip-10-37-146-32.ap-southeast-1.compute.internal    Starting kubelet.
22m         Warning   InvalidDiskCapacity       node/ip-10-37-146-32.ap-southeast-1.compute.internal    invalid capacity 0 on image filesystem
22m         Normal    NodeHasSufficientMemory   node/ip-10-37-146-32.ap-southeast-1.compute.internal    Node ip-10-37-146-32.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
22m         Normal    NodeHasNoDiskPressure     node/ip-10-37-146-32.ap-southeast-1.compute.internal    Node ip-10-37-146-32.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
22m         Normal    NodeHasSufficientPID      node/ip-10-37-146-32.ap-southeast-1.compute.internal    Node ip-10-37-146-32.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
22m         Normal    NodeAllocatableEnforced   node/ip-10-37-146-32.ap-southeast-1.compute.internal    Updated Node Allocatable limit across pods
22m         Normal    RegisteredNode            node/ip-10-37-146-32.ap-southeast-1.compute.internal    Node ip-10-37-146-32.ap-southeast-1.compute.internal event: Registered Node ip-10-37-146-32.ap-southeast-1.compute.internal in Controller
22m         Normal    Starting                  node/ip-10-37-146-32.ap-southeast-1.compute.internal    
22m         Normal    Synced                    node/ip-10-37-146-32.ap-southeast-1.compute.internal    Node synced successfully
21m         Normal    ControllerVersionNotice   node/ip-10-37-146-32.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeReady                 node/ip-10-37-146-32.ap-southeast-1.compute.internal    Node ip-10-37-146-32.ap-southeast-1.compute.internal status is now: NodeReady
21m         Normal    NodeTrunkInitiated        node/ip-10-37-146-32.ap-southeast-1.compute.internal    The node has trunk interface initialized successfully
4m56s       Normal    DisruptionBlocked         node/ip-10-37-146-32.ap-southeast-1.compute.internal    Node is nominated for a pending pod
12m         Normal    DisruptionBlocked         node/ip-10-37-146-32.ap-southeast-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
31m         Warning   Unsupported               node/ip-10-37-146-87.ap-southeast-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
27m         Normal    RegisteredNode            node/ip-10-37-146-87.ap-southeast-1.compute.internal    Node ip-10-37-146-87.ap-southeast-1.compute.internal event: Registered Node ip-10-37-146-87.ap-southeast-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice   node/ip-10-37-146-87.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
19m         Warning   Unsupported               node/ip-10-37-146-87.ap-southeast-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    NodeNotSchedulable        node/ip-10-37-146-87.ap-southeast-1.compute.internal    Node ip-10-37-146-87.ap-southeast-1.compute.internal status is now: NodeNotSchedulable
19m         Normal    MemoryPressure            node/ip-10-37-146-87.ap-southeast-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DiskPressure              node/ip-10-37-146-87.ap-southeast-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    PIDPressure               node/ip-10-37-146-87.ap-southeast-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    Ready                     node/ip-10-37-146-87.ap-southeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    NodeNotReady              node/ip-10-37-146-87.ap-southeast-1.compute.internal    Node ip-10-37-146-87.ap-southeast-1.compute.internal status is now: NodeNotReady
19m         Normal    DeletingNode              node/ip-10-37-146-87.ap-southeast-1.compute.internal    Deleting node ip-10-37-146-87.ap-southeast-1.compute.internal because it does not exist in the cloud provider
19m         Normal    RemovingNode              node/ip-10-37-146-87.ap-southeast-1.compute.internal    Node ip-10-37-146-87.ap-southeast-1.compute.internal event: Removing Node ip-10-37-146-87.ap-southeast-1.compute.internal from Controller
33m         Normal    Unconsolidatable          node/ip-10-37-147-127.ap-southeast-1.compute.internal   Can't remove without creating 2 candidates
61m         Normal    DisruptionBlocked         node/ip-10-37-147-127.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
26m         Normal    DisruptionBlocked         node/ip-10-37-147-127.ap-southeast-1.compute.internal   Node is nominated for a pending pod
65m         Normal    Unconsolidatable          node/ip-10-37-147-127.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
27m         Normal    RegisteredNode            node/ip-10-37-147-127.ap-southeast-1.compute.internal   Node ip-10-37-147-127.ap-southeast-1.compute.internal event: Registered Node ip-10-37-147-127.ap-southeast-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice   node/ip-10-37-147-127.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated        node/ip-10-37-147-127.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked         node/ip-10-37-147-127.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
22m         Normal    DisruptionTerminating     node/ip-10-37-147-127.ap-southeast-1.compute.internal   Disrupting Node: Drifted/Replace
22m         Warning   FailedDraining            node/ip-10-37-147-127.ap-southeast-1.compute.internal   Failed to drain node, 12 pods are waiting to be evicted
21m         Warning   FailedDraining            node/ip-10-37-147-127.ap-southeast-1.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
21m         Normal    DisruptionBlocked         node/ip-10-37-147-127.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
21m         Warning   InstanceTerminating       node/ip-10-37-147-127.ap-southeast-1.compute.internal   Instance is terminating
20m         Normal    NodeNotReady              node/ip-10-37-147-127.ap-southeast-1.compute.internal   Node ip-10-37-147-127.ap-southeast-1.compute.internal status is now: NodeNotReady
20m         Normal    MemoryPressure            node/ip-10-37-147-127.ap-southeast-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    DiskPressure              node/ip-10-37-147-127.ap-southeast-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    PIDPressure               node/ip-10-37-147-127.ap-southeast-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    Ready                     node/ip-10-37-147-127.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    DeletingNode              node/ip-10-37-147-127.ap-southeast-1.compute.internal   Deleting node ip-10-37-147-127.ap-southeast-1.compute.internal because it does not exist in the cloud provider
20m         Normal    RemovingNode              node/ip-10-37-147-127.ap-southeast-1.compute.internal   Node ip-10-37-147-127.ap-southeast-1.compute.internal event: Removing Node ip-10-37-147-127.ap-southeast-1.compute.internal from Controller
83m         Normal    Starting                  node/ip-10-37-147-131.ap-southeast-1.compute.internal   Starting kubelet.
83m         Warning   InvalidDiskCapacity       node/ip-10-37-147-131.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
83m         Normal    NodeHasSufficientMemory   node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node ip-10-37-147-131.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
83m         Normal    NodeHasNoDiskPressure     node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node ip-10-37-147-131.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
83m         Normal    NodeHasSufficientPID      node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node ip-10-37-147-131.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
83m         Normal    NodeAllocatableEnforced   node/ip-10-37-147-131.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
83m         Normal    Synced                    node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node synced successfully
83m         Normal    DisruptionBlocked         node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node isn't initialized
83m         Normal    RegisteredNode            node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node ip-10-37-147-131.ap-southeast-1.compute.internal event: Registered Node ip-10-37-147-131.ap-southeast-1.compute.internal in Controller
83m         Normal    Starting                  node/ip-10-37-147-131.ap-southeast-1.compute.internal   
83m         Normal    ControllerVersionNotice   node/ip-10-37-147-131.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
83m         Normal    NodeReady                 node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node ip-10-37-147-131.ap-southeast-1.compute.internal status is now: NodeReady
83m         Normal    Ready                     node/ip-10-37-147-131.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
83m         Normal    NodeTrunkInitiated        node/ip-10-37-147-131.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked         node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node is nominated for a pending pod
27m         Normal    RegisteredNode            node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node ip-10-37-147-131.ap-southeast-1.compute.internal event: Registered Node ip-10-37-147-131.ap-southeast-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice   node/ip-10-37-147-131.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated        node/ip-10-37-147-131.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked         node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
21m         Normal    DisruptionTerminating     node/ip-10-37-147-131.ap-southeast-1.compute.internal   Disrupting Node: Drifted/Delete
21m         Warning   FailedDraining            node/ip-10-37-147-131.ap-southeast-1.compute.internal   Failed to drain node, 15 pods are waiting to be evicted
21m         Warning   InstanceTerminating       node/ip-10-37-147-131.ap-southeast-1.compute.internal   Instance is terminating
20m         Normal    RemovingNode              node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node ip-10-37-147-131.ap-southeast-1.compute.internal event: Removing Node ip-10-37-147-131.ap-southeast-1.compute.internal from Controller
90m         Normal    Unconsolidatable          node/ip-10-37-148-179.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
67m         Normal    DisruptionBlocked         node/ip-10-37-148-179.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
67m         Normal    DisruptionTerminating     node/ip-10-37-148-179.ap-southeast-1.compute.internal   Disrupting Node: Underutilized/Delete
67m         Warning   FailedDraining            node/ip-10-37-148-179.ap-southeast-1.compute.internal   Failed to drain node, 16 pods are waiting to be evicted
66m         Warning   InstanceTerminating       node/ip-10-37-148-179.ap-southeast-1.compute.internal   Instance is terminating
65m         Normal    NodeNotReady              node/ip-10-37-148-179.ap-southeast-1.compute.internal   Node ip-10-37-148-179.ap-southeast-1.compute.internal status is now: NodeNotReady
65m         Normal    MemoryPressure            node/ip-10-37-148-179.ap-southeast-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
65m         Normal    DiskPressure              node/ip-10-37-148-179.ap-southeast-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
65m         Normal    PIDPressure               node/ip-10-37-148-179.ap-southeast-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
65m         Normal    Ready                     node/ip-10-37-148-179.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
65m         Normal    RemovingNode              node/ip-10-37-148-179.ap-southeast-1.compute.internal   Node ip-10-37-148-179.ap-southeast-1.compute.internal event: Removing Node ip-10-37-148-179.ap-southeast-1.compute.internal from Controller
29m         Warning   Unsupported               node/ip-10-37-148-241.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
27m         Normal    RegisteredNode            node/ip-10-37-148-241.ap-southeast-1.compute.internal   Node ip-10-37-148-241.ap-southeast-1.compute.internal event: Registered Node ip-10-37-148-241.ap-southeast-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice   node/ip-10-37-148-241.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
21m         Warning   Unsupported               node/ip-10-37-148-241.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    NodeNotSchedulable        node/ip-10-37-148-241.ap-southeast-1.compute.internal   Node ip-10-37-148-241.ap-southeast-1.compute.internal status is now: NodeNotSchedulable
21m         Normal    NodeNotReady              node/ip-10-37-148-241.ap-southeast-1.compute.internal   Node ip-10-37-148-241.ap-southeast-1.compute.internal status is now: NodeNotReady
21m         Normal    MemoryPressure            node/ip-10-37-148-241.ap-southeast-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    DiskPressure              node/ip-10-37-148-241.ap-southeast-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    PIDPressure               node/ip-10-37-148-241.ap-southeast-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    Ready                     node/ip-10-37-148-241.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    DeletingNode              node/ip-10-37-148-241.ap-southeast-1.compute.internal   Deleting node ip-10-37-148-241.ap-southeast-1.compute.internal because it does not exist in the cloud provider
21m         Normal    RemovingNode              node/ip-10-37-148-241.ap-southeast-1.compute.internal   Node ip-10-37-148-241.ap-southeast-1.compute.internal event: Removing Node ip-10-37-148-241.ap-southeast-1.compute.internal from Controller
23m         Normal    Starting                  node/ip-10-37-148-244.ap-southeast-1.compute.internal   Starting kubelet.
23m         Warning   InvalidDiskCapacity       node/ip-10-37-148-244.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory   node/ip-10-37-148-244.ap-southeast-1.compute.internal   Node ip-10-37-148-244.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure     node/ip-10-37-148-244.ap-southeast-1.compute.internal   Node ip-10-37-148-244.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID      node/ip-10-37-148-244.ap-southeast-1.compute.internal   Node ip-10-37-148-244.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced   node/ip-10-37-148-244.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
23m         Normal    RegisteredNode            node/ip-10-37-148-244.ap-southeast-1.compute.internal   Node ip-10-37-148-244.ap-southeast-1.compute.internal event: Registered Node ip-10-37-148-244.ap-southeast-1.compute.internal in Controller
22m         Normal    DisruptionBlocked         node/ip-10-37-148-244.ap-southeast-1.compute.internal   Node isn't initialized
22m         Normal    Synced                    node/ip-10-37-148-244.ap-southeast-1.compute.internal   Node synced successfully
22m         Normal    Starting                  node/ip-10-37-148-244.ap-southeast-1.compute.internal   
22m         Normal    ControllerVersionNotice   node/ip-10-37-148-244.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeReady                 node/ip-10-37-148-244.ap-southeast-1.compute.internal   Node ip-10-37-148-244.ap-southeast-1.compute.internal status is now: NodeReady
22m         Normal    Ready                     node/ip-10-37-148-244.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    NodeTrunkInitiated        node/ip-10-37-148-244.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
4m56s       Normal    Unconsolidatable          node/ip-10-37-148-244.ap-southeast-1.compute.internal   Can't remove without creating 2 candidates
66m         Normal    Starting                  node/ip-10-37-148-47.ap-southeast-1.compute.internal    Starting kubelet.
66m         Warning   InvalidDiskCapacity       node/ip-10-37-148-47.ap-southeast-1.compute.internal    invalid capacity 0 on image filesystem
66m         Normal    NodeHasSufficientMemory   node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node ip-10-37-148-47.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
66m         Normal    NodeHasNoDiskPressure     node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node ip-10-37-148-47.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
66m         Normal    NodeHasSufficientPID      node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node ip-10-37-148-47.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
66m         Normal    NodeAllocatableEnforced   node/ip-10-37-148-47.ap-southeast-1.compute.internal    Updated Node Allocatable limit across pods
66m         Normal    Synced                    node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node synced successfully
66m         Normal    RegisteredNode            node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node ip-10-37-148-47.ap-southeast-1.compute.internal event: Registered Node ip-10-37-148-47.ap-southeast-1.compute.internal in Controller
66m         Normal    DisruptionBlocked         node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node isn't initialized
66m         Normal    Starting                  node/ip-10-37-148-47.ap-southeast-1.compute.internal    
66m         Normal    ControllerVersionNotice   node/ip-10-37-148-47.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
66m         Normal    NodeReady                 node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node ip-10-37-148-47.ap-southeast-1.compute.internal status is now: NodeReady
66m         Normal    Ready                     node/ip-10-37-148-47.ap-southeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
66m         Normal    NodeTrunkInitiated        node/ip-10-37-148-47.ap-southeast-1.compute.internal    The node has trunk interface initialized successfully
61m         Normal    DisruptionBlocked         node/ip-10-37-148-47.ap-southeast-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
50m         Normal    DisruptionBlocked         node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node is nominated for a pending pod
33m         Normal    Unconsolidatable          node/ip-10-37-148-47.ap-southeast-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
27m         Normal    RegisteredNode            node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node ip-10-37-148-47.ap-southeast-1.compute.internal event: Registered Node ip-10-37-148-47.ap-southeast-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice   node/ip-10-37-148-47.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated        node/ip-10-37-148-47.ap-southeast-1.compute.internal    The node has trunk interface initialized successfully
26m         Normal    DisruptionBlocked         node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node is deleting or marked for deletion
26m         Normal    DisruptionTerminating     node/ip-10-37-148-47.ap-southeast-1.compute.internal    Disrupting Node: Underutilized/Delete
26m         Warning   FailedDraining            node/ip-10-37-148-47.ap-southeast-1.compute.internal    Failed to drain node, 9 pods are waiting to be evicted
25m         Warning   InstanceTerminating       node/ip-10-37-148-47.ap-southeast-1.compute.internal    Instance is terminating
25m         Normal    NodeNotReady              node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node ip-10-37-148-47.ap-southeast-1.compute.internal status is now: NodeNotReady
25m         Normal    MemoryPressure            node/ip-10-37-148-47.ap-southeast-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    DiskPressure              node/ip-10-37-148-47.ap-southeast-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    PIDPressure               node/ip-10-37-148-47.ap-southeast-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
25m         Normal    Ready                     node/ip-10-37-148-47.ap-southeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
24m         Normal    DeletingNode              node/ip-10-37-148-47.ap-southeast-1.compute.internal    Deleting node ip-10-37-148-47.ap-southeast-1.compute.internal because it does not exist in the cloud provider
24m         Normal    RemovingNode              node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node ip-10-37-148-47.ap-southeast-1.compute.internal event: Removing Node ip-10-37-148-47.ap-southeast-1.compute.internal from Controller
67m         Normal    DisruptionBlocked         node/ip-10-37-149-101.ap-southeast-1.compute.internal   Node is nominated for a pending pod
50m         Normal    DisruptionBlocked         node/ip-10-37-149-101.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
50m         Normal    DisruptionTerminating     node/ip-10-37-149-101.ap-southeast-1.compute.internal   Disrupting Node: Underutilized/Delete
50m         Warning   FailedDraining            node/ip-10-37-149-101.ap-southeast-1.compute.internal   Failed to drain node, 10 pods are waiting to be evicted
49m         Warning   InstanceTerminating       node/ip-10-37-149-101.ap-southeast-1.compute.internal   Instance is terminating
48m         Normal    RemovingNode              node/ip-10-37-149-101.ap-southeast-1.compute.internal   Node ip-10-37-149-101.ap-southeast-1.compute.internal event: Removing Node ip-10-37-149-101.ap-southeast-1.compute.internal from Controller
20m         Normal    Starting                  node/ip-10-37-149-118.ap-southeast-1.compute.internal   Starting kubelet.
20m         Warning   InvalidDiskCapacity       node/ip-10-37-149-118.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
20m         Normal    NodeHasSufficientMemory   node/ip-10-37-149-118.ap-southeast-1.compute.internal   Node ip-10-37-149-118.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
20m         Normal    NodeHasNoDiskPressure     node/ip-10-37-149-118.ap-southeast-1.compute.internal   Node ip-10-37-149-118.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
20m         Normal    NodeHasSufficientPID      node/ip-10-37-149-118.ap-southeast-1.compute.internal   Node ip-10-37-149-118.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
20m         Normal    NodeAllocatableEnforced   node/ip-10-37-149-118.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
20m         Normal    Synced                    node/ip-10-37-149-118.ap-southeast-1.compute.internal   Node synced successfully
20m         Normal    DisruptionBlocked         node/ip-10-37-149-118.ap-southeast-1.compute.internal   Node isn't initialized
20m         Normal    RegisteredNode            node/ip-10-37-149-118.ap-southeast-1.compute.internal   Node ip-10-37-149-118.ap-southeast-1.compute.internal event: Registered Node ip-10-37-149-118.ap-southeast-1.compute.internal in Controller
20m         Normal    Starting                  node/ip-10-37-149-118.ap-southeast-1.compute.internal   
20m         Normal    ControllerVersionNotice   node/ip-10-37-149-118.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeReady                 node/ip-10-37-149-118.ap-southeast-1.compute.internal   Node ip-10-37-149-118.ap-southeast-1.compute.internal status is now: NodeReady
20m         Normal    Ready                     node/ip-10-37-149-118.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
20m         Normal    NodeTrunkInitiated        node/ip-10-37-149-118.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
12m         Normal    DisruptionBlocked         node/ip-10-37-149-118.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
4m56s       Normal    DisruptionBlocked         node/ip-10-37-149-118.ap-southeast-1.compute.internal   Node is nominated for a pending pod
27m         Normal    Starting                  node/ip-10-37-149-120.ap-southeast-1.compute.internal   Starting kubelet.
27m         Warning   InvalidDiskCapacity       node/ip-10-37-149-120.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory   node/ip-10-37-149-120.ap-southeast-1.compute.internal   Node ip-10-37-149-120.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure     node/ip-10-37-149-120.ap-southeast-1.compute.internal   Node ip-10-37-149-120.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID      node/ip-10-37-149-120.ap-southeast-1.compute.internal   Node ip-10-37-149-120.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced   node/ip-10-37-149-120.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
27m         Normal    RegisteredNode            node/ip-10-37-149-120.ap-southeast-1.compute.internal   Node ip-10-37-149-120.ap-southeast-1.compute.internal event: Registered Node ip-10-37-149-120.ap-southeast-1.compute.internal in Controller
27m         Normal    Synced                    node/ip-10-37-149-120.ap-southeast-1.compute.internal   Node synced successfully
27m         Normal    Starting                  node/ip-10-37-149-120.ap-southeast-1.compute.internal   
27m         Normal    ControllerVersionNotice   node/ip-10-37-149-120.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeReady                 node/ip-10-37-149-120.ap-southeast-1.compute.internal   Node ip-10-37-149-120.ap-southeast-1.compute.internal status is now: NodeReady
27m         Normal    Ready                     node/ip-10-37-149-120.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
101s        Warning   Unsupported               node/ip-10-37-149-120.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
27m         Normal    Starting                  node/ip-10-37-149-249.ap-southeast-1.compute.internal   Starting kubelet.
27m         Warning   InvalidDiskCapacity       node/ip-10-37-149-249.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory   node/ip-10-37-149-249.ap-southeast-1.compute.internal   Node ip-10-37-149-249.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure     node/ip-10-37-149-249.ap-southeast-1.compute.internal   Node ip-10-37-149-249.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID      node/ip-10-37-149-249.ap-southeast-1.compute.internal   Node ip-10-37-149-249.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced   node/ip-10-37-149-249.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
27m         Normal    Synced                    node/ip-10-37-149-249.ap-southeast-1.compute.internal   Node synced successfully
27m         Normal    RegisteredNode            node/ip-10-37-149-249.ap-southeast-1.compute.internal   Node ip-10-37-149-249.ap-southeast-1.compute.internal event: Registered Node ip-10-37-149-249.ap-southeast-1.compute.internal in Controller
27m         Normal    Starting                  node/ip-10-37-149-249.ap-southeast-1.compute.internal   
27m         Normal    DisruptionBlocked         node/ip-10-37-149-249.ap-southeast-1.compute.internal   Node isn't initialized
27m         Normal    ControllerVersionNotice   node/ip-10-37-149-249.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
27m         Normal    NodeReady                 node/ip-10-37-149-249.ap-southeast-1.compute.internal   Node ip-10-37-149-249.ap-southeast-1.compute.internal status is now: NodeReady
27m         Normal    Ready                     node/ip-10-37-149-249.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
27m         Normal    RegisteredNode            node/ip-10-37-149-249.ap-southeast-1.compute.internal   Node ip-10-37-149-249.ap-southeast-1.compute.internal event: Registered Node ip-10-37-149-249.ap-southeast-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice   node/ip-10-37-149-249.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated        node/ip-10-37-149-249.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked         node/ip-10-37-149-249.ap-southeast-1.compute.internal   Node is nominated for a pending pod
20m         Normal    DisruptionBlocked         node/ip-10-37-149-249.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
20m         Normal    DisruptionTerminating     node/ip-10-37-149-249.ap-southeast-1.compute.internal   Disrupting Node: Drifted/Replace
20m         Warning   FailedDraining            node/ip-10-37-149-249.ap-southeast-1.compute.internal   Failed to drain node, 5 pods are waiting to be evicted
20m         Warning   InstanceTerminating       node/ip-10-37-149-249.ap-southeast-1.compute.internal   Instance is terminating
19m         Normal    NodeNotReady              node/ip-10-37-149-249.ap-southeast-1.compute.internal   Node ip-10-37-149-249.ap-southeast-1.compute.internal status is now: NodeNotReady
19m         Normal    MemoryPressure            node/ip-10-37-149-249.ap-southeast-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DiskPressure              node/ip-10-37-149-249.ap-southeast-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    PIDPressure               node/ip-10-37-149-249.ap-southeast-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    Ready                     node/ip-10-37-149-249.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
18m         Normal    RemovingNode              node/ip-10-37-149-249.ap-southeast-1.compute.internal   Node ip-10-37-149-249.ap-southeast-1.compute.internal event: Removing Node ip-10-37-149-249.ap-southeast-1.compute.internal from Controller
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE     NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
karpenter     karpenter                      N/A             1                 1                     48d
kube-system   coredns                        N/A             1                 1                     49d
kube-system   ebs-csi-controller             N/A             1                 1                     49d
kyverno       kyverno-admission-controller   1               N/A               2                     48d
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

Generated on: Tue Sep 23 14:08:20 CEST 2025
