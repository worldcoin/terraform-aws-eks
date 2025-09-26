# Cluster recon for tfh-world-chat-service-prod-infra,eu-west-1,world-chat-service-prod-eu-west-1,tunnel-vpc-world-chat-service-prod-eu-west-1

TFH EKS login...
```console
2025/09/22 17:20:29 INFO Logging into AWS
2025/09/22 17:20:29 INFO Token found and valid
2025/09/22 17:20:31 INFO Switch WARP Virtual Network to name=tunnel-vpc-world-chat-service-prod-eu-west-1 id=598263cd-954c-466a-ae5a-791f758766f4
2025/09/22 17:20:32 INFO Active WARP Virtual Network id=598263cd-954c-466a-ae5a-791f758766f4
Added new context tfh-world-chat-service-prod-eu-west-1 to /Users/lukasz.glowacki/.kube/config
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
            "id": "01aecbb3-eca6-4c87-90a7-9760c0bbc0b0",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T07:54:39+02:00",
            "lastTransitionTime": "2025-08-11T11:44:36+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "975f7f9b-4645-495f-9421-9423277acb43",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T07:54:32+02:00",
            "lastTransitionTime": "2025-08-11T11:44:36+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "d9d787a3-9f04-46c4-89fe-cffbde2a3f52",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T07:54:39+02:00",
            "lastTransitionTime": "2025-08-11T11:44:36+02:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "3f59eff9-e613-435d-a1ca-1d7625fc1736",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T07:54:32+02:00",
            "lastTransitionTime": "2025-09-19T19:39:31+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "4f4710d0-d717-4009-884b-545478038798",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T07:54:32+02:00",
            "lastTransitionTime": "2025-08-12T07:49:31+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        }
    ]
}
```

Show full cluster description:
```json
{
    "cluster": {
        "name": "world-chat-service-prod-eu-west-1",
        "arn": "arn:aws:eks:eu-west-1:535294144498:cluster/world-chat-service-prod-eu-west-1",
        "createdAt": "2025-08-11T11:28:31.947000+02:00",
        "version": "1.32",
        "endpoint": "https://17C9DC0ADA6130EDFA7C70CF8369AC8D.gr7.eu-west-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::535294144498:role/eks-cluster-world-chat-service-prod-eu-west-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-01c22054df6cf292c",
                "subnet-0aa4d11fe6b9168d7",
                "subnet-0c3ba7c00b37feae5"
            ],
            "securityGroupIds": [
                "sg-01c931983c3cf4c44"
            ],
            "clusterSecurityGroupId": "sg-0ccabcc4ecca63e26",
            "vpcId": "vpc-06ecc962022389a7c",
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
                "issuer": "https://oidc.eks.eu-west-1.amazonaws.com/id/17C9DC0ADA6130EDFA7C70CF8369AC8D"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJWG9WME5XendlamN3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBNE1URXdPVEk0TkRKYUZ3MHpOVEE0TURrd09UTXpOREphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURFVVR3dmVScFhZc2UwZTB3cERseUpVSEFselFJMHd2SWw3L0RrM2toNVN4bjhkdStUanZ2VWFpaHAKSi9pYWVSdWQ2ejB0SFpBUTh4NkkyeklsakZIa0JRSUNkaWgvTHpPR2k2a2pDOVRZSU1iYko2KzBlczJialhNVApFbDBjM3pvckJRKzF3MHNCUTJXTEN5WFdLY1JSbWlxQVZZaWZ2cTlDaVp1cFNJMUt1L1QwQlN3MGRYL3VYaTcwClVnZXNmaytqMGltM2ZNdUJ3SjdSa3lSbk53UUlZNUc5bGpBWm5BczJYd3N1WXo5Q0ZIbjBuZmV2WE9NUjd0aCsKeUppemFiM3VvZEpvTDVYeHcrak80eG1Vb2FEckh0bVdDbnNjSkp3ZnpjZW9WQ2N6MlR4UGVwSlVtNE1RK3ZYTApYUU5qNmFzOUUxZEZOQVdGWmpJRkwrcUVFUTBMQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJTbklxbmQxM2FlSXZiT1loWnIwVzRUYVUxaVdUQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQThxdzJXeTUydAp3WmprYWxCWUd0RGxaei9jZEhPS05NQXRoejd3Z3V0cjVudVN5ODArVWwxMmN0ajZZckZYUzBSdmppTVE5Vjd3Ck96R3JxcjkyOEwxbElCZGRHSWdDSnJVQVhuWEkzYjA3SjJRVVI5bUlONUVEbTJ5WWs3QjVQajZZOXFQWDJXTW8Kd2xWeGNIaHhjcXRzcGRSWG1IaGk4dkd2MFIvREpRUFB6dk5scWxRY0RpVUxkMkpBVy9TM1JaSFNNaUJtd0E2RwphNnRFSlZ6S01XOVR2a3gyREZLQnhJQkl0ZlJ6R0xJRnliZzlNSWpQR255RmExVkMxczl2MzBSdEZjSWJmMlNiCnlERTVEQjBPeUVpUEhtWEt5WlN0VjVyNERXSXI2WXFvN2hjbDN2V2FXOGhZTmRkYU5vSFc4QXloWHp0OHNtbjEKSi9VUVBHMGZ0a2x4Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "world-chat-service-prod-eu-west-1",
            "Team": "world-chat-service",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-west-1:535294144498:key/4cab1e13-2972-4e31-9c67-f8608fefd697"
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
NAME                                         STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-59-48-99.eu-west-1.compute.internal    Ready    <none>   172m    v1.32.8-eks-99d6cc0   10.59.48.99    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-59-49-170.eu-west-1.compute.internal   Ready    <none>   3d8h    v1.32.8-eks-99d6cc0   10.59.49.170   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-world-chat-service-prod-eu-west-1
ip-10-59-51-99.eu-west-1.compute.internal    Ready    <none>   6h31m   v1.32.8-eks-99d6cc0   10.59.51.99    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-59-52-110.eu-west-1.compute.internal   Ready    <none>   3d2h    v1.32.8-eks-99d6cc0   10.59.52.110   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-world-chat-service-prod-eu-west-1
ip-10-59-52-159.eu-west-1.compute.internal   Ready    <none>   5h54m   v1.32.8-eks-99d6cc0   10.59.52.159   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-59-53-166.eu-west-1.compute.internal   Ready    <none>   3d      v1.32.8-eks-99d6cc0   10.59.53.166   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-59-53-191.eu-west-1.compute.internal   Ready    <none>   3d      v1.32.8-eks-99d6cc0   10.59.53.191   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                                         STATUS   ROLES    TAINTS
ip-10-59-48-99.eu-west-1.compute.internal    Ready    <none>   <none>
ip-10-59-49-170.eu-west-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-59-51-99.eu-west-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:enclave]]
ip-10-59-52-110.eu-west-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-59-52-159.eu-west-1.compute.internal   Ready    <none>   <none>
ip-10-59-53-166.eu-west-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:enclave]]
ip-10-59-53-191.eu-west-1.compute.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON             OBJECT                                            MESSAGE
14m         Normal    Unconsolidatable   node/ip-10-59-48-99.eu-west-1.compute.internal    Can't remove without creating 2 candidates
80s         Warning   Unsupported        node/ip-10-59-49-170.eu-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
2m19s       Warning   Unsupported        node/ip-10-59-52-110.eu-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
14m         Normal    Unconsolidatable   node/ip-10-59-52-159.eu-west-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE            NAME                                        MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-autoscaler   cluster-autoscaler-aws-cluster-autoscaler   N/A             1                 1                     4d8h
karpenter            karpenter                                   N/A             1                 1                     41d
kube-system          coredns                                     N/A             1                 1                     42d
kube-system          ebs-csi-controller                          N/A             1                 1                     42d
kyverno              kyverno-admission-controller                1               N/A               2                     41d
world-chat           world-chat-backend-pdb                      N/A             1                 1                     3d
world-chat           world-chat-enclave-worker-pdb               N/A             1                 1                     3d
world-chat           world-chat-notification-worker-pdb          N/A             1                 1                     3d
world-chat           world-chat-secure-enclave-pdb               N/A             1                 1                     3d
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

Generated on: Mon Sep 22 17:21:04 CEST 2025
