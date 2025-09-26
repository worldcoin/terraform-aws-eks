# Cluster recon for tfh-analytics-stage-infra,us-east-1,analytics-stage-v2-us-east-1,tunnel-vpc-analytics-stage-us-east-1

TFH EKS login...
```console
2025/09/18 19:10:37 INFO Logging into AWS
2025/09/18 19:10:37 INFO Token found and valid
2025/09/18 19:10:39 INFO Switch WARP Virtual Network to name=tunnel-vpc-analytics-stage-us-east-1 id=dadad609-c72a-40bc-bed5-c1c875ce52b6
2025/09/18 19:10:41 INFO Active WARP Virtual Network id=dadad609-c72a-40bc-bed5-c1c875ce52b6
Updated context tfh-analytics-stage-v2-us-east-1 in /Users/lukasz.glowacki/.kube/config
```

Current version: 1.33
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

Cluster version up to date - no update insights

Show full cluster description:
```json
{
    "cluster": {
        "name": "analytics-stage-v2-us-east-1",
        "arn": "arn:aws:eks:us-east-1:797615431886:cluster/analytics-stage-v2-us-east-1",
        "createdAt": "2025-05-19T11:39:25.229000+02:00",
        "version": "1.33",
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
        "platformVersion": "eks.14",
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
NAME                           STATUS   ROLES    AGE    VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-1-192-164.ec2.internal   Ready    <none>   178m   v1.33.4-eks-99d6cc0   10.1.192.164   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-1-192-39.ec2.internal    Ready    <none>   28m    v1.33.4-eks-99d6cc0   10.1.192.39    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-1-193-245.ec2.internal   Ready    <none>   6h4m   v1.33.4-eks-99d6cc0   10.1.193.245   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-analytics-stage-v2-us-east-1
ip-10-1-194-172.ec2.internal   Ready    <none>   172m   v1.33.4-eks-99d6cc0   10.1.194.172   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-1-196-160.ec2.internal   Ready    <none>   6h2m   v1.33.4-eks-99d6cc0   10.1.196.160   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-analytics-stage-v2-us-east-1
ip-10-1-197-200.ec2.internal   Ready    <none>   6h     v1.33.4-eks-99d6cc0   10.1.197.200   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-1-197-42.ec2.internal    Ready    <none>   6h     v1.33.4-eks-99d6cc0   10.1.197.42    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-1-197-69.ec2.internal    Ready    <none>   6h1m   v1.33.4-eks-99d6cc0   10.1.197.69    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                           STATUS   ROLES    TAINTS
ip-10-1-192-164.ec2.internal   Ready    <none>   <none>
ip-10-1-192-39.ec2.internal    Ready    <none>   <none>
ip-10-1-193-245.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-1-194-172.ec2.internal   Ready    <none>   <none>
ip-10-1-196-160.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-1-197-200.ec2.internal   Ready    <none>   <none>
ip-10-1-197-42.ec2.internal    Ready    <none>   <none>
ip-10-1-197-69.ec2.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                              MESSAGE
26m         Normal    Finalized                     node                                Finalized karpenter.sh/termination
2m2s        Normal    DisruptionBlocked             node/ip-10-1-192-164.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=memgraph/memgraph-pdb)
28m         Normal    Starting                      node/ip-10-1-192-39.ec2.internal    Starting kubelet.
28m         Warning   InvalidDiskCapacity           node/ip-10-1-192-39.ec2.internal    invalid capacity 0 on image filesystem
28m         Normal    NodeHasSufficientMemory       node/ip-10-1-192-39.ec2.internal    Node ip-10-1-192-39.ec2.internal status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure         node/ip-10-1-192-39.ec2.internal    Node ip-10-1-192-39.ec2.internal status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID          node/ip-10-1-192-39.ec2.internal    Node ip-10-1-192-39.ec2.internal status is now: NodeHasSufficientPID
28m         Normal    NodeAllocatableEnforced       node/ip-10-1-192-39.ec2.internal    Updated Node Allocatable limit across pods
28m         Normal    Synced                        node/ip-10-1-192-39.ec2.internal    Node synced successfully
28m         Normal    RegisteredNode                node/ip-10-1-192-39.ec2.internal    Node ip-10-1-192-39.ec2.internal event: Registered Node ip-10-1-192-39.ec2.internal in Controller
28m         Normal    DisruptionBlocked             node/ip-10-1-192-39.ec2.internal    Node isn't initialized
27m         Normal    Starting                      node/ip-10-1-192-39.ec2.internal    
27m         Normal    ControllerVersionNotice       node/ip-10-1-192-39.ec2.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeReady                     node/ip-10-1-192-39.ec2.internal    Node ip-10-1-192-39.ec2.internal status is now: NodeReady
27m         Normal    Ready                         node/ip-10-1-192-39.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
27m         Normal    NodeTrunkInitiated            node/ip-10-1-192-39.ec2.internal    The node has trunk interface initialized successfully
10m         Normal    Unconsolidatable              node/ip-10-1-192-39.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
39m         Normal    Unconsolidatable              node/ip-10-1-192-81.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
47m         Normal    SpotRebalanceRecommendation   node/ip-10-1-192-81.ec2.internal    Spot rebalance recommendation was triggered
28m         Warning   SpotInterrupted               node/ip-10-1-192-81.ec2.internal    Spot interruption warning was triggered
28m         Warning   TerminatingOnInterruption     node/ip-10-1-192-81.ec2.internal    Interruption triggered termination for the Node
28m         Warning   FailedDraining                node/ip-10-1-192-81.ec2.internal    Failed to drain node, 6 pods are waiting to be evicted
26m         Normal    DisruptionBlocked             node/ip-10-1-192-81.ec2.internal    Node is deleting or marked for deletion
27m         Warning   InstanceTerminating           node/ip-10-1-192-81.ec2.internal    Instance is terminating
26m         Normal    NodeNotReady                  node/ip-10-1-192-81.ec2.internal    Node ip-10-1-192-81.ec2.internal status is now: NodeNotReady
26m         Normal    MemoryPressure                node/ip-10-1-192-81.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    DiskPressure                  node/ip-10-1-192-81.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    PIDPressure                   node/ip-10-1-192-81.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    Ready                         node/ip-10-1-192-81.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
26m         Normal    DeletingNode                  node/ip-10-1-192-81.ec2.internal    Deleting node ip-10-1-192-81.ec2.internal because it does not exist in the cloud provider
26m         Normal    RemovingNode                  node/ip-10-1-192-81.ec2.internal    Node ip-10-1-192-81.ec2.internal event: Removing Node ip-10-1-192-81.ec2.internal from Controller
12s         Warning   Unsupported                   node/ip-10-1-193-245.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
5m43s       Normal    Unconsolidatable              node/ip-10-1-194-172.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
22m         Normal    DisruptionBlocked             node/ip-10-1-194-172.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
70s         Warning   Unsupported                   node/ip-10-1-196-160.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
22m         Normal    DisruptionBlocked             node/ip-10-1-197-200.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
80s         Normal    DisruptionBlocked             node/ip-10-1-197-42.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-57bff85c8c-znx2c)
4m50s       Normal    Unconsolidatable              node/ip-10-1-197-69.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                                        NAME                                                 MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                               cluster-monitoring-pdb                               N/A             1                 1                     122d
data-science-team                                data-science-team-pdb                                N/A             1                 1                     23d
data-sharing-api-management                      data-sharing-api-management-pdb                      N/A             1                 1                     122d
data-sharing-api-metabase                        data-sharing-api-metabase-pdb                        N/A             1                 1                     72d
datahub                                          datahub-elasticsearch-master-pdb                     N/A             1                 1                     115d
datahub                                          datahub-kafka-broker                                 N/A             1                 1                     116d
datahub                                          datahub-kafka-controller                             N/A             1                 1                     116d
dbeaver                                          dbeaver-pdb                                          N/A             1                 1                     122d
interviews-metabase                              interviews-metabase-pdb                              N/A             1                 1                     45d
karpenter                                        karpenter                                            N/A             1                 1                     122d
kube-system                                      coredns                                              N/A             1                 1                     122d
kube-system                                      ebs-csi-controller                                   N/A             1                 1                     122d
kyverno                                          kyverno-admission-controller                         1               N/A               2                     122d
mcp-server-datahub                               mcp-server-datahub-pdb                               N/A             1                 1                     54d
memgraph                                         memgraph-lab-pdb                                     50%             N/A               0                     122d
memgraph                                         memgraph-pdb                                         50%             N/A               0                     122d
slack-mcp-client                                 slack-mcp-client-pdb                                 N/A             1                 1                     52d
snowflake-cache-service-consumer-backend-api     snowflake-cache-service-consumer-backend-api-pdb     N/A             1                 1                     122d
snowflake-cache-service-consumer-ds-interviews   snowflake-cache-service-consumer-ds-interviews-pdb   N/A             1                 1                     45d
snowflake-cache-service-hs-brands                snowflake-cache-service-hs-brands-pdb                N/A             1                 1                     119d
snowflake-cache-service-m-vision-th              snowflake-cache-service-m-vision-th-pdb              N/A             1                 1                     122d
snowflake-cache-service-nordstar-my              snowflake-cache-service-nordstar-my-pdb              N/A             1                 0                     122d
snowflake-cache-service-nordstar-ph              snowflake-cache-service-nordstar-ph-pdb              N/A             1                 0                     122d
```

Pods with Karpenter.sh/Do-Not-Disrupt Annotation
```
ip-10-1-197-42.ec2.internal  data-sharing-api-refresh-duckdb-29303520-p7dcw                 (data-sharing-api-metabase)
ip-10-1-197-42.ec2.internal  data-sharing-api-refresh-duckdb-29303550-k8p54                 (data-sharing-api-metabase)
ip-10-1-197-42.ec2.internal  data-sharing-api-refresh-duckdb-29303580-cp7t5                 (data-sharing-api-metabase)
ip-10-1-197-42.ec2.internal  orb-analytics-workers-29303580-9qll2                           (orb-analytics-workers)
ip-10-1-197-42.ec2.internal  slack-mcp-client-refresh-manifest-29303580-hjtgs               (slack-mcp-client)
ip-10-1-197-42.ec2.internal  snowflake-cache-service-consumer-backend-api-57bff85c8c-znx2c  (snowflake-cache-service-consumer-backend-api)
```

Pods Tolerating karpenter.sh/disrupted
```
```

Static Pods
```
```

Cluster version up to date - no pluto apis detection rquired

Generated on: Thu Sep 18 19:11:04 CEST 2025
