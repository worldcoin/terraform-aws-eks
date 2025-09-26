# Cluster recon for tfh-world-chat-service-stage-infra,eu-west-1,world-chat-service-stage-eu-west-1,tunnel-vpc-world-chat-service-stage-eu-west-1

TFH EKS login...
```console
2025/09/17 17:12:32 INFO Logging into AWS
2025/09/17 17:12:32 INFO Token found and valid
2025/09/17 17:12:35 INFO Switch WARP Virtual Network to name=tunnel-vpc-world-chat-service-stage-eu-west-1 id=d956cc1e-f8e3-4395-9c33-7258b8b9ea41
2025/09/17 17:12:37 INFO Active WARP Virtual Network id=d956cc1e-f8e3-4395-9c33-7258b8b9ea41
Updated context tfh-world-chat-service-stage-eu-west-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "ea869800-fe32-495a-9d50-f77367812fe9",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-16T23:09:49+02:00",
            "lastTransitionTime": "2025-08-08T15:14:36+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "0677ee75-8268-42c8-a64d-9573f8c19a6b",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-16T23:09:32+02:00",
            "lastTransitionTime": "2025-08-08T15:14:36+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "e43c4ed1-d4be-44a1-909c-acfd88ace77d",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-16T23:09:31+02:00",
            "lastTransitionTime": "2025-08-09T11:19:31+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "17ab9bc9-1753-464b-965f-0765e48ddfd1",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-16T23:09:49+02:00",
            "lastTransitionTime": "2025-08-08T15:14:36+02:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "d1be111f-ebd2-488e-8d66-dee70051644b",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-16T23:09:32+02:00",
            "lastTransitionTime": "2025-08-19T12:19:31+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "ERROR",
                "reason": "The cluster contains legacy Amazon Linux 2 (AL2) nodes. Migrate Amazon Linux 2 node groups to Amazon Linux 2023 before November 26, 2025 or before upgrading to EKS 1.33."
            }
        }
    ]
}
```

Show full cluster description:
```json
{
    "cluster": {
        "name": "world-chat-service-stage-eu-west-1",
        "arn": "arn:aws:eks:eu-west-1:920736616390:cluster/world-chat-service-stage-eu-west-1",
        "createdAt": "2025-08-08T14:57:45.810000+02:00",
        "version": "1.32",
        "endpoint": "https://D7ED8E5F5E267728EA8CED2E575AA36A.gr7.eu-west-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::920736616390:role/eks-cluster-world-chat-service-stage-eu-west-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-048d5204ab1acfe8d",
                "subnet-0a09e58a49d56360a",
                "subnet-0f1c43e469ab24c59"
            ],
            "securityGroupIds": [
                "sg-07639eda9b95823b9"
            ],
            "clusterSecurityGroupId": "sg-0abb701459608420e",
            "vpcId": "vpc-08d1f5341448288a2",
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
                "issuer": "https://oidc.eks.eu-west-1.amazonaws.com/id/D7ED8E5F5E267728EA8CED2E575AA36A"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJYVlaa21CNitIWjR3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBNE1EZ3hNalU0TURGYUZ3MHpOVEE0TURZeE16QXpNREZhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURRemYvWVFpSEJhMDZ5WkplNDlmSHVEMVFONXpXcjFMMm9ITGk5YzU0OWR1bE1OZHVCOEZSc3c5Tm4KSVY4aEM0N3VOaGFaL2w1a3hWNm1NYnJiQ1BSUXUrSTZFQWNTSk1vS1E0ZkQ0OFdya2pVMTN0UUpqcmlYb1kxMwozRmg5MVVoWU1QQUJQd3pleFc4cHROTmtVYjQ4VktmWXZhSDhtQUN0RERpakM1VGVoSkk5T0lwV1lSK1JmSUl1CjhYZTdqSlhJdVZTNEVQcE5aYlM2NVkweVdseXZJd29YZXJqbW04YmdHN1JKZXF0OWdBdTFjSUd3dEVxdzVlSjEKMHZ1MXdnYnE0UDRCTy9vMWpHUFNFbk5VempDQXlHZ2RzM3AyLzhMcFJ3ejRmZVFTSWF3aHRJN0x2T2VjT0pPbgpaVHRJRWlTS2hQaDlsZXI1TXZZL1o1djNmeW9oQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJROXp2YXhtRDI2THlWUTF2MUxUbzdRZW9IRG9UQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQ055N3NZS2wyWQpuQUpaclZZc1RUY0dOcHdmc0MzRWtzTHpqMVB6OVFsSnVkYUdqSEpiaHFNNjVkaTdnUHVkSFBNRTB3QjlBTHA2CnhWaXlpbjJTMHg5cURQZ3VSUHR1VWYrSGJoODBkaHVUREwwUXV2Skxwc3JkUEoydzNwdjFaM0F2Z0d1b0RzWHcKS25SUmJQNm9QWlBhZWR0NTlRK3NuNkxiUEV2VmdxcjFiWUdqMExINkp5Nmt4eUs0WXRRWWtNcmllb0lDTXoyMApDV1NDYm8zcXU3VmRzd1BQOXNCb2pGanV3VGFrNDZzN2dteThmczcyMkNpanFpRWVkSEp3TWZNbHBRTEdZVlhlCnBSdG01SGNCQk5vQlgycVc3WVZUV0NsYTZ2YnNjNVVEVlYwUFVlYkVwdDZpTDRnTjlKbXRSeXNUQlhmU21xaUYKWFlLc3IzcnlXUmx4Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "stage",
            "karpenter.sh/discovery": "world-chat-service-stage-eu-west-1",
            "Team": "world-chat-service",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-west-1:920736616390:key/9f66389b-740c-49cc-a1ec-31a68912f32f"
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
NAME                                         STATUS   ROLES    AGE   VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME
ip-10-59-32-94.eu-west-1.compute.internal    Ready    <none>   66m   v1.32.8-eks-99d6cc0   10.59.32.94    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-59-33-124.eu-west-1.compute.internal   Ready    <none>   40d   v1.32.7-eks-3abbec1   10.59.33.124   <none>        Amazon Linux 2                 5.10.239-236.958.amzn2.x86_64     containerd://1.7.27
ip-10-59-35-224.eu-west-1.compute.internal   Ready    <none>   26h   v1.32.8-eks-99d6cc0   10.59.35.224   <none>        Amazon Linux 2                 5.10.240-238.959.amzn2.x86_64     containerd://1.7.27
ip-10-59-35-23.eu-west-1.compute.internal    Ready    <none>   40d   v1.32.7-eks-3abbec1   10.59.35.23    <none>        Amazon Linux 2                 5.10.239-236.958.amzn2.x86_64     containerd://1.7.27
ip-10-59-36-195.eu-west-1.compute.internal   Ready    <none>   26h   v1.32.8-eks-99d6cc0   10.59.36.195   <none>        Amazon Linux 2                 5.10.240-238.959.amzn2.x86_64     containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                  OBJECT                                            MESSAGE
44m         Normal    Finalized               node                                              Finalized karpenter.sh/termination
46m         Normal    DisruptionBlocked       node/ip-10-59-32-94.eu-west-1.compute.internal    Node is nominated for a pending pod
44m         Normal    DisruptionBlocked       node/ip-10-59-34-150.eu-west-1.compute.internal   Node is deleting or marked for deletion
46m         Normal    DisruptionTerminating   node/ip-10-59-34-150.eu-west-1.compute.internal   Disrupting Node: Underutilized/Delete
46m         Warning   FailedDraining          node/ip-10-59-34-150.eu-west-1.compute.internal   Failed to drain node, 5 pods are waiting to be evicted
45m         Warning   InstanceTerminating     node/ip-10-59-34-150.eu-west-1.compute.internal   Instance is terminating
44m         Normal    NodeNotReady            node/ip-10-59-34-150.eu-west-1.compute.internal   Node ip-10-59-34-150.eu-west-1.compute.internal status is now: NodeNotReady
44m         Normal    MemoryPressure          node/ip-10-59-34-150.eu-west-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
44m         Normal    DiskPressure            node/ip-10-59-34-150.eu-west-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
44m         Normal    PIDPressure             node/ip-10-59-34-150.eu-west-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
44m         Normal    Ready                   node/ip-10-59-34-150.eu-west-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
44m         Normal    RemovingNode            node/ip-10-59-34-150.eu-west-1.compute.internal   Node ip-10-59-34-150.eu-west-1.compute.internal event: Removing Node ip-10-59-34-150.eu-west-1.compute.internal from Controller
4m44s       Warning   Unsupported             node/ip-10-59-35-224.eu-west-1.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
29s         Warning   Unsupported             node/ip-10-59-36-195.eu-west-1.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE     NAME                                 MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
karpenter     karpenter                            N/A             1                 1                     40d
kube-system   coredns                              N/A             1                 1                     40d
kube-system   ebs-csi-controller                   N/A             1                 1                     40d
kyverno       kyverno-admission-controller         1               N/A               2                     40d
world-chat    world-chat-backend-pdb               N/A             1                 1                     22d
world-chat    world-chat-enclave-worker-pdb        N/A             1                 1                     2d6h
world-chat    world-chat-notification-worker-pdb   N/A             1                 1                     14d
world-chat    world-chat-secure-enclave-pdb        N/A             1                 1                     22d
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
