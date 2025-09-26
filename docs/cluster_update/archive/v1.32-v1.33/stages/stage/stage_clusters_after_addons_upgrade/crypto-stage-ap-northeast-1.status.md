# Cluster recon for tfh-crypto-stage-infra,ap-northeast-1,crypto-stage-ap-northeast-1,tunnel-vpc-crypto-stage-ap-northeast-1

TFH EKS login...
```console
2025/09/18 11:09:42 INFO Logging into AWS
2025/09/18 11:09:42 INFO Token found and valid
2025/09/18 11:09:44 INFO Switch WARP Virtual Network to name=tunnel-vpc-crypto-stage-ap-northeast-1 id=ca7ac15c-5661-40e3-a638-11aa55e7da25
2025/09/18 11:09:46 INFO Active WARP Virtual Network id=ca7ac15c-5661-40e3-a638-11aa55e7da25
Updated context tfh-crypto-stage-ap-northeast-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "6b0bfdf9-ee78-419c-bd3d-b304514ec952",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T08:40:14+02:00",
            "lastTransitionTime": "2025-07-29T07:34:57+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "27574fb0-2120-4b78-8eeb-065123bf51e2",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T08:40:14+02:00",
            "lastTransitionTime": "2025-06-27T12:25:05+02:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "9c3740bd-eca9-40a3-83f2-ac309d08c441",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T08:40:02+02:00",
            "lastTransitionTime": "2025-06-27T12:25:05+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "6db3e8bf-de15-48d0-a9ac-0ee244079732",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T08:40:02+02:00",
            "lastTransitionTime": "2025-06-27T12:25:05+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "3c42569b-a714-4dd8-ae45-74bad1a1642e",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T08:40:02+02:00",
            "lastTransitionTime": "2025-09-05T19:24:57+02:00",
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
        "name": "crypto-stage-ap-northeast-1",
        "arn": "arn:aws:eks:ap-northeast-1:267301337261:cluster/crypto-stage-ap-northeast-1",
        "createdAt": "2025-06-27T12:05:34.607000+02:00",
        "version": "1.32",
        "endpoint": "https://CD6C3450436DE6CFCD65B16171CE159E.gr7.ap-northeast-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::267301337261:role/eks-cluster-crypto-stage-ap-northeast-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0edfb8dbfffd211fe",
                "subnet-043ba7e1248aa16b7",
                "subnet-01cf898565950924f"
            ],
            "securityGroupIds": [
                "sg-0f817ef27b456dec0"
            ],
            "clusterSecurityGroupId": "sg-0e6bb803f09899cb3",
            "vpcId": "vpc-03f692ffe7d1517d0",
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
                "issuer": "https://oidc.eks.ap-northeast-1.amazonaws.com/id/CD6C3450436DE6CFCD65B16171CE159E"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJRzVUZ1ZDeHJwcWt3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMk1qY3hNREEwTXpsYUZ3MHpOVEEyTWpVeE1EQTVNemxhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURHYldjM0dQY3FJZU5MVVZjeUlFYnp4TG4vb3hSRlF5TGM3VytvQkpGYnBMWXp1U05qbjZEQU9qNXoKU1l5UXRJZEFVL2RHS0t6N0NORGhQUDNNcVMxYXo5N3F6WHRUZXZwd3F5WnlDZ0FpWEVYK3hjbE40SmFqWkdYQgpjc29yUHl5ekh1b1haN1NReTNMaTJUNm1pVDVpd2t0d1lDSjZaY01SVVJUQ3JwRURGM3ZZaVM4NU1ZRk9hZi9xCitTRWs1QnNDU0loOVE5MlZzb1ZrT3pDZXk3Q2ZUOFA3S0oxSXhkWWY0NTF1SVJvVnhUNU1ZU2JDVzlrTmtYRjIKTk1LT1o4THBhQ3VSUzM0YUh5OHkycG5nOVJITlg4eW4ra2FZeDRGdTcwSmNVdDlabEdOcWRKcVpjcnVBS05ySQpCOGs5NHZjclRlejFSUEcvSTZlWFQ0OENIMitkQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJRamVwdm5XQ2xDbUlXb2lvdnNSL1dPTmdyb0l6QVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQVNGNzEvK0VaUQp2cWNSclNBOVhkWkRYeEFWdkpwWE9Jd0tHeW43YTAzQldvYVV5VWhrVHl4U1paRDlWaXN0RTFtVFQ2V1BwTzRoCjh6SzYwR3VRckE1U01qR2h2QllQbkpsM1d4b1VqVXJZMFdvTXAwU2dHUWlYOHlPUloxeWV1Wi9IMkIzUzNzMEkKVDg5WERwYlhwSmJSWHBTNHVpdzhrTG9Hay9IT3RXU3pFQ1NKamtVbXJkeG80UlJ4dmpCbC9kQWNzc3lPdVBVMgo0U0drZ0VTVi81aFdla0VLaFpsY2ZXZm4yaVUxVzNHOEU2eUpYMGR5SXpkV3d2Q3gveTYzbjhKalRrWTVSRkJjCll3VUpkRW85Qkg2N0Rub0NOaVB3dElQdVAzRVlwOHFHSWphWDg0eDhpTFdvekVpQjdLRFUvWkxNNDJoTjI2T28KeGpYa1BXekV5enh0Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "stage",
            "karpenter.sh/discovery": "crypto-stage-ap-northeast-1",
            "Team": "crypto",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:ap-northeast-1:267301337261:key/225b45e5-77cf-4a50-a62f-27b320464307"
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
NAME                                              STATUS   ROLES    AGE    VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME
ip-10-45-65-52.ap-northeast-1.compute.internal    Ready    <none>   9d     v1.32.8-eks-99d6cc0   10.45.65.52    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-45-66-214.ap-northeast-1.compute.internal   Ready    <none>   23h    v1.32.8-eks-99d6cc0   10.45.66.214   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-45-68-135.ap-northeast-1.compute.internal   Ready    <none>   9d     v1.32.8-eks-99d6cc0   10.45.68.135   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-45-68-140.ap-northeast-1.compute.internal   Ready    <none>   97m    v1.32.8-eks-99d6cc0   10.45.68.140   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27
ip-10-45-68-193.ap-northeast-1.compute.internal   Ready    <none>   119m   v1.32.8-eks-99d6cc0   10.45.68.193   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON              OBJECT                                                 MESSAGE
4m50s       Warning   Unsupported         node/ip-10-45-65-52.ap-northeast-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
15m         Normal    Starting            node/ip-10-45-65-52.ap-northeast-1.compute.internal    
11m         Normal    DisruptionBlocked   node/ip-10-45-66-214.ap-northeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
16m         Normal    DisruptionBlocked   node/ip-10-45-66-214.ap-northeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
16m         Normal    Starting            node/ip-10-45-66-214.ap-northeast-1.compute.internal   
4m56s       Warning   Unsupported         node/ip-10-45-68-135.ap-northeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
15m         Normal    Starting            node/ip-10-45-68-135.ap-northeast-1.compute.internal   
28m         Normal    Unconsolidatable    node/ip-10-45-68-140.ap-northeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
15m         Normal    Starting            node/ip-10-45-68-140.ap-northeast-1.compute.internal   
11m         Normal    DisruptionBlocked   node/ip-10-45-68-140.ap-northeast-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
3m4s        Normal    Unconsolidatable    node/ip-10-45-68-193.ap-northeast-1.compute.internal   Can't remove without creating 2 candidates
16m         Normal    Starting            node/ip-10-45-68-193.ap-northeast-1.compute.internal   
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring       cluster-monitoring-pdb         N/A             1                 1                     82d
karpenter                karpenter                      N/A             1                 1                     82d
kube-system              coredns                        N/A             1                 1                     82d
kube-system              ebs-csi-controller             N/A             1                 1                     82d
kyverno                  kyverno-admission-controller   1               N/A               2                     82d
nfc-uniqueness-service   issuer-service-pdb             N/A             1                 1                     75d
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
