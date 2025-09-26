# Cluster recon for tfh-analytics-stage-infra,us-east-1,analytics-stage-v2-us-east-1,tunnel-vpc-analytics-stage-us-east-1

TFH EKS login...
```console
2025/09/18 11:08:24 INFO Logging into AWS
2025/09/18 11:08:24 INFO Token found and valid
2025/09/18 11:08:27 INFO Switch WARP Virtual Network to name=tunnel-vpc-analytics-stage-us-east-1 id=dadad609-c72a-40bc-bed5-c1c875ce52b6
2025/09/18 11:08:28 INFO Active WARP Virtual Network id=dadad609-c72a-40bc-bed5-c1c875ce52b6
Updated context tfh-analytics-stage-v2-us-east-1 in /Users/lukasz.glowacki/.kube/config
```

Current version: 1.32
Next version: 1.33

Checking addons...
```
aws-ebs-csi-driver            v1.48.0-eksbuild.2
aws-mountpoint-s3-csi-driver  v2.0.0-eksbuild.1
coredns                       v1.11.4-eksbuild.22
eks-pod-identity-agent        v1.3.8-eksbuild.2
kube-proxy                    v1.32.6-eksbuild.8
snapshot-controller           v8.3.0-eksbuild.1
vpc-cni                       v1.20.1-eksbuild.3
```

Insights for the upcoming update to 1.33
```json
{
    "insights": [
        {
            "id": "35e7c308-b462-435e-9e50-5ff7c88ba54b",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T05:14:18+02:00",
            "lastTransitionTime": "2025-05-19T11:59:04+02:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "c74b899a-7c83-4a77-8244-6200f65b5786",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T05:14:18+02:00",
            "lastTransitionTime": "2025-09-13T03:04:04+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "120100eb-866d-4d4a-baa0-1d512f9d91c2",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T05:14:20+02:00",
            "lastTransitionTime": "2025-07-28T19:29:04+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "0db28a78-5680-4c6f-8f7e-7fe7906e6bf6",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T05:14:20+02:00",
            "lastTransitionTime": "2025-05-19T11:59:04+02:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "80b6a2ba-4e5e-47ff-9d36-c8d033848d34",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T05:14:18+02:00",
            "lastTransitionTime": "2025-05-19T11:59:04+02:00",
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
        "name": "analytics-stage-v2-us-east-1",
        "arn": "arn:aws:eks:us-east-1:797615431886:cluster/analytics-stage-v2-us-east-1",
        "createdAt": "2025-05-19T11:39:25.229000+02:00",
        "version": "1.32",
        "endpoint": "https://EFFB82C65685394BAC475D00DCA860EF.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::797615431886:role/eks-cluster-analytics-stage-v2-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-03aad1094eb15a010",
                "subnet-00977fcc61ccaf654",
                "subnet-071bfdddac78f3471"
            ],
            "securityGroupIds": [
                "sg-0e417be47f59d85f8"
            ],
            "clusterSecurityGroupId": "sg-000db70141e22419e",
            "vpcId": "vpc-0fa67306b24268057",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/EFFB82C65685394BAC475D00DCA860EF"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJYTBoZVMrcXhxeVV3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMU1Ua3dPVE00TlROYUZ3MHpOVEExTVRjd09UUXpOVE5hTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURHeThVODY4V3QzRTZuK0FrUUlLSW5OTkxPZXZ0MVJORm02SVhYUnJVZ2VOamwwUHovU3NLOWdGbEsKWWZRNEtodGs3RE4zcmRlblZQdVpERDhJa3AxY2J3cHQwRHl5STdkd1N1ZXZnWXFzRzhPUHo1UVVEaTExa3Q1MAovMHJrRkUxeUpMcCtqdzkrRXFlS1ZUblYwTzlrelVkQ2JwMm5yWUt3blowRDUzZ0lGZkdEeWxWSm1aUFEvTlpwCmlPY1E1UERQTUpQekZMK3grZlJodWIvb2JTd0JHbnk1SGdINDZZVHNZZHV1a3UvN1RsVzVVcTMzekg3bUdkZFAKd3UxV1VsSHRMWkhVQjJVZWNLWDg2dEJGVzFKL1NWMEkvNmVnNmptdEhkOUdJMkcrYUxsZnZ1MGliQ2Y3RmRhbwpTNE5mYklGTFlPSUttWVMvdmlJTG9WRzZYSWF4QWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJRN3VaYXNLeXliWXNtejAzZm85UHFwVHAyNGxUQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQlFscXRDMmRtagp6Tlphd0dIaW45cG1Gb0FGRUNkaUloeC9ndVJTbFBmNTBCenVGUlVhT25FNURIUzRmaFJJR3lmVUlBQlBJSE03CkowM2ZFSGJJTlhGSm42MTZoQ3NPV2VjWnVHVXJoR2lqZVU0NFl3b2hFYjEvNWxiNHh6MStiVWdMWm8wbktOSHYKeHZLVnJZcE83SWlMUThCT3BvV21wSVBHcEpKZzI4VnlUeDNqVG5qSitqc2hPbEllSDVDMFNuTWttZ21ZbXdLdQp6VGlDRG53MW10dVByOFFNL2FKakp0Q1loTzMyaXRjYWlWRk1UUDdIa2hGUWFHV293ekxCbktjQ1gvTjNDTEYzCjh1dWt6UEVwQ0NldWkwL2s3TUN6U3dTTjhEdnU1STFQQWIwNVJxcERzdTI2ZE9uVmN5SkNvWVVhNmVNdExUb3YKVXRNSUsvNEdIeVRiCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "stage",
            "karpenter.sh/discovery": "analytics-stage-v2-us-east-1",
            "Team": "analytics",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:797615431886:key/b10fd3e6-16b9-4a64-908b-611b01fdda14"
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
NAME                           STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME
ip-10-1-192-78.ec2.internal    Ready    <none>   10h     v1.32.8-eks-99d6cc0   10.1.192.78    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-193-83.ec2.internal    Ready    <none>   5d20h   v1.32.8-eks-99d6cc0   10.1.193.83    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-194-125.ec2.internal   Ready    <none>   10h     v1.32.8-eks-99d6cc0   10.1.194.125   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-194-160.ec2.internal   Ready    <none>   7d15h   v1.32.8-eks-99d6cc0   10.1.194.160   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-194-30.ec2.internal    Ready    <none>   5d21h   v1.32.8-eks-99d6cc0   10.1.194.30    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-195-219.ec2.internal   Ready    <none>   7d15h   v1.32.8-eks-99d6cc0   10.1.195.219   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-195-224.ec2.internal   Ready    <none>   4d11h   v1.32.8-eks-99d6cc0   10.1.195.224   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-195-31.ec2.internal    Ready    <none>   5d11h   v1.32.8-eks-99d6cc0   10.1.195.31    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-196-175.ec2.internal   Ready    <none>   3h8m    v1.32.8-eks-99d6cc0   10.1.196.175   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-196-246.ec2.internal   Ready    <none>   41h     v1.32.8-eks-99d6cc0   10.1.196.246   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27
ip-10-1-197-6.ec2.internal     Ready    <none>   5d21h   v1.32.8-eks-99d6cc0   10.1.197.6     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-1-197-67.ec2.internal    Ready    <none>   24h     v1.32.8-eks-99d6cc0   10.1.197.67    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON              OBJECT                              MESSAGE
7m45s       Normal    Unconsolidatable    node/ip-10-1-192-78.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
14m         Normal    Starting            node/ip-10-1-192-78.ec2.internal    
89s         Normal    DisruptionBlocked   node/ip-10-1-193-83.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=memgraph/memgraph-pdb)
13m         Normal    Starting            node/ip-10-1-193-83.ec2.internal    
38m         Normal    DisruptionBlocked   node/ip-10-1-194-125.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=data-sharing-api-metabase/data-sharing-api-refresh-duckdb-29303070-64j9z)
13m         Normal    DisruptionBlocked   node/ip-10-1-194-125.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
13m         Normal    Starting            node/ip-10-1-194-125.ec2.internal   
8m41s       Normal    DisruptionBlocked   node/ip-10-1-194-125.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=data-sharing-api-metabase/data-sharing-api-refresh-duckdb-29303100-gf2xj)
3m32s       Normal    DisruptionBlocked   node/ip-10-1-194-160.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-57bff85c8c-4fwrh)
14m         Normal    Starting            node/ip-10-1-194-160.ec2.internal   
2m46s       Warning   Unsupported         node/ip-10-1-194-30.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
13m         Normal    Starting            node/ip-10-1-194-30.ec2.internal    
3m32s       Normal    DisruptionBlocked   node/ip-10-1-195-219.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=snowflake-cache-service-nordstar-my/snowflake-cache-service-nordstar-my-pdb)
14m         Normal    Starting            node/ip-10-1-195-219.ec2.internal   
89s         Normal    DisruptionBlocked   node/ip-10-1-195-224.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=snowflake-cache-service-nordstar-ph/snowflake-cache-service-nordstar-ph-pdb)
13m         Normal    Starting            node/ip-10-1-195-224.ec2.internal   
3m32s       Normal    DisruptionBlocked   node/ip-10-1-195-31.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=memgraph/memgraph-lab-pdb)
13m         Normal    Starting            node/ip-10-1-195-31.ec2.internal    
53m         Normal    DisruptionBlocked   node/ip-10-1-196-175.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29303055-tdgck)
38m         Normal    DisruptionBlocked   node/ip-10-1-196-175.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29303070-s2hmm)
23m         Normal    DisruptionBlocked   node/ip-10-1-196-175.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29303085-ps25c)
13m         Normal    DisruptionBlocked   node/ip-10-1-196-175.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
13m         Normal    Starting            node/ip-10-1-196-175.ec2.internal   
8m41s       Normal    DisruptionBlocked   node/ip-10-1-196-175.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29303100-f662p)
7m45s       Normal    Unconsolidatable    node/ip-10-1-196-246.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
13m         Normal    Starting            node/ip-10-1-196-246.ec2.internal   
4m50s       Warning   Unsupported         node/ip-10-1-197-6.ec2.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
13m         Normal    Starting            node/ip-10-1-197-6.ec2.internal     
22m         Normal    Unconsolidatable    node/ip-10-1-197-67.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
38m         Normal    DisruptionBlocked   node/ip-10-1-197-67.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=slack-mcp-client/slack-mcp-client-refresh-manifest-29303070-kzx7f)
13m         Normal    Starting            node/ip-10-1-197-67.ec2.internal    
8m41s       Normal    DisruptionBlocked   node/ip-10-1-197-67.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=slack-mcp-client/slack-mcp-client-refresh-manifest-29303100-gcmt6)
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                                        NAME                                                 MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                               cluster-monitoring-pdb                               N/A             1                 1                     121d
data-science-team                                data-science-team-pdb                                N/A             1                 1                     22d
data-sharing-api-management                      data-sharing-api-management-pdb                      N/A             1                 1                     121d
data-sharing-api-metabase                        data-sharing-api-metabase-pdb                        N/A             1                 1                     71d
datahub                                          datahub-elasticsearch-master-pdb                     N/A             1                 1                     114d
datahub                                          datahub-kafka-broker                                 N/A             1                 1                     115d
datahub                                          datahub-kafka-controller                             N/A             1                 1                     115d
dbeaver                                          dbeaver-pdb                                          N/A             1                 1                     121d
interviews-metabase                              interviews-metabase-pdb                              N/A             1                 1                     44d
karpenter                                        karpenter                                            N/A             1                 1                     121d
kube-system                                      coredns                                              N/A             1                 1                     121d
kube-system                                      ebs-csi-controller                                   N/A             1                 1                     121d
kyverno                                          kyverno-admission-controller                         1               N/A               2                     121d
mcp-server-datahub                               mcp-server-datahub-pdb                               N/A             1                 1                     54d
memgraph                                         memgraph-lab-pdb                                     50%             N/A               0                     121d
memgraph                                         memgraph-pdb                                         50%             N/A               0                     121d
slack-mcp-client                                 slack-mcp-client-pdb                                 N/A             1                 1                     51d
snowflake-cache-service-consumer-backend-api     snowflake-cache-service-consumer-backend-api-pdb     N/A             1                 1                     121d
snowflake-cache-service-consumer-ds-interviews   snowflake-cache-service-consumer-ds-interviews-pdb   N/A             1                 1                     44d
snowflake-cache-service-hs-brands                snowflake-cache-service-hs-brands-pdb                N/A             1                 1                     119d
snowflake-cache-service-m-vision-th              snowflake-cache-service-m-vision-th-pdb              N/A             1                 1                     121d
snowflake-cache-service-nordstar-my              snowflake-cache-service-nordstar-my-pdb              N/A             1                 0                     121d
snowflake-cache-service-nordstar-ph              snowflake-cache-service-nordstar-ph-pdb              N/A             1                 0                     121d
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
