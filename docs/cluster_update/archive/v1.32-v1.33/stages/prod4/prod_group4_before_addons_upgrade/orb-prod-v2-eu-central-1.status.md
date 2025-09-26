# Cluster recon for tfh-orb-prod-infra,eu-central-1,orb-prod-v2-eu-central-1,tunnel-vpc-orb-prod-v2-eu-central-1

TFH EKS login...
```console
2025/09/23 11:41:27 INFO Logging into AWS
2025/09/23 11:41:27 INFO Token found and valid
2025/09/23 11:41:28 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-prod-v2-eu-central-1 id=c52e71ec-bf27-4d9b-b675-cb1631b9d6b4
2025/09/23 11:41:30 INFO Active WARP Virtual Network id=c52e71ec-bf27-4d9b-b675-cb1631b9d6b4
Added new context tfh-orb-prod-v2-eu-central-1 to /Users/lukasz.glowacki/.kube/config
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
            "id": "23d54524-e6b0-4ec6-ae2a-7a29c4aa47f0",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T16:24:21+02:00",
            "lastTransitionTime": "2024-12-20T11:49:24+01:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "dabc2c67-fd48-498c-9934-cdb39d911872",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T16:24:33+02:00",
            "lastTransitionTime": "2024-12-20T11:49:24+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "1db9b912-13db-40ab-95b2-3552d142e967",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T16:24:21+02:00",
            "lastTransitionTime": "2024-12-20T11:49:24+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "eda6546f-fb51-4891-8a1f-2504cb3ed301",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T16:24:33+02:00",
            "lastTransitionTime": "2025-07-29T10:54:21+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "5857b4ee-7a85-4ceb-ae2d-f54fc9960184",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T16:24:21+02:00",
            "lastTransitionTime": "2025-09-16T19:49:35+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        }
    ]
}
```

Show full cluster description:
```json
{
    "cluster": {
        "name": "orb-prod-v2-eu-central-1",
        "arn": "arn:aws:eks:eu-central-1:573252405782:cluster/orb-prod-v2-eu-central-1",
        "createdAt": "2023-09-01T10:46:52.772000+02:00",
        "version": "1.32",
        "endpoint": "https://9DA8499E4D105E1A87F00E646D07F266.gr7.eu-central-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::573252405782:role/eks-cluster-orb-prod-v2-eu-central-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-061156b6c19a11825",
                "subnet-04d8d2275055a5e9e",
                "subnet-02f7cdc4b81b5b7f9"
            ],
            "securityGroupIds": [
                "sg-03b74627ec388343f"
            ],
            "clusterSecurityGroupId": "sg-02a5646317788057f",
            "vpcId": "vpc-0b8a59e391a62543e",
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
                "issuer": "https://oidc.eks.eu-central-1.amazonaws.com/id/9DA8499E4D105E1A87F00E646D07F266"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJSVE2ejEzUW4zUTh3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TXpBNU1ERXdPRFV4TVRoYUZ3MHpNekE0TWprd09EVXhNVGhhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUNZNTJPTS9xck01OHRaUDFmQkJtSTlLS0hwUUhpZ1RWaExvSDJteHdFOGkyeDBZQTdRdElIRFQ1L2EKemJDc2E3Qm0rMDU3QUVpNEtkTTR0M1pQdjFxQysxajZzNlJrM2pnTGZCMGpyTDQ4U3pWbWVsSEx2RnFobjNaOApkTVJuQ202TC9LY2F3d2tlVGgvUDNIUU5JT1ZhMFpselQyUE5KNEhyWS9XL3I0OXBINTk4b2xGSDhxY3ZTdXQ2CmlIZm0wSFZQcXhMRW42Q3VNNlFhTFBwaW1YWm5DeGVwUTlPMVdzVjlic0ZyZk5wLzluaFRmLzJCZE0ydHBYZ0kKbjVuN1ZZMXFvZ3dGY1NhQloxTDR5WmdyOWYwVEhZZ25WejNXeG9oK1NDZ3o0TXZick1URElsSU5uMUNvMzk3RgprSkUzQks2Q0VSZFh0OXRrQmozZXEwZVFBU2ZYQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSaGxCcU9Ba3MzK1E0blEzczdnU1kwVHlIemp6QVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQk1ZdEF3eG1GeApvSDJCamNBeVg2cFd3KzlrWVZOZ0dLTk04MzErUkhyNkpTZE8xelFId3ZtaEMrK2hwVW9aRGRIQVI2T1NFZlk1CmZEdmEwRTBpcnNYcDdjaWNuQ0YyS0gvZ2NJNVI0V3pNVE9GRXJ0dkV6YUVwdlFKNzRMVDB1NThMZE5pOHNsejgKdmpjNDNqcmNYSFYxd2RLdmZBSFl0M2NGTVlud3hJWjl2N2hTWXlvNkFrcU52ZWd2R2o1c0I4UEpBN3Z2VDJsdApmcUZjMFlCQVVCRkdXdWxXUk1MdFRUOVpuNUZuL2lpVnB5ZGFISTlyLzIrZU15Tm1VYXpaaXVIQ2R4TEtaMWNTCmhqSHdtM0pDWVdua2Nsc1Q4MHBNdWttN1BPNUFoQnpQNCtoWTlKc3MxSnFUeUdUMnR0Q2FtRGNud045QzlHUDQKMEtKSVNLVjV5QWIzCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-prod-v2-eu-central-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-central-1:573252405782:key/f9d9a58e-d6d8-4f9a-8f62-6810fd553379"
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
ip-10-54-100-143.eu-central-1.compute.internal   Ready    <none>   3d14h   v1.32.8-eks-99d6cc0   10.54.100.143   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-100-157.eu-central-1.compute.internal   Ready    <none>   30h     v1.32.8-eks-99d6cc0   10.54.100.157   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-100-228.eu-central-1.compute.internal   Ready    <none>   21h     v1.32.8-eks-99d6cc0   10.54.100.228   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-eu-central-1
ip-10-54-101-112.eu-central-1.compute.internal   Ready    <none>   30h     v1.32.8-eks-99d6cc0   10.54.101.112   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-101-135.eu-central-1.compute.internal   Ready    <none>   31h     v1.32.8-eks-99d6cc0   10.54.101.135   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-98-114.eu-central-1.compute.internal    Ready    <none>   19h     v1.32.8-eks-99d6cc0   10.54.98.114    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-98-16.eu-central-1.compute.internal     Ready    <none>   3d8h    v1.32.8-eks-99d6cc0   10.54.98.16     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-98-185.eu-central-1.compute.internal    Ready    <none>   3d20h   v1.32.8-eks-99d6cc0   10.54.98.185    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-98-20.eu-central-1.compute.internal     Ready    <none>   3d13h   v1.32.8-eks-99d6cc0   10.54.98.20     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-98-244.eu-central-1.compute.internal    Ready    <none>   3d20h   v1.32.8-eks-99d6cc0   10.54.98.244    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-98-33.eu-central-1.compute.internal     Ready    <none>   3h15m   v1.32.8-eks-99d6cc0   10.54.98.33     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-98-4.eu-central-1.compute.internal      Ready    <none>   8h      v1.32.8-eks-99d6cc0   10.54.98.4      <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-98-56.eu-central-1.compute.internal     Ready    <none>   10h     v1.32.8-eks-99d6cc0   10.54.98.56     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-98-57.eu-central-1.compute.internal     Ready    <none>   14h     v1.32.8-eks-99d6cc0   10.54.98.57     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-98-65.eu-central-1.compute.internal     Ready    <none>   19h     v1.32.8-eks-99d6cc0   10.54.98.65     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-98-80.eu-central-1.compute.internal     Ready    <none>   8h      v1.32.8-eks-99d6cc0   10.54.98.80     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-98-82.eu-central-1.compute.internal     Ready    <none>   3d10h   v1.32.8-eks-99d6cc0   10.54.98.82     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-99-105.eu-central-1.compute.internal    Ready    <none>   3h15m   v1.32.8-eks-99d6cc0   10.54.99.105    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-99-125.eu-central-1.compute.internal    Ready    <none>   78m     v1.32.8-eks-99d6cc0   10.54.99.125    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-99-128.eu-central-1.compute.internal    Ready    <none>   3d20h   v1.32.8-eks-99d6cc0   10.54.99.128    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-99-133.eu-central-1.compute.internal    Ready    <none>   7h39m   v1.32.8-eks-99d6cc0   10.54.99.133    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-99-151.eu-central-1.compute.internal    Ready    <none>   3d17h   v1.32.8-eks-99d6cc0   10.54.99.151    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-99-152.eu-central-1.compute.internal    Ready    <none>   19h     v1.32.8-eks-99d6cc0   10.54.99.152    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-99-166.eu-central-1.compute.internal    Ready    <none>   3d18h   v1.32.8-eks-99d6cc0   10.54.99.166    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-99-205.eu-central-1.compute.internal    Ready    <none>   3d19h   v1.32.8-eks-99d6cc0   10.54.99.205    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-99-21.eu-central-1.compute.internal     Ready    <none>   3h15m   v1.32.8-eks-99d6cc0   10.54.99.21     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-99-244.eu-central-1.compute.internal    Ready    <none>   21h     v1.32.8-eks-99d6cc0   10.54.99.244    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-eu-central-1
ip-10-54-99-38.eu-central-1.compute.internal     Ready    <none>   19h     v1.32.8-eks-99d6cc0   10.54.99.38     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-99-50.eu-central-1.compute.internal     Ready    <none>   3d20h   v1.32.8-eks-99d6cc0   10.54.99.50     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-99-72.eu-central-1.compute.internal     Ready    <none>   3h15m   v1.32.8-eks-99d6cc0   10.54.99.72     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                             STATUS   ROLES    TAINTS
ip-10-54-100-143.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-100-157.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-100-228.eu-central-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-54-101-112.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-101-135.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-98-114.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-98-16.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-98-185.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-98-20.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-98-244.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-98-33.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-98-4.eu-central-1.compute.internal      Ready    <none>   <none>
ip-10-54-98-56.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-98-57.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-98-65.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-98-80.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-98-82.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-99-105.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-99-125.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-99-128.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-99-133.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-99-151.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-99-152.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-99-166.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-99-205.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-99-21.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-99-244.eu-central-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-54-99-38.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-99-50.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-99-72.eu-central-1.compute.internal     Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON              OBJECT                                                MESSAGE
5m26s       Normal    Unconsolidatable    node/ip-10-54-100-143.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
6m17s       Normal    Unconsolidatable    node/ip-10-54-100-157.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
4m53s       Warning   Unsupported         node/ip-10-54-100-228.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
6m38s       Normal    Unconsolidatable    node/ip-10-54-101-112.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
6m48s       Normal    Unconsolidatable    node/ip-10-54-101-135.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
9m32s       Normal    Unconsolidatable    node/ip-10-54-98-114.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
6m17s       Normal    Unconsolidatable    node/ip-10-54-98-16.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
6m48s       Normal    Unconsolidatable    node/ip-10-54-98-185.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
6m48s       Normal    Unconsolidatable    node/ip-10-54-98-20.eu-central-1.compute.internal     NodePool "main-amd64" has non-empty consolidation disabled
6m17s       Normal    Unconsolidatable    node/ip-10-54-98-244.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
10m         Normal    Unconsolidatable    node/ip-10-54-98-33.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
5m57s       Normal    Unconsolidatable    node/ip-10-54-98-4.eu-central-1.compute.internal      NodePool "main-amd64" has non-empty consolidation disabled
6m17s       Normal    Unconsolidatable    node/ip-10-54-98-56.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
9m32s       Normal    Unconsolidatable    node/ip-10-54-98-57.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
19s         Normal    Unconsolidatable    node/ip-10-54-98-65.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
5m57s       Normal    Unconsolidatable    node/ip-10-54-98-80.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
6m48s       Normal    Unconsolidatable    node/ip-10-54-98-82.eu-central-1.compute.internal     NodePool "main-amd64" has non-empty consolidation disabled
9m32s       Normal    Unconsolidatable    node/ip-10-54-99-105.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
2m42s       Normal    Unconsolidatable    node/ip-10-54-99-125.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
6m48s       Normal    Unconsolidatable    node/ip-10-54-99-128.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
7m9s        Normal    Unconsolidatable    node/ip-10-54-99-133.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
101s        Normal    DisruptionBlocked   node/ip-10-54-99-133.eu-central-1.compute.internal    (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-caae4766fa9272aac7f26d88c1a9ea3e96ce531f-29310340-zwvkq)
6m48s       Normal    Unconsolidatable    node/ip-10-54-99-151.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
9m32s       Normal    Unconsolidatable    node/ip-10-54-99-152.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
6m48s       Normal    Unconsolidatable    node/ip-10-54-99-166.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
6m48s       Normal    Unconsolidatable    node/ip-10-54-99-205.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
10m         Normal    Unconsolidatable    node/ip-10-54-99-21.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
4m10s       Warning   Unsupported         node/ip-10-54-99-244.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
3m44s       Normal    Unconsolidatable    node/ip-10-54-99-38.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
6m48s       Normal    Unconsolidatable    node/ip-10-54-99-50.eu-central-1.compute.internal     NodePool "main-amd64" has non-empty consolidation disabled
56m         Normal    DisruptionBlocked   node/ip-10-54-99-50.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29310285-9snsr)
41m         Normal    DisruptionBlocked   node/ip-10-54-99-50.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29310300-qvn79)
26m         Normal    DisruptionBlocked   node/ip-10-54-99-50.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29310315-xtp7h)
11m         Normal    DisruptionBlocked   node/ip-10-54-99-50.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29310330-m6svt)
13m         Normal    Unconsolidatable    node/ip-10-54-99-72.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                             NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
app-authentication-service-external   app-authentication-service-external-pdb   N/A             1                 1                     63d
cluster-monitoring                    cluster-monitoring-pdb                    N/A             1                 1                     297d
data-ingestion-service                data-ingestion-service-pdb                N/A             1                 1                     281d
karpenter                             karpenter                                 N/A             1                 1                     2y18d
kube-system                           coredns                                   N/A             1                 1                     624d
kube-system                           ebs-csi-controller                        N/A             1                 1                     2y23d
kyverno                               kyverno-admission-controller              1               N/A               2                     606d
orb-fleet-backend-docs-server         orb-fleet-backend-docs-server-pdb         N/A             1                 1                     157d
orb-fleet-backend-event-server        orb-fleet-backend-event-server-pdb        N/A             1                 1                     186d
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     304d
orb-fleet-backend-internal            orb-fleet-backend-internal-pdb            N/A             1                 1                     290d
orb-fleet-backend-job-server          orb-fleet-backend-job-server-pdb          N/A             1                 1                     215d
orb-fleet-backend-monitoring-server   orb-fleet-backend-monitoring-server-pdb   N/A             1                 1                     215d
orb-relay-service-canary              orb-relay-service-canary-pdb              N/A             1                 1                     278d
orb-relay-service-orb                 orb-relay-service-orb-pdb                 N/A             1                 1                     279d
orb-relay-service-orb                 orb-relay-service-sqs-cleanup-pdb         N/A             1                 0                     278d
proof-verification-srv                proof-verification-srv-pdb                N/A             1                 1                     213d
signup-service-app                    signup-service-app-pdb                    N/A             1                 1                     81d
signup-service-processor              signup-service-processor-pdb              N/A             1                 1                     49d
signup-service                        signup-service-pdb                        N/A             1                 1                     81d
signup-service                        signup-service-worker-pdb                 N/A             1                 1                     81d
```

Pods with Karpenter.sh/Do-Not-Disrupt Annotation
```
ip-10-54-99-133.eu-central-1.compute.internal  update-caae4766fa9272aac7f26d88c1a9ea3e96ce531f-29310340-zwvkq  (pcp-backfill-service)
ip-10-54-99-50.eu-central-1.compute.internal   signup-integration-tests-29310330-knlbq                         (signup-integration-tests)
ip-10-54-99-50.eu-central-1.compute.internal   signup-integration-tests-29310330-m6svt                         (signup-integration-tests)
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

Generated on: Tue Sep 23 11:42:00 CEST 2025
