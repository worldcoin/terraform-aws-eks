# Cluster recon for tfh-ml-prod-infra,eu-central-1,ml-prod-eu-central-1,tunnel-vpc-ml-prod-eu-central-1

TFH EKS login...
```console
2025/09/23 09:59:22 INFO Logging into AWS
2025/09/23 09:59:22 INFO Token found and valid
2025/09/23 09:59:24 INFO Switch WARP Virtual Network to name=tunnel-vpc-ml-prod-eu-central-1 id=f630bf15-2837-4a5c-99f5-230ce600402f
2025/09/23 09:59:25 INFO Active WARP Virtual Network id=f630bf15-2837-4a5c-99f5-230ce600402f
Added new context tfh-ml-prod-eu-central-1 to /Users/lukasz.glowacki/.kube/config
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
            "id": "475020fd-3085-4532-9769-b2a792698663",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T09:44:26+02:00",
            "lastTransitionTime": "2025-08-20T22:24:21+02:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "98036657-9dcb-4512-a596-1ef9b5f8fa3a",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T09:44:41+02:00",
            "lastTransitionTime": "2025-07-29T08:09:24+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "7694e68b-84da-4c0e-af38-d7b6c9c54217",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T09:44:27+02:00",
            "lastTransitionTime": "2025-08-20T22:24:21+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "d537a13a-1e48-4648-aa60-fa89bbe06b69",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T09:44:27+02:00",
            "lastTransitionTime": "2025-09-18T09:14:25+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "b5fd11cf-069b-476f-83f8-0f56ce4743be",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T09:44:41+02:00",
            "lastTransitionTime": "2024-12-20T09:24:31+01:00",
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
        "name": "ml-prod-eu-central-1",
        "arn": "arn:aws:eks:eu-central-1:258348076843:cluster/ml-prod-eu-central-1",
        "createdAt": "2022-12-23T18:06:18.157000+01:00",
        "version": "1.32",
        "endpoint": "https://645A0F2BB1B970D98613E58E42454152.gr7.eu-central-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::258348076843:role/eks-cluster-ml-prod-eu-central-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-09af7f7b83cc12409",
                "subnet-080eb406dfcd732b6",
                "subnet-0aa0690a436742595"
            ],
            "securityGroupIds": [
                "sg-03d5110c6d6617001"
            ],
            "clusterSecurityGroupId": "sg-0dfa74a39f534535a",
            "vpcId": "vpc-093c0d9eb191c4f6b",
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
                "issuer": "https://oidc.eks.eu-central-1.amazonaws.com/id/645A0F2BB1B970D98613E58E42454152"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJeU1USXlNekUzTVRFME9Gb1hEVE15TVRJeU1ERTNNVEUwT0Zvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTGhsCk96QnkvUUdLNTVDamowOTUwMVMzdHR6MEo3S0xhNjRlREpJUDg3TVN4d3M5RGwzOHFzYjJtaDNucWVtK1dGYVoKbm15MzU0L1BpSVNBOTk5b3FzelJKTk5CUDd1ZytRNXQ3Z3ZHSjRMd05wR3RMY0V1ZWFlV055ZktSNGp6WUZLVQpjQW1ESXdwSTVzLzc4cllrUzlxS0xXZ3ZvVUV0QnlQUnYvRmU3WHg2QlB4RHEzcXNnV1QwRloyMnhocHNQbUVBCnQ3VHFJRUJqSDIzNlBHUk55OUVlNVFGYXpYUHppb2dNNkJtTlVua3lYcHJPZXkwaXRMTy9mUEJMdGYwUUhjekgKNTFWY09XN1ZtaTZyYlUza3NTMW8yTVlxenp3WktrWlJIcnFJaEJwWFMwd2FpTkJEYUJRcWsrWTlodHV6YWVrawpoMEJWRVorUzJUZUYrZzRUeGdzQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZEak9zSm5zejdIWm9zOVVHd29WMldwT2dJNmNNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBTGFSd1dUOFlSeGQ4NFZuS1lFNgpVUE5ic3Z0WnRvTzlqZWRSemV5U3RBV0pQMktNRHFQcmFBdWNuMmxSKzBGMW9pb2pNcW5SY3p2TnNjSUFFd0NHCllQeDJVanRHQnl6RDh3bmdEWlhpRTB0YVFIODl4ZERKMlgrc0lJRWNQVTUwNHF1OFp3TERDVUJmUzlVVUprdEkKY1FOMjBFaFdkc0V6NFZ5OG5kbFJNL1k5VS9SVk1HdXlLUmhzVFJIUVNFYk5ZRUpxc2ttY1Y4bkxXcEV6eXVDZApzbzF6T0xTVGdIaWowaEF2azFReFpHYzNRTmkzN0gwOFhaL3FKUm9mT1dBd3dyQ0c1RjRTWnlYSW95RUQvOEJxCkV2cVIyY1JraWxzaFVQc3locWg4VDBFbHZ4cVhzV3c4TTdOcmR2T3dHN1FtWGJ1NlR0VFJNWW5xSzY1cm1ibGMKT213PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "ml-prod-eu-central-1",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-central-1:258348076843:key/007c8d7d-1335-4560-aa87-3567b243aac0"
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
ip-10-54-144-103.eu-central-1.compute.internal   Ready    <none>   19h     v1.32.8-eks-99d6cc0   10.54.144.103   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-ml-prod-eu-central-1
ip-10-54-144-4.eu-central-1.compute.internal     Ready    <none>   12h     v1.32.8-eks-99d6cc0   10.54.144.4     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-145-124.eu-central-1.compute.internal   Ready    <none>   5d21h   v1.32.8-eks-99d6cc0   10.54.145.124   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-145-206.eu-central-1.compute.internal   Ready    <none>   5d16h   v1.32.8-eks-99d6cc0   10.54.145.206   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-146-100.eu-central-1.compute.internal   Ready    <none>   19h     v1.32.8-eks-99d6cc0   10.54.146.100   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-146-165.eu-central-1.compute.internal   Ready    <none>   5d16h   v1.32.8-eks-99d6cc0   10.54.146.165   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-146-63.eu-central-1.compute.internal    Ready    <none>   19h     v1.32.8-eks-99d6cc0   10.54.146.63    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-147-191.eu-central-1.compute.internal   Ready    <none>   19h     v1.32.8-eks-99d6cc0   10.54.147.191   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-ml-prod-eu-central-1
ip-10-54-147-194.eu-central-1.compute.internal   Ready    <none>   7h59m   v1.32.8-eks-99d6cc0   10.54.147.194   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-147-225.eu-central-1.compute.internal   Ready    <none>   17h     v1.32.8-eks-99d6cc0   10.54.147.225   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-147-62.eu-central-1.compute.internal    Ready    <none>   14h     v1.32.8-eks-99d6cc0   10.54.147.62    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-147-67.eu-central-1.compute.internal    Ready    <none>   20h     v1.32.8-eks-99d6cc0   10.54.147.67    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-147-76.eu-central-1.compute.internal    Ready    <none>   15h     v1.32.8-eks-99d6cc0   10.54.147.76    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                                             STATUS   ROLES    TAINTS
ip-10-54-144-103.eu-central-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-54-144-4.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-145-124.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-145-206.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-146-100.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-146-165.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-146-63.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-147-191.eu-central-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-54-147-194.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-147-225.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-147-62.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-147-67.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-147-76.eu-central-1.compute.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON              OBJECT                                                MESSAGE
45s         Warning   Unsupported         node/ip-10-54-144-103.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
37m         Normal    Starting            node/ip-10-54-144-103.eu-central-1.compute.internal   
59m         Normal    DisruptionBlocked   node/ip-10-54-144-4.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/normalizediris-i-pii-signup-flow-exporter-29310180-4hqvj)
37m         Normal    DisruptionBlocked   node/ip-10-54-144-4.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
37m         Normal    Starting            node/ip-10-54-144-4.eu-central-1.compute.internal     
13m         Normal    DisruptionBlocked   node/ip-10-54-144-4.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/worker-side-controller-29310226-j54qt)
7m41s       Normal    DisruptionBlocked   node/ip-10-54-144-4.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/worker-side-controller-29310232-9sjdq)
4m6s        Normal    DisruptionBlocked   node/ip-10-54-145-124.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/orb-manager-76b658bb4b-mgqdq)
37m         Normal    Starting            node/ip-10-54-145-124.eu-central-1.compute.internal   
4m6s        Normal    DisruptionBlocked   node/ip-10-54-145-206.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/redis-master-0)
37m         Normal    Starting            node/ip-10-54-145-206.eu-central-1.compute.internal   
3m35s       Normal    DisruptionBlocked   node/ip-10-54-146-100.eu-central-1.compute.internal   (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/worker-iris-controller-29310236-gl5m7)
37m         Normal    Starting            node/ip-10-54-146-100.eu-central-1.compute.internal   
4m6s        Normal    DisruptionBlocked   node/ip-10-54-146-165.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/postgresql-0)
37m         Normal    Starting            node/ip-10-54-146-165.eu-central-1.compute.internal   
3m56s       Normal    DisruptionBlocked   node/ip-10-54-146-63.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=analysis-orb-context/orb-data-service-84c6749d9f-fs5sz)
18m         Normal    DisruptionBlocked   node/ip-10-54-146-63.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-face-auth-attempts-7c7476544xlc6z)
37m         Normal    Starting            node/ip-10-54-146-63.eu-central-1.compute.internal    
2m19s       Warning   Unsupported         node/ip-10-54-147-191.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
37m         Normal    Starting            node/ip-10-54-147-191.eu-central-1.compute.internal   
3m25s       Normal    DisruptionBlocked   node/ip-10-54-147-194.eu-central-1.compute.internal   (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/orb-capture-transform-29310236-6hjhw)
47m         Normal    DisruptionBlocked   node/ip-10-54-147-194.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/metadata-ir-29310140-qmlpb)
37m         Normal    Starting            node/ip-10-54-147-194.eu-central-1.compute.internal   
27m         Normal    DisruptionBlocked   node/ip-10-54-147-194.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/metadata-ir-29310195-6pl57)
3m25s       Normal    DisruptionBlocked   node/ip-10-54-147-225.eu-central-1.compute.internal   (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/worker-pcnet-controller-29310236-b9628)
53m         Normal    DisruptionBlocked   node/ip-10-54-147-225.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/snowflake-monitor-29310180-nzfx8)
47m         Normal    DisruptionBlocked   node/ip-10-54-147-225.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/field-monitor-29310180-bt5nn)
37m         Normal    Starting            node/ip-10-54-147-225.eu-central-1.compute.internal   
27m         Normal    DisruptionBlocked   node/ip-10-54-147-62.eu-central-1.compute.internal    (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/orb-capture-transform-29310212-d8l5v)
43m         Normal    DisruptionBlocked   node/ip-10-54-147-62.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/centralisation-cleanup-signup-flow-exporter-29310180-ctvxt)
37m         Normal    Starting            node/ip-10-54-147-62.eu-central-1.compute.internal    
3m5s        Normal    DisruptionBlocked   node/ip-10-54-147-62.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/metadata-ir-29310210-7ffxx)
59m         Normal    DisruptionBlocked   node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-mpcv2-results-partial-566687589b-pgxp4)
8m11s       Normal    DisruptionBlocked   node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-pcp-metadata-844d46b877-s72gf)
18m         Normal    DisruptionBlocked   node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-pcp-lookup-6f4f4c54bd-762z7)
28m         Normal    DisruptionBlocked   node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-face-auth-reports-8698c869d6r7g56)
38m         Normal    DisruptionBlocked   node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-machinelabelv2-selfie-metadata-5c8cbbd5dd-jk9cn)
4m6s        Normal    DisruptionBlocked   node/ip-10-54-147-67.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/mongodb-export-mpcv2-results-774bc44d49-fx64p)
37m         Normal    Starting            node/ip-10-54-147-67.eu-central-1.compute.internal    
3m35s       Normal    DisruptionBlocked   node/ip-10-54-147-76.eu-central-1.compute.internal    (combined from similar events): Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=worker/worker-face-capture-controller-29310236-fcm5z)
47m         Normal    DisruptionBlocked   node/ip-10-54-147-76.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=ai-snowflake-workers/face-auth-debugger-29310180-672rp)
37m         Normal    Starting            node/ip-10-54-147-76.eu-central-1.compute.internal    
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                          NAME                                   MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                 cluster-monitoring-pdb                 N/A             1                 1                     297d
dashboard-dead-letter-monitoring   dashboard-dead-letter-monitoring-pdb   N/A             1                 1                     98d
iris-registration-app              iris-registration-app-pdb              N/A             1                 1                     255d
karpenter                          karpenter                              N/A             1                 1                     2y242d
kube-system                        coredns                                N/A             1                 1                     623d
kube-system                        ebs-csi-controller                     N/A             1                 1                     2y210d
kyverno                            kyverno-admission-controller           1               N/A               2                     606d
labeling-management                labeling-management-pdb                N/A             1                 1                     87d
labelling-platform-api             labelling-platform-api-pdb             N/A             1                 1                     294d
labelling-platform-frontend        labelling-platform-frontend-pdb        N/A             1                 1                     294d
pii-deletion-service               pii-deletion-service-pdb               N/A             1                 1                     214d
```

Pods with Karpenter.sh/Do-Not-Disrupt Annotation
```
ip-10-54-144-4.eu-central-1.compute.internal    centralisation-cleanup-signup-flow-exporter-29310060-wp6xw       (worker)
ip-10-54-144-4.eu-central-1.compute.internal    normalizediris-i-pii-signup-flow-exporter-29310120-tdqfl         (worker)
ip-10-54-144-4.eu-central-1.compute.internal    normalizediris-i-pii-signup-flow-exporter-29310180-4hqvj         (worker)
ip-10-54-145-124.eu-central-1.compute.internal  orb-manager-76b658bb4b-mgqdq                                     (analysis-orb-context)
ip-10-54-145-206.eu-central-1.compute.internal  redis-master-0                                                   (analysis-orb-context)
ip-10-54-146-100.eu-central-1.compute.internal  worker-iris-controller-29310234-d947l                            (worker)
ip-10-54-146-100.eu-central-1.compute.internal  worker-iris-controller-29310236-gl5m7                            (worker)
ip-10-54-146-100.eu-central-1.compute.internal  worker-iris-controller-29310238-8xkb4                            (worker)
ip-10-54-146-165.eu-central-1.compute.internal  postgresql-0                                                     (analysis-orb-context)
ip-10-54-146-63.eu-central-1.compute.internal   iris-mpcv2-29309760-hsfvj                                        (ai-snowflake-workers)
ip-10-54-146-63.eu-central-1.compute.internal   mongodb-export-machinelabelv2-face-auth-attempts-7c7476544xlc6z  (ai-snowflake-workers)
ip-10-54-146-63.eu-central-1.compute.internal   mongodb-machinelabelv2-selfie-metadata-29309400-5w7rc            (ai-snowflake-workers)
ip-10-54-146-63.eu-central-1.compute.internal   orb-data-service-84c6749d9f-fs5sz                                (analysis-orb-context)
ip-10-54-147-194.eu-central-1.compute.internal  bioid-metadata-sync-29310230-zrx52                               (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  face-auth-debugger-29310060-p77tw                                (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  face-auth-debugger-29310120-hh78l                                (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  face-capture-replication-29310195-pnt7p                          (data-collection-analysis)
ip-10-54-147-194.eu-central-1.compute.internal  face-capture-replication-29310210-4nmvc                          (data-collection-analysis)
ip-10-54-147-194.eu-central-1.compute.internal  face-capture-replication-29310225-t6hcg                          (data-collection-analysis)
ip-10-54-147-194.eu-central-1.compute.internal  metadata-ir-29310080-25tmw                                       (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  metadata-ir-29310140-qmlpb                                       (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  metadata-ir-29310195-6pl57                                       (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  model-field-monitoring-29309880-tlph6                            (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  mongodb-machinelabelv2-face-auth-attempts-29310075-vcdxb         (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  mongodb-machinelabelv2-face-auth-attempts-29310195-w7mbh         (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  mongodb-machinelabelv2-face-auth-reports-29310195-cthsl          (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  mongodb-machinelabelv2-selfie-metadata-29310120-bqpch            (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  mongodb-mpcv2-results-29310120-2z4fh                             (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  mongodb-orb-signup-29310120-4wmxz                                (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  orb-capture-monitor-29310060-8lvrr                               (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  orb-capture-transform-29310237-l4wj9                             (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  orb-capture-transform-29310238-9npwj                             (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  orb-capture-transform-29310239-c5spm                             (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  signup-history-29310065-sw754                                    (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  signup-history-29310125-2frw4                                    (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  signup-history-29310185-4sn4w                                    (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  snowflake-monitor-29310060-8n2tk                                 (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  snowflake-monitor-29310120-l2sg4                                 (ai-snowflake-workers)
ip-10-54-147-194.eu-central-1.compute.internal  worker-contact-lens-controller-29310234-llprp                    (worker)
ip-10-54-147-194.eu-central-1.compute.internal  worker-contact-lens-controller-29310236-r288p                    (worker)
ip-10-54-147-194.eu-central-1.compute.internal  worker-contact-lens-controller-29310238-d9ftk                    (worker)
ip-10-54-147-194.eu-central-1.compute.internal  worker-face-engine-controller-29310234-8zhhr                     (worker)
ip-10-54-147-194.eu-central-1.compute.internal  worker-face-engine-controller-29310236-qdpdv                     (worker)
ip-10-54-147-194.eu-central-1.compute.internal  worker-face-engine-controller-29310238-rpnth                     (worker)
ip-10-54-147-194.eu-central-1.compute.internal  worker-irnet-controller-29310234-v8j76                           (worker)
ip-10-54-147-194.eu-central-1.compute.internal  worker-irnet-controller-29310236-ztp9g                           (worker)
ip-10-54-147-194.eu-central-1.compute.internal  worker-irnet-controller-29310238-g4kvk                           (worker)
ip-10-54-147-194.eu-central-1.compute.internal  worker-rgbnet-controller-29310234-v79sh                          (worker)
ip-10-54-147-194.eu-central-1.compute.internal  worker-rgbnet-controller-29310236-lzplg                          (worker)
ip-10-54-147-194.eu-central-1.compute.internal  worker-rgbnet-controller-29310238-744d9                          (worker)
ip-10-54-147-194.eu-central-1.compute.internal  worker-side-controller-29310234-g47md                            (worker)
ip-10-54-147-194.eu-central-1.compute.internal  worker-side-controller-29310236-2cmmq                            (worker)
ip-10-54-147-194.eu-central-1.compute.internal  worker-side-controller-29310238-94lng                            (worker)
ip-10-54-147-225.eu-central-1.compute.internal  bioid-inventory-29309760-lwxrw                                   (ai-snowflake-workers)
ip-10-54-147-225.eu-central-1.compute.internal  biometrics-inventory-29309760-pbxbc                              (ai-snowflake-workers)
ip-10-54-147-225.eu-central-1.compute.internal  centralisation-cleanup-signup-flow-exporter-29310120-64brw       (worker)
ip-10-54-147-225.eu-central-1.compute.internal  cleanup-captures-29309760-mcbqv                                  (data-collection-analysis)
ip-10-54-147-225.eu-central-1.compute.internal  field-monitor-29310060-qkkx8                                     (ai-snowflake-workers)
ip-10-54-147-225.eu-central-1.compute.internal  field-monitor-29310120-6x49d                                     (ai-snowflake-workers)
ip-10-54-147-225.eu-central-1.compute.internal  field-monitor-29310180-bt5nn                                     (ai-snowflake-workers)
ip-10-54-147-225.eu-central-1.compute.internal  field-monitoring-orbs-29309760-lkt57                             (ai-snowflake-workers)
ip-10-54-147-225.eu-central-1.compute.internal  mongodb-machinelabelv2-pcp-metadata-29309760-rqd6c               (ai-snowflake-workers)
ip-10-54-147-225.eu-central-1.compute.internal  mongodb-machinelabelv2-selfie-metadata-29309760-6lmpv            (ai-snowflake-workers)
ip-10-54-147-225.eu-central-1.compute.internal  mongodb-mpcv2-results-29309760-4mllk                             (ai-snowflake-workers)
ip-10-54-147-225.eu-central-1.compute.internal  mongodb-orb-signup-29309760-ns9f7                                (ai-snowflake-workers)
ip-10-54-147-225.eu-central-1.compute.internal  normalizediris-m-pii-signup-flow-exporter-29310060-76wfb         (worker)
ip-10-54-147-225.eu-central-1.compute.internal  orb-capture-monitor-29310180-tt6fd                               (ai-snowflake-workers)
ip-10-54-147-225.eu-central-1.compute.internal  registry-29310060-2h7b4                                          (ai-snowflake-workers)
ip-10-54-147-225.eu-central-1.compute.internal  snowflake-monitor-29310180-nzfx8                                 (ai-snowflake-workers)
ip-10-54-147-225.eu-central-1.compute.internal  tdp-pcp-inventory-clean-29310000-wsgwd                           (ai-snowflake-workers)
ip-10-54-147-225.eu-central-1.compute.internal  update-dataset-on-mongo-29309760-564vc                           (data-collection-analysis)
ip-10-54-147-225.eu-central-1.compute.internal  worker-orb-signup-controller-29310236-x2vh7                      (worker)
ip-10-54-147-225.eu-central-1.compute.internal  worker-pcnet-controller-29310234-mjpsr                           (worker)
ip-10-54-147-225.eu-central-1.compute.internal  worker-pcnet-controller-29310236-b9628                           (worker)
ip-10-54-147-225.eu-central-1.compute.internal  worker-pcnet-controller-29310238-jhrdx                           (worker)
ip-10-54-147-62.eu-central-1.compute.internal   bioid-inventory-clean-29310000-c95hz                             (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   bioid-metadata-sync-29310225-kwgkk                               (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   bioid-metadata-sync-29310235-bz2cf                               (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   biometrics-inventory-clean-29310000-s9vl7                        (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   centralisation-cleanup-signup-flow-exporter-29310180-ctvxt       (worker)
ip-10-54-147-62.eu-central-1.compute.internal   face-auth-process-29309760-s9hl2                                 (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   metadata-bioid-cleanup-29310090-snwqj                            (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   metadata-ir-29310210-7ffxx                                       (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   metadata-ir-cleanup-29310090-sl6nh                               (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   mongodb-machinelabelv2-face-auth-attempts-29310135-s9fb5         (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   mongodb-machinelabelv2-face-auth-reports-29310075-2ddht          (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   mongodb-machinelabelv2-face-auth-reports-29310135-q8bnd          (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   mongodb-machinelabelv2-pcp-metadata-29309400-4rt7l               (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   mongodb-mpcv2-results-partial-29309760-n4frt                     (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   mongodb-orb-reauth-29310150-wj2kb                                (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   normalizediris-i-pii-signup-flow-exporter-29310060-4rgtk         (worker)
ip-10-54-147-62.eu-central-1.compute.internal   normalizediris-m-pii-signup-flow-exporter-29310120-bbsr6         (worker)
ip-10-54-147-62.eu-central-1.compute.internal   tdp-pcp-inventory-29309760-2spqc                                 (ai-snowflake-workers)
ip-10-54-147-62.eu-central-1.compute.internal   worker-irnet-labels-controller-29310234-n46d6                    (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-irnet-labels-controller-29310236-grjwz                    (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-irnet-labels-controller-29310238-54j8h                    (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-orb-signup-controller-29310234-7xh5s                      (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-orb-signup-controller-29310238-wkpm6                      (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-signup-flow-controller-29310234-822fk                     (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-signup-flow-controller-29310236-299vf                     (worker)
ip-10-54-147-62.eu-central-1.compute.internal   worker-signup-flow-controller-29310238-qmmrp                     (worker)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-machinelabelv2-face-auth-reports-8698c869d6r7g56  (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-machinelabelv2-pcp-lookup-6f4f4c54bd-762z7        (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-machinelabelv2-pcp-metadata-844d46b877-s72gf      (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-machinelabelv2-selfie-metadata-5c8cbbd5dd-jk9cn   (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-mpcv2-results-774bc44d49-fx64p                    (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-mpcv2-results-partial-566687589b-pgxp4            (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-orb-reauth-75b6f76d4-fvqvx                        (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-export-orb-signup-f4bfdb89c-vxv7z                        (ai-snowflake-workers)
ip-10-54-147-67.eu-central-1.compute.internal   mongodb-exporter-debugger-29309100-m7k92                         (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   collection-monitoring-dashboard-data-processing-29309520-29t25   (data-collection-analysis)
ip-10-54-147-76.eu-central-1.compute.internal   data-deletion-29309760-hznhz                                     (data-collection-analysis)
ip-10-54-147-76.eu-central-1.compute.internal   face-auth-debugger-29310180-672rp                                (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   field-monitoring-29309760-c2p9f                                  (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   mongodb-machinelabelv2-pcp-lookup-29309400-b7f4c                 (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   mongodb-machinelabelv2-pcp-lookup-29310120-9fnpt                 (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   mongodb-machinelabelv2-pcp-metadata-29310120-72hjt               (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   mongodb-mpcv2-results-29309400-9r64d                             (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   mongodb-mpcv2-results-partial-29309400-7r679                     (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   mongodb-mpcv2-results-partial-29310120-ddwz2                     (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   mongodb-orb-reauth-29310180-hmvzd                                (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   mongodb-orb-reauth-29310210-qsp44                                (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   mongodb-orb-signup-29309400-hqxbc                                (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   normalizediris-m-pii-signup-flow-exporter-29310180-h7d2x         (worker)
ip-10-54-147-76.eu-central-1.compute.internal   orb-capture-monitor-29310120-7sjff                               (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   orb-debugger-29309760-csfcw                                      (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   orb-debugger-29309760-s58qr                                      (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   tdp-metadata-sync-29309820-j87wh                                 (ai-snowflake-workers)
ip-10-54-147-76.eu-central-1.compute.internal   worker-face-capture-controller-29310234-nkrk8                    (worker)
ip-10-54-147-76.eu-central-1.compute.internal   worker-face-capture-controller-29310236-fcm5z                    (worker)
ip-10-54-147-76.eu-central-1.compute.internal   worker-face-capture-controller-29310238-sb498                    (worker)
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

Generated on: Tue Sep 23 10:00:03 CEST 2025
