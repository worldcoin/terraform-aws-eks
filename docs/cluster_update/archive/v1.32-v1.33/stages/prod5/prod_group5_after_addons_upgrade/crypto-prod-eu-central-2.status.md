# Cluster recon for tfh-crypto-prod-infra,eu-central-2,crypto-prod-eu-central-2,tunnel-vpc-crypto-prod-eu-central-2

TFH EKS login...
```console
2025/09/25 10:28:02 INFO Logging into AWS
2025/09/25 10:28:02 INFO Token found and valid
2025/09/25 10:28:03 INFO Switch WARP Virtual Network to name=tunnel-vpc-crypto-prod-eu-central-2 id=41228611-1731-4be2-921c-1ce5afaa369f
2025/09/25 10:28:05 INFO Active WARP Virtual Network id=41228611-1731-4be2-921c-1ce5afaa369f
Updated context tfh-crypto-prod-eu-central-2 in /Users/lukasz.glowacki/.kube/config
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
            "id": "e5ecc5fb-5b8a-4887-b721-ea6bc98c11db",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-24T21:57:46+02:00",
            "lastTransitionTime": "2025-02-13T10:47:43+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "6b5b56b4-c0f6-4e5d-a57d-4f7cc4a38744",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-24T21:57:39+02:00",
            "lastTransitionTime": "2025-03-06T08:52:39+01:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "f20a5b5d-88c2-4259-a23d-bae6bd45d7f0",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-24T21:57:40+02:00",
            "lastTransitionTime": "2025-02-13T10:47:43+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "d79d8255-42ad-43a5-a329-18fa5ecfd3ca",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-24T21:57:40+02:00",
            "lastTransitionTime": "2025-08-20T18:32:43+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "ERROR",
                "reason": "The cluster contains legacy Amazon Linux 2 (AL2) nodes. Migrate Amazon Linux 2 node groups to Amazon Linux 2023 before November 26, 2025 or before upgrading to EKS 1.33."
            }
        },
        {
            "id": "fadb6c4d-d6d6-49b3-81d7-d8a4bf9dc341",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-24T21:57:46+02:00",
            "lastTransitionTime": "2025-07-29T04:17:42+02:00",
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
        "name": "crypto-prod-eu-central-2",
        "arn": "arn:aws:eks:eu-central-2:866736719513:cluster/crypto-prod-eu-central-2",
        "createdAt": "2025-02-13T10:21:57.510000+01:00",
        "version": "1.32",
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
        "platformVersion": "eks.18",
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
NAME                                             STATUS   ROLES    AGE     VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-84-193-145.eu-central-2.compute.internal   Ready    <none>   2d19h   v1.32.8-eks-99d6cc0   10.84.193.145   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-crypto-prod-eu-central-2
ip-10-84-194-147.eu-central-2.compute.internal   Ready    <none>   30h     v1.32.8-eks-99d6cc0   10.84.194.147   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-84-196-101.eu-central-2.compute.internal   Ready    <none>   13d     v1.32.8-eks-99d6cc0   10.84.196.101   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27   
ip-10-84-196-121.eu-central-2.compute.internal   Ready    <none>   13d     v1.32.8-eks-99d6cc0   10.84.196.121   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27   
ip-10-84-196-167.eu-central-2.compute.internal   Ready    <none>   99d     v1.32.3-eks-473151a   10.84.196.167   <none>        Amazon Linux 2                 5.10.237-230.949.amzn2.x86_64      containerd://1.7.27   
ip-10-84-196-190.eu-central-2.compute.internal   Ready    <none>   105d    v1.32.3-eks-473151a   10.84.196.190   <none>        Amazon Linux 2                 5.10.236-228.935.amzn2.x86_64      containerd://1.7.27   
ip-10-84-196-239.eu-central-2.compute.internal   Ready    <none>   99d     v1.32.3-eks-473151a   10.84.196.239   <none>        Amazon Linux 2                 5.10.237-230.949.amzn2.x86_64      containerd://1.7.27   
ip-10-84-196-254.eu-central-2.compute.internal   Ready    <none>   30h     v1.32.8-eks-99d6cc0   10.84.196.254   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-84-196-32.eu-central-2.compute.internal    Ready    <none>   47h     v1.32.8-eks-99d6cc0   10.84.196.32    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-84-196-53.eu-central-2.compute.internal    Ready    <none>   50d     v1.32.3-eks-473151a   10.84.196.53    <none>        Amazon Linux 2                 5.10.239-236.958.amzn2.x86_64      containerd://1.7.27   
ip-10-84-196-84.eu-central-2.compute.internal    Ready    <none>   13d     v1.32.8-eks-99d6cc0   10.84.196.84    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27   
ip-10-84-197-0.eu-central-2.compute.internal     Ready    <none>   50d     v1.32.3-eks-473151a   10.84.197.0     <none>        Amazon Linux 2                 5.10.239-236.958.amzn2.x86_64      containerd://1.7.27   
ip-10-84-197-147.eu-central-2.compute.internal   Ready    <none>   30h     v1.32.8-eks-99d6cc0   10.84.197.147   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-84-197-156.eu-central-2.compute.internal   Ready    <none>   50d     v1.32.3-eks-473151a   10.84.197.156   <none>        Amazon Linux 2                 5.10.239-236.958.amzn2.x86_64      containerd://1.7.27   
ip-10-84-197-192.eu-central-2.compute.internal   Ready    <none>   105d    v1.32.3-eks-473151a   10.84.197.192   <none>        Amazon Linux 2                 5.10.236-228.935.amzn2.x86_64      containerd://1.7.27   
ip-10-84-197-240.eu-central-2.compute.internal   Ready    <none>   99d     v1.32.3-eks-473151a   10.84.197.240   <none>        Amazon Linux 2                 5.10.237-230.949.amzn2.x86_64      containerd://1.7.27   
ip-10-84-197-242.eu-central-2.compute.internal   Ready    <none>   2d19h   v1.32.8-eks-99d6cc0   10.84.197.242   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-crypto-prod-eu-central-2
```

Nodes and their taints
```
NAME                                             STATUS   ROLES    TAINTS
ip-10-84-193-145.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-84-194-147.eu-central-2.compute.internal   Ready    <none>   <none>
ip-10-84-196-101.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-84-196-121.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-84-196-167.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-84-196-190.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-84-196-239.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-84-196-254.eu-central-2.compute.internal   Ready    <none>   <none>
ip-10-84-196-32.eu-central-2.compute.internal    Ready    <none>   <none>
ip-10-84-196-53.eu-central-2.compute.internal    Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-84-196-84.eu-central-2.compute.internal    Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-84-197-0.eu-central-2.compute.internal     Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-84-197-147.eu-central-2.compute.internal   Ready    <none>   <none>
ip-10-84-197-156.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-84-197-192.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-84-197-240.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-84-197-242.eu-central-2.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON              OBJECT                                                MESSAGE
3m33s       Warning   Unsupported         node/ip-10-84-193-145.eu-central-2.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    Starting            node/ip-10-84-193-145.eu-central-2.compute.internal   
27s         Normal    DisruptionBlocked   node/ip-10-84-194-147.eu-central-2.compute.internal   Node is nominated for a pending pod
25m         Normal    Starting            node/ip-10-84-194-147.eu-central-2.compute.internal   
100s        Warning   FailedDraining      node/ip-10-84-196-101.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
57s         Normal    DisruptionBlocked   node/ip-10-84-196-101.eu-central-2.compute.internal   Node is deleting or marked for deletion
25m         Normal    Starting            node/ip-10-84-196-101.eu-central-2.compute.internal   
102s        Warning   FailedDraining      node/ip-10-84-196-121.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
57s         Normal    DisruptionBlocked   node/ip-10-84-196-121.eu-central-2.compute.internal   Node is deleting or marked for deletion
25m         Normal    Starting            node/ip-10-84-196-121.eu-central-2.compute.internal   
82s         Warning   FailedDraining      node/ip-10-84-196-167.eu-central-2.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
57s         Normal    DisruptionBlocked   node/ip-10-84-196-167.eu-central-2.compute.internal   Node is deleting or marked for deletion
25m         Normal    Starting            node/ip-10-84-196-167.eu-central-2.compute.internal   
88s         Warning   FailedDraining      node/ip-10-84-196-190.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
57s         Normal    DisruptionBlocked   node/ip-10-84-196-190.eu-central-2.compute.internal   Node is deleting or marked for deletion
25m         Normal    Starting            node/ip-10-84-196-190.eu-central-2.compute.internal   
90s         Warning   FailedDraining      node/ip-10-84-196-239.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
57s         Normal    DisruptionBlocked   node/ip-10-84-196-239.eu-central-2.compute.internal   Node is deleting or marked for deletion
25m         Normal    Starting            node/ip-10-84-196-239.eu-central-2.compute.internal   
3m58s       Normal    DisruptionBlocked   node/ip-10-84-196-254.eu-central-2.compute.internal   Node is nominated for a pending pod
25m         Normal    Starting            node/ip-10-84-196-254.eu-central-2.compute.internal   
3m18s       Normal    DisruptionBlocked   node/ip-10-84-196-32.eu-central-2.compute.internal    Node is nominated for a pending pod
25m         Normal    Starting            node/ip-10-84-196-32.eu-central-2.compute.internal    
31m         Warning   FailedDraining      node/ip-10-84-196-53.eu-central-2.compute.internal    Failed to drain node, 3 pods are waiting to be evicted
57s         Normal    DisruptionBlocked   node/ip-10-84-196-53.eu-central-2.compute.internal    Node is deleting or marked for deletion
25m         Normal    Starting            node/ip-10-84-196-53.eu-central-2.compute.internal    
77s         Warning   FailedDraining      node/ip-10-84-196-53.eu-central-2.compute.internal    Failed to drain node, 2 pods are waiting to be evicted
98s         Warning   FailedDraining      node/ip-10-84-196-84.eu-central-2.compute.internal    Failed to drain node, 2 pods are waiting to be evicted
57s         Normal    DisruptionBlocked   node/ip-10-84-196-84.eu-central-2.compute.internal    Node is deleting or marked for deletion
25m         Normal    Starting            node/ip-10-84-196-84.eu-central-2.compute.internal    
91s         Warning   FailedDraining      node/ip-10-84-197-0.eu-central-2.compute.internal     Failed to drain node, 2 pods are waiting to be evicted
57s         Normal    DisruptionBlocked   node/ip-10-84-197-0.eu-central-2.compute.internal     Node is deleting or marked for deletion
25m         Normal    Starting            node/ip-10-84-197-0.eu-central-2.compute.internal     
25m         Normal    Starting            node/ip-10-84-197-147.eu-central-2.compute.internal   
27m         Warning   FailedDraining      node/ip-10-84-197-156.eu-central-2.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
57s         Normal    DisruptionBlocked   node/ip-10-84-197-156.eu-central-2.compute.internal   Node is deleting or marked for deletion
25m         Normal    Starting            node/ip-10-84-197-156.eu-central-2.compute.internal   
73s         Warning   FailedDraining      node/ip-10-84-197-156.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
85s         Warning   FailedDraining      node/ip-10-84-197-192.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
57s         Normal    DisruptionBlocked   node/ip-10-84-197-192.eu-central-2.compute.internal   Node is deleting or marked for deletion
25m         Normal    Starting            node/ip-10-84-197-192.eu-central-2.compute.internal   
27m         Warning   FailedDraining      node/ip-10-84-197-240.eu-central-2.compute.internal   Failed to drain node, 4 pods are waiting to be evicted
57s         Normal    DisruptionBlocked   node/ip-10-84-197-240.eu-central-2.compute.internal   Node is deleting or marked for deletion
25m         Normal    Starting            node/ip-10-84-197-240.eu-central-2.compute.internal   
72s         Warning   FailedDraining      node/ip-10-84-197-240.eu-central-2.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
3m59s       Warning   Unsupported         node/ip-10-84-197-242.eu-central-2.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
25m         Normal    Starting            node/ip-10-84-197-242.eu-central-2.compute.internal   
```

Pods with issues
```
cloudflared-tunnel                cloudflared-tunnel-66bccf69db-qmrbr                               0/1     CreateContainerConfigError   0                41h
cloudflared-tunnel                cloudflared-tunnel-746c5477d5-ggxj5                               0/1     CreateContainerConfigError   0                30h
cloudflared-tunnel                cloudflared-tunnel-746c5477d5-pzljk                               0/1     CreateContainerConfigError   0                30h
```

PodDisruptionBudgets
```
NAMESPACE                         NAME                                  MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                cluster-monitoring-pdb                N/A             1                 1                     219d
karpenter                         karpenter                             N/A             1                 1                     220d
kube-system                       coredns                               N/A             1                 1                     223d
kube-system                       ebs-csi-controller                    N/A             1                 1                     223d
kyverno                           kyverno-admission-controller          1               N/A               2                     220d
world-chain-builder               world-chain-builder-pdb               50%             N/A               1                     98d
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

Detect deprecated or withdrawn apis with PLUTO
Helm...
```
There were no resources found with known deprecated apiVersions.
```
All-in-cluster...
```
There were no resources found with known deprecated apiVersions.
```

Generated on: Thu Sep 25 10:28:39 CEST 2025
