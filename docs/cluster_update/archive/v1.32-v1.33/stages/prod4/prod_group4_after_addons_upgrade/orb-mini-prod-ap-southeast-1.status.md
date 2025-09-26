# Cluster recon for tfh-orb-mini-prod-infra,ap-southeast-1,orb-mini-prod-ap-southeast-1,tunnel-vpc-orb-mini-prod-ap-southeast-1

TFH EKS login...
```console
2025/09/23 13:18:30 INFO Logging into AWS
2025/09/23 13:18:30 INFO Token found and valid
2025/09/23 13:18:33 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-mini-prod-ap-southeast-1 id=7269c9e6-fbfa-4c41-89ec-ef315cc9a876
2025/09/23 13:18:35 INFO Active WARP Virtual Network id=7269c9e6-fbfa-4c41-89ec-ef315cc9a876
Updated context tfh-orb-mini-prod-ap-southeast-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "8986ef32-59f8-4173-afa4-43a1b241cbbb",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:13:59+02:00",
            "lastTransitionTime": "2025-08-06T08:28:59+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "a81a30e0-0b88-4882-bd51-3887c5d6e655",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:14:00+02:00",
            "lastTransitionTime": "2025-09-17T04:38:59+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "050a18d4-af2a-4cf0-bcd1-41aaf7bac8fa",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:14:06+02:00",
            "lastTransitionTime": "2025-08-04T16:19:04+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "a44b6a67-5946-4d5e-affa-027467096401",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:14:00+02:00",
            "lastTransitionTime": "2025-08-04T16:19:04+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "56669dea-d143-485e-8f5a-6ec6859e74be",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:14:06+02:00",
            "lastTransitionTime": "2025-08-04T16:19:04+02:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        }
    ]
}
```

Show full cluster description:
```json
{
    "cluster": {
        "name": "orb-mini-prod-ap-southeast-1",
        "arn": "arn:aws:eks:ap-southeast-1:829856906111:cluster/orb-mini-prod-ap-southeast-1",
        "createdAt": "2025-08-04T16:04:40.994000+02:00",
        "version": "1.32",
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
        "platformVersion": "eks.18",
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
NAME                                               STATUS   ROLES    AGE     VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-37-146-87.ap-southeast-1.compute.internal    Ready    <none>   5h22m   v1.32.8-eks-99d6cc0   10.37.146.87    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-mini-prod-ap-southeast-1
ip-10-37-147-127.ap-southeast-1.compute.internal   Ready    <none>   2d11h   v1.32.8-eks-99d6cc0   10.37.147.127   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-37-147-131.ap-southeast-1.compute.internal   Ready    <none>   34m     v1.32.8-eks-99d6cc0   10.37.147.131   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-37-148-241.ap-southeast-1.compute.internal   Ready    <none>   5h21m   v1.32.8-eks-99d6cc0   10.37.148.241   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-mini-prod-ap-southeast-1
ip-10-37-148-47.ap-southeast-1.compute.internal    Ready    <none>   17m     v1.32.8-eks-99d6cc0   10.37.148.47    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-37-149-101.ap-southeast-1.compute.internal   Ready    <none>   24h     v1.32.8-eks-99d6cc0   10.37.149.101   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                               STATUS   ROLES    TAINTS
ip-10-37-146-87.ap-southeast-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-37-147-127.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-37-147-131.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-37-148-241.ap-southeast-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-37-148-47.ap-southeast-1.compute.internal    Ready    <none>   <none>
ip-10-37-149-101.ap-southeast-1.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                                                  MESSAGE
16m         Normal    Finalized                 node                                                    Finalized karpenter.sh/termination
109s        Warning   Unsupported               node/ip-10-37-146-87.ap-southeast-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
65s         Normal    Unconsolidatable          node/ip-10-37-147-127.ap-southeast-1.compute.internal   Can't remove without creating 2 candidates
12m         Normal    DisruptionBlocked         node/ip-10-37-147-127.ap-southeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
96s         Normal    DisruptionBlocked         node/ip-10-37-147-127.ap-southeast-1.compute.internal   Node is nominated for a pending pod
16m         Normal    Unconsolidatable          node/ip-10-37-147-127.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
34m         Normal    Starting                  node/ip-10-37-147-131.ap-southeast-1.compute.internal   Starting kubelet.
34m         Warning   InvalidDiskCapacity       node/ip-10-37-147-131.ap-southeast-1.compute.internal   invalid capacity 0 on image filesystem
34m         Normal    NodeHasSufficientMemory   node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node ip-10-37-147-131.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
34m         Normal    NodeHasNoDiskPressure     node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node ip-10-37-147-131.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
34m         Normal    NodeHasSufficientPID      node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node ip-10-37-147-131.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
34m         Normal    NodeAllocatableEnforced   node/ip-10-37-147-131.ap-southeast-1.compute.internal   Updated Node Allocatable limit across pods
34m         Normal    Synced                    node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node synced successfully
34m         Normal    DisruptionBlocked         node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node isn't initialized
34m         Normal    RegisteredNode            node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node ip-10-37-147-131.ap-southeast-1.compute.internal event: Registered Node ip-10-37-147-131.ap-southeast-1.compute.internal in Controller
34m         Normal    Starting                  node/ip-10-37-147-131.ap-southeast-1.compute.internal   
33m         Normal    ControllerVersionNotice   node/ip-10-37-147-131.ap-southeast-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
33m         Normal    NodeReady                 node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node ip-10-37-147-131.ap-southeast-1.compute.internal status is now: NodeReady
33m         Normal    Ready                     node/ip-10-37-147-131.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
33m         Normal    NodeTrunkInitiated        node/ip-10-37-147-131.ap-southeast-1.compute.internal   The node has trunk interface initialized successfully
96s         Normal    DisruptionBlocked         node/ip-10-37-147-131.ap-southeast-1.compute.internal   Node is nominated for a pending pod
40m         Normal    Unconsolidatable          node/ip-10-37-148-179.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
17m         Normal    DisruptionBlocked         node/ip-10-37-148-179.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
17m         Normal    DisruptionTerminating     node/ip-10-37-148-179.ap-southeast-1.compute.internal   Disrupting Node: Underutilized/Delete
17m         Warning   FailedDraining            node/ip-10-37-148-179.ap-southeast-1.compute.internal   Failed to drain node, 16 pods are waiting to be evicted
17m         Warning   InstanceTerminating       node/ip-10-37-148-179.ap-southeast-1.compute.internal   Instance is terminating
16m         Normal    NodeNotReady              node/ip-10-37-148-179.ap-southeast-1.compute.internal   Node ip-10-37-148-179.ap-southeast-1.compute.internal status is now: NodeNotReady
16m         Normal    MemoryPressure            node/ip-10-37-148-179.ap-southeast-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    DiskPressure              node/ip-10-37-148-179.ap-southeast-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    PIDPressure               node/ip-10-37-148-179.ap-southeast-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    Ready                     node/ip-10-37-148-179.ap-southeast-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    RemovingNode              node/ip-10-37-148-179.ap-southeast-1.compute.internal   Node ip-10-37-148-179.ap-southeast-1.compute.internal event: Removing Node ip-10-37-148-179.ap-southeast-1.compute.internal from Controller
15s         Warning   Unsupported               node/ip-10-37-148-241.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    Starting                  node/ip-10-37-148-47.ap-southeast-1.compute.internal    Starting kubelet.
17m         Warning   InvalidDiskCapacity       node/ip-10-37-148-47.ap-southeast-1.compute.internal    invalid capacity 0 on image filesystem
17m         Normal    NodeHasSufficientMemory   node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node ip-10-37-148-47.ap-southeast-1.compute.internal status is now: NodeHasSufficientMemory
17m         Normal    NodeHasNoDiskPressure     node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node ip-10-37-148-47.ap-southeast-1.compute.internal status is now: NodeHasNoDiskPressure
17m         Normal    NodeHasSufficientPID      node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node ip-10-37-148-47.ap-southeast-1.compute.internal status is now: NodeHasSufficientPID
17m         Normal    NodeAllocatableEnforced   node/ip-10-37-148-47.ap-southeast-1.compute.internal    Updated Node Allocatable limit across pods
17m         Normal    Synced                    node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node synced successfully
17m         Normal    RegisteredNode            node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node ip-10-37-148-47.ap-southeast-1.compute.internal event: Registered Node ip-10-37-148-47.ap-southeast-1.compute.internal in Controller
17m         Normal    DisruptionBlocked         node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node isn't initialized
17m         Normal    Starting                  node/ip-10-37-148-47.ap-southeast-1.compute.internal    
17m         Normal    ControllerVersionNotice   node/ip-10-37-148-47.ap-southeast-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
17m         Normal    NodeReady                 node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node ip-10-37-148-47.ap-southeast-1.compute.internal status is now: NodeReady
17m         Normal    Ready                     node/ip-10-37-148-47.ap-southeast-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    NodeTrunkInitiated        node/ip-10-37-148-47.ap-southeast-1.compute.internal    The node has trunk interface initialized successfully
12m         Normal    DisruptionBlocked         node/ip-10-37-148-47.ap-southeast-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
96s         Normal    DisruptionBlocked         node/ip-10-37-148-47.ap-southeast-1.compute.internal    Node is nominated for a pending pod
17m         Normal    DisruptionBlocked         node/ip-10-37-149-101.ap-southeast-1.compute.internal   Node is nominated for a pending pod
96s         Normal    DisruptionBlocked         node/ip-10-37-149-101.ap-southeast-1.compute.internal   Node is deleting or marked for deletion
95s         Normal    DisruptionTerminating     node/ip-10-37-149-101.ap-southeast-1.compute.internal   Disrupting Node: Underutilized/Delete
95s         Warning   FailedDraining            node/ip-10-37-149-101.ap-southeast-1.compute.internal   Failed to drain node, 10 pods are waiting to be evicted
20s         Warning   InstanceTerminating       node/ip-10-37-149-101.ap-southeast-1.compute.internal   Instance is terminating
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE     NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
karpenter     karpenter                      N/A             1                 1                     48d
kube-system   coredns                        N/A             1                 1                     48d
kube-system   ebs-csi-controller             N/A             1                 1                     48d
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

Detect deprecated or withdrawn apis with PLUTO
Helm...
```
There were no resources found with known deprecated apiVersions.
```
All-in-cluster...
```
There were no resources found with known deprecated apiVersions.
```

Generated on: Tue Sep 23 13:19:35 CEST 2025
