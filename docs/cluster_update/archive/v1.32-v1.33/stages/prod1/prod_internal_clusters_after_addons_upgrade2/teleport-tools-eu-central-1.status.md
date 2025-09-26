# Cluster recon for tfh-internal-tools-infra,eu-central-1,teleport-tools-eu-central-1,tunnel-vpc-internal-tools-teleport-eu-central-1

TFH EKS login...
```console
2025/09/22 10:50:34 INFO Logging into AWS
2025/09/22 10:50:34 INFO Token not found or expired error="no valid token found"
2025/09/22 10:50:34 INFO Attempting to automatically open the SSO authorization page in your default browser...
2025/09/22 10:51:05 INFO Token found and valid
2025/09/22 10:51:07 INFO Switch WARP Virtual Network to name=tunnel-vpc-internal-tools-teleport-eu-central-1 id=b9f8004a-945f-4b03-94e5-0d1923d27e18
2025/09/22 10:51:09 INFO Active WARP Virtual Network id=b9f8004a-945f-4b03-94e5-0d1923d27e18
Updated context tfh-teleport-tools-eu-central-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "70a39173-ff05-49fe-ba3c-f4ff1218e201",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-21T23:19:21+02:00",
            "lastTransitionTime": "2025-03-04T06:14:26+01:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "38c5432a-7c20-49cc-a2df-e4638b72e26c",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-21T23:19:21+02:00",
            "lastTransitionTime": "2024-12-20T14:54:20+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "5a93da1f-9d3b-40c2-827e-507e913a0073",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-21T23:19:21+02:00",
            "lastTransitionTime": "2025-09-12T18:24:21+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "663470b5-cf90-4fb2-ba10-ae5ac156baec",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-21T23:19:36+02:00",
            "lastTransitionTime": "2025-07-29T13:54:21+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "625eb1b2-7689-4558-b002-3db0884d2c4b",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-21T23:19:36+02:00",
            "lastTransitionTime": "2024-12-20T14:54:20+01:00",
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
        "name": "teleport-tools-eu-central-1",
        "arn": "arn:aws:eks:eu-central-1:507152310572:cluster/teleport-tools-eu-central-1",
        "createdAt": "2024-03-29T12:45:47.995000+01:00",
        "version": "1.32",
        "endpoint": "https://C75BC26EAE4A3375052FD06E216A2838.gr7.eu-central-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::507152310572:role/eks-cluster-teleport-tools-eu-central-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-01d9705e5c2ca730c",
                "subnet-087b44f5db4e151e3",
                "subnet-0088747e4b8e4ea32"
            ],
            "securityGroupIds": [
                "sg-0fe0687bd0296580f"
            ],
            "clusterSecurityGroupId": "sg-0805f3d29beb70b86",
            "vpcId": "vpc-065489b8deccee2f5",
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
                "issuer": "https://oidc.eks.eu-central-1.amazonaws.com/id/C75BC26EAE4A3375052FD06E216A2838"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJWGJERzFTWGUydjR3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TkRBek1qa3hNVFExTXpOYUZ3MHpOREF6TWpjeE1UVXdNek5hTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUNrQmxsYUNocHZyZS8rc2pnaVJqaWgvUTB2QytKRllabmF3cGRvMFlIMFlueUxyT3VVcGZrTWFDdysKam1iY2JHdkdPVThBbUF5QU1xQ08wSjNxbkNNbWFBSEYzejh2RXltK1RiWS9ZQTdKeTZzVjhFRzNNMS9vVVM0dwpxY2E2ZEZPYXVpR0orZ3pNcjlpQU5kRjNyTUNYenRuYXhzcFlzNVBaRE0rNlU3SGVhQTZPa1VieXFmb3JKMlR5Ck5UY1RpaDFnMDkvengzMUFuNHBjUFpFNzVodGtTOWNnZDNXU2lVVkRUcTJ1Nlc4R2MyNjVCR091UUE4dXdXWUgKd2t5K1RBZHVRS25GQjVjWUlVMzBkNTJ3clA3MElVZFFvSmNMejJTUWo4VHRLLytZenA1RW53dHhBaUltdmZMOQpJT0hGaGIraHdQY0pzTXBGN3Y4dTJFajNRZEI5QWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJScmJvNUgwUVF6VFFFV01FUFovTU5FRVVYbFlEQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQXhwRTNJUHNPUAo2bTFJZmdBSll2VzgzV2hVNkZyV1dhYXRTWSs4U2ZEOWIyR2NNUEVjZDNHZkRqOXZKamo1RHNqTTBLVXhEUWY5Ci9tTDdNTTRKUjR0NlJGbG5RTUpaZlVWblJLaDRLZjFtdHlSeVJtaVNJNjNpRlFTSmZLbzQrK2lhYkh5Yk4vbUQKQjlpdlJNeG1YL2V0Um1JMnllN0VRRnJsZUhQOHM3cEF4SjhGZW83SUVDODgxZWNFZXJ6cTZoN29PSSs2akJDawp6Z01LdW0rN3VDUnUvbk80OGhIR29iUHQzNjBpME90eWNlQ2VFZnVidFBreGVCdE1VU2ZZQytzV0d3Sk8xTEtsCkFmd2tvaHBPblRTMFRiVUI3eUJlYkJWVjlxTTAyazVVaDVWb0djTFk0WVk3RFpIMEFGWnBtdkZCaS96aWpCSWkKRXhNSUpnU1dEOTNJCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "teleport-tools-eu-central-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-central-1:507152310572:key/3cfbfc3f-dc63-4710-a160-d344ca2a35e9"
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
ip-10-53-224-181.eu-central-1.compute.internal   Ready    <none>   2d21h   v1.32.8-eks-99d6cc0   10.53.224.181   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-teleport-tools-eu-central-1
ip-10-53-224-206.eu-central-1.compute.internal   Ready    <none>   2d21h   v1.32.8-eks-99d6cc0   10.53.224.206   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-53-226-133.eu-central-1.compute.internal   Ready    <none>   161m    v1.32.8-eks-99d6cc0   10.53.226.133   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-53-226-250.eu-central-1.compute.internal   Ready    <none>   2d21h   v1.32.8-eks-99d6cc0   10.53.226.250   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-teleport-tools-eu-central-1
ip-10-53-226-57.eu-central-1.compute.internal    Ready    <none>   18h     v1.32.8-eks-99d6cc0   10.53.226.57    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-53-229-230.eu-central-1.compute.internal   Ready    <none>   2d21h   v1.32.8-eks-99d6cc0   10.53.229.230   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                             STATUS   ROLES    TAINTS
ip-10-53-224-181.eu-central-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-53-224-206.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-53-226-133.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-53-226-250.eu-central-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-53-226-57.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-53-229-230.eu-central-1.compute.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                                                MESSAGE
5m18s       Warning   Unsupported                   node/ip-10-53-224-181.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
20s         Normal    Unconsolidatable              node/ip-10-53-224-206.eu-central-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
2m39s       Warning   Unsupported                   node/ip-10-53-226-250.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
19s         Normal    Unconsolidatable              node/ip-10-53-226-57.eu-central-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
2s          Normal    SpotRebalanceRecommendation   node/ip-10-53-226-57.eu-central-1.compute.internal    Spot rebalance recommendation was triggered
20s         Normal    Unconsolidatable              node/ip-10-53-229-230.eu-central-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE            NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring   cluster-monitoring-pdb         N/A             1                 1                     296d
karpenter            karpenter                      N/A             1                 1                     536d
kube-system          coredns                        N/A             1                 1                     541d
kube-system          ebs-csi-controller             N/A             1                 1                     541d
kyverno              kyverno-admission-controller   1               N/A               2                     536d
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

Generated on: Mon Sep 22 10:51:37 CEST 2025
