# Cluster recon for tfh-df-enclave-stage-infra,us-east-1,df-enclave-stage-us-east-1,tunnel-vpc-df-enclave-stage-us-east-1

TFH EKS login...
```console
2025/09/18 15:47:24 INFO Logging into AWS
2025/09/18 15:47:24 INFO Token found and valid
2025/09/18 15:47:26 INFO Switch WARP Virtual Network to name=tunnel-vpc-df-enclave-stage-us-east-1 id=a8d86ecd-fbb0-4c53-802d-6ae766390581
2025/09/18 15:47:28 INFO Active WARP Virtual Network id=a8d86ecd-fbb0-4c53-802d-6ae766390581
Updated context tfh-df-enclave-stage-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "07d6de3a-cfa9-4bfe-b5f4-82e6c7f010a6",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T09:45:24+02:00",
            "lastTransitionTime": "2025-06-03T12:59:04+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "007e51d1-b238-4d64-9433-9bb055edfaf4",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T09:45:24+02:00",
            "lastTransitionTime": "2025-08-19T12:49:04+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "ERROR",
                "reason": "The cluster contains legacy Amazon Linux 2 (AL2) nodes. Migrate Amazon Linux 2 node groups to Amazon Linux 2023 before November 26, 2025 or before upgrading to EKS 1.33."
            }
        },
        {
            "id": "53c27dc8-2750-4195-8d89-44f023194e7b",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T09:45:24+02:00",
            "lastTransitionTime": "2025-06-03T12:59:04+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "b171679e-df16-438b-b16d-9d89ae755325",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T09:45:29+02:00",
            "lastTransitionTime": "2025-06-03T12:59:04+02:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "6404574c-d448-4e6f-b292-544c7d0048d1",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T09:45:29+02:00",
            "lastTransitionTime": "2025-07-29T14:39:04+02:00",
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
        "platformVersion": "eks.18",
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
NAME                          STATUS   ROLES    AGE     VERSION               INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-0-82-138.ec2.internal   Ready    <none>   6h3m    v1.32.8-eks-99d6cc0   10.0.82.138   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-df-enclave-stage-us-east-1
ip-10-0-84-4.ec2.internal     Ready    <none>   5h48m   v1.32.8-eks-99d6cc0   10.0.84.4     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-84-44.ec2.internal    Ready    <none>   5h48m   v1.32.8-eks-99d6cc0   10.0.84.44    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-85-19.ec2.internal    Ready    <none>   6h1m    v1.32.8-eks-99d6cc0   10.0.85.19    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-df-enclave-stage-us-east-1
ip-10-0-85-46.ec2.internal    Ready    <none>   5h15m   v1.32.8-eks-99d6cc0   10.0.85.46    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-85-79.ec2.internal    Ready    <none>   5h48m   v1.32.8-eks-99d6cc0   10.0.85.79    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                          STATUS   ROLES    TAINTS
ip-10-0-82-138.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-84-4.ec2.internal     Ready    <none>   <none>
ip-10-0-84-44.ec2.internal    Ready    <none>   <none>
ip-10-0-85-19.ec2.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-85-46.ec2.internal    Ready    <none>   [map[effect:NoExecute key:enclave]]
ip-10-0-85-79.ec2.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON              OBJECT                             MESSAGE
2m41s       Warning   Unsupported         node/ip-10-0-82-138.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
2m41s       Normal    DisruptionBlocked   node/ip-10-0-84-4.ec2.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
11m         Normal    Unconsolidatable    node/ip-10-0-84-44.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
54s         Warning   Unsupported         node/ip-10-0-85-19.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
97s         Normal    Unconsolidatable    node/ip-10-0-85-79.ec2.internal    Can't remove without creating 2 candidates
```

Pods with issues
```
kube-ops                  kube-ops-5dd97cf848-l5lv7                                         0/1     CrashLoopBackOff   72 (3m32s ago)   5h49m
```

PodDisruptionBudgets
```
NAMESPACE            NAME                                        MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-autoscaler   cluster-autoscaler-aws-cluster-autoscaler   N/A             1                 1                     6h59m
cluster-monitoring   cluster-monitoring-pdb                      N/A             1                 1                     92d
deepface             deepface-backend-pdb                        N/A             1                 1                     3h29m
deepface             deepface-enclave-pdb                        N/A             1                 1                     3h43m
karpenter            karpenter                                   N/A             1                 1                     106d
kube-system          coredns                                     N/A             1                 1                     107d
kube-system          ebs-csi-controller                          N/A             1                 1                     107d
kyverno              kyverno-admission-controller                1               N/A               2                     106d
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
