# Cluster recon for tfh-analytics-prod-infra,us-east-1,analytics-prod-v2-us-east-1,tunnel-vpc-analytics-prod-us-east-1

TFH EKS login...
```console
2025/09/23 09:57:54 INFO Logging into AWS
2025/09/23 09:57:54 INFO Token not found or expired error="no valid token found"
2025/09/23 09:57:54 INFO Attempting to automatically open the SSO authorization page in your default browser...
2025/09/23 09:58:27 INFO Token found and valid
2025/09/23 09:58:31 INFO Switch WARP Virtual Network to name=tunnel-vpc-analytics-prod-us-east-1 id=2b7eb062-e012-46e3-bae6-ebf7bae85cf5
2025/09/23 09:58:33 INFO Active WARP Virtual Network id=2b7eb062-e012-46e3-bae6-ebf7bae85cf5
Added new context tfh-analytics-prod-v2-us-east-1 to /Users/lukasz.glowacki/.kube/config
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
            "id": "e112e32b-cd87-416f-b915-0bb488dd4acd",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:29:23+02:00",
            "lastTransitionTime": "2024-12-21T05:24:05+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "ea5620ab-429b-4705-bdaf-ed872ffa20b6",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:29:23+02:00",
            "lastTransitionTime": "2025-07-29T08:29:04+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "23fdc833-99f6-4139-aff7-dc13a26f21bc",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:29:06+02:00",
            "lastTransitionTime": "2024-12-21T05:24:05+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "0fd58287-9ca5-462d-ba0d-9e63f0d9962e",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:29:06+02:00",
            "lastTransitionTime": "2025-09-17T03:04:05+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "c28a19ab-f7f5-4555-b327-83920b123228",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-23T01:29:06+02:00",
            "lastTransitionTime": "2024-12-21T05:24:05+01:00",
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
        "name": "analytics-prod-v2-us-east-1",
        "arn": "arn:aws:eks:us-east-1:261207205690:cluster/analytics-prod-v2-us-east-1",
        "createdAt": "2023-05-11T13:29:23.039000+02:00",
        "version": "1.32",
        "endpoint": "https://011153659EC5E5C5018B3668044B45C3.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::261207205690:role/eks-cluster-analytics-prod-v2-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-064d4dc554a4ec41a",
                "subnet-05564226c7aed37bd",
                "subnet-0e686bb327883879d"
            ],
            "securityGroupIds": [
                "sg-0c63f161c9d23eb64"
            ],
            "clusterSecurityGroupId": "sg-0d97574bea9f473e2",
            "vpcId": "vpc-0e46e3c705baa6029",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/011153659EC5E5C5018B3668044B45C3"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EVXhNVEV4TXpReE1Wb1hEVE16TURVd09ERXhNelF4TVZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTVJQClBjQ2pONldtUFZoUVR1aEdRWWl6VTFEYy9lU0xSVmFqcHd3RGFhSjd3MWdMME16L2tBM1hvRW9iV1ZPazZpOXMKVzVpMHhEclNCa3l0S25lbVVUbnRhVG9wZ2F5UkN4WkJwMHV6ZGRpTGhiSHhHTnYzRU9SdEQ5SFIvQVR6WE51OQovVzZkQzZOMjdhSWt3ZlVTcS8wQlZoK3doQXVyNWg4R2M4czNDMERoZUJadUZKekZrOUF1bGE5OWpBNmk0bVFwCnhPekc1eEZxUVlLNWpEQ0JjVFY4bXNUd05Ndnk5NjgvVUo1Z1MvbVNHTW9zWFlNWFM4TU15N25BOUpIc1MzdEIKTG4vTDIrRFJ5d2lTUnc2NzhtNkhIdUlpZk1jaGpxUjF6MENHUnNxaUhSRTZJT1pRb1VuWU9MTG0wa3Q0VTl0LwoxdEFhSnhiYjdpeXAzTXB3WDNrQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZNd0FHVUpPZ1BUN2FOaVAreUpPbE9pSW5OVXJNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBREpDZHJjemp3d0ZlYWlUQ1piSgprTEdEOVZJZDdlWWE5UzdXNHoyS3VqZ2JPdHliUDljOXlBdjlFQmV3OEZyV0pMdUJUSCtsS2E1NnM2NHJLWG90CnFVWlFreFEwZ0V4dVIxekZGS05oQ3JRM2I4SEltNHZQeUtYNTJDckVWWEwxZHF5Nk1HZFVYOVkwck5kbTBIY3YKUWRUTEVkT01VSE1DSHYxcmtpUDhnT21VZWV2OHpFZGFxaXNiT0dMN25TUUVaRUR5dFFTRURCb0JZUkdzT3Vudgo3ai93dURDck1pOW1OL05iVVZFdzVkbW1vWk9lYUJGVzlKQXc0bUNOU2ZGbG83dTRmdEt5WkI2NjRreWhhK2R4CkhIaCtQZXowUEpxeGkyWmVNQnRlTkFkZ05TZ0N2NFhGS282c1JVaVpKWE02WkhTTHczcXUrb25PYVIzVUNmK3gKYzN3PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "analytics-prod-v2-us-east-1",
            "Team": "analytics",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:261207205690:key/660f235d-e4ba-434d-a175-92326b3416f6"
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
ip-10-2-112-177.ec2.internal   Ready    <none>   22h     v1.32.8-eks-99d6cc0   10.2.112.177   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-112-20.ec2.internal    Ready    <none>   55m     v1.32.8-eks-99d6cc0   10.2.112.20    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-112-213.ec2.internal   Ready    <none>   2d20h   v1.32.8-eks-99d6cc0   10.2.112.213   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-2-112-5.ec2.internal     Ready    <none>   10d     v1.32.8-eks-99d6cc0   10.2.112.5     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-112-99.ec2.internal    Ready    <none>   2d10h   v1.32.8-eks-99d6cc0   10.2.112.99    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-2-113-0.ec2.internal     Ready    <none>   11h     v1.32.8-eks-99d6cc0   10.2.113.0     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-2-113-109.ec2.internal   Ready    <none>   2d20h   v1.32.8-eks-99d6cc0   10.2.113.109   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
ip-10-2-113-11.ec2.internal    Ready    <none>   10d     v1.32.8-eks-99d6cc0   10.2.113.11    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-113-121.ec2.internal   Ready    <none>   8h      v1.32.8-eks-99d6cc0   10.2.113.121   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-113-160.ec2.internal   Ready    <none>   55m     v1.32.8-eks-99d6cc0   10.2.113.160   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-113-164.ec2.internal   Ready    <none>   10d     v1.32.8-eks-99d6cc0   10.2.113.164   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-113-208.ec2.internal   Ready    <none>   4d      v1.32.8-eks-99d6cc0   10.2.113.208   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-114-100.ec2.internal   Ready    <none>   4d      v1.32.8-eks-99d6cc0   10.2.114.100   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-analytics-prod-v2-us-east-1
ip-10-2-114-94.ec2.internal    Ready    <none>   9h      v1.32.8-eks-99d6cc0   10.2.114.94    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-116-106.ec2.internal   Ready    <none>   22m     v1.32.8-eks-99d6cc0   10.2.116.106   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-116-176.ec2.internal   Ready    <none>   55m     v1.32.8-eks-99d6cc0   10.2.116.176   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-116-212.ec2.internal   Ready    <none>   55m     v1.32.8-eks-99d6cc0   10.2.116.212   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-116-45.ec2.internal    Ready    <none>   20h     v1.32.8-eks-99d6cc0   10.2.116.45    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-116-57.ec2.internal    Ready    <none>   4d      v1.32.8-eks-99d6cc0   10.2.116.57    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-analytics-prod-v2-us-east-1
ip-10-2-116-8.ec2.internal     Ready    <none>   15h     v1.32.8-eks-99d6cc0   10.2.116.8     <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-117-233.ec2.internal   Ready    <none>   55m     v1.32.8-eks-99d6cc0   10.2.117.233   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-117-81.ec2.internal    Ready    <none>   27m     v1.32.8-eks-99d6cc0   10.2.117.81    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                           STATUS   ROLES    TAINTS
ip-10-2-112-177.ec2.internal   Ready    <none>   <none>
ip-10-2-112-20.ec2.internal    Ready    <none>   <none>
ip-10-2-112-213.ec2.internal   Ready    <none>   <none>
ip-10-2-112-5.ec2.internal     Ready    <none>   <none>
ip-10-2-112-99.ec2.internal    Ready    <none>   <none>
ip-10-2-113-0.ec2.internal     Ready    <none>   <none>
ip-10-2-113-109.ec2.internal   Ready    <none>   <none>
ip-10-2-113-11.ec2.internal    Ready    <none>   <none>
ip-10-2-113-121.ec2.internal   Ready    <none>   <none>
ip-10-2-113-160.ec2.internal   Ready    <none>   <none>
ip-10-2-113-164.ec2.internal   Ready    <none>   <none>
ip-10-2-113-208.ec2.internal   Ready    <none>   <none>
ip-10-2-114-100.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-2-114-94.ec2.internal    Ready    <none>   <none>
ip-10-2-116-106.ec2.internal   Ready    <none>   <none>
ip-10-2-116-176.ec2.internal   Ready    <none>   <none>
ip-10-2-116-212.ec2.internal   Ready    <none>   <none>
ip-10-2-116-45.ec2.internal    Ready    <none>   <none>
ip-10-2-116-57.ec2.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-2-116-8.ec2.internal     Ready    <none>   <none>
ip-10-2-117-233.ec2.internal   Ready    <none>   <none>
ip-10-2-117-81.ec2.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                              MESSAGE
21m         Normal    Finalized                     node                                Finalized karpenter.sh/termination
5m37s       Normal    DisruptionBlocked             node/ip-10-2-112-177.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=dbt-core-runs-de-trino-consumer-raw/dbt-core-runs-de-trino-consumer-raw-29308863-rr7fv)
55m         Normal    Starting                      node/ip-10-2-112-20.ec2.internal    Starting kubelet.
55m         Warning   InvalidDiskCapacity           node/ip-10-2-112-20.ec2.internal    invalid capacity 0 on image filesystem
55m         Normal    NodeHasSufficientMemory       node/ip-10-2-112-20.ec2.internal    Node ip-10-2-112-20.ec2.internal status is now: NodeHasSufficientMemory
55m         Normal    NodeHasNoDiskPressure         node/ip-10-2-112-20.ec2.internal    Node ip-10-2-112-20.ec2.internal status is now: NodeHasNoDiskPressure
55m         Normal    NodeHasSufficientPID          node/ip-10-2-112-20.ec2.internal    Node ip-10-2-112-20.ec2.internal status is now: NodeHasSufficientPID
55m         Normal    NodeAllocatableEnforced       node/ip-10-2-112-20.ec2.internal    Updated Node Allocatable limit across pods
55m         Normal    Synced                        node/ip-10-2-112-20.ec2.internal    Node synced successfully
55m         Normal    DisruptionBlocked             node/ip-10-2-112-20.ec2.internal    Node isn't initialized
55m         Normal    RegisteredNode                node/ip-10-2-112-20.ec2.internal    Node ip-10-2-112-20.ec2.internal event: Registered Node ip-10-2-112-20.ec2.internal in Controller
55m         Normal    Starting                      node/ip-10-2-112-20.ec2.internal    
55m         Normal    ControllerVersionNotice       node/ip-10-2-112-20.ec2.internal    The node is managed by VPC resource controller version v1.7.9
55m         Normal    NodeReady                     node/ip-10-2-112-20.ec2.internal    Node ip-10-2-112-20.ec2.internal status is now: NodeReady
55m         Normal    Ready                         node/ip-10-2-112-20.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
55m         Normal    NodeTrunkInitiated            node/ip-10-2-112-20.ec2.internal    The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked             node/ip-10-2-112-20.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
14m         Normal    Unconsolidatable              node/ip-10-2-112-20.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
12m         Normal    Unconsolidatable              node/ip-10-2-112-213.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
3m29s       Normal    DisruptionBlocked             node/ip-10-2-112-5.ec2.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-wdth9)
8m44s       Normal    Unconsolidatable              node/ip-10-2-112-99.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
8m44s       Normal    Unconsolidatable              node/ip-10-2-113-0.ec2.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
12m         Normal    Unconsolidatable              node/ip-10-2-113-109.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
3m29s       Normal    DisruptionBlocked             node/ip-10-2-113-11.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=memgraph/memgraph-pdb)
3m29s       Normal    DisruptionBlocked             node/ip-10-2-113-121.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-p4rdm)
55m         Normal    Starting                      node/ip-10-2-113-160.ec2.internal   Starting kubelet.
55m         Warning   InvalidDiskCapacity           node/ip-10-2-113-160.ec2.internal   invalid capacity 0 on image filesystem
55m         Normal    NodeHasSufficientMemory       node/ip-10-2-113-160.ec2.internal   Node ip-10-2-113-160.ec2.internal status is now: NodeHasSufficientMemory
55m         Normal    NodeHasNoDiskPressure         node/ip-10-2-113-160.ec2.internal   Node ip-10-2-113-160.ec2.internal status is now: NodeHasNoDiskPressure
55m         Normal    NodeHasSufficientPID          node/ip-10-2-113-160.ec2.internal   Node ip-10-2-113-160.ec2.internal status is now: NodeHasSufficientPID
55m         Normal    NodeAllocatableEnforced       node/ip-10-2-113-160.ec2.internal   Updated Node Allocatable limit across pods
55m         Normal    RegisteredNode                node/ip-10-2-113-160.ec2.internal   Node ip-10-2-113-160.ec2.internal event: Registered Node ip-10-2-113-160.ec2.internal in Controller
55m         Normal    DisruptionBlocked             node/ip-10-2-113-160.ec2.internal   Node isn't initialized
55m         Normal    Synced                        node/ip-10-2-113-160.ec2.internal   Node synced successfully
55m         Normal    Starting                      node/ip-10-2-113-160.ec2.internal   
55m         Normal    ControllerVersionNotice       node/ip-10-2-113-160.ec2.internal   The node is managed by VPC resource controller version v1.7.9
55m         Normal    NodeReady                     node/ip-10-2-113-160.ec2.internal   Node ip-10-2-113-160.ec2.internal status is now: NodeReady
55m         Normal    Ready                         node/ip-10-2-113-160.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
55m         Normal    NodeTrunkInitiated            node/ip-10-2-113-160.ec2.internal   The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked             node/ip-10-2-113-160.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
14m         Normal    Unconsolidatable              node/ip-10-2-113-160.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
3m29s       Normal    DisruptionBlocked             node/ip-10-2-113-164.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-p82pw)
55m         Normal    ControllerVersionNotice       node/ip-10-2-113-198.ec2.internal   The node is managed by VPC resource controller version v1.7.9
55m         Normal    NodeTrunkInitiated            node/ip-10-2-113-198.ec2.internal   The node has trunk interface initialized successfully
55m         Normal    Starting                      node/ip-10-2-113-198.ec2.internal   Starting kubelet.
55m         Warning   InvalidDiskCapacity           node/ip-10-2-113-198.ec2.internal   invalid capacity 0 on image filesystem
55m         Normal    NodeHasSufficientMemory       node/ip-10-2-113-198.ec2.internal   Node ip-10-2-113-198.ec2.internal status is now: NodeHasSufficientMemory
55m         Normal    NodeHasNoDiskPressure         node/ip-10-2-113-198.ec2.internal   Node ip-10-2-113-198.ec2.internal status is now: NodeHasNoDiskPressure
55m         Normal    NodeHasSufficientPID          node/ip-10-2-113-198.ec2.internal   Node ip-10-2-113-198.ec2.internal status is now: NodeHasSufficientPID
55m         Normal    NodeAllocatableEnforced       node/ip-10-2-113-198.ec2.internal   Updated Node Allocatable limit across pods
55m         Normal    Synced                        node/ip-10-2-113-198.ec2.internal   Node synced successfully
55m         Normal    DisruptionBlocked             node/ip-10-2-113-198.ec2.internal   Node isn't initialized
55m         Normal    RegisteredNode                node/ip-10-2-113-198.ec2.internal   Node ip-10-2-113-198.ec2.internal event: Registered Node ip-10-2-113-198.ec2.internal in Controller
55m         Normal    Starting                      node/ip-10-2-113-198.ec2.internal   
55m         Normal    NodeReady                     node/ip-10-2-113-198.ec2.internal   Node ip-10-2-113-198.ec2.internal status is now: NodeReady
55m         Normal    Ready                         node/ip-10-2-113-198.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
51m         Normal    DisruptionBlocked             node/ip-10-2-113-198.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
32m         Normal    DisruptionBlocked             node/ip-10-2-113-198.ec2.internal   Node is deleting or marked for deletion
32m         Normal    DisruptionTerminating         node/ip-10-2-113-198.ec2.internal   Disrupting Node: Underutilized/Delete
32m         Warning   FailedDraining                node/ip-10-2-113-198.ec2.internal   Failed to drain node, 2 pods are waiting to be evicted
31m         Warning   InstanceTerminating           node/ip-10-2-113-198.ec2.internal   Instance is terminating
30m         Normal    RemovingNode                  node/ip-10-2-113-198.ec2.internal   Node ip-10-2-113-198.ec2.internal event: Removing Node ip-10-2-113-198.ec2.internal from Controller
12m         Normal    Unconsolidatable              node/ip-10-2-113-208.ec2.internal   Can't replace with a cheaper node
118s        Warning   Unsupported                   node/ip-10-2-114-100.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
22m         Normal    DisruptionBlocked             node/ip-10-2-114-94.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
29m         Normal    Unconsolidatable              node/ip-10-2-114-94.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
22m         Normal    Starting                      node/ip-10-2-116-106.ec2.internal   Starting kubelet.
22m         Warning   InvalidDiskCapacity           node/ip-10-2-116-106.ec2.internal   invalid capacity 0 on image filesystem
22m         Normal    NodeHasSufficientMemory       node/ip-10-2-116-106.ec2.internal   Node ip-10-2-116-106.ec2.internal status is now: NodeHasSufficientMemory
22m         Normal    NodeHasNoDiskPressure         node/ip-10-2-116-106.ec2.internal   Node ip-10-2-116-106.ec2.internal status is now: NodeHasNoDiskPressure
22m         Normal    NodeHasSufficientPID          node/ip-10-2-116-106.ec2.internal   Node ip-10-2-116-106.ec2.internal status is now: NodeHasSufficientPID
22m         Normal    NodeAllocatableEnforced       node/ip-10-2-116-106.ec2.internal   Updated Node Allocatable limit across pods
22m         Normal    Synced                        node/ip-10-2-116-106.ec2.internal   Node synced successfully
22m         Normal    RegisteredNode                node/ip-10-2-116-106.ec2.internal   Node ip-10-2-116-106.ec2.internal event: Registered Node ip-10-2-116-106.ec2.internal in Controller
22m         Normal    DisruptionBlocked             node/ip-10-2-116-106.ec2.internal   Node isn't initialized
22m         Normal    Starting                      node/ip-10-2-116-106.ec2.internal   
22m         Normal    ControllerVersionNotice       node/ip-10-2-116-106.ec2.internal   The node is managed by VPC resource controller version v1.7.9
22m         Normal    NodeReady                     node/ip-10-2-116-106.ec2.internal   Node ip-10-2-116-106.ec2.internal status is now: NodeReady
22m         Normal    Ready                         node/ip-10-2-116-106.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    NodeTrunkInitiated            node/ip-10-2-116-106.ec2.internal   The node has trunk interface initialized successfully
2m44s       Normal    Unconsolidatable              node/ip-10-2-116-106.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
55m         Normal    Starting                      node/ip-10-2-116-176.ec2.internal   Starting kubelet.
55m         Warning   InvalidDiskCapacity           node/ip-10-2-116-176.ec2.internal   invalid capacity 0 on image filesystem
55m         Normal    NodeHasSufficientMemory       node/ip-10-2-116-176.ec2.internal   Node ip-10-2-116-176.ec2.internal status is now: NodeHasSufficientMemory
55m         Normal    NodeHasNoDiskPressure         node/ip-10-2-116-176.ec2.internal   Node ip-10-2-116-176.ec2.internal status is now: NodeHasNoDiskPressure
55m         Normal    NodeHasSufficientPID          node/ip-10-2-116-176.ec2.internal   Node ip-10-2-116-176.ec2.internal status is now: NodeHasSufficientPID
55m         Normal    NodeAllocatableEnforced       node/ip-10-2-116-176.ec2.internal   Updated Node Allocatable limit across pods
55m         Normal    Synced                        node/ip-10-2-116-176.ec2.internal   Node synced successfully
55m         Normal    RegisteredNode                node/ip-10-2-116-176.ec2.internal   Node ip-10-2-116-176.ec2.internal event: Registered Node ip-10-2-116-176.ec2.internal in Controller
55m         Normal    DisruptionBlocked             node/ip-10-2-116-176.ec2.internal   Node isn't initialized
55m         Normal    Starting                      node/ip-10-2-116-176.ec2.internal   
55m         Normal    ControllerVersionNotice       node/ip-10-2-116-176.ec2.internal   The node is managed by VPC resource controller version v1.7.9
55m         Normal    NodeReady                     node/ip-10-2-116-176.ec2.internal   Node ip-10-2-116-176.ec2.internal status is now: NodeReady
55m         Normal    Ready                         node/ip-10-2-116-176.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
55m         Normal    NodeTrunkInitiated            node/ip-10-2-116-176.ec2.internal   The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked             node/ip-10-2-116-176.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
12m         Normal    Unconsolidatable              node/ip-10-2-116-176.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
55m         Normal    ControllerVersionNotice       node/ip-10-2-116-212.ec2.internal   The node is managed by VPC resource controller version v1.7.9
55m         Normal    NodeTrunkInitiated            node/ip-10-2-116-212.ec2.internal   The node has trunk interface initialized successfully
55m         Normal    Starting                      node/ip-10-2-116-212.ec2.internal   Starting kubelet.
55m         Warning   InvalidDiskCapacity           node/ip-10-2-116-212.ec2.internal   invalid capacity 0 on image filesystem
55m         Normal    NodeHasSufficientMemory       node/ip-10-2-116-212.ec2.internal   Node ip-10-2-116-212.ec2.internal status is now: NodeHasSufficientMemory
55m         Normal    NodeHasNoDiskPressure         node/ip-10-2-116-212.ec2.internal   Node ip-10-2-116-212.ec2.internal status is now: NodeHasNoDiskPressure
55m         Normal    NodeHasSufficientPID          node/ip-10-2-116-212.ec2.internal   Node ip-10-2-116-212.ec2.internal status is now: NodeHasSufficientPID
55m         Normal    NodeAllocatableEnforced       node/ip-10-2-116-212.ec2.internal   Updated Node Allocatable limit across pods
55m         Normal    Synced                        node/ip-10-2-116-212.ec2.internal   Node synced successfully
55m         Normal    RegisteredNode                node/ip-10-2-116-212.ec2.internal   Node ip-10-2-116-212.ec2.internal event: Registered Node ip-10-2-116-212.ec2.internal in Controller
55m         Normal    DisruptionBlocked             node/ip-10-2-116-212.ec2.internal   Node isn't initialized
55m         Normal    Starting                      node/ip-10-2-116-212.ec2.internal   
55m         Normal    NodeReady                     node/ip-10-2-116-212.ec2.internal   Node ip-10-2-116-212.ec2.internal status is now: NodeReady
55m         Normal    Ready                         node/ip-10-2-116-212.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    DisruptionBlocked             node/ip-10-2-116-212.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
29m         Normal    Unconsolidatable              node/ip-10-2-116-212.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
8m42s       Normal    Unconsolidatable              node/ip-10-2-116-45.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
2m41s       Warning   Unsupported                   node/ip-10-2-116-57.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
4m1s        Normal    ControllerVersionNotice       node/ip-10-2-116-8.ec2.internal     The node is managed by VPC resource controller version v1.7.9
4m          Warning   Unsupported                   node/ip-10-2-116-8.ec2.internal     The instance type m8i-flex.2xlarge is not supported yet by the vpc resource controller
22m         Normal    DisruptionBlocked             node/ip-10-2-116-8.ec2.internal     Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
15m         Normal    Unconsolidatable              node/ip-10-2-116-8.ec2.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
46m         Normal    DisruptionBlocked             node/ip-10-2-116-8.ec2.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=fraud-hourly-alerts/fraud-hourly-alerts-29310180-jjgfz)
32m         Normal    DisruptionBlocked             node/ip-10-2-116-8.ec2.internal     Node is nominated for a pending pod
55m         Normal    Starting                      node/ip-10-2-117-202.ec2.internal   Starting kubelet.
55m         Warning   InvalidDiskCapacity           node/ip-10-2-117-202.ec2.internal   invalid capacity 0 on image filesystem
55m         Normal    NodeHasSufficientMemory       node/ip-10-2-117-202.ec2.internal   Node ip-10-2-117-202.ec2.internal status is now: NodeHasSufficientMemory
55m         Normal    NodeHasNoDiskPressure         node/ip-10-2-117-202.ec2.internal   Node ip-10-2-117-202.ec2.internal status is now: NodeHasNoDiskPressure
55m         Normal    NodeHasSufficientPID          node/ip-10-2-117-202.ec2.internal   Node ip-10-2-117-202.ec2.internal status is now: NodeHasSufficientPID
55m         Normal    NodeAllocatableEnforced       node/ip-10-2-117-202.ec2.internal   Updated Node Allocatable limit across pods
55m         Normal    Synced                        node/ip-10-2-117-202.ec2.internal   Node synced successfully
55m         Normal    RegisteredNode                node/ip-10-2-117-202.ec2.internal   Node ip-10-2-117-202.ec2.internal event: Registered Node ip-10-2-117-202.ec2.internal in Controller
55m         Normal    Starting                      node/ip-10-2-117-202.ec2.internal   
55m         Normal    DisruptionBlocked             node/ip-10-2-117-202.ec2.internal   Node isn't initialized
55m         Normal    ControllerVersionNotice       node/ip-10-2-117-202.ec2.internal   The node is managed by VPC resource controller version v1.7.9
55m         Normal    NodeReady                     node/ip-10-2-117-202.ec2.internal   Node ip-10-2-117-202.ec2.internal status is now: NodeReady
55m         Normal    Ready                         node/ip-10-2-117-202.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
55m         Normal    NodeTrunkInitiated            node/ip-10-2-117-202.ec2.internal   The node has trunk interface initialized successfully
32m         Normal    DisruptionBlocked             node/ip-10-2-117-202.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
27m         Normal    SpotRebalanceRecommendation   node/ip-10-2-117-202.ec2.internal   Spot rebalance recommendation was triggered
27m         Warning   SpotInterrupted               node/ip-10-2-117-202.ec2.internal   Spot interruption warning was triggered
27m         Warning   TerminatingOnInterruption     node/ip-10-2-117-202.ec2.internal   Interruption triggered termination for the Node
27m         Warning   FailedDraining                node/ip-10-2-117-202.ec2.internal   Failed to drain node, 2 pods are waiting to be evicted
27m         Normal    DisruptionBlocked             node/ip-10-2-117-202.ec2.internal   Node is deleting or marked for deletion
26m         Warning   InstanceTerminating           node/ip-10-2-117-202.ec2.internal   Instance is terminating
26m         Normal    RemovingNode                  node/ip-10-2-117-202.ec2.internal   Node ip-10-2-117-202.ec2.internal event: Removing Node ip-10-2-117-202.ec2.internal from Controller
55m         Normal    ControllerVersionNotice       node/ip-10-2-117-233.ec2.internal   The node is managed by VPC resource controller version v1.7.9
55m         Normal    NodeTrunkInitiated            node/ip-10-2-117-233.ec2.internal   The node has trunk interface initialized successfully
55m         Normal    Starting                      node/ip-10-2-117-233.ec2.internal   Starting kubelet.
55m         Warning   InvalidDiskCapacity           node/ip-10-2-117-233.ec2.internal   invalid capacity 0 on image filesystem
55m         Normal    NodeHasSufficientMemory       node/ip-10-2-117-233.ec2.internal   Node ip-10-2-117-233.ec2.internal status is now: NodeHasSufficientMemory
55m         Normal    NodeHasNoDiskPressure         node/ip-10-2-117-233.ec2.internal   Node ip-10-2-117-233.ec2.internal status is now: NodeHasNoDiskPressure
55m         Normal    NodeHasSufficientPID          node/ip-10-2-117-233.ec2.internal   Node ip-10-2-117-233.ec2.internal status is now: NodeHasSufficientPID
55m         Normal    NodeAllocatableEnforced       node/ip-10-2-117-233.ec2.internal   Updated Node Allocatable limit across pods
55m         Normal    RegisteredNode                node/ip-10-2-117-233.ec2.internal   Node ip-10-2-117-233.ec2.internal event: Registered Node ip-10-2-117-233.ec2.internal in Controller
55m         Normal    Synced                        node/ip-10-2-117-233.ec2.internal   Node synced successfully
55m         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Node isn't initialized
55m         Normal    Starting                      node/ip-10-2-117-233.ec2.internal   
55m         Normal    NodeReady                     node/ip-10-2-117-233.ec2.internal   Node ip-10-2-117-233.ec2.internal status is now: NodeReady
55m         Normal    Ready                         node/ip-10-2-117-233.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
43m         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29310195-q2zxh)
28m         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29310210-cm9s9)
13m         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29310225-wmwld)
55m         Normal    Starting                      node/ip-10-2-117-253.ec2.internal   Starting kubelet.
55m         Warning   InvalidDiskCapacity           node/ip-10-2-117-253.ec2.internal   invalid capacity 0 on image filesystem
55m         Normal    NodeHasSufficientMemory       node/ip-10-2-117-253.ec2.internal   Node ip-10-2-117-253.ec2.internal status is now: NodeHasSufficientMemory
55m         Normal    NodeHasNoDiskPressure         node/ip-10-2-117-253.ec2.internal   Node ip-10-2-117-253.ec2.internal status is now: NodeHasNoDiskPressure
55m         Normal    NodeHasSufficientPID          node/ip-10-2-117-253.ec2.internal   Node ip-10-2-117-253.ec2.internal status is now: NodeHasSufficientPID
55m         Normal    NodeAllocatableEnforced       node/ip-10-2-117-253.ec2.internal   Updated Node Allocatable limit across pods
55m         Normal    Synced                        node/ip-10-2-117-253.ec2.internal   Node synced successfully
55m         Normal    RegisteredNode                node/ip-10-2-117-253.ec2.internal   Node ip-10-2-117-253.ec2.internal event: Registered Node ip-10-2-117-253.ec2.internal in Controller
55m         Normal    DisruptionBlocked             node/ip-10-2-117-253.ec2.internal   Node isn't initialized
55m         Normal    Starting                      node/ip-10-2-117-253.ec2.internal   
55m         Normal    ControllerVersionNotice       node/ip-10-2-117-253.ec2.internal   The node is managed by VPC resource controller version v1.7.9
55m         Normal    NodeReady                     node/ip-10-2-117-253.ec2.internal   Node ip-10-2-117-253.ec2.internal status is now: NodeReady
55m         Normal    Ready                         node/ip-10-2-117-253.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
55m         Normal    NodeTrunkInitiated            node/ip-10-2-117-253.ec2.internal   The node has trunk interface initialized successfully
27m         Normal    DisruptionBlocked             node/ip-10-2-117-253.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
29m         Normal    Unconsolidatable              node/ip-10-2-117-253.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
23m         Warning   SpotInterrupted               node/ip-10-2-117-253.ec2.internal   Spot interruption warning was triggered
23m         Warning   TerminatingOnInterruption     node/ip-10-2-117-253.ec2.internal   Interruption triggered termination for the Node
23m         Warning   FailedDraining                node/ip-10-2-117-253.ec2.internal   Failed to drain node, 2 pods are waiting to be evicted
23m         Normal    SpotRebalanceRecommendation   node/ip-10-2-117-253.ec2.internal   Spot rebalance recommendation was triggered
22m         Normal    DisruptionBlocked             node/ip-10-2-117-253.ec2.internal   Node is deleting or marked for deletion
22m         Warning   InstanceTerminating           node/ip-10-2-117-253.ec2.internal   Instance is terminating
21m         Normal    RemovingNode                  node/ip-10-2-117-253.ec2.internal   Node ip-10-2-117-253.ec2.internal event: Removing Node ip-10-2-117-253.ec2.internal from Controller
55m         Normal    Starting                      node/ip-10-2-117-41.ec2.internal    Starting kubelet.
55m         Warning   InvalidDiskCapacity           node/ip-10-2-117-41.ec2.internal    invalid capacity 0 on image filesystem
55m         Normal    NodeHasSufficientMemory       node/ip-10-2-117-41.ec2.internal    Node ip-10-2-117-41.ec2.internal status is now: NodeHasSufficientMemory
55m         Normal    NodeHasNoDiskPressure         node/ip-10-2-117-41.ec2.internal    Node ip-10-2-117-41.ec2.internal status is now: NodeHasNoDiskPressure
55m         Normal    NodeHasSufficientPID          node/ip-10-2-117-41.ec2.internal    Node ip-10-2-117-41.ec2.internal status is now: NodeHasSufficientPID
55m         Normal    NodeAllocatableEnforced       node/ip-10-2-117-41.ec2.internal    Updated Node Allocatable limit across pods
55m         Normal    Synced                        node/ip-10-2-117-41.ec2.internal    Node synced successfully
55m         Normal    DisruptionBlocked             node/ip-10-2-117-41.ec2.internal    Node isn't initialized
55m         Normal    RegisteredNode                node/ip-10-2-117-41.ec2.internal    Node ip-10-2-117-41.ec2.internal event: Registered Node ip-10-2-117-41.ec2.internal in Controller
55m         Normal    Starting                      node/ip-10-2-117-41.ec2.internal    
55m         Normal    ControllerVersionNotice       node/ip-10-2-117-41.ec2.internal    The node is managed by VPC resource controller version v1.7.9
55m         Normal    NodeReady                     node/ip-10-2-117-41.ec2.internal    Node ip-10-2-117-41.ec2.internal status is now: NodeReady
55m         Normal    Ready                         node/ip-10-2-117-41.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
55m         Normal    NodeTrunkInitiated            node/ip-10-2-117-41.ec2.internal    The node has trunk interface initialized successfully
32m         Normal    DisruptionBlocked             node/ip-10-2-117-41.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
31m         Normal    DisruptionTerminating         node/ip-10-2-117-41.ec2.internal    Disrupting Node: Underutilized/Delete
31m         Warning   FailedDraining                node/ip-10-2-117-41.ec2.internal    Failed to drain node, 2 pods are waiting to be evicted
30m         Normal    DisruptionBlocked             node/ip-10-2-117-41.ec2.internal    Node is deleting or marked for deletion
30m         Warning   InstanceTerminating           node/ip-10-2-117-41.ec2.internal    Instance is terminating
29m         Normal    NodeNotReady                  node/ip-10-2-117-41.ec2.internal    Node ip-10-2-117-41.ec2.internal status is now: NodeNotReady
29m         Normal    MemoryPressure                node/ip-10-2-117-41.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
29m         Normal    DiskPressure                  node/ip-10-2-117-41.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
29m         Normal    PIDPressure                   node/ip-10-2-117-41.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
29m         Normal    Ready                         node/ip-10-2-117-41.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
28m         Normal    DeletingNode                  node/ip-10-2-117-41.ec2.internal    Deleting node ip-10-2-117-41.ec2.internal because it does not exist in the cloud provider
28m         Normal    RemovingNode                  node/ip-10-2-117-41.ec2.internal    Node ip-10-2-117-41.ec2.internal event: Removing Node ip-10-2-117-41.ec2.internal from Controller
27m         Normal    Starting                      node/ip-10-2-117-81.ec2.internal    Starting kubelet.
27m         Warning   InvalidDiskCapacity           node/ip-10-2-117-81.ec2.internal    invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory       node/ip-10-2-117-81.ec2.internal    Node ip-10-2-117-81.ec2.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure         node/ip-10-2-117-81.ec2.internal    Node ip-10-2-117-81.ec2.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID          node/ip-10-2-117-81.ec2.internal    Node ip-10-2-117-81.ec2.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced       node/ip-10-2-117-81.ec2.internal    Updated Node Allocatable limit across pods
27m         Normal    Synced                        node/ip-10-2-117-81.ec2.internal    Node synced successfully
27m         Normal    DisruptionBlocked             node/ip-10-2-117-81.ec2.internal    Node isn't initialized
27m         Normal    RegisteredNode                node/ip-10-2-117-81.ec2.internal    Node ip-10-2-117-81.ec2.internal event: Registered Node ip-10-2-117-81.ec2.internal in Controller
27m         Normal    Starting                      node/ip-10-2-117-81.ec2.internal    
27m         Normal    ControllerVersionNotice       node/ip-10-2-117-81.ec2.internal    The node is managed by VPC resource controller version v1.7.9
27m         Normal    NodeReady                     node/ip-10-2-117-81.ec2.internal    Node ip-10-2-117-81.ec2.internal status is now: NodeReady
27m         Normal    Ready                         node/ip-10-2-117-81.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
27m         Normal    NodeTrunkInitiated            node/ip-10-2-117-81.ec2.internal    The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked             node/ip-10-2-117-81.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
11m         Normal    Unconsolidatable              node/ip-10-2-117-81.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
8m33s       Normal    SpotRebalanceRecommendation   node/ip-10-2-117-81.ec2.internal    Spot rebalance recommendation was triggered
```

Pods with issues
```
graph-analytics                                  graph-analytics-5c9c99b587-nxq56                                  0/1     CrashLoopBackOff   113 (4m47s ago)   9h
```

PodDisruptionBudgets
```
NAMESPACE                                        NAME                                                 MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                               cluster-monitoring-pdb                               N/A             1                 1                     297d
data-science-team                                data-science-team-pdb                                N/A             1                 1                     27d
data-sharing-api-management                      data-sharing-api-management-pdb                      N/A             1                 1                     187d
data-sharing-api-metabase                        data-sharing-api-metabase-pdb                        N/A             1                 1                     40d
data-worldchain                                  data-worldchain-pdb                                  N/A             1                 1                     187d
data-zendesk                                     data-zendesk-pdb                                     N/A             1                 1                     117d
datahub                                          datahub-elasticsearch-master-pdb                     N/A             1                 1                     110d
datahub                                          datahub-kafka-broker                                 N/A             1                 1                     110d
datahub                                          datahub-kafka-controller                             N/A             1                 1                     110d
dbeaver                                          dbeaver-pdb                                          N/A             1                 1                     168d
de-jupyterlab                                    de-jupyterlab-pdb                                    N/A             1                 0                     161d
interviews-metabase                              interviews-metabase-pdb                              N/A             1                 1                     48d
karpenter                                        karpenter                                            N/A             1                 1                     2y134d
kube-system                                      coredns                                              N/A             1                 1                     623d
kube-system                                      ebs-csi-controller                                   N/A             1                 1                     2y135d
kyverno                                          kyverno-admission-controller                         1               N/A               2                     606d
memgraph                                         memgraph-lab-pdb                                     50%             N/A               0                     237d
memgraph                                         memgraph-pdb                                         50%             N/A               0                     237d
snowflake-cache-service-consumer-backend-api     snowflake-cache-service-consumer-backend-api-pdb     N/A             1                 1                     148d
snowflake-cache-service-consumer-ds-interviews   snowflake-cache-service-consumer-ds-interviews-pdb   N/A             1                 1                     48d
snowflake-cache-service-hs-brands                snowflake-cache-service-hs-brands-pdb                N/A             1                 1                     119d
snowflake-cache-service-m-vision-th              snowflake-cache-service-m-vision-th-pdb              N/A             1                 1                     151d
snowflake-cache-service-nordstar-my              snowflake-cache-service-nordstar-my-pdb              N/A             1                 1                     186d
snowflake-cache-service-nordstar-ph              snowflake-cache-service-nordstar-ph-pdb              N/A             1                 1                     179d
worldchain-wallet-balances-consumer              worldchain-wallet-balances-consumer-pdb              N/A             1                 1                     10d
```

Pods with Karpenter.sh/Do-Not-Disrupt Annotation
```
ip-10-2-112-177.ec2.internal  dbt-core-runs-de-trino-consumer-raw-29308863-rr7fv             (dbt-core-runs-de-trino-consumer-raw)
ip-10-2-112-5.ec2.internal    snowflake-cache-service-consumer-backend-api-6648c5c785-wdth9  (snowflake-cache-service-consumer-backend-api)
ip-10-2-113-11.ec2.internal   dbt-core-runs-de-trino-consumer-raw-29308848-cmrr2             (dbt-core-runs-de-trino-consumer-raw)
ip-10-2-113-11.ec2.internal   dbt-core-runs-de-trino-consumer-raw-29308851-zbvfv             (dbt-core-runs-de-trino-consumer-raw)
ip-10-2-113-11.ec2.internal   dbt-core-runs-de-trino-consumer-raw-29308854-drdsb             (dbt-core-runs-de-trino-consumer-raw)
ip-10-2-113-11.ec2.internal   dbt-core-runs-de-trino-consumer-raw-29308860-9nnrz             (dbt-core-runs-de-trino-consumer-raw)
ip-10-2-113-121.ec2.internal  snowflake-cache-service-consumer-backend-api-6648c5c785-p4rdm  (snowflake-cache-service-consumer-backend-api)
ip-10-2-113-164.ec2.internal  snowflake-cache-service-consumer-backend-api-6648c5c785-p82pw  (snowflake-cache-service-consumer-backend-api)
ip-10-2-116-8.ec2.internal    fraud-hourly-alerts-29310120-f4w5b                             (fraud-hourly-alerts)
ip-10-2-116-8.ec2.internal    fraud-hourly-alerts-29310180-jjgfz                             (fraud-hourly-alerts)
ip-10-2-116-8.ec2.internal    fraud-risk-score-29309680-44s66                                (fraud-risk-score)
ip-10-2-116-8.ec2.internal    notion-export-29310040-rkvld                                   (data-docs)
ip-10-2-117-233.ec2.internal  orb-analytics-workers-29310225-wmwld                           (orb-analytics-workers)
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

Generated on: Tue Sep 23 09:59:22 CEST 2025
