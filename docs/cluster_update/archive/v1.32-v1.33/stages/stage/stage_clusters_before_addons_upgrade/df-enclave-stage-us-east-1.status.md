# Cluster recon for tfh-df-enclave-stage-infra,us-east-1,df-enclave-stage-us-east-1,tunnel-vpc-df-enclave-stage-us-east-1

TFH EKS login...
```console
2025/09/17 17:02:11 INFO Logging into AWS
2025/09/17 17:02:11 INFO Token found and valid
2025/09/17 17:02:13 INFO Switch WARP Virtual Network to name=tunnel-vpc-df-enclave-stage-us-east-1 id=a8d86ecd-fbb0-4c53-802d-6ae766390581
2025/09/17 17:02:14 INFO Active WARP Virtual Network id=a8d86ecd-fbb0-4c53-802d-6ae766390581
Updated context tfh-df-enclave-stage-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "1455619a-66c1-46b1-b917-d2d6074b85a1",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T07:29:05+02:00",
            "lastTransitionTime": "2025-06-03T12:59:04+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "05468223-82f5-4267-a7f3-703c28301c45",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T07:29:21+02:00",
            "lastTransitionTime": "2025-06-03T12:59:04+02:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "19039845-23ed-4e59-b6e5-514e2b389ac8",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T07:29:05+02:00",
            "lastTransitionTime": "2025-08-19T12:49:04+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "ERROR",
                "reason": "The cluster contains legacy Amazon Linux 2 (AL2) nodes. Migrate Amazon Linux 2 node groups to Amazon Linux 2023 before November 26, 2025 or before upgrading to EKS 1.33."
            }
        },
        {
            "id": "05c2c942-38da-42d8-86dc-940b23397bda",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T07:29:21+02:00",
            "lastTransitionTime": "2025-07-29T14:39:04+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "c2ca252e-162b-454d-98e9-7f384ec4ed95",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T07:29:04+02:00",
            "lastTransitionTime": "2025-06-03T12:59:04+02:00",
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
        "name": "df-enclave-stage-us-east-1",
        "arn": "arn:aws:eks:us-east-1:279663582588:cluster/df-enclave-stage-us-east-1",
        "createdAt": "2025-06-03T12:42:30.001000+02:00",
        "version": "1.32",
        "endpoint": "https://1473CF201D80B3218AA7A7253E7DFA55.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::279663582588:role/eks-cluster-df-enclave-stage-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-014b6d2f11695de7f",
                "subnet-0a077903360ae603a",
                "subnet-00c3fc1342651223d"
            ],
            "securityGroupIds": [
                "sg-09c37b1c486372d42"
            ],
            "clusterSecurityGroupId": "sg-0f02f7cb2a651eece",
            "vpcId": "vpc-00a9c2c1da7e77f7f",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/1473CF201D80B3218AA7A7253E7DFA55"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJSjBXUXpZeno2eHN3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMk1ETXhNRFF5TWpaYUZ3MHpOVEEyTURFeE1EUTNNalphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUNzUHF6R2d5d0U5aG9ES2YwOHRwb1lnMmQzbk9wY2JZUXVRQllxaEplU29WZGt3ZFQvTWJIZCtzZzUKYzk5TDkvMC9YL3dXbW4wZk1xa21aeTB6b2R2YVBpTWhneWdkQnV4STJ3Qk01YkhLd2x2Ykp0MXJuMDE5WlcycApMbUUzN0dleXNwVVc4ZlRwNlprWVRjdDE5a2w0d1ZUZHIvTmVQK1lpNnJhdUVINWtXRm1IMDg1VFRBcXFnaU1UCm9DUVdETEtPOXh2WGdGTGZvUlpXOEVUTHM2U0FwZGhCd08vbVZFV1FTWWR2NUY3ditCSTJ3NkZiSUtGVytxeU4KYlhXYkVDV3huV2hrTHNrRmNXeDV6WG5oelNQdS9mQmxYYUM0azFZcEt5TTNIZ3pRUHE5OWQraTBZZ21XOWZ4aAo2K3RucWgwQndFbjIreXpVajlKMittWGVJWTNSQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJRQkJ6T3NDOTBaS1VtRTdtVW55Q2FkSjh2RTVEQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQXRXU3RDU3lVcgovYlBBQ1BkYmh3STFTNDBIeWV6STk1MjIxS28yNzhuOFg1NHlEYVBvc09CUDRQcGNOYjFXVnlsdnhiWEdyYWNuCkxYdUFLOEpGSTZiQUZKbVFlNktEbmtlWHlRTVhTaHpHcjF5c3VnSGVuaU9NM1h4Y2lnWE5QOW05c3BDVjhTbzMKUlJmQmk0TEtLKzFyaWdMSDBQZzNYUGZTeFNlaDZzdXh4bWViNThUblVqWm1HSm5VNEwrUkNiTkJHVHAyd0NqSApKcFpQaVdZNkZMeWVYTGU3Y1ZCZ1ZvOVdodnFUc1pQV1JFenI4WUhCSmRkVU53S1RlOTI1UEJvYWJSV0VYbWZKCk91SU1YODR2UzhGbHNKTFVxbEE0L2VaaFJkU2kzSENRRVgrVXlUNTZMMUpyYjB1OHIwVFlXNmFsYTZ5OXAxVEUKaTJ2eFdscGgrUGJPCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.16",
        "tags": {
            "Environment": "stage",
            "karpenter.sh/discovery": "df-enclave-stage-us-east-1",
            "Team": "df-enclave",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:279663582588:key/0ac0235a-27c8-4d79-81e0-251ce0ce291a"
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
NAME                          STATUS   ROLES    AGE   VERSION               INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME
ip-10-0-81-156.ec2.internal   Ready    <none>   99d   v1.32.3-eks-473151a   10.0.81.156   <none>        Amazon Linux 2                 5.10.236-228.935.amzn2.x86_64     containerd://1.7.27
ip-10-0-81-40.ec2.internal    Ready    <none>   9d    v1.32.8-eks-99d6cc0   10.0.81.40    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-84-40.ec2.internal    Ready    <none>   99d   v1.32.3-eks-473151a   10.0.84.40    <none>        Amazon Linux 2                 5.10.236-228.935.amzn2.x86_64     containerd://1.7.27
ip-10-0-85-224.ec2.internal   Ready    <none>   9d    v1.32.8-eks-99d6cc0   10.0.85.224   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON        OBJECT                             MESSAGE
4m33s       Warning   Unsupported   node/ip-10-0-81-40.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
4m55s       Warning   Unsupported   node/ip-10-0-85-224.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE            NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring   cluster-monitoring-pdb         N/A             1                 1                     91d
deepface             deepface-backend-pdb           N/A             1                 1                     8d
deepface             deepface-enclave-pdb           N/A             1                 1                     8d
karpenter            karpenter                      N/A             1                 1                     105d
kube-system          coredns                        N/A             1                 1                     106d
kube-system          ebs-csi-controller             N/A             1                 1                     106d
kyverno              kyverno-admission-controller   1               N/A               2                     105d
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
