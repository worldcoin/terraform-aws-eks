# Cluster recon for tfh-security-prod-infra,us-east-1,security-prod-us-east-1,tunnel-vpc-security-prod-us-east-1

TFH EKS login...
```console
2025/09/22 17:19:40 INFO Logging into AWS
2025/09/22 17:19:40 INFO Token found and valid
2025/09/22 17:19:43 INFO Switch WARP Virtual Network to name=tunnel-vpc-security-prod-us-east-1 id=aada3cde-bca6-4a89-8ae2-ba8fb588083c
2025/09/22 17:19:44 INFO Active WARP Virtual Network id=aada3cde-bca6-4a89-8ae2-ba8fb588083c
Updated context tfh-security-prod-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "71e28e71-bbbe-4477-847b-912d44f41f08",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T11:39:11+02:00",
            "lastTransitionTime": "2025-05-29T13:59:04+02:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "9b224b18-811f-4429-b8ba-510790ea103d",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T11:39:05+02:00",
            "lastTransitionTime": "2025-05-29T13:59:04+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "5e1cc01a-2383-4957-99ff-54f4f5f7b941",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T11:39:05+02:00",
            "lastTransitionTime": "2025-09-17T09:59:12+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "fe55ec6d-3eca-48e1-8606-99dea50e91a8",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T11:39:11+02:00",
            "lastTransitionTime": "2025-07-28T20:04:04+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "09737e3f-23d9-49db-8c9a-a0290301add1",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T11:39:05+02:00",
            "lastTransitionTime": "2025-05-29T13:59:04+02:00",
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
        "name": "security-prod-us-east-1",
        "arn": "arn:aws:eks:us-east-1:338165278394:cluster/security-prod-us-east-1",
        "createdAt": "2025-05-29T13:41:02.577000+02:00",
        "version": "1.32",
        "endpoint": "https://3DCB9F1309476317CE31AEB6767E0620.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::338165278394:role/eks-cluster-security-prod-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-01a732216de7c7806",
                "subnet-09c5d37a7ad150213",
                "subnet-0191b2afc0a0ce9f3"
            ],
            "securityGroupIds": [
                "sg-06037033cb43e4057"
            ],
            "clusterSecurityGroupId": "sg-01f97184ddba08493",
            "vpcId": "vpc-032177dc2f56e23e9",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/3DCB9F1309476317CE31AEB6767E0620"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJYWN4UHBSMmU5MGt3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMU1qa3hNVFF3TkRWYUZ3MHpOVEExTWpjeE1UUTFORFZhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURuK0pXUldkQUpvYUtVZXhvZS9VUjRtRDUwU2dUSVY3ajJkZG9MZk9jVlVaWUlJVUpKT3lHZTd6U1EKUkM4U1RIZEpHSnZSU0FMZHFFS2kzQ1REZEl1WlhpeWthWFlSY1VxQUVKdXVmSk9kaVdQTFpNNGZsRWx2K2NueApSdHBwTndiZkh3dnRucmFOZlFlSHA3WlFuYUV0YnprRU9wYUtId1p5WHZ0ZW1yTkl0a1dWa0QvVnQrMmNkTXc1Ck93Z3NSQTJTUW1mN1ZYdlVDS3BQb3VnOGhZRGYyVEkxTEVnbzRRTElFb1lYZmRVOXJiUEFhN2N2OE5Ta2VzV0cKdHBqSit5YkpZcVdxMTJnWGVJZDZuZkh3aC9NQXJXY2oyNENTWkVTZTZkSDJMd1lHL2xnZWY0Vmd5QzlmS3R2NgpqUjVxQ0R1YjR6K2M2NlEwUUFDQVBtTlFUS2xQQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJTYjJ1bkdlbDJZaENPUUd3bktFbzNvTjljcENUQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQitxei80N05xNgp5cE9mcFA2MjN1eDQvZkdLWXJKR1l4MEh5SGZleWJFd2dZNGU5a1daSFE2emlPWGtuTnlXanBoZis1eGRpaFhMCkIzV011ZXExb1ZBc3JXZGRLdWx1MTV1eG44TWZIbzI1OUhUWVN5OVlmd25WUXd6QTBhdmRzdVUyYjRTN3dDWWcKYkxzSmx5Zy8rQStWVVBRdXhXSEpWNTQ1VTBpK3ZMdU41ako3a1Jrc29XQmhPbndPblBuK2oxMjR4UGp4WlpyOAppaCtaTlM5L0RLc1NMZFJpdmpGeWZKYkg2Z3NHYXBFVithSzFWa21qNUFocjBaOW5HSGd3SSs4SlBmQStxYjV1CnQwOWQyVXFiRHFaZmxxUXdIdlBCdFB2MkJoVUMvT2ViN0lTMDJYYkV2Y1cvbkhpa1hLOWZNSEhXcFZMKzVMajYKUnlMT0ptRU5vTFU3Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "security-prod-us-east-1",
            "Team": "security",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:338165278394:key/e57e10db-eeb0-4bf5-8547-fc6e6e584650"
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
NAME                           STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-2-241-197.ec2.internal   Ready    <none>   6h28m   v1.32.8-eks-99d6cc0   10.2.241.197   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-243-177.ec2.internal   Ready    <none>   159m    v1.32.8-eks-99d6cc0   10.2.243.177   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-243-26.ec2.internal    Ready    <none>   4h16m   v1.32.8-eks-99d6cc0   10.2.243.26    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   eks-node-al2023-security-prod-us-east-1
ip-10-2-244-105.ec2.internal   Ready    <none>   4h18m   v1.32.8-eks-99d6cc0   10.2.244.105   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   eks-node-al2023-security-prod-us-east-1
ip-10-2-244-213.ec2.internal   Ready    <none>   46h     v1.32.8-eks-99d6cc0   10.2.244.213   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-245-104.ec2.internal   Ready    <none>   4d22h   v1.32.8-eks-99d6cc0   10.2.245.104   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-245-182.ec2.internal   Ready    <none>   46h     v1.32.8-eks-99d6cc0   10.2.245.182   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                           STATUS   ROLES    TAINTS
ip-10-2-241-197.ec2.internal   Ready    <none>   <none>
ip-10-2-243-177.ec2.internal   Ready    <none>   <none>
ip-10-2-243-26.ec2.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-2-244-105.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-2-244-213.ec2.internal   Ready    <none>   <none>
ip-10-2-245-104.ec2.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-2-245-182.ec2.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON              OBJECT                              MESSAGE
3m53s       Normal    DisruptionBlocked   node/ip-10-2-241-197.ec2.internal   Node is nominated for a pending pod
12m         Normal    Starting            node/ip-10-2-241-197.ec2.internal   
7m25s       Normal    DisruptionBlocked   node/ip-10-2-243-177.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
12m         Normal    Starting            node/ip-10-2-243-177.ec2.internal   
25s         Warning   Unsupported         node/ip-10-2-243-26.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
12m         Normal    Starting            node/ip-10-2-243-26.ec2.internal    
2m10s       Warning   Unsupported         node/ip-10-2-244-105.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
12m         Normal    Starting            node/ip-10-2-244-105.ec2.internal   
12m         Normal    Starting            node/ip-10-2-244-213.ec2.internal   
3m26s       Warning   FailedDraining      node/ip-10-2-245-104.ec2.internal   Failed to drain node, 5 pods are waiting to be evicted
4m4s        Normal    DisruptionBlocked   node/ip-10-2-245-104.ec2.internal   Node is deleting or marked for deletion
12m         Normal    Starting            node/ip-10-2-245-104.ec2.internal   
12m         Normal    DisruptionBlocked   node/ip-10-2-245-182.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
12m         Normal    Starting            node/ip-10-2-245-182.ec2.internal   
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                   NAME                            MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring          cluster-monitoring-pdb          N/A             1                 1                     116d
fskp-signing-tools          fskp-signing-tools-pdb          N/A             1                 1                     54d
karpenter                   karpenter                       N/A             1                 1                     116d
kube-system                 coredns                         N/A             1                 1                     116d
kube-system                 ebs-csi-controller              N/A             1                 1                     116d
kyverno                     kyverno-admission-controller    1               N/A               2                     116d
orb-os-signing-tools        orb-os-signing-tools-pdb        N/A             1                 0                     73d
service-security-memgraph   service-security-memgraph-pdb   N/A             1                 1                     32d
vuln-mgmt-app               vuln-mgmt-api-pdb               50%             N/A               0                     115d
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

Generated on: Mon Sep 22 17:20:29 CEST 2025
