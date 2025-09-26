# Cluster recon for tfh-df-enclave-prod-infra,us-east-1,df-enclave-prod-us-east-1,tunnel-vpc-df-enclave-prod-us-east-1

TFH EKS login...
```console
2025/09/22 17:18:39 INFO Logging into AWS
2025/09/22 17:18:39 INFO Token not found or expired error="no valid token found"
2025/09/22 17:18:39 INFO Attempting to automatically open the SSO authorization page in your default browser...
2025/09/22 17:18:54 INFO Token found and valid
2025/09/22 17:18:56 INFO Switch WARP Virtual Network to name=tunnel-vpc-df-enclave-prod-us-east-1 id=e0b8b81a-9cf4-4c72-b234-835a53089960
2025/09/22 17:18:58 INFO Active WARP Virtual Network id=e0b8b81a-9cf4-4c72-b234-835a53089960
Added new context tfh-df-enclave-prod-us-east-1 to /Users/lukasz.glowacki/.kube/config
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
            "id": "b37f2485-add3-460a-9cb6-5ecfa3b99739",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T11:34:05+02:00",
            "lastTransitionTime": "2025-09-05T12:59:12+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "fa81c105-2f29-4ca2-ad53-8e8e2d137f1e",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T11:34:05+02:00",
            "lastTransitionTime": "2025-09-05T12:59:12+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "ed9fd5c3-040e-4016-b882-5a4c4f751241",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T11:34:06+02:00",
            "lastTransitionTime": "2025-09-18T05:54:05+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "899ab5c3-5354-4fa3-8d3f-fd635494fc19",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T11:34:19+02:00",
            "lastTransitionTime": "2025-09-05T12:59:12+02:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "9ca22cc3-d701-44d8-8384-41b9f2133e90",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T11:34:19+02:00",
            "lastTransitionTime": "2025-09-05T12:59:12+02:00",
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
        "name": "df-enclave-prod-us-east-1",
        "arn": "arn:aws:eks:us-east-1:222575009994:cluster/df-enclave-prod-us-east-1",
        "createdAt": "2025-09-05T12:47:39.977000+02:00",
        "version": "1.32",
        "endpoint": "https://D1821315A7FD2DDEBE821881D7B5C84D.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::222575009994:role/eks-cluster-df-enclave-prod-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0559f69a6b03032b2",
                "subnet-0e22b635e29dd2432",
                "subnet-0621318747f2cccab"
            ],
            "securityGroupIds": [
                "sg-063ff219a5c2ad250"
            ],
            "clusterSecurityGroupId": "sg-08da726f7f91fa67c",
            "vpcId": "vpc-088f5089b8919d23f",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/D1821315A7FD2DDEBE821881D7B5C84D"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJZVNmSUFRUm9qK013RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBNU1EVXhNRFEzTkRaYUZ3MHpOVEE1TURNeE1EVXlORFphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURpbkxVZkxYMTBEVDYzQ2w4ZTZzWERmaG9DeFRTVGd2WEYzbzBYSDJSLzBjVjlqeWNNTTBSdVRzQlYKM3ExVFplUjlOdW1XSHBPY2VWRENCeG1tWGgwcVZtbldUWXRXRGxNYm1VYlpJdVNOUXJDbUtteUF0dnZpaEEvTApLbnFDK2RQT1MyZWwxNm9XWWp2QlV5LzlSVHR2QXdRelZobFdmb08wZU1XdGdUZElUREI3cWZ4OSsxd2xWang0CjFVdEh4UnZLMTdkNW1VcUVUUkZ1VTVPN1V5bWo5QzZXenpOV3VuUnJXUWVadlJXOVhuTWZoV2Y0eUd5U0VPTG4KMithVEltNWdaYjBGU0YzYjNBKzZPS3BOU2hNdWpaaFRxZ3RRRitRVWM5REY2T25mL1ZCT0xSZWx5MTdjR3RWWQpOY0p6VUlVc25EVFo1NVE4dUZiVW9YanFRZ1VUQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJTeE52LzA1WmEwZENuUUJQQWxXNllnVDRXVCtqQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQ1lXNmZCZzB6QQp4aDdkTXU2Z0V3amZQYWJiZXo5VHV2MkVhcWE1SzlBSUNVeUN2ZFI2NGljNzZuTnllTUdzL0JyZStSNWlrYWhWCndVMlBYQWpZY2tzQ0ZoR1dhTnNyNkMwNTZTZG5mUFdER0d3R25ieDVYMDJVZm9mUDIxWjZqNGRieTVUdHE5QlMKVm5RWDd1SGovV2QvNnVnU2Y2ZVZ4SXczbVprcjNLVTNzS3pSTHBXNW9jdUhCbUNuQ3RFWGxTa2s5S25obzZIRQpQWjRWdWI5b1RPdkJ0NjdKbXhLOGs2NVFNSmNoRDhpUXNWWS9pRmcrbUtUWk1wdnp1T202NU1pdGVCWGpUSW1yCmxVUkVuQVRuY3Y3VU5KVytxaFEvS2s5a0I4eURaMUkyUTc5SlNGWmtMY21uYTRwK1IzZEQvRkNkMXpEVDRFLzcKVld1dEY0T3ZIbm1mCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.19",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "df-enclave-prod-us-east-1",
            "Team": "df-enclave",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:222575009994:key/a57f15d9-69e0-4029-b42a-c17b3d719236"
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
NAME                           STATUS   ROLES    AGE    VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-0-112-107.ec2.internal   Ready    <none>   3d9h   v1.32.8-eks-99d6cc0   10.0.112.107   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-df-enclave-prod-us-east-1
ip-10-0-112-22.ec2.internal    Ready    <none>   25h    v1.32.8-eks-99d6cc0   10.0.112.22    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-114-28.ec2.internal    Ready    <none>   3d6h   v1.32.8-eks-99d6cc0   10.0.114.28    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-114-64.ec2.internal    Ready    <none>   3d9h   v1.32.8-eks-99d6cc0   10.0.114.64    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-df-enclave-prod-us-east-1
ip-10-0-116-152.ec2.internal   Ready    <none>   5h4m   v1.32.8-eks-99d6cc0   10.0.116.152   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                           STATUS   ROLES    TAINTS
ip-10-0-112-107.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-112-22.ec2.internal    Ready    <none>   <none>
ip-10-0-114-28.ec2.internal    Ready    <none>   <none>
ip-10-0-114-64.ec2.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-116-152.ec2.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON             OBJECT                              MESSAGE
91s         Warning   Unsupported        node/ip-10-0-112-107.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
9m8s        Normal    Unconsolidatable   node/ip-10-0-114-28.ec2.internal    Can't remove without creating 2 candidates
3m15s       Warning   Unsupported        node/ip-10-0-114-64.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
9m9s        Normal    Unconsolidatable   node/ip-10-0-116-152.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE            NAME                                        MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-autoscaler   cluster-autoscaler-aws-cluster-autoscaler   N/A             1                 1                     4d8h
cluster-monitoring   cluster-monitoring-pdb                      N/A             1                 1                     17d
karpenter            karpenter                                   N/A             1                 1                     17d
kube-system          coredns                                     N/A             1                 1                     17d
kube-system          ebs-csi-controller                          N/A             1                 1                     17d
kyverno              kyverno-admission-controller                1               N/A               2                     17d
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

Generated on: Mon Sep 22 17:19:40 CEST 2025
