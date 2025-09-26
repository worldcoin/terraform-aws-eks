# Cluster recon for tfh-crypto-stage-infra,eu-central-2,crypto-stage-eu-central-2,tunnel-vpc-crypto-stage-eu-central-2

TFH EKS login...
```console
2025/09/17 16:59:32 INFO Logging into AWS
2025/09/17 16:59:32 INFO Token found and valid
2025/09/17 16:59:33 INFO Switch WARP Virtual Network to name=tunnel-vpc-crypto-stage-eu-central-2 id=940384e4-d7ad-44b5-849a-afdfbfb5ddbf
2025/09/17 16:59:35 INFO Active WARP Virtual Network id=940384e4-d7ad-44b5-849a-afdfbfb5ddbf
Updated context tfh-crypto-stage-eu-central-2 in /Users/lukasz.glowacki/.kube/config
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
            "id": "c45f9b5c-8bb0-455e-8029-d784e712027a",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T14:07:40+02:00",
            "lastTransitionTime": "2025-09-12T13:37:39+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "16649dcb-0c3b-49e5-933e-d948875891c8",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T14:07:40+02:00",
            "lastTransitionTime": "2025-01-22T21:32:42+01:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "18a3f140-ec6c-4eb0-9177-e77db09f06b7",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T14:07:52+02:00",
            "lastTransitionTime": "2025-07-29T09:07:39+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "dcd62d39-258e-4eca-8717-f4237a72b8f0",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T14:07:40+02:00",
            "lastTransitionTime": "2025-01-22T21:32:42+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "673ffb4b-f4a3-41d3-aee1-03dd305c4e45",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T14:07:52+02:00",
            "lastTransitionTime": "2025-01-22T21:32:42+01:00",
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
        "name": "crypto-stage-eu-central-2",
        "arn": "arn:aws:eks:eu-central-2:267301337261:cluster/crypto-stage-eu-central-2",
        "createdAt": "2025-01-22T21:04:46.593000+01:00",
        "version": "1.32",
        "endpoint": "https://53B226E141423807B69FEFB0E692CBDB.sk1.eu-central-2.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::267301337261:role/eks-cluster-crypto-stage-eu-central-2",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-04bd63cc2c4e93f4a",
                "subnet-01c9e92591bb0c9c8",
                "subnet-06cfb1791d2c251f4"
            ],
            "securityGroupIds": [
                "sg-04e7ce892ee8412d5"
            ],
            "clusterSecurityGroupId": "sg-051a133044ca60c8b",
            "vpcId": "vpc-069160326ab74105e",
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
                "issuer": "https://oidc.eks.eu-central-2.amazonaws.com/id/53B226E141423807B69FEFB0E692CBDB"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJTTZJSTJEOXkwWkl3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBeE1qSXlNREF6TkRaYUZ3MHpOVEF4TWpBeU1EQTRORFphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURXcENFc1czQkdPWngyWTJSZlFPTk5nZGdyeFdDZWVxTHdxUHNOVm1QS3dBdlZLN2RSRXdURlIrbkUKK05xdGNMdHpNbm8xelA1WlEwUVA4eCt5b1ptQ0FiOVdSL1I3ZkdLYmIvdnpaV2hNWW0yUkZNMWJLV0J2em1DSQp0alZibWozTkpoV1U0SGU0UTJGVkJlZ2plYkE1ZkJaNVBTME5kekhCSURyU21MUDJ4dzllZkppMkZJWUhNL2ZyCjRVUnhVT0N6T2lJUWFnam80U1lYenFxVFpQa1VSaEJ5UUVlamtMY29YbzFPa2dmbUNHVXltWmgwQkh2d0U5SDQKNExyMDkxQjJFMFNXQWhaVFRLSEcreU9IU0dKRHJjc0FtNlF3cmlFQUpwbzF4UTRCMmR4S1RYSzdoc0UrWE1ycApRWHlJRlR6ZWIwSUFmeG1OYzJBdXJQV2hlalkxQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJRWDZTTlZBa3BRbStBY3JzNjhRK3pCZkVCUTZUQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQkdlWmlvVUlmMgo3NHBMWisxMGFIVm9CMldJdUN1VW81S3lsaWdsL3hGVUtrNEJ6R2JrTVhPS2xZSndFeWhuVktrYk1uRnlLOTlwCitIWms0MUVubkx5YTJZL3VSWmVsdlk4TmFiVVNLYndVYy9UbzF2MUdrK0FxYkozaFB1OEdxUGdabmpuNFE4eFMKblcvMDAyYlRmTnNVUjh2OWRZTzBET0dRZkduL2JraTdJZjBGM21mUTdRV0tHZ1FVT05NM2ZHLzN5bHNWcFgyWgprTFBOUDZiNmxiclBHSHcrTFRBVVpGY2t1eWo0UWhWVjR4cUdRc2RoQ0YxRWJ6MmUvMmFnNm1yZ2hzaEtoOXZVCkhPQ1huV3hwWG4rekE4U29oTVo0MDlCODVFQm9PdTlVVGFKWFdGZzFLMkFESjNYaXFVS1l6c1lMZnNoWWVsYXEKNW1CaHNPdEV5NUZqCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "stage",
            "karpenter.sh/discovery": "crypto-stage-eu-central-2",
            "Team": "crypto",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-central-2:267301337261:key/813a127f-6df9-4bf9-8508-a27b5d696ed0"
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
NAME                                             STATUS   ROLES    AGE     VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME
ip-10-86-208-209.eu-central-2.compute.internal   Ready    <none>   5d4h    v1.32.8-eks-99d6cc0   10.86.208.209   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-86-209-197.eu-central-2.compute.internal   Ready    <none>   5d4h    v1.32.8-eks-99d6cc0   10.86.209.197   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-86-209-208.eu-central-2.compute.internal   Ready    <none>   5d4h    v1.32.8-eks-99d6cc0   10.86.209.208   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-86-210-156.eu-central-2.compute.internal   Ready    <none>   2d4h    v1.32.8-eks-99d6cc0   10.86.210.156   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-86-210-184.eu-central-2.compute.internal   Ready    <none>   5d4h    v1.32.8-eks-99d6cc0   10.86.210.184   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-86-210-6.eu-central-2.compute.internal     Ready    <none>   5d4h    v1.32.8-eks-99d6cc0   10.86.210.6     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-86-211-123.eu-central-2.compute.internal   Ready    <none>   44h     v1.32.8-eks-99d6cc0   10.86.211.123   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-86-211-126.eu-central-2.compute.internal   Ready    <none>   5d4h    v1.32.8-eks-99d6cc0   10.86.211.126   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-86-211-189.eu-central-2.compute.internal   Ready    <none>   45h     v1.32.8-eks-99d6cc0   10.86.211.189   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-86-211-217.eu-central-2.compute.internal   Ready    <none>   5d4h    v1.32.8-eks-99d6cc0   10.86.211.217   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-86-212-177.eu-central-2.compute.internal   Ready    <none>   44h     v1.32.8-eks-99d6cc0   10.86.212.177   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-86-213-167.eu-central-2.compute.internal   Ready    <none>   5d4h    v1.32.8-eks-99d6cc0   10.86.213.167   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-86-213-180.eu-central-2.compute.internal   Ready    <none>   5d4h    v1.32.8-eks-99d6cc0   10.86.213.180   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-86-213-232.eu-central-2.compute.internal   Ready    <none>   44h     v1.32.8-eks-99d6cc0   10.86.213.232   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-86-213-253.eu-central-2.compute.internal   Ready    <none>   2d18h   v1.32.8-eks-99d6cc0   10.86.213.253   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON              OBJECT                                                MESSAGE
33s         Warning   Unsupported         node/ip-10-86-208-209.eu-central-2.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
3m14s       Normal    DisruptionBlocked   node/ip-10-86-209-197.eu-central-2.compute.internal   Node is deleting or marked for deletion
5m37s       Warning   FailedDraining      node/ip-10-86-209-197.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
3m14s       Normal    DisruptionBlocked   node/ip-10-86-209-208.eu-central-2.compute.internal   Node is deleting or marked for deletion
32s         Warning   FailedDraining      node/ip-10-86-209-208.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
4m45s       Warning   FailedDraining      node/ip-10-86-210-184.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
3m14s       Normal    DisruptionBlocked   node/ip-10-86-210-184.eu-central-2.compute.internal   Node is deleting or marked for deletion
33s         Normal    DisruptionBlocked   node/ip-10-86-210-6.eu-central-2.compute.internal     Node is deleting or marked for deletion
47s         Warning   FailedDraining      node/ip-10-86-210-6.eu-central-2.compute.internal     Failed to drain node, 3 pods are waiting to be evicted
3m54s       Normal    DisruptionBlocked   node/ip-10-86-211-123.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-builder/world-chain-builder-0)
3m14s       Normal    DisruptionBlocked   node/ip-10-86-211-126.eu-central-2.compute.internal   Node is deleting or marked for deletion
41s         Warning   FailedDraining      node/ip-10-86-211-126.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
2s          Normal    DisruptionBlocked   node/ip-10-86-211-189.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-builder/world-chain-builder-2)
68s         Warning   Unsupported         node/ip-10-86-211-217.eu-central-2.compute.internal   The instance type t3.large is not supported for trunk interface (Security Group for Pods)
5m5s        Normal    DisruptionBlocked   node/ip-10-86-212-177.eu-central-2.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-builder/world-chain-builder-1)
3m14s       Normal    DisruptionBlocked   node/ip-10-86-213-167.eu-central-2.compute.internal   Node is deleting or marked for deletion
79s         Warning   FailedDraining      node/ip-10-86-213-167.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
3m14s       Normal    DisruptionBlocked   node/ip-10-86-213-180.eu-central-2.compute.internal   Node is deleting or marked for deletion
4m39s       Warning   FailedDraining      node/ip-10-86-213-180.eu-central-2.compute.internal   Failed to drain node, 2 pods are waiting to be evicted
4m34s       Normal    DisruptionBlocked   node/ip-10-86-213-232.eu-central-2.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=world-chain-snapshotter/world-chain-snapshotter-pdb)
```

Pods with issues
```
cloudflared-tunnel                cloudflared-tunnel-746c5477d5-rcttc                               0/1     CreateContainerConfigError   0              2d4h
cloudflared-tunnel                cloudflared-tunnel-746c5477d5-v66ld                               0/1     CreateContainerConfigError   0              45h
```

PodDisruptionBudgets
```
NAMESPACE                         NAME                                  MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                cluster-monitoring-pdb                N/A             1                 1                     225d
karpenter                         karpenter                             N/A             1                 1                     225d
kube-system                       coredns                               N/A             1                 1                     237d
kube-system                       ebs-csi-controller                    N/A             1                 1                     237d
kyverno                           kyverno-admission-controller          1               N/A               2                     225d
world-chain-builder               world-chain-builder-pdb               50%             N/A               1                     96d
world-chain-op-node               world-chain-op-node-pdb               50%             N/A               1                     213d
world-chain-snapshotter-op-node   world-chain-snapshotter-op-node-pdb   50%             N/A               0                     145d
world-chain-snapshotter           world-chain-snapshotter-pdb           50%             N/A               0                     145d
world-chain-tx-proxy              world-chain-tx-proxy-pdb              50%             N/A               1                     135d
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
