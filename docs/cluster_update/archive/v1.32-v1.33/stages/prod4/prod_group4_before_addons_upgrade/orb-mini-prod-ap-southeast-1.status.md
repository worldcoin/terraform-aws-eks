# Cluster recon for tfh-orb-mini-prod-infra,ap-southeast-1,orb-mini-prod-ap-southeast-1,tunnel-vpc-orb-mini-prod-ap-southeast-1

TFH EKS login...
```console
2025/09/23 11:36:43 INFO Logging into AWS
2025/09/23 11:36:43 INFO Token found and valid
2025/09/23 11:36:46 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-mini-prod-ap-southeast-1 id=7269c9e6-fbfa-4c41-89ec-ef315cc9a876
2025/09/23 11:36:48 INFO Active WARP Virtual Network id=7269c9e6-fbfa-4c41-89ec-ef315cc9a876
Updated context tfh-orb-mini-prod-ap-southeast-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "8986ef32-59f8-4173-afa4-43a1b241cbbb",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:13:59+02:00",
            "lastTransitionTime": "2025-08-06T08:28:59+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "a81a30e0-0b88-4882-bd51-3887c5d6e655",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:14:00+02:00",
            "lastTransitionTime": "2025-09-17T04:38:59+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "050a18d4-af2a-4cf0-bcd1-41aaf7bac8fa",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:14:06+02:00",
            "lastTransitionTime": "2025-08-04T16:19:04+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "a44b6a67-5946-4d5e-affa-027467096401",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:14:00+02:00",
            "lastTransitionTime": "2025-08-04T16:19:04+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "56669dea-d143-485e-8f5a-6ec6859e74be",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:14:06+02:00",
            "lastTransitionTime": "2025-08-04T16:19:04+02:00",
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
        "name": "orb-mini-prod-ap-southeast-1",
        "arn": "arn:aws:eks:ap-southeast-1:829856906111:cluster/orb-mini-prod-ap-southeast-1",
        "createdAt": "2025-08-04T16:04:40.994000+02:00",
        "version": "1.32",
        "endpoint": "https://62FAC0DB16F93DFAA2A4041FEB26E5D3.gr7.ap-southeast-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::829856906111:role/eks-cluster-orb-mini-prod-ap-southeast-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0046f893d4dcf05fd",
                "subnet-0233dbf15bfd65edf",
                "subnet-03c2fe8d5a6c9d69f"
            ],
            "securityGroupIds": [
                "sg-02364e642a24f9253"
            ],
            "clusterSecurityGroupId": "sg-0100d00d5b438f7a5",
            "vpcId": "vpc-04e4a0e82f4f6067c",
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
                "issuer": "https://oidc.eks.ap-southeast-1.amazonaws.com/id/62FAC0DB16F93DFAA2A4041FEB26E5D3"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJZXdGdnN5UlJHMW93RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBNE1EUXhOREEwTVRkYUZ3MHpOVEE0TURJeE5EQTVNVGRhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUN6amVMZW1YSnFHaCtTeWpUcnFjTVhFcCtqSVQvZmMzWUVZZkgrU0hBc1JjRWY4UEh1NktWcnYwczUKYjI1d29oWXpudU9nWnY1eE1OWGxjMW5NS1hJMnkrNXA3SzV6bEJGZ2pSVkpXV1ljTjM3RWtBTWQ5emhZSWxNcwpEV3A2c1dkdHBPRnpYQ0FtakJaeEpkTzc3VFcxOEtCanZ4Nk1neFZnbkdoWi9XaGdwbkFZdzlrMFZCSE43TFRzClNzRWJWTlErTHViYU1jeU5ldXZFMm5VUTJqbFZuTldTWmxpd1NncFM5dXI5bDBiMG1hWUcvdE0rcjZ6N0wrenQKbmprQmVTY04waWZvZ0ZCK3NldG9DaDI2dlJLZjh4ZUdacUVoSFdYaG9EKzd2aVdiUUhISWQ1eUlmc3M5T1FSRQozQ2RTN29pWmx1eXltb1lvei9RRWtRSEpIQVl6QWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSVnFQeFB6MmVjZThkRU5TT2x5djZrano3TjFqQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQWE5UWcxbUJpUQpyZGZEQ2E2b0QyYzZIeFEwVXNveUl3RHlJVFNtVFgzMUdhaEhWcEZNTFQ1VkU3cjlrOVZqT3lMTWxHRkV3cEtMCkZmUmovUGNjZVhpd2ZnNmlOZEdLTXVqVnBpZk84S0pWK3lnWG5FQzZva21DV1VaY3h6dzBiTURNcTdnMVpVSGMKektvZ2phL2FxRjZaWEdOUW14N3BLR1NaMWwvUmt2WW9LYXdseXJIN1IwSFdnN0dyZHh0Rjl1Tk9BNUFZM0NSZApKUlZDM2pqam5TK3Q1RldvamFjcWVhTm9wS1U5aklCVUxnVkdZRGNqRm5KM29LY0ozUXJrSU5tQmw5MitsbUt6CmVIZzhOS2ZMY25ZeVZGdk4vY2FOaHFiSkN5TTh0OFhoUDhzU2hQQUJ0bTk1TjcrRTZNWTlUaUtZcEZkNFgyRWwKclVoTDVld29oYzE3Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-mini-prod-ap-southeast-1",
            "Team": "orb-mini",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:ap-southeast-1:829856906111:key/cee1c119-0462-41af-8faf-b7181eb93d46"
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
NAME                                               STATUS   ROLES    AGE     VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-37-146-87.ap-southeast-1.compute.internal    Ready    <none>   3h41m   v1.32.8-eks-99d6cc0   10.37.146.87    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-mini-prod-ap-southeast-1
ip-10-37-147-127.ap-southeast-1.compute.internal   Ready    <none>   2d10h   v1.32.8-eks-99d6cc0   10.37.147.127   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-37-148-179.ap-southeast-1.compute.internal   Ready    <none>   23h     v1.32.8-eks-99d6cc0   10.37.148.179   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-37-148-241.ap-southeast-1.compute.internal   Ready    <none>   3h39m   v1.32.8-eks-99d6cc0   10.37.148.241   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-mini-prod-ap-southeast-1
ip-10-37-149-101.ap-southeast-1.compute.internal   Ready    <none>   22h     v1.32.8-eks-99d6cc0   10.37.149.101   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-37-149-216.ap-southeast-1.compute.internal   Ready    <none>   3h31m   v1.32.8-eks-99d6cc0   10.37.149.216   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                               STATUS   ROLES    TAINTS
ip-10-37-146-87.ap-southeast-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-37-147-127.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-37-148-179.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-37-148-241.ap-southeast-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-37-149-101.ap-southeast-1.compute.internal   Ready    <none>   <none>
ip-10-37-149-216.ap-southeast-1.compute.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON             OBJECT                                                  MESSAGE
13s         Warning   Unsupported        node/ip-10-37-146-87.ap-southeast-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
68s         Normal    Unconsolidatable   node/ip-10-37-147-127.ap-southeast-1.compute.internal   Can't remove without creating 2 candidates
68s         Normal    Unconsolidatable   node/ip-10-37-148-179.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
3m44s       Warning   Unsupported        node/ip-10-37-148-241.ap-southeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
68s         Normal    Unconsolidatable   node/ip-10-37-149-101.ap-southeast-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE     NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
karpenter     karpenter                      N/A             1                 1                     48d
kube-system   coredns                        N/A             1                 1                     48d
kube-system   ebs-csi-controller             N/A             1                 1                     48d
kyverno       kyverno-admission-controller   1               N/A               2                     48d
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

Generated on: Tue Sep 23 11:37:48 CEST 2025
