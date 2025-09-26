# Cluster recon for tfh-internal-tools-infra,us-east-1,teleport-orb-cluster-us-east-1,tunnel-vpc-teleport-orb-us-east-1

TFH EKS login...
```console
2025/09/19 14:49:16 INFO Logging into AWS
2025/09/19 14:49:16 INFO Token found and valid
2025/09/19 14:49:18 INFO Switch WARP Virtual Network to name=tunnel-vpc-teleport-orb-us-east-1 id=b47d3be9-ed75-4416-8c54-4a2e13e379a6
2025/09/19 14:49:20 INFO Active WARP Virtual Network id=b47d3be9-ed75-4416-8c54-4a2e13e379a6
Updated context tfh-teleport-orb-cluster-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "f2e23eae-910e-411d-a8ca-b10dfb364806",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T22:39:05+02:00",
            "lastTransitionTime": "2025-09-13T00:49:05+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "470603c2-3ee0-4473-a8be-d7183176e768",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T22:39:05+02:00",
            "lastTransitionTime": "2025-05-14T11:44:05+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "17ac9ff9-7ba9-4c9a-81d8-8f361a2ed00f",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T22:39:05+02:00",
            "lastTransitionTime": "2025-05-14T11:44:05+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "6a47d394-3267-4b37-9f8b-c26af82a4c07",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T22:39:13+02:00",
            "lastTransitionTime": "2025-05-14T11:44:05+02:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "03b83e8d-ed1f-4622-8d13-b8fe37918df1",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T22:39:13+02:00",
            "lastTransitionTime": "2025-07-28T19:14:04+02:00",
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
        "name": "teleport-orb-cluster-us-east-1",
        "arn": "arn:aws:eks:us-east-1:507152310572:cluster/teleport-orb-cluster-us-east-1",
        "createdAt": "2025-05-14T11:32:08.152000+02:00",
        "version": "1.32",
        "endpoint": "https://9F1563585ACB50ABCBEC4603CDEA106A.yl4.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::507152310572:role/eks-cluster-teleport-orb-cluster-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0d88c6b5b456f325a",
                "subnet-01909f31d8b975522",
                "subnet-084f347337dbce0e6"
            ],
            "securityGroupIds": [
                "sg-00ae1a4751f8376e8"
            ],
            "clusterSecurityGroupId": "sg-073a5c44fab723c39",
            "vpcId": "vpc-0f49401940c691c91",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/9F1563585ACB50ABCBEC4603CDEA106A"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJQ1ptU3E4cThiaDB3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMU1UUXdPVE14TlRoYUZ3MHpOVEExTVRJd09UTTJOVGhhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURvRGFVU1ZodWRGY25qRmxuTXUvQS9UTitiR0thRXRqUGpGZE1vUjBlTmk2MWptZE5nR3BPTk82WkcKYmR5bzF5NDhjV0gvSHlodVZaenNJQUduNW9iTER0UGl4ditzKzM1dFhxWU52dm1kTFVpcVlXWm5aczVMVGRJagpsNVVqNGNBeWtxSFJ2SVVPUy9QaWxQalN0U2h0QXd6MUVpY1dIZCtCcE84aXBqVGl6VTh3aGp2V3pxNmVOcHpICmJ1VEZmVWM2WjlkUXVWSWxrWHVKZHc5ZmJEVlhuSis1aVZYV2NyZGU2SUU1cHpqS1ZBa0ludWtNT21EeHFxekMKaGZWdE9xcXVqQ2pJQ3FuK1J0bWJLMjk5RU04ekRzY1J0ZXB5RXhpOUFSNkFDdlc4R0hQY041ZmVOMzBHWjFmUwpKdnNlOXRtejc2a1laUnVJVGNnTjNRVCt2bm1MQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUdjN2RFdzNkN6UXRVY3ZDRUUwZEZOeWJrbkVEQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQlk1Y2F1eGJ0cQpiZUVwTC82RGovNnVkS3djcjR1SWpIYWVnWEc1emxEZVFzbXNIcjBsczlXL2cyOGswOXRTMmQ5RnZOVzYwcytPCkZVa25QMG9HUGdwb2FqSUc4aDhCL0lFS1JPU1kwOGkrZlVpQ2wrWVBqV0I5ejR5NEJObVIxUHVSYS9yeStHdFQKYzR3SW1EeVZST1I2QjJxYm1sSFVLcC9maHdUbElnc1A2MGRpTTlKUDFRbXIySVNYUTFzYWxrRnA4bGFTSEpQcApub0xRbnFCT1pGMm13TlIzamZBYXJyYndFR094Z2VPbXk5TUh4eVRtdUxDSXIyRWU0ZXV6UjhnT2FSUVh0ZWd3CnBtZnh5citkaSt6b2NBRG5GRFhFNlpiWUNZaU15SzdNZDlOcUhrS0NHR0IzMW1GL20yS3cyb290eWtwKzdGWGkKUWp4d25lRlV4a091Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "teleport-orb-cluster-us-east-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:507152310572:key/17dedead-cf6d-40f2-9d68-053eb7e346ac"
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
NAME                           STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME     NODEGROUP
ip-10-0-129-184.ec2.internal   Ready    <none>   3h27m   v1.32.8-eks-99d6cc0   10.0.129.184   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-131-123.ec2.internal   Ready    <none>   3h32m   v1.32.8-eks-99d6cc0   10.0.131.123   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-teleport-orb-cluster-us-east-1
ip-10-0-131-91.ec2.internal    Ready    <none>   3h25m   v1.32.8-eks-99d6cc0   10.0.131.91    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-132-101.ec2.internal   Ready    <none>   3h31m   v1.32.8-eks-99d6cc0   10.0.132.101   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-teleport-orb-cluster-us-east-1
ip-10-0-132-155.ec2.internal   Ready    <none>   3h29m   v1.32.8-eks-99d6cc0   10.0.132.155   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-0-132-235.ec2.internal   Ready    <none>   3h29m   v1.32.8-eks-99d6cc0   10.0.132.235   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-132-241.ec2.internal   Ready    <none>   3h27m   v1.32.8-eks-99d6cc0   10.0.132.241   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                           STATUS   ROLES    TAINTS
ip-10-0-129-184.ec2.internal   Ready    <none>   <none>
ip-10-0-131-123.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-131-91.ec2.internal    Ready    <none>   <none>
ip-10-0-132-101.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-0-132-155.ec2.internal   Ready    <none>   <none>
ip-10-0-132-235.ec2.internal   Ready    <none>   <none>
ip-10-0-132-241.ec2.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON             OBJECT                              MESSAGE
113s        Warning   Unsupported        node/ip-10-0-131-123.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
13m         Normal    Unconsolidatable   node/ip-10-0-131-91.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
73s         Warning   Unsupported        node/ip-10-0-132-101.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
44m         Normal    Unconsolidatable   node/ip-10-0-132-155.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
13m         Normal    Unconsolidatable   node/ip-10-0-132-155.ec2.internal   Can't remove without creating 2 candidates
3m37s       Normal    Unconsolidatable   node/ip-10-0-132-235.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
13m         Normal    Unconsolidatable   node/ip-10-0-132-241.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE            NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring   cluster-monitoring-pdb         N/A             1                 1                     127d
karpenter            karpenter                      N/A             1                 1                     128d
kube-system          coredns                        N/A             1                 1                     128d
kube-system          ebs-csi-controller             N/A             1                 1                     128d
kyverno              kyverno-admission-controller   1               N/A               2                     128d
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

Generated on: Fri Sep 19 14:50:03 CEST 2025
