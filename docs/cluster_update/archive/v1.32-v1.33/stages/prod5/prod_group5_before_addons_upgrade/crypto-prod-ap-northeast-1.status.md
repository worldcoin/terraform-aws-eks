# Cluster recon for tfh-crypto-prod-infra,ap-northeast-1,crypto-prod-ap-northeast-1,tunnel-vpc-crypto-prod-ap-northeast-1

TFH EKS login...
```console
2025/09/25 09:24:33 INFO Logging into AWS
2025/09/25 09:24:33 INFO Token not found or expired error="no valid token found"
2025/09/25 09:24:33 INFO Attempting to automatically open the SSO authorization page in your default browser...
2025/09/25 09:25:09 INFO Token found and valid
2025/09/25 09:25:12 INFO Switch WARP Virtual Network to name=tunnel-vpc-crypto-prod-ap-northeast-1 id=26b35f08-17b4-4963-a353-9d1d4e325b39
2025/09/25 09:25:16 INFO Active WARP Virtual Network id=26b35f08-17b4-4963-a353-9d1d4e325b39
Added new context tfh-crypto-prod-ap-northeast-1 to /Users/lukasz.glowacki/.kube/config
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
            "id": "e52add7b-0d6f-4645-8501-d2bb55cd8683",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-25T01:20:09+02:00",
            "lastTransitionTime": "2025-07-29T07:34:57+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "4a3988f0-8ed0-456c-9162-56e25c7b0b1a",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-25T01:20:09+02:00",
            "lastTransitionTime": "2025-06-27T12:25:05+02:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "50f4e108-864d-4478-9e20-2d26dea251f4",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-25T01:19:58+02:00",
            "lastTransitionTime": "2025-06-27T12:25:05+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "b3335c71-b6e2-4676-8dc3-3ae85926a552",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-25T01:19:58+02:00",
            "lastTransitionTime": "2025-09-15T20:24:58+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "8a4e2a1e-74ee-4fb4-98d1-1862dd1e4d32",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-25T01:19:58+02:00",
            "lastTransitionTime": "2025-06-27T12:25:05+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        }
    ]
}
```

Show full cluster description:
```json
{
    "cluster": {
        "name": "crypto-prod-ap-northeast-1",
        "arn": "arn:aws:eks:ap-northeast-1:866736719513:cluster/crypto-prod-ap-northeast-1",
        "createdAt": "2025-06-27T12:07:14.742000+02:00",
        "version": "1.32",
        "endpoint": "https://E25200DBBD6E877EF0F40A53DB34D2DB.yl4.ap-northeast-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::866736719513:role/eks-cluster-crypto-prod-ap-northeast-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-05b676174b2392026",
                "subnet-0d93cc75fc369fc58",
                "subnet-02d3510a6158f4838"
            ],
            "securityGroupIds": [
                "sg-0684988243616b33c"
            ],
            "clusterSecurityGroupId": "sg-019c3868d73bd3474",
            "vpcId": "vpc-00ce16d4673a5f5f9",
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
                "issuer": "https://oidc.eks.ap-northeast-1.amazonaws.com/id/E25200DBBD6E877EF0F40A53DB34D2DB"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJVEQ4OGw0R08vVGN3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMk1qY3hNREEyTXpsYUZ3MHpOVEEyTWpVeE1ERXhNemxhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURSdjZwOVVFQUErQ2lFaUJ5MVc2dzd5aHJNaXZOeVkya2ppNXNDemJ4V2I5dEt3K21zY3JRbHRpbloKSXRLeHRlUWhRWWVrU3RDMzNwQ2J6SVRSamJTSE9kMm1zdDJqMVpiVUVEMTJVdzUwbncvYW5SY3JZNDQ1TnNDRApJVzZNZFhRcUloZVN0N2lZZEpaRzJ5d3lLa0tnblhFaitnUythN1JuVVljUXRpUXEyejBqRmVnZkYyWEo2UjQrCkYwNzVoQUtaRVpsc1Y5eU5nNGM5cW4xdDc5NjRmWTBXZHNnaEh1SC9INW9hQWRGdFBIM0J5c00zUjJ3d1d2US8KQ1gzV2VZZFZrNVdmZy9vbHplalJ2MktOUWxWaTh6SVR2SVZrVmlIbXF5YWZYSUFRdldzYUhwa0RhYktxTHR1Ywp4THJwMUF4N1JpQ2Z2YWtGK0FDalJUZVNMSFZsQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUSmhwdm0xM1lKOHlmazRrM0RMMEpZNG1SamdEQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQ1lZanpWcytQcQpNZHZrUkROZHNjYlZoeWhVTVBaWjJLVlIvS01ZTlN1WEVqdy9tdGJoUFR5Um14Rjg5SWlJYldJT3BOYTB6TTdHCnM4bGcwZVkzSFdkbGNIOWE0Sk8yQTd4Zi9sWS9TT0ZSUzF3clduaHhDakt2TmZCQnF2VnJneHp3ZVNnVWJxblYKUEdmUnluUG01Q3NYTjBFdEk3a1BqajVRdmZPbzZyeUdqQ0krMDNZNDhhcTNNY0dhbmY0eTZoblVKL0J4U1RQKwpFcmN4Tmh3TGNrWVovMFBLUDQwUWVDWVdVMHUyYjhxRWlER3dRZlN0Z3U4dk50Y0txN3ZhSFRkaElEb0trajNoCkVNaWNXMEdFOFFGM2JQTUNZWnZLVlBpV0F4QzRaMXo1NEROclVIWDhvRTBTMi9MRnU5bjVhN3JpSC9PNHNNUVMKVUdlemhtTmtEa3dhCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "crypto-prod-ap-northeast-1",
            "Team": "crypto",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:ap-northeast-1:866736719513:key/73ea1ee5-aa29-4dc3-88c4-6a34aeca0232"
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
NAME                                              STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-45-81-144.ap-northeast-1.compute.internal   Ready    <none>   2d22h   v1.32.8-eks-99d6cc0   10.45.81.144   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-45-81-39.ap-northeast-1.compute.internal    Ready    <none>   2d18h   v1.32.8-eks-99d6cc0   10.45.81.39    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-crypto-prod-ap-northeast-1
ip-10-45-83-163.ap-northeast-1.compute.internal   Ready    <none>   2d21h   v1.32.8-eks-99d6cc0   10.45.83.163   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-45-83-177.ap-northeast-1.compute.internal   Ready    <none>   2d21h   v1.32.8-eks-99d6cc0   10.45.83.177   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-45-83-179.ap-northeast-1.compute.internal   Ready    <none>   32h     v1.32.8-eks-99d6cc0   10.45.83.179   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-45-85-55.ap-northeast-1.compute.internal    Ready    <none>   2d18h   v1.32.8-eks-99d6cc0   10.45.85.55    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-crypto-prod-ap-northeast-1
```

Nodes and their taints
```
NAME                                              STATUS   ROLES    TAINTS
ip-10-45-81-144.ap-northeast-1.compute.internal   Ready    <none>   <none>
ip-10-45-81-39.ap-northeast-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-45-83-163.ap-northeast-1.compute.internal   Ready    <none>   <none>
ip-10-45-83-177.ap-northeast-1.compute.internal   Ready    <none>   <none>
ip-10-45-83-179.ap-northeast-1.compute.internal   Ready    <none>   <none>
ip-10-45-85-55.ap-northeast-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON             OBJECT                                                 MESSAGE
33m         Normal    Unconsolidatable   node/ip-10-45-81-144.ap-northeast-1.compute.internal   Can't remove without creating 2 candidates
47s         Warning   Unsupported        node/ip-10-45-81-39.ap-northeast-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
7m25s       Normal    Unconsolidatable   node/ip-10-45-83-163.ap-northeast-1.compute.internal   Can't replace with a cheaper node
33m         Normal    Unconsolidatable   node/ip-10-45-83-177.ap-northeast-1.compute.internal   Can't remove without creating 2 candidates
5m14s       Normal    Unconsolidatable   node/ip-10-45-83-177.ap-northeast-1.compute.internal   Can't replace with a cheaper node
52s         Warning   Unsupported        node/ip-10-45-85-55.ap-northeast-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring       cluster-monitoring-pdb         N/A             1                 1                     89d
karpenter                karpenter                      N/A             1                 1                     89d
kube-system              coredns                        N/A             1                 1                     89d
kube-system              ebs-csi-controller             N/A             1                 1                     89d
kyverno                  kyverno-admission-controller   1               N/A               2                     89d
nfc-uniqueness-service   issuer-service-pdb             N/A             1                 1                     30d
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

Generated on: Thu Sep 25 09:26:31 CEST 2025
