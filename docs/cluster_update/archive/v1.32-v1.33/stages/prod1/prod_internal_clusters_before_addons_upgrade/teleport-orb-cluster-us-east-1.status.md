# Cluster recon for tfh-internal-tools-infra,us-east-1,teleport-orb-cluster-us-east-1,tunnel-vpc-teleport-orb-us-east-1

TFH EKS login...
```console
2025/09/19 11:35:56 INFO Logging into AWS
2025/09/19 11:35:56 INFO Token found and valid
2025/09/19 11:35:57 INFO Switch WARP Virtual Network to name=tunnel-vpc-teleport-orb-us-east-1 id=b47d3be9-ed75-4416-8c54-4a2e13e379a6
2025/09/19 11:35:59 INFO Active WARP Virtual Network id=b47d3be9-ed75-4416-8c54-4a2e13e379a6
Updated context tfh-teleport-orb-cluster-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "f2e23eae-910e-411d-a8ca-b10dfb364806",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T22:39:05+02:00",
            "lastTransitionTime": "2025-09-13T00:49:05+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "470603c2-3ee0-4473-a8be-d7183176e768",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T22:39:05+02:00",
            "lastTransitionTime": "2025-05-14T11:44:05+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "17ac9ff9-7ba9-4c9a-81d8-8f361a2ed00f",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T22:39:05+02:00",
            "lastTransitionTime": "2025-05-14T11:44:05+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "6a47d394-3267-4b37-9f8b-c26af82a4c07",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T22:39:13+02:00",
            "lastTransitionTime": "2025-05-14T11:44:05+02:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "03b83e8d-ed1f-4622-8d13-b8fe37918df1",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T22:39:13+02:00",
            "lastTransitionTime": "2025-07-28T19:14:04+02:00",
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
        "name": "teleport-orb-cluster-us-east-1",
        "arn": "arn:aws:eks:us-east-1:507152310572:cluster/teleport-orb-cluster-us-east-1",
        "createdAt": "2025-05-14T11:32:08.152000+02:00",
        "version": "1.32",
        "endpoint": "https://9F1563585ACB50ABCBEC4603CDEA106A.yl4.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::507152310572:role/eks-cluster-teleport-orb-cluster-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0d88c6b5b456f325a",
                "subnet-01909f31d8b975522",
                "subnet-084f347337dbce0e6"
            ],
            "securityGroupIds": [
                "sg-00ae1a4751f8376e8"
            ],
            "clusterSecurityGroupId": "sg-073a5c44fab723c39",
            "vpcId": "vpc-0f49401940c691c91",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/9F1563585ACB50ABCBEC4603CDEA106A"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJQ1ptU3E4cThiaDB3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMU1UUXdPVE14TlRoYUZ3MHpOVEExTVRJd09UTTJOVGhhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURvRGFVU1ZodWRGY25qRmxuTXUvQS9UTitiR0thRXRqUGpGZE1vUjBlTmk2MWptZE5nR3BPTk82WkcKYmR5bzF5NDhjV0gvSHlodVZaenNJQUduNW9iTER0UGl4ditzKzM1dFhxWU52dm1kTFVpcVlXWm5aczVMVGRJagpsNVVqNGNBeWtxSFJ2SVVPUy9QaWxQalN0U2h0QXd6MUVpY1dIZCtCcE84aXBqVGl6VTh3aGp2V3pxNmVOcHpICmJ1VEZmVWM2WjlkUXVWSWxrWHVKZHc5ZmJEVlhuSis1aVZYV2NyZGU2SUU1cHpqS1ZBa0ludWtNT21EeHFxekMKaGZWdE9xcXVqQ2pJQ3FuK1J0bWJLMjk5RU04ekRzY1J0ZXB5RXhpOUFSNkFDdlc4R0hQY041ZmVOMzBHWjFmUwpKdnNlOXRtejc2a1laUnVJVGNnTjNRVCt2bm1MQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUdjN2RFdzNkN6UXRVY3ZDRUUwZEZOeWJrbkVEQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQlk1Y2F1eGJ0cQpiZUVwTC82RGovNnVkS3djcjR1SWpIYWVnWEc1emxEZVFzbXNIcjBsczlXL2cyOGswOXRTMmQ5RnZOVzYwcytPCkZVa25QMG9HUGdwb2FqSUc4aDhCL0lFS1JPU1kwOGkrZlVpQ2wrWVBqV0I5ejR5NEJObVIxUHVSYS9yeStHdFQKYzR3SW1EeVZST1I2QjJxYm1sSFVLcC9maHdUbElnc1A2MGRpTTlKUDFRbXIySVNYUTFzYWxrRnA4bGFTSEpQcApub0xRbnFCT1pGMm13TlIzamZBYXJyYndFR094Z2VPbXk5TUh4eVRtdUxDSXIyRWU0ZXV6UjhnT2FSUVh0ZWd3CnBtZnh5citkaSt6b2NBRG5GRFhFNlpiWUNZaU15SzdNZDlOcUhrS0NHR0IzMW1GL20yS3cyb290eWtwKzdGWGkKUWp4d25lRlV4a091Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "teleport-orb-cluster-us-east-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:507152310572:key/17dedead-cf6d-40f2-9d68-053eb7e346ac"
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
NAME                           STATUS   ROLES    AGE   VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-0-129-184.ec2.internal   Ready    <none>   14m   v1.32.8-eks-99d6cc0   10.0.129.184   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-131-123.ec2.internal   Ready    <none>   19m   v1.32.8-eks-99d6cc0   10.0.131.123   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-teleport-orb-cluster-us-east-1
ip-10-0-131-91.ec2.internal    Ready    <none>   11m   v1.32.8-eks-99d6cc0   10.0.131.91    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-132-101.ec2.internal   Ready    <none>   18m   v1.32.8-eks-99d6cc0   10.0.132.101   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-teleport-orb-cluster-us-east-1
ip-10-0-132-155.ec2.internal   Ready    <none>   16m   v1.32.8-eks-99d6cc0   10.0.132.155   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-132-235.ec2.internal   Ready    <none>   16m   v1.32.8-eks-99d6cc0   10.0.132.235   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-132-241.ec2.internal   Ready    <none>   14m   v1.32.8-eks-99d6cc0   10.0.132.241   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                           STATUS   ROLES    TAINTS
ip-10-0-129-184.ec2.internal   Ready    <none>   <none>
ip-10-0-131-123.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-131-91.ec2.internal    Ready    <none>   <none>
ip-10-0-132-101.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-132-155.ec2.internal   Ready    <none>   <none>
ip-10-0-132-235.ec2.internal   Ready    <none>   <none>
ip-10-0-132-241.ec2.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                              MESSAGE
9m54s       Normal    Finalized                 node                                Finalized karpenter.sh/termination
40m         Normal    Unconsolidatable          node/ip-10-0-128-71.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
14m         Normal    DisruptionBlocked         node/ip-10-0-128-71.ec2.internal    Node is nominated for a pending pod
13m         Normal    DisruptionBlocked         node/ip-10-0-128-71.ec2.internal    Node is nominated for a pending pod
11m         Normal    DisruptionBlocked         node/ip-10-0-128-71.ec2.internal    Node is deleting or marked for deletion
11m         Normal    DisruptionTerminating     node/ip-10-0-128-71.ec2.internal    Disrupting Node: Drifted/Replace
11m         Warning   FailedDraining            node/ip-10-0-128-71.ec2.internal    Failed to drain node, 14 pods are waiting to be evicted
10m         Warning   InstanceTerminating       node/ip-10-0-128-71.ec2.internal    Instance is terminating
9m55s       Normal    NodeNotReady              node/ip-10-0-128-71.ec2.internal    Node ip-10-0-128-71.ec2.internal status is now: NodeNotReady
9m55s       Normal    MemoryPressure            node/ip-10-0-128-71.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m55s       Normal    DiskPressure              node/ip-10-0-128-71.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m55s       Normal    PIDPressure               node/ip-10-0-128-71.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m55s       Normal    Ready                     node/ip-10-0-128-71.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m50s       Normal    RemovingNode              node/ip-10-0-128-71.ec2.internal    Node ip-10-0-128-71.ec2.internal event: Removing Node ip-10-0-128-71.ec2.internal from Controller
17m         Normal    Starting                  node/ip-10-0-129-154.ec2.internal   Starting kubelet.
17m         Warning   InvalidDiskCapacity       node/ip-10-0-129-154.ec2.internal   invalid capacity 0 on image filesystem
17m         Normal    NodeHasSufficientMemory   node/ip-10-0-129-154.ec2.internal   Node ip-10-0-129-154.ec2.internal status is now: NodeHasSufficientMemory
17m         Normal    NodeHasNoDiskPressure     node/ip-10-0-129-154.ec2.internal   Node ip-10-0-129-154.ec2.internal status is now: NodeHasNoDiskPressure
17m         Normal    NodeHasSufficientPID      node/ip-10-0-129-154.ec2.internal   Node ip-10-0-129-154.ec2.internal status is now: NodeHasSufficientPID
17m         Normal    NodeAllocatableEnforced   node/ip-10-0-129-154.ec2.internal   Updated Node Allocatable limit across pods
17m         Normal    Synced                    node/ip-10-0-129-154.ec2.internal   Node synced successfully
17m         Normal    RegisteredNode            node/ip-10-0-129-154.ec2.internal   Node ip-10-0-129-154.ec2.internal event: Registered Node ip-10-0-129-154.ec2.internal in Controller
17m         Normal    Starting                  node/ip-10-0-129-154.ec2.internal   
17m         Normal    ControllerVersionNotice   node/ip-10-0-129-154.ec2.internal   The node is managed by VPC resource controller version v1.7.9
7m4s        Warning   Unsupported               node/ip-10-0-129-154.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    NodeReady                 node/ip-10-0-129-154.ec2.internal   Node ip-10-0-129-154.ec2.internal status is now: NodeReady
17m         Normal    Ready                     node/ip-10-0-129-154.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
8m54s       Normal    NodeNotSchedulable        node/ip-10-0-129-154.ec2.internal   Node ip-10-0-129-154.ec2.internal status is now: NodeNotSchedulable
7m9s        Normal    NodeNotReady              node/ip-10-0-129-154.ec2.internal   Node ip-10-0-129-154.ec2.internal status is now: NodeNotReady
7m9s        Normal    MemoryPressure            node/ip-10-0-129-154.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m9s        Normal    DiskPressure              node/ip-10-0-129-154.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m9s        Normal    PIDPressure               node/ip-10-0-129-154.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m9s        Normal    Ready                     node/ip-10-0-129-154.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m1s        Normal    DeletingNode              node/ip-10-0-129-154.ec2.internal   Deleting node ip-10-0-129-154.ec2.internal because it does not exist in the cloud provider
6m59s       Normal    RemovingNode              node/ip-10-0-129-154.ec2.internal   Node ip-10-0-129-154.ec2.internal event: Removing Node ip-10-0-129-154.ec2.internal from Controller
60m         Normal    Unconsolidatable          node/ip-10-0-129-16.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
16m         Normal    DisruptionBlocked         node/ip-10-0-129-16.ec2.internal    Node is nominated for a pending pod
14m         Normal    DisruptionBlocked         node/ip-10-0-129-16.ec2.internal    Node is deleting or marked for deletion
14m         Normal    DisruptionTerminating     node/ip-10-0-129-16.ec2.internal    Disrupting Node: Drifted/Replace
14m         Warning   FailedDraining            node/ip-10-0-129-16.ec2.internal    Failed to drain node, 12 pods are waiting to be evicted
13m         Warning   FailedDraining            node/ip-10-0-129-16.ec2.internal    Failed to drain node, 9 pods are waiting to be evicted
11m         Normal    DisruptionBlocked         node/ip-10-0-129-16.ec2.internal    Node is deleting or marked for deletion
12m         Warning   InstanceTerminating       node/ip-10-0-129-16.ec2.internal    Instance is terminating
12m         Normal    NodeNotReady              node/ip-10-0-129-16.ec2.internal    Node ip-10-0-129-16.ec2.internal status is now: NodeNotReady
12m         Normal    MemoryPressure            node/ip-10-0-129-16.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DiskPressure              node/ip-10-0-129-16.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    PIDPressure               node/ip-10-0-129-16.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    Ready                     node/ip-10-0-129-16.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    RemovingNode              node/ip-10-0-129-16.ec2.internal    Node ip-10-0-129-16.ec2.internal event: Removing Node ip-10-0-129-16.ec2.internal from Controller
14m         Normal    Starting                  node/ip-10-0-129-184.ec2.internal   Starting kubelet.
14m         Warning   InvalidDiskCapacity       node/ip-10-0-129-184.ec2.internal   invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory   node/ip-10-0-129-184.ec2.internal   Node ip-10-0-129-184.ec2.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure     node/ip-10-0-129-184.ec2.internal   Node ip-10-0-129-184.ec2.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID      node/ip-10-0-129-184.ec2.internal   Node ip-10-0-129-184.ec2.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced   node/ip-10-0-129-184.ec2.internal   Updated Node Allocatable limit across pods
14m         Normal    RegisteredNode            node/ip-10-0-129-184.ec2.internal   Node ip-10-0-129-184.ec2.internal event: Registered Node ip-10-0-129-184.ec2.internal in Controller
14m         Normal    Synced                    node/ip-10-0-129-184.ec2.internal   Node synced successfully
14m         Normal    DisruptionBlocked         node/ip-10-0-129-184.ec2.internal   Node isn't initialized
14m         Normal    Starting                  node/ip-10-0-129-184.ec2.internal   
14m         Normal    ControllerVersionNotice   node/ip-10-0-129-184.ec2.internal   The node is managed by VPC resource controller version v1.7.9
14m         Normal    NodeReady                 node/ip-10-0-129-184.ec2.internal   Node ip-10-0-129-184.ec2.internal status is now: NodeReady
14m         Normal    Ready                     node/ip-10-0-129-184.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeTrunkInitiated        node/ip-10-0-129-184.ec2.internal   The node has trunk interface initialized successfully
11m         Normal    DisruptionBlocked         node/ip-10-0-129-184.ec2.internal   Node is nominated for a pending pod
17m         Warning   Unsupported               node/ip-10-0-129-19.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    NodeNotSchedulable        node/ip-10-0-129-19.ec2.internal    Node ip-10-0-129-19.ec2.internal status is now: NodeNotSchedulable
14m         Normal    NodeNotReady              node/ip-10-0-129-19.ec2.internal    Node ip-10-0-129-19.ec2.internal status is now: NodeNotReady
14m         Normal    MemoryPressure            node/ip-10-0-129-19.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure              node/ip-10-0-129-19.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure               node/ip-10-0-129-19.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                     node/ip-10-0-129-19.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DeletingNode              node/ip-10-0-129-19.ec2.internal    Deleting node ip-10-0-129-19.ec2.internal because it does not exist in the cloud provider
13m         Normal    RemovingNode              node/ip-10-0-129-19.ec2.internal    Node ip-10-0-129-19.ec2.internal event: Removing Node ip-10-0-129-19.ec2.internal from Controller
19m         Normal    Starting                  node/ip-10-0-131-123.ec2.internal   Starting kubelet.
19m         Warning   InvalidDiskCapacity       node/ip-10-0-131-123.ec2.internal   invalid capacity 0 on image filesystem
19m         Normal    NodeHasSufficientMemory   node/ip-10-0-131-123.ec2.internal   Node ip-10-0-131-123.ec2.internal status is now: NodeHasSufficientMemory
19m         Normal    NodeHasNoDiskPressure     node/ip-10-0-131-123.ec2.internal   Node ip-10-0-131-123.ec2.internal status is now: NodeHasNoDiskPressure
19m         Normal    NodeHasSufficientPID      node/ip-10-0-131-123.ec2.internal   Node ip-10-0-131-123.ec2.internal status is now: NodeHasSufficientPID
19m         Normal    NodeAllocatableEnforced   node/ip-10-0-131-123.ec2.internal   Updated Node Allocatable limit across pods
19m         Normal    Synced                    node/ip-10-0-131-123.ec2.internal   Node synced successfully
19m         Normal    RegisteredNode            node/ip-10-0-131-123.ec2.internal   Node ip-10-0-131-123.ec2.internal event: Registered Node ip-10-0-131-123.ec2.internal in Controller
19m         Normal    Starting                  node/ip-10-0-131-123.ec2.internal   
19m         Normal    ControllerVersionNotice   node/ip-10-0-131-123.ec2.internal   The node is managed by VPC resource controller version v1.7.9
3m23s       Warning   Unsupported               node/ip-10-0-131-123.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
19m         Normal    NodeReady                 node/ip-10-0-131-123.ec2.internal   Node ip-10-0-131-123.ec2.internal status is now: NodeReady
19m         Normal    Ready                     node/ip-10-0-131-123.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    Starting                  node/ip-10-0-131-8.ec2.internal     Starting kubelet.
19m         Warning   InvalidDiskCapacity       node/ip-10-0-131-8.ec2.internal     invalid capacity 0 on image filesystem
19m         Normal    NodeHasSufficientMemory   node/ip-10-0-131-8.ec2.internal     Node ip-10-0-131-8.ec2.internal status is now: NodeHasSufficientMemory
19m         Normal    NodeHasNoDiskPressure     node/ip-10-0-131-8.ec2.internal     Node ip-10-0-131-8.ec2.internal status is now: NodeHasNoDiskPressure
19m         Normal    NodeHasSufficientPID      node/ip-10-0-131-8.ec2.internal     Node ip-10-0-131-8.ec2.internal status is now: NodeHasSufficientPID
19m         Normal    NodeAllocatableEnforced   node/ip-10-0-131-8.ec2.internal     Updated Node Allocatable limit across pods
19m         Normal    Synced                    node/ip-10-0-131-8.ec2.internal     Node synced successfully
19m         Normal    RegisteredNode            node/ip-10-0-131-8.ec2.internal     Node ip-10-0-131-8.ec2.internal event: Registered Node ip-10-0-131-8.ec2.internal in Controller
19m         Normal    Starting                  node/ip-10-0-131-8.ec2.internal     
19m         Normal    ControllerVersionNotice   node/ip-10-0-131-8.ec2.internal     The node is managed by VPC resource controller version v1.7.9
9m9s        Warning   Unsupported               node/ip-10-0-131-8.ec2.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
19m         Normal    NodeReady                 node/ip-10-0-131-8.ec2.internal     Node ip-10-0-131-8.ec2.internal status is now: NodeReady
19m         Normal    Ready                     node/ip-10-0-131-8.ec2.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
10m         Normal    NodeNotSchedulable        node/ip-10-0-131-8.ec2.internal     Node ip-10-0-131-8.ec2.internal status is now: NodeNotSchedulable
9m9s        Normal    NodeNotReady              node/ip-10-0-131-8.ec2.internal     Node ip-10-0-131-8.ec2.internal status is now: NodeNotReady
9m9s        Normal    MemoryPressure            node/ip-10-0-131-8.ec2.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m9s        Normal    DiskPressure              node/ip-10-0-131-8.ec2.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m9s        Normal    PIDPressure               node/ip-10-0-131-8.ec2.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m9s        Normal    Ready                     node/ip-10-0-131-8.ec2.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m6s        Normal    DeletingNode              node/ip-10-0-131-8.ec2.internal     Deleting node ip-10-0-131-8.ec2.internal because it does not exist in the cloud provider
9m4s        Normal    RemovingNode              node/ip-10-0-131-8.ec2.internal     Node ip-10-0-131-8.ec2.internal event: Removing Node ip-10-0-131-8.ec2.internal from Controller
11m         Normal    Starting                  node/ip-10-0-131-91.ec2.internal    Starting kubelet.
11m         Warning   InvalidDiskCapacity       node/ip-10-0-131-91.ec2.internal    invalid capacity 0 on image filesystem
11m         Normal    NodeHasSufficientMemory   node/ip-10-0-131-91.ec2.internal    Node ip-10-0-131-91.ec2.internal status is now: NodeHasSufficientMemory
11m         Normal    NodeHasNoDiskPressure     node/ip-10-0-131-91.ec2.internal    Node ip-10-0-131-91.ec2.internal status is now: NodeHasNoDiskPressure
11m         Normal    NodeHasSufficientPID      node/ip-10-0-131-91.ec2.internal    Node ip-10-0-131-91.ec2.internal status is now: NodeHasSufficientPID
11m         Normal    NodeAllocatableEnforced   node/ip-10-0-131-91.ec2.internal    Updated Node Allocatable limit across pods
11m         Normal    Synced                    node/ip-10-0-131-91.ec2.internal    Node synced successfully
11m         Normal    RegisteredNode            node/ip-10-0-131-91.ec2.internal    Node ip-10-0-131-91.ec2.internal event: Registered Node ip-10-0-131-91.ec2.internal in Controller
11m         Normal    Starting                  node/ip-10-0-131-91.ec2.internal    
11m         Normal    DisruptionBlocked         node/ip-10-0-131-91.ec2.internal    Node isn't initialized
11m         Normal    ControllerVersionNotice   node/ip-10-0-131-91.ec2.internal    The node is managed by VPC resource controller version v1.7.9
11m         Normal    NodeReady                 node/ip-10-0-131-91.ec2.internal    Node ip-10-0-131-91.ec2.internal status is now: NodeReady
11m         Normal    Ready                     node/ip-10-0-131-91.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
11m         Normal    NodeTrunkInitiated        node/ip-10-0-131-91.ec2.internal    The node has trunk interface initialized successfully
18m         Normal    Starting                  node/ip-10-0-132-101.ec2.internal   Starting kubelet.
18m         Warning   InvalidDiskCapacity       node/ip-10-0-132-101.ec2.internal   invalid capacity 0 on image filesystem
18m         Normal    NodeHasSufficientMemory   node/ip-10-0-132-101.ec2.internal   Node ip-10-0-132-101.ec2.internal status is now: NodeHasSufficientMemory
18m         Normal    NodeHasNoDiskPressure     node/ip-10-0-132-101.ec2.internal   Node ip-10-0-132-101.ec2.internal status is now: NodeHasNoDiskPressure
18m         Normal    NodeHasSufficientPID      node/ip-10-0-132-101.ec2.internal   Node ip-10-0-132-101.ec2.internal status is now: NodeHasSufficientPID
18m         Normal    NodeAllocatableEnforced   node/ip-10-0-132-101.ec2.internal   Updated Node Allocatable limit across pods
18m         Normal    Synced                    node/ip-10-0-132-101.ec2.internal   Node synced successfully
18m         Normal    RegisteredNode            node/ip-10-0-132-101.ec2.internal   Node ip-10-0-132-101.ec2.internal event: Registered Node ip-10-0-132-101.ec2.internal in Controller
18m         Normal    Starting                  node/ip-10-0-132-101.ec2.internal   
18m         Normal    ControllerVersionNotice   node/ip-10-0-132-101.ec2.internal   The node is managed by VPC resource controller version v1.7.9
3m1s        Warning   Unsupported               node/ip-10-0-132-101.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
18m         Normal    NodeReady                 node/ip-10-0-132-101.ec2.internal   Node ip-10-0-132-101.ec2.internal status is now: NodeReady
18m         Normal    Ready                     node/ip-10-0-132-101.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    ControllerVersionNotice   node/ip-10-0-132-155.ec2.internal   The node is managed by VPC resource controller version v1.7.9
15m         Normal    NodeTrunkInitiated        node/ip-10-0-132-155.ec2.internal   The node has trunk interface initialized successfully
16m         Normal    Starting                  node/ip-10-0-132-155.ec2.internal   Starting kubelet.
16m         Warning   InvalidDiskCapacity       node/ip-10-0-132-155.ec2.internal   invalid capacity 0 on image filesystem
16m         Normal    NodeHasSufficientMemory   node/ip-10-0-132-155.ec2.internal   Node ip-10-0-132-155.ec2.internal status is now: NodeHasSufficientMemory
16m         Normal    NodeHasNoDiskPressure     node/ip-10-0-132-155.ec2.internal   Node ip-10-0-132-155.ec2.internal status is now: NodeHasNoDiskPressure
16m         Normal    NodeHasSufficientPID      node/ip-10-0-132-155.ec2.internal   Node ip-10-0-132-155.ec2.internal status is now: NodeHasSufficientPID
16m         Normal    NodeAllocatableEnforced   node/ip-10-0-132-155.ec2.internal   Updated Node Allocatable limit across pods
16m         Normal    Synced                    node/ip-10-0-132-155.ec2.internal   Node synced successfully
16m         Normal    DisruptionBlocked         node/ip-10-0-132-155.ec2.internal   Node isn't initialized
16m         Normal    RegisteredNode            node/ip-10-0-132-155.ec2.internal   Node ip-10-0-132-155.ec2.internal event: Registered Node ip-10-0-132-155.ec2.internal in Controller
16m         Normal    Starting                  node/ip-10-0-132-155.ec2.internal   
15m         Normal    NodeReady                 node/ip-10-0-132-155.ec2.internal   Node ip-10-0-132-155.ec2.internal status is now: NodeReady
15m         Normal    Ready                     node/ip-10-0-132-155.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    DisruptionBlocked         node/ip-10-0-132-155.ec2.internal   Node is nominated for a pending pod
12m         Normal    DisruptionBlocked         node/ip-10-0-132-155.ec2.internal   Node is nominated for a pending pod
16m         Normal    Starting                  node/ip-10-0-132-235.ec2.internal   Starting kubelet.
16m         Warning   InvalidDiskCapacity       node/ip-10-0-132-235.ec2.internal   invalid capacity 0 on image filesystem
16m         Normal    NodeHasSufficientMemory   node/ip-10-0-132-235.ec2.internal   Node ip-10-0-132-235.ec2.internal status is now: NodeHasSufficientMemory
16m         Normal    NodeHasNoDiskPressure     node/ip-10-0-132-235.ec2.internal   Node ip-10-0-132-235.ec2.internal status is now: NodeHasNoDiskPressure
16m         Normal    NodeHasSufficientPID      node/ip-10-0-132-235.ec2.internal   Node ip-10-0-132-235.ec2.internal status is now: NodeHasSufficientPID
16m         Normal    NodeAllocatableEnforced   node/ip-10-0-132-235.ec2.internal   Updated Node Allocatable limit across pods
16m         Normal    Synced                    node/ip-10-0-132-235.ec2.internal   Node synced successfully
16m         Normal    RegisteredNode            node/ip-10-0-132-235.ec2.internal   Node ip-10-0-132-235.ec2.internal event: Registered Node ip-10-0-132-235.ec2.internal in Controller
15m         Normal    DisruptionBlocked         node/ip-10-0-132-235.ec2.internal   Node isn't initialized
15m         Normal    Starting                  node/ip-10-0-132-235.ec2.internal   
15m         Normal    ControllerVersionNotice   node/ip-10-0-132-235.ec2.internal   The node is managed by VPC resource controller version v1.7.9
15m         Normal    NodeReady                 node/ip-10-0-132-235.ec2.internal   Node ip-10-0-132-235.ec2.internal status is now: NodeReady
15m         Normal    Ready                     node/ip-10-0-132-235.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    NodeTrunkInitiated        node/ip-10-0-132-235.ec2.internal   The node has trunk interface initialized successfully
13m         Normal    DisruptionBlocked         node/ip-10-0-132-235.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
13m         Normal    ControllerVersionNotice   node/ip-10-0-132-241.ec2.internal   The node is managed by VPC resource controller version v1.7.9
13m         Normal    NodeTrunkInitiated        node/ip-10-0-132-241.ec2.internal   The node has trunk interface initialized successfully
14m         Normal    Starting                  node/ip-10-0-132-241.ec2.internal   Starting kubelet.
14m         Warning   InvalidDiskCapacity       node/ip-10-0-132-241.ec2.internal   invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory   node/ip-10-0-132-241.ec2.internal   Node ip-10-0-132-241.ec2.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure     node/ip-10-0-132-241.ec2.internal   Node ip-10-0-132-241.ec2.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID      node/ip-10-0-132-241.ec2.internal   Node ip-10-0-132-241.ec2.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced   node/ip-10-0-132-241.ec2.internal   Updated Node Allocatable limit across pods
14m         Normal    Synced                    node/ip-10-0-132-241.ec2.internal   Node synced successfully
14m         Normal    RegisteredNode            node/ip-10-0-132-241.ec2.internal   Node ip-10-0-132-241.ec2.internal event: Registered Node ip-10-0-132-241.ec2.internal in Controller
13m         Normal    Starting                  node/ip-10-0-132-241.ec2.internal   
13m         Normal    NodeReady                 node/ip-10-0-132-241.ec2.internal   Node ip-10-0-132-241.ec2.internal status is now: NodeReady
13m         Normal    DisruptionBlocked         node/ip-10-0-132-241.ec2.internal   Node is nominated for a pending pod
10m         Normal    DisruptionBlocked         node/ip-10-0-132-241.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
36m         Normal    Unconsolidatable          node/ip-10-0-132-8.ec2.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
14m         Normal    DisruptionBlocked         node/ip-10-0-132-8.ec2.internal     Node is deleting or marked for deletion
15m         Normal    DisruptionTerminating     node/ip-10-0-132-8.ec2.internal     Disrupting Node: Drifted/Replace
15m         Warning   FailedDraining            node/ip-10-0-132-8.ec2.internal     Failed to drain node, 7 pods are waiting to be evicted
14m         Warning   InstanceTerminating       node/ip-10-0-132-8.ec2.internal     Instance is terminating
13m         Warning   InstanceTerminating       node/ip-10-0-132-8.ec2.internal     Instance is terminating
13m         Normal    RemovingNode              node/ip-10-0-132-8.ec2.internal     Node ip-10-0-132-8.ec2.internal event: Removing Node ip-10-0-132-8.ec2.internal from Controller
11m         Warning   Unsupported               node/ip-10-0-133-111.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    NodeNotSchedulable        node/ip-10-0-133-111.ec2.internal   Node ip-10-0-133-111.ec2.internal status is now: NodeNotSchedulable
11m         Normal    NodeNotReady              node/ip-10-0-133-111.ec2.internal   Node ip-10-0-133-111.ec2.internal status is now: NodeNotReady
11m         Normal    MemoryPressure            node/ip-10-0-133-111.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DiskPressure              node/ip-10-0-133-111.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    PIDPressure               node/ip-10-0-133-111.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    Ready                     node/ip-10-0-133-111.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DeletingNode              node/ip-10-0-133-111.ec2.internal   Deleting node ip-10-0-133-111.ec2.internal because it does not exist in the cloud provider
11m         Normal    RemovingNode              node/ip-10-0-133-111.ec2.internal   Node ip-10-0-133-111.ec2.internal event: Removing Node ip-10-0-133-111.ec2.internal from Controller
30m         Normal    Unconsolidatable          node/ip-10-0-133-239.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
16m         Normal    DisruptionBlocked         node/ip-10-0-133-239.ec2.internal   Node is nominated for a pending pod
14m         Normal    DisruptionBlocked         node/ip-10-0-133-239.ec2.internal   Node is deleting or marked for deletion
13m         Normal    DisruptionBlocked         node/ip-10-0-133-239.ec2.internal   Node is deleting or marked for deletion
13m         Normal    DisruptionTerminating     node/ip-10-0-133-239.ec2.internal   Disrupting Node: Drifted/Delete
13m         Warning   FailedDraining            node/ip-10-0-133-239.ec2.internal   Failed to drain node, 6 pods are waiting to be evicted
12m         Warning   InstanceTerminating       node/ip-10-0-133-239.ec2.internal   Instance is terminating
11m         Normal    RemovingNode              node/ip-10-0-133-239.ec2.internal   Node ip-10-0-133-239.ec2.internal event: Removing Node ip-10-0-133-239.ec2.internal from Controller
30m         Normal    Unconsolidatable          node/ip-10-0-133-241.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
16m         Normal    Unconsolidatable          node/ip-10-0-133-241.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
14m         Normal    DisruptionBlocked         node/ip-10-0-133-241.ec2.internal   Node is deleting or marked for deletion
15m         Normal    DisruptionTerminating     node/ip-10-0-133-241.ec2.internal   Disrupting Node: Drifted/Replace
15m         Warning   FailedDraining            node/ip-10-0-133-241.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
14m         Warning   InstanceTerminating       node/ip-10-0-133-241.ec2.internal   Instance is terminating
14m         Normal    MemoryPressure            node/ip-10-0-133-241.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure              node/ip-10-0-133-241.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure               node/ip-10-0-133-241.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                     node/ip-10-0-133-241.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    NodeNotReady              node/ip-10-0-133-241.ec2.internal   Node ip-10-0-133-241.ec2.internal status is now: NodeNotReady
13m         Normal    DeletingNode              node/ip-10-0-133-241.ec2.internal   Deleting node ip-10-0-133-241.ec2.internal because it does not exist in the cloud provider
13m         Normal    RemovingNode              node/ip-10-0-133-241.ec2.internal   Node ip-10-0-133-241.ec2.internal event: Removing Node ip-10-0-133-241.ec2.internal from Controller
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE            NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring   cluster-monitoring-pdb         N/A             1                 1                     127d
karpenter            karpenter                      N/A             1                 1                     127d
kube-system          coredns                        N/A             1                 1                     127d
kube-system          ebs-csi-controller             N/A             1                 1                     127d
kyverno              kyverno-admission-controller   1               N/A               2                     127d
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

Generated on: Fri Sep 19 11:36:41 CEST 2025
