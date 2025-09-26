# Cluster recon for tfh-analytics-prod-infra,us-east-1,analytics-prod-v2-us-east-1,tunnel-vpc-analytics-prod-us-east-1

TFH EKS login...
```console
2025/09/23 10:45:46 INFO Logging into AWS
2025/09/23 10:45:46 INFO Token found and valid
2025/09/23 10:45:48 INFO Switch WARP Virtual Network to name=tunnel-vpc-analytics-prod-us-east-1 id=2b7eb062-e012-46e3-bae6-ebf7bae85cf5
2025/09/23 10:45:50 INFO Active WARP Virtual Network id=2b7eb062-e012-46e3-bae6-ebf7bae85cf5
Updated context tfh-analytics-prod-v2-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "analytics-prod-v2-us-east-1",
        "arn": "arn:aws:eks:us-east-1:261207205690:cluster/analytics-prod-v2-us-east-1",
        "createdAt": "2023-05-11T13:29:23.039000+02:00",
        "version": "1.33",
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
        "platformVersion": "eks.14",
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
NAME                           STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-2-112-19.ec2.internal    Ready    <none>   17m     v1.33.4-eks-99d6cc0   10.2.112.19    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-2-112-20.ec2.internal    Ready    <none>   103m    v1.32.8-eks-99d6cc0   10.2.112.20    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-112-5.ec2.internal     Ready    <none>   10d     v1.32.8-eks-99d6cc0   10.2.112.5     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-112-6.ec2.internal     Ready    <none>   9m59s   v1.33.4-eks-99d6cc0   10.2.112.6     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-2-113-11.ec2.internal    Ready    <none>   10d     v1.32.8-eks-99d6cc0   10.2.113.11    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-113-121.ec2.internal   Ready    <none>   8h      v1.32.8-eks-99d6cc0   10.2.113.121   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-113-132.ec2.internal   Ready    <none>   23m     v1.33.4-eks-99d6cc0   10.2.113.132   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-analytics-prod-v2-us-east-1
ip-10-2-113-155.ec2.internal   Ready    <none>   13m     v1.33.4-eks-99d6cc0   10.2.113.155   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-2-113-164.ec2.internal   Ready    <none>   10d     v1.32.8-eks-99d6cc0   10.2.113.164   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-113-186.ec2.internal   Ready    <none>   14m     v1.33.4-eks-99d6cc0   10.2.113.186   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-113-22.ec2.internal    Ready    <none>   16m     v1.33.4-eks-99d6cc0   10.2.113.22    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-2-113-243.ec2.internal   Ready    <none>   12m     v1.33.4-eks-99d6cc0   10.2.113.243   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-114-59.ec2.internal    Ready    <none>   2m10s   v1.33.4-eks-99d6cc0   10.2.114.59    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-114-94.ec2.internal    Ready    <none>   10h     v1.32.8-eks-99d6cc0   10.2.114.94    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-116-18.ec2.internal    Ready    <none>   17m     v1.33.4-eks-99d6cc0   10.2.116.18    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-116-212.ec2.internal   Ready    <none>   103m    v1.32.8-eks-99d6cc0   10.2.116.212   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-116-222.ec2.internal   Ready    <none>   8m17s   v1.33.4-eks-99d6cc0   10.2.116.222   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-117-108.ec2.internal   Ready    <none>   4m7s    v1.33.4-eks-99d6cc0   10.2.117.108   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-117-135.ec2.internal   Ready    <none>   21m     v1.33.4-eks-99d6cc0   10.2.117.135   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-analytics-prod-v2-us-east-1
ip-10-2-117-233.ec2.internal   Ready    <none>   103m    v1.32.8-eks-99d6cc0   10.2.117.233   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-2-117-81.ec2.internal    Ready    <none>   74m     v1.32.8-eks-99d6cc0   10.2.117.81    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                           STATUS   ROLES    TAINTS
ip-10-2-112-19.ec2.internal    Ready    <none>   <none>
ip-10-2-112-20.ec2.internal    Ready    <none>   <none>
ip-10-2-112-5.ec2.internal     Ready    <none>   <none>
ip-10-2-112-6.ec2.internal     Ready    <none>   <none>
ip-10-2-113-11.ec2.internal    Ready    <none>   <none>
ip-10-2-113-121.ec2.internal   Ready    <none>   <none>
ip-10-2-113-132.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-2-113-155.ec2.internal   Ready    <none>   <none>
ip-10-2-113-164.ec2.internal   Ready    <none>   <none>
ip-10-2-113-186.ec2.internal   Ready    <none>   <none>
ip-10-2-113-22.ec2.internal    Ready    <none>   <none>
ip-10-2-113-243.ec2.internal   Ready    <none>   <none>
ip-10-2-114-59.ec2.internal    Ready    <none>   <none>
ip-10-2-114-94.ec2.internal    Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-2-116-18.ec2.internal    Ready    <none>   <none>
ip-10-2-116-212.ec2.internal   Ready    <none>   <none>
ip-10-2-116-222.ec2.internal   Ready    <none>   <none>
ip-10-2-117-108.ec2.internal   Ready    <none>   <none>
ip-10-2-117-135.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-2-117-233.ec2.internal   Ready    <none>   [map[effect:NoSchedule key:karpenter.sh/disrupted]]
ip-10-2-117-81.ec2.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                              MESSAGE
68m         Normal    Finalized                     node                                Finalized karpenter.sh/termination
12m         Normal    Finalized                     node                                Finalized karpenter.sh/termination
106s        Normal    Finalized                     node                                Finalized karpenter.sh/termination
21m         Normal    DisruptionBlocked             node/ip-10-2-112-177.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=dbt-core-runs-de-trino-consumer-raw/dbt-core-runs-de-trino-consumer-raw-29308863-rr7fv)
21m         Normal    RegisteredNode                node/ip-10-2-112-177.ec2.internal   Node ip-10-2-112-177.ec2.internal event: Registered Node ip-10-2-112-177.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-112-177.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-112-177.ec2.internal   The node has trunk interface initialized successfully
18m         Normal    DisruptionBlocked             node/ip-10-2-112-177.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=dbt-core-runs-de-trino-consumer-raw/dbt-core-runs-de-trino-consumer-raw-29308863-rr7fv)
16m         Normal    DisruptionBlocked             node/ip-10-2-112-177.ec2.internal   Node is nominated for a pending pod
15m         Normal    RegisteredNode                node/ip-10-2-112-177.ec2.internal   Node ip-10-2-112-177.ec2.internal event: Registered Node ip-10-2-112-177.ec2.internal in Controller
15m         Normal    DisruptionBlocked             node/ip-10-2-112-177.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=dbt-core-runs-de-trino-consumer-raw/dbt-core-runs-de-trino-consumer-raw-29308863-rr7fv)
13m         Normal    DisruptionBlocked             node/ip-10-2-112-177.ec2.internal   Node is nominated for a pending pod
8m45s       Normal    DisruptionBlocked             node/ip-10-2-112-177.ec2.internal   Node is deleting or marked for deletion
10m         Normal    DisruptionTerminating         node/ip-10-2-112-177.ec2.internal   Disrupting Node: Drifted/Delete
10m         Warning   FailedDraining                node/ip-10-2-112-177.ec2.internal   Failed to drain node, 8 pods are waiting to be evicted
10m         Warning   InstanceTerminating           node/ip-10-2-112-177.ec2.internal   Instance is terminating
9m9s        Normal    NodeNotReady                  node/ip-10-2-112-177.ec2.internal   Node ip-10-2-112-177.ec2.internal status is now: NodeNotReady
9m9s        Normal    MemoryPressure                node/ip-10-2-112-177.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m9s        Normal    DiskPressure                  node/ip-10-2-112-177.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m9s        Normal    PIDPressure                   node/ip-10-2-112-177.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m9s        Normal    Ready                         node/ip-10-2-112-177.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m34s       Normal    DeletingNode                  node/ip-10-2-112-177.ec2.internal   Deleting node ip-10-2-112-177.ec2.internal because it does not exist in the cloud provider
8m29s       Normal    RemovingNode                  node/ip-10-2-112-177.ec2.internal   Node ip-10-2-112-177.ec2.internal event: Removing Node ip-10-2-112-177.ec2.internal from Controller
23m         Normal    Starting                      node/ip-10-2-112-179.ec2.internal   Starting kubelet.
23m         Warning   InvalidDiskCapacity           node/ip-10-2-112-179.ec2.internal   invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory       node/ip-10-2-112-179.ec2.internal   Node ip-10-2-112-179.ec2.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure         node/ip-10-2-112-179.ec2.internal   Node ip-10-2-112-179.ec2.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID          node/ip-10-2-112-179.ec2.internal   Node ip-10-2-112-179.ec2.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced       node/ip-10-2-112-179.ec2.internal   Updated Node Allocatable limit across pods
23m         Normal    Synced                        node/ip-10-2-112-179.ec2.internal   Node synced successfully
23m         Normal    RegisteredNode                node/ip-10-2-112-179.ec2.internal   Node ip-10-2-112-179.ec2.internal event: Registered Node ip-10-2-112-179.ec2.internal in Controller
23m         Normal    Starting                      node/ip-10-2-112-179.ec2.internal   
22m         Normal    ControllerVersionNotice       node/ip-10-2-112-179.ec2.internal   The node is managed by VPC resource controller version v1.7.9
21m         Warning   Unsupported                   node/ip-10-2-112-179.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
22m         Normal    NodeReady                     node/ip-10-2-112-179.ec2.internal   Node ip-10-2-112-179.ec2.internal status is now: NodeReady
22m         Normal    Ready                         node/ip-10-2-112-179.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    RegisteredNode                node/ip-10-2-112-179.ec2.internal   Node ip-10-2-112-179.ec2.internal event: Registered Node ip-10-2-112-179.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-112-179.ec2.internal   The node is managed by VPC resource controller version v1.7.11
9m24s       Warning   Unsupported                   node/ip-10-2-112-179.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
15m         Normal    RegisteredNode                node/ip-10-2-112-179.ec2.internal   Node ip-10-2-112-179.ec2.internal event: Registered Node ip-10-2-112-179.ec2.internal in Controller
11m         Normal    NodeNotSchedulable            node/ip-10-2-112-179.ec2.internal   Node ip-10-2-112-179.ec2.internal status is now: NodeNotSchedulable
9m24s       Normal    NodeNotReady                  node/ip-10-2-112-179.ec2.internal   Node ip-10-2-112-179.ec2.internal status is now: NodeNotReady
9m24s       Normal    MemoryPressure                node/ip-10-2-112-179.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m24s       Normal    DiskPressure                  node/ip-10-2-112-179.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m24s       Normal    PIDPressure                   node/ip-10-2-112-179.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m24s       Normal    Ready                         node/ip-10-2-112-179.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m20s       Normal    DeletingNode                  node/ip-10-2-112-179.ec2.internal   Deleting node ip-10-2-112-179.ec2.internal because it does not exist in the cloud provider
9m19s       Normal    RemovingNode                  node/ip-10-2-112-179.ec2.internal   Node ip-10-2-112-179.ec2.internal event: Removing Node ip-10-2-112-179.ec2.internal from Controller
17m         Normal    Starting                      node/ip-10-2-112-19.ec2.internal    Starting kubelet.
17m         Warning   InvalidDiskCapacity           node/ip-10-2-112-19.ec2.internal    invalid capacity 0 on image filesystem
17m         Normal    NodeHasSufficientMemory       node/ip-10-2-112-19.ec2.internal    Node ip-10-2-112-19.ec2.internal status is now: NodeHasSufficientMemory
17m         Normal    NodeHasNoDiskPressure         node/ip-10-2-112-19.ec2.internal    Node ip-10-2-112-19.ec2.internal status is now: NodeHasNoDiskPressure
17m         Normal    NodeHasSufficientPID          node/ip-10-2-112-19.ec2.internal    Node ip-10-2-112-19.ec2.internal status is now: NodeHasSufficientPID
17m         Normal    NodeAllocatableEnforced       node/ip-10-2-112-19.ec2.internal    Updated Node Allocatable limit across pods
17m         Normal    Synced                        node/ip-10-2-112-19.ec2.internal    Node synced successfully
17m         Normal    RegisteredNode                node/ip-10-2-112-19.ec2.internal    Node ip-10-2-112-19.ec2.internal event: Registered Node ip-10-2-112-19.ec2.internal in Controller
17m         Normal    DisruptionBlocked             node/ip-10-2-112-19.ec2.internal    Node isn't initialized
17m         Normal    Starting                      node/ip-10-2-112-19.ec2.internal    
17m         Normal    ControllerVersionNotice       node/ip-10-2-112-19.ec2.internal    The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeReady                     node/ip-10-2-112-19.ec2.internal    Node ip-10-2-112-19.ec2.internal status is now: NodeReady
17m         Normal    Ready                         node/ip-10-2-112-19.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
16m         Normal    NodeTrunkInitiated            node/ip-10-2-112-19.ec2.internal    The node has trunk interface initialized successfully
15m         Normal    RegisteredNode                node/ip-10-2-112-19.ec2.internal    Node ip-10-2-112-19.ec2.internal event: Registered Node ip-10-2-112-19.ec2.internal in Controller
15s         Normal    DisruptionBlocked             node/ip-10-2-112-19.ec2.internal    Node is nominated for a pending pod
70m         Normal    DisruptionBlocked             node/ip-10-2-112-20.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
30m         Normal    Unconsolidatable              node/ip-10-2-112-20.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
21m         Normal    RegisteredNode                node/ip-10-2-112-20.ec2.internal    Node ip-10-2-112-20.ec2.internal event: Registered Node ip-10-2-112-20.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-112-20.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-112-20.ec2.internal    The node has trunk interface initialized successfully
18m         Normal    Unconsolidatable              node/ip-10-2-112-20.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
17m         Normal    DisruptionBlocked             node/ip-10-2-112-20.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
15m         Normal    RegisteredNode                node/ip-10-2-112-20.ec2.internal    Node ip-10-2-112-20.ec2.internal event: Registered Node ip-10-2-112-20.ec2.internal in Controller
13m         Normal    DisruptionBlocked             node/ip-10-2-112-20.ec2.internal    Node is nominated for a pending pod
6m37s       Normal    DisruptionBlocked             node/ip-10-2-112-20.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=datahub/datahub-elasticsearch-master-pdb)
8m54s       Warning   OOMKilling                    node/ip-10-2-112-20.ec2.internal    Memory cgroup out of memory: Killed process 157430 (reports-control) total-vm:5597912kB, anon-rss:128776kB, file-rss:69468kB, shmem-rss:0kB, UID:65532 pgtables:544kB oom_score_adj:999
8m54s       Warning   OOMKilling                    node/ip-10-2-112-20.ec2.internal    Memory cgroup out of memory: Killed process 157479 (reports-control) total-vm:5597912kB, anon-rss:129404kB, file-rss:69980kB, shmem-rss:0kB, UID:65532 pgtables:544kB oom_score_adj:999
8m46s       Warning   OOMKilling                    node/ip-10-2-112-20.ec2.internal    Memory cgroup out of memory: Killed process 159606 (reports-control) total-vm:5596760kB, anon-rss:128808kB, file-rss:68512kB, shmem-rss:0kB, UID:65532 pgtables:548kB oom_score_adj:999
8m46s       Warning   OOMKilling                    node/ip-10-2-112-20.ec2.internal    Memory cgroup out of memory: Killed process 159630 (reports-control) total-vm:5596760kB, anon-rss:129556kB, file-rss:69408kB, shmem-rss:0kB, UID:65532 pgtables:548kB oom_score_adj:999
8m45s       Normal    DisruptionBlocked             node/ip-10-2-112-20.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
81s         Normal    DisruptionBlocked             node/ip-10-2-112-20.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
29m         Normal    Unconsolidatable              node/ip-10-2-112-213.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
21m         Normal    RegisteredNode                node/ip-10-2-112-213.ec2.internal   Node ip-10-2-112-213.ec2.internal event: Registered Node ip-10-2-112-213.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-112-213.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-112-213.ec2.internal   The node has trunk interface initialized successfully
18m         Normal    Unconsolidatable              node/ip-10-2-112-213.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
15m         Normal    RegisteredNode                node/ip-10-2-112-213.ec2.internal   Node ip-10-2-112-213.ec2.internal event: Registered Node ip-10-2-112-213.ec2.internal in Controller
8m20s       Normal    DisruptionBlocked             node/ip-10-2-112-213.ec2.internal   Node is deleting or marked for deletion
9m34s       Normal    DisruptionTerminating         node/ip-10-2-112-213.ec2.internal   Disrupting Node: Drifted/Replace
9m34s       Warning   FailedDraining                node/ip-10-2-112-213.ec2.internal   Failed to drain node, 13 pods are waiting to be evicted
8m57s       Warning   InstanceTerminating           node/ip-10-2-112-213.ec2.internal   Instance is terminating
8m9s        Normal    NodeNotReady                  node/ip-10-2-112-213.ec2.internal   Node ip-10-2-112-213.ec2.internal status is now: NodeNotReady
8m9s        Normal    MemoryPressure                node/ip-10-2-112-213.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m9s        Normal    DiskPressure                  node/ip-10-2-112-213.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m9s        Normal    PIDPressure                   node/ip-10-2-112-213.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
8m9s        Normal    Ready                         node/ip-10-2-112-213.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m58s       Normal    RemovingNode                  node/ip-10-2-112-213.ec2.internal   Node ip-10-2-112-213.ec2.internal event: Removing Node ip-10-2-112-213.ec2.internal from Controller
21m         Normal    DisruptionBlocked             node/ip-10-2-112-5.ec2.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-wdth9)
21m         Normal    RegisteredNode                node/ip-10-2-112-5.ec2.internal     Node ip-10-2-112-5.ec2.internal event: Registered Node ip-10-2-112-5.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-112-5.ec2.internal     The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-112-5.ec2.internal     The node has trunk interface initialized successfully
16m         Normal    DisruptionBlocked             node/ip-10-2-112-5.ec2.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-wdth9)
15m         Normal    RegisteredNode                node/ip-10-2-112-5.ec2.internal     Node ip-10-2-112-5.ec2.internal event: Registered Node ip-10-2-112-5.ec2.internal in Controller
13m         Normal    DisruptionBlocked             node/ip-10-2-112-5.ec2.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-wdth9)
30s         Normal    DisruptionBlocked             node/ip-10-2-112-5.ec2.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-wdth9)
10m         Normal    Starting                      node/ip-10-2-112-6.ec2.internal     Starting kubelet.
10m         Warning   InvalidDiskCapacity           node/ip-10-2-112-6.ec2.internal     invalid capacity 0 on image filesystem
10m         Normal    NodeHasSufficientMemory       node/ip-10-2-112-6.ec2.internal     Node ip-10-2-112-6.ec2.internal status is now: NodeHasSufficientMemory
10m         Normal    NodeHasNoDiskPressure         node/ip-10-2-112-6.ec2.internal     Node ip-10-2-112-6.ec2.internal status is now: NodeHasNoDiskPressure
10m         Normal    NodeHasSufficientPID          node/ip-10-2-112-6.ec2.internal     Node ip-10-2-112-6.ec2.internal status is now: NodeHasSufficientPID
10m         Normal    NodeAllocatableEnforced       node/ip-10-2-112-6.ec2.internal     Updated Node Allocatable limit across pods
10m         Normal    Synced                        node/ip-10-2-112-6.ec2.internal     Node synced successfully
9m59s       Normal    RegisteredNode                node/ip-10-2-112-6.ec2.internal     Node ip-10-2-112-6.ec2.internal event: Registered Node ip-10-2-112-6.ec2.internal in Controller
9m57s       Normal    DisruptionBlocked             node/ip-10-2-112-6.ec2.internal     Node isn't initialized
9m50s       Normal    Starting                      node/ip-10-2-112-6.ec2.internal     
9m38s       Normal    ControllerVersionNotice       node/ip-10-2-112-6.ec2.internal     The node is managed by VPC resource controller version v1.7.11
9m37s       Normal    NodeReady                     node/ip-10-2-112-6.ec2.internal     Node ip-10-2-112-6.ec2.internal status is now: NodeReady
9m37s       Normal    Ready                         node/ip-10-2-112-6.ec2.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
9m35s       Normal    NodeTrunkInitiated            node/ip-10-2-112-6.ec2.internal     The node has trunk interface initialized successfully
25m         Normal    Unconsolidatable              node/ip-10-2-112-99.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
21m         Normal    RegisteredNode                node/ip-10-2-112-99.ec2.internal    Node ip-10-2-112-99.ec2.internal event: Registered Node ip-10-2-112-99.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-112-99.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-112-99.ec2.internal    The node has trunk interface initialized successfully
18m         Normal    Unconsolidatable              node/ip-10-2-112-99.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
15m         Normal    RegisteredNode                node/ip-10-2-112-99.ec2.internal    Node ip-10-2-112-99.ec2.internal event: Registered Node ip-10-2-112-99.ec2.internal in Controller
15m         Normal    DisruptionBlocked             node/ip-10-2-112-99.ec2.internal    Node is deleting or marked for deletion
15m         Normal    DisruptionTerminating         node/ip-10-2-112-99.ec2.internal    Disrupting Node: Drifted/Delete
15m         Warning   FailedDraining                node/ip-10-2-112-99.ec2.internal    Failed to drain node, 4 pods are waiting to be evicted
14m         Warning   InstanceTerminating           node/ip-10-2-112-99.ec2.internal    Instance is terminating
13m         Normal    NodeNotReady                  node/ip-10-2-112-99.ec2.internal    Node ip-10-2-112-99.ec2.internal status is now: NodeNotReady
13m         Normal    MemoryPressure                node/ip-10-2-112-99.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DiskPressure                  node/ip-10-2-112-99.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    PIDPressure                   node/ip-10-2-112-99.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    Ready                         node/ip-10-2-112-99.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DeletingNode                  node/ip-10-2-112-99.ec2.internal    Deleting node ip-10-2-112-99.ec2.internal because it does not exist in the cloud provider
13m         Normal    RemovingNode                  node/ip-10-2-112-99.ec2.internal    Node ip-10-2-112-99.ec2.internal event: Removing Node ip-10-2-112-99.ec2.internal from Controller
25m         Normal    Unconsolidatable              node/ip-10-2-113-0.ec2.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
21m         Normal    RegisteredNode                node/ip-10-2-113-0.ec2.internal     Node ip-10-2-113-0.ec2.internal event: Registered Node ip-10-2-113-0.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-113-0.ec2.internal     The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-113-0.ec2.internal     The node has trunk interface initialized successfully
15m         Normal    DisruptionBlocked             node/ip-10-2-113-0.ec2.internal     Node is deleting or marked for deletion
16m         Normal    DisruptionTerminating         node/ip-10-2-113-0.ec2.internal     Disrupting Node: Drifted/Replace
16m         Warning   FailedDraining                node/ip-10-2-113-0.ec2.internal     Failed to drain node, 3 pods are waiting to be evicted
16m         Warning   InstanceTerminating           node/ip-10-2-113-0.ec2.internal     Instance is terminating
15m         Normal    RegisteredNode                node/ip-10-2-113-0.ec2.internal     Node ip-10-2-113-0.ec2.internal event: Registered Node ip-10-2-113-0.ec2.internal in Controller
15m         Normal    RemovingNode                  node/ip-10-2-113-0.ec2.internal     Node ip-10-2-113-0.ec2.internal event: Removing Node ip-10-2-113-0.ec2.internal from Controller
29m         Normal    Unconsolidatable              node/ip-10-2-113-109.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
21m         Normal    RegisteredNode                node/ip-10-2-113-109.ec2.internal   Node ip-10-2-113-109.ec2.internal event: Registered Node ip-10-2-113-109.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-113-109.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-113-109.ec2.internal   The node has trunk interface initialized successfully
18m         Normal    Unconsolidatable              node/ip-10-2-113-109.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
16m         Normal    DisruptionBlocked             node/ip-10-2-113-109.ec2.internal   Node is deleting or marked for deletion
15m         Normal    RegisteredNode                node/ip-10-2-113-109.ec2.internal   Node ip-10-2-113-109.ec2.internal event: Registered Node ip-10-2-113-109.ec2.internal in Controller
12m         Normal    DisruptionBlocked             node/ip-10-2-113-109.ec2.internal   Node is deleting or marked for deletion
13m         Normal    DisruptionTerminating         node/ip-10-2-113-109.ec2.internal   Disrupting Node: Drifted/Replace
13m         Warning   FailedDraining                node/ip-10-2-113-109.ec2.internal   Failed to drain node, 10 pods are waiting to be evicted
11m         Warning   FailedDraining                node/ip-10-2-113-109.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
10m         Warning   FailedDraining                node/ip-10-2-113-109.ec2.internal   Failed to drain node, 2 pods are waiting to be evicted
10m         Normal    DisruptionBlocked             node/ip-10-2-113-109.ec2.internal   Node is deleting or marked for deletion
10m         Warning   InstanceTerminating           node/ip-10-2-113-109.ec2.internal   Instance is terminating
9m44s       Normal    RemovingNode                  node/ip-10-2-113-109.ec2.internal   Node ip-10-2-113-109.ec2.internal event: Removing Node ip-10-2-113-109.ec2.internal from Controller
21m         Normal    DisruptionBlocked             node/ip-10-2-113-11.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=memgraph/memgraph-pdb)
21m         Normal    RegisteredNode                node/ip-10-2-113-11.ec2.internal    Node ip-10-2-113-11.ec2.internal event: Registered Node ip-10-2-113-11.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-113-11.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-113-11.ec2.internal    The node has trunk interface initialized successfully
16m         Normal    DisruptionBlocked             node/ip-10-2-113-11.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=memgraph/memgraph-lab-pdb)
15m         Normal    RegisteredNode                node/ip-10-2-113-11.ec2.internal    Node ip-10-2-113-11.ec2.internal event: Registered Node ip-10-2-113-11.ec2.internal in Controller
15m         Normal    DisruptionBlocked             node/ip-10-2-113-11.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=memgraph/memgraph-pdb)
13m         Normal    DisruptionBlocked             node/ip-10-2-113-11.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=memgraph/memgraph-lab-pdb)
30s         Normal    DisruptionBlocked             node/ip-10-2-113-11.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=memgraph/memgraph-pdb)
21m         Normal    DisruptionBlocked             node/ip-10-2-113-121.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-p4rdm)
21m         Normal    RegisteredNode                node/ip-10-2-113-121.ec2.internal   Node ip-10-2-113-121.ec2.internal event: Registered Node ip-10-2-113-121.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-113-121.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-113-121.ec2.internal   The node has trunk interface initialized successfully
16m         Normal    DisruptionBlocked             node/ip-10-2-113-121.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-p4rdm)
15m         Normal    RegisteredNode                node/ip-10-2-113-121.ec2.internal   Node ip-10-2-113-121.ec2.internal event: Registered Node ip-10-2-113-121.ec2.internal in Controller
13m         Normal    DisruptionBlocked             node/ip-10-2-113-121.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-p4rdm)
30s         Normal    DisruptionBlocked             node/ip-10-2-113-121.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-p4rdm)
22m         Normal    ControllerVersionNotice       node/ip-10-2-113-132.ec2.internal   The node is managed by VPC resource controller version v1.7.9
23m         Normal    Starting                      node/ip-10-2-113-132.ec2.internal   Starting kubelet.
23m         Warning   InvalidDiskCapacity           node/ip-10-2-113-132.ec2.internal   invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory       node/ip-10-2-113-132.ec2.internal   Node ip-10-2-113-132.ec2.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure         node/ip-10-2-113-132.ec2.internal   Node ip-10-2-113-132.ec2.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID          node/ip-10-2-113-132.ec2.internal   Node ip-10-2-113-132.ec2.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced       node/ip-10-2-113-132.ec2.internal   Updated Node Allocatable limit across pods
23m         Normal    Synced                        node/ip-10-2-113-132.ec2.internal   Node synced successfully
23m         Normal    RegisteredNode                node/ip-10-2-113-132.ec2.internal   Node ip-10-2-113-132.ec2.internal event: Registered Node ip-10-2-113-132.ec2.internal in Controller
23m         Normal    Starting                      node/ip-10-2-113-132.ec2.internal   
21m         Warning   Unsupported                   node/ip-10-2-113-132.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
22m         Normal    NodeReady                     node/ip-10-2-113-132.ec2.internal   Node ip-10-2-113-132.ec2.internal status is now: NodeReady
22m         Normal    Ready                         node/ip-10-2-113-132.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    RegisteredNode                node/ip-10-2-113-132.ec2.internal   Node ip-10-2-113-132.ec2.internal event: Registered Node ip-10-2-113-132.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-113-132.ec2.internal   The node is managed by VPC resource controller version v1.7.11
35s         Warning   Unsupported                   node/ip-10-2-113-132.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
15m         Normal    RegisteredNode                node/ip-10-2-113-132.ec2.internal   Node ip-10-2-113-132.ec2.internal event: Registered Node ip-10-2-113-132.ec2.internal in Controller
14m         Normal    Starting                      node/ip-10-2-113-155.ec2.internal   Starting kubelet.
14m         Warning   InvalidDiskCapacity           node/ip-10-2-113-155.ec2.internal   invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory       node/ip-10-2-113-155.ec2.internal   Node ip-10-2-113-155.ec2.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure         node/ip-10-2-113-155.ec2.internal   Node ip-10-2-113-155.ec2.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID          node/ip-10-2-113-155.ec2.internal   Node ip-10-2-113-155.ec2.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced       node/ip-10-2-113-155.ec2.internal   Updated Node Allocatable limit across pods
13m         Normal    RegisteredNode                node/ip-10-2-113-155.ec2.internal   Node ip-10-2-113-155.ec2.internal event: Registered Node ip-10-2-113-155.ec2.internal in Controller
13m         Normal    Synced                        node/ip-10-2-113-155.ec2.internal   Node synced successfully
13m         Normal    Starting                      node/ip-10-2-113-155.ec2.internal   
13m         Normal    DisruptionBlocked             node/ip-10-2-113-155.ec2.internal   Node isn't initialized
13m         Normal    ControllerVersionNotice       node/ip-10-2-113-155.ec2.internal   The node is managed by VPC resource controller version v1.7.11
13m         Normal    NodeReady                     node/ip-10-2-113-155.ec2.internal   Node ip-10-2-113-155.ec2.internal status is now: NodeReady
13m         Normal    Ready                         node/ip-10-2-113-155.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
13m         Normal    NodeTrunkInitiated            node/ip-10-2-113-155.ec2.internal   The node has trunk interface initialized successfully
70m         Normal    DisruptionBlocked             node/ip-10-2-113-160.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
30m         Normal    Unconsolidatable              node/ip-10-2-113-160.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
21m         Normal    RegisteredNode                node/ip-10-2-113-160.ec2.internal   Node ip-10-2-113-160.ec2.internal event: Registered Node ip-10-2-113-160.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-113-160.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-113-160.ec2.internal   The node has trunk interface initialized successfully
18m         Normal    Unconsolidatable              node/ip-10-2-113-160.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
15m         Normal    DisruptionBlocked             node/ip-10-2-113-160.ec2.internal   Node is deleting or marked for deletion
17m         Normal    DisruptionTerminating         node/ip-10-2-113-160.ec2.internal   Disrupting Node: Drifted/Replace
17m         Warning   FailedDraining                node/ip-10-2-113-160.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
15m         Normal    RegisteredNode                node/ip-10-2-113-160.ec2.internal   Node ip-10-2-113-160.ec2.internal event: Registered Node ip-10-2-113-160.ec2.internal in Controller
15m         Warning   InstanceTerminating           node/ip-10-2-113-160.ec2.internal   Instance is terminating
15m         Normal    DisruptionBlocked             node/ip-10-2-113-160.ec2.internal   Node is deleting or marked for deletion
14m         Normal    NodeNotReady                  node/ip-10-2-113-160.ec2.internal   Node ip-10-2-113-160.ec2.internal status is now: NodeNotReady
14m         Normal    MemoryPressure                node/ip-10-2-113-160.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure                  node/ip-10-2-113-160.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure                   node/ip-10-2-113-160.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                         node/ip-10-2-113-160.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Warning   InstanceTerminating           node/ip-10-2-113-160.ec2.internal   Instance is terminating
14m         Normal    RemovingNode                  node/ip-10-2-113-160.ec2.internal   Node ip-10-2-113-160.ec2.internal event: Removing Node ip-10-2-113-160.ec2.internal from Controller
14m         Normal    DeletingNode                  node/ip-10-2-113-160.ec2.internal   Deleting node ip-10-2-113-160.ec2.internal because it does not exist in the cloud provider
14m         Warning   DeletingNodeFailed            node/ip-10-2-113-160.ec2.internal   Failed deleting node ip-10-2-113-160.ec2.internal: nodes "ip-10-2-113-160.ec2.internal" not found
21m         Normal    DisruptionBlocked             node/ip-10-2-113-164.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-p82pw)
21m         Normal    RegisteredNode                node/ip-10-2-113-164.ec2.internal   Node ip-10-2-113-164.ec2.internal event: Registered Node ip-10-2-113-164.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-113-164.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-113-164.ec2.internal   The node has trunk interface initialized successfully
16m         Normal    DisruptionBlocked             node/ip-10-2-113-164.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-p82pw)
15m         Normal    RegisteredNode                node/ip-10-2-113-164.ec2.internal   Node ip-10-2-113-164.ec2.internal event: Registered Node ip-10-2-113-164.ec2.internal in Controller
13m         Normal    DisruptionBlocked             node/ip-10-2-113-164.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-p82pw)
30s         Normal    DisruptionBlocked             node/ip-10-2-113-164.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=snowflake-cache-service-consumer-backend-api/snowflake-cache-service-consumer-backend-api-6648c5c785-p82pw)
14m         Normal    Starting                      node/ip-10-2-113-186.ec2.internal   Starting kubelet.
14m         Warning   InvalidDiskCapacity           node/ip-10-2-113-186.ec2.internal   invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory       node/ip-10-2-113-186.ec2.internal   Node ip-10-2-113-186.ec2.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure         node/ip-10-2-113-186.ec2.internal   Node ip-10-2-113-186.ec2.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID          node/ip-10-2-113-186.ec2.internal   Node ip-10-2-113-186.ec2.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced       node/ip-10-2-113-186.ec2.internal   Updated Node Allocatable limit across pods
14m         Normal    RegisteredNode                node/ip-10-2-113-186.ec2.internal   Node ip-10-2-113-186.ec2.internal event: Registered Node ip-10-2-113-186.ec2.internal in Controller
14m         Normal    DisruptionBlocked             node/ip-10-2-113-186.ec2.internal   Node isn't initialized
14m         Normal    Starting                      node/ip-10-2-113-186.ec2.internal   
14m         Normal    Synced                        node/ip-10-2-113-186.ec2.internal   Node synced successfully
14m         Normal    ControllerVersionNotice       node/ip-10-2-113-186.ec2.internal   The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeReady                     node/ip-10-2-113-186.ec2.internal   Node ip-10-2-113-186.ec2.internal status is now: NodeReady
14m         Normal    Ready                         node/ip-10-2-113-186.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeTrunkInitiated            node/ip-10-2-113-186.ec2.internal   The node has trunk interface initialized successfully
12m         Normal    DisruptionBlocked             node/ip-10-2-113-186.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=data-science-team/data-science-team-pdb)
10m         Normal    DisruptionBlocked             node/ip-10-2-113-186.ec2.internal   Node is nominated for a pending pod
79m         Normal    DisruptionBlocked             node/ip-10-2-113-198.ec2.internal   Node is deleting or marked for deletion
79m         Normal    DisruptionTerminating         node/ip-10-2-113-198.ec2.internal   Disrupting Node: Underutilized/Delete
79m         Warning   FailedDraining                node/ip-10-2-113-198.ec2.internal   Failed to drain node, 2 pods are waiting to be evicted
78m         Warning   InstanceTerminating           node/ip-10-2-113-198.ec2.internal   Instance is terminating
77m         Normal    RemovingNode                  node/ip-10-2-113-198.ec2.internal   Node ip-10-2-113-198.ec2.internal event: Removing Node ip-10-2-113-198.ec2.internal from Controller
29m         Normal    Unconsolidatable              node/ip-10-2-113-208.ec2.internal   Can't replace with a cheaper node
21m         Normal    RegisteredNode                node/ip-10-2-113-208.ec2.internal   Node ip-10-2-113-208.ec2.internal event: Registered Node ip-10-2-113-208.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-113-208.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-113-208.ec2.internal   The node has trunk interface initialized successfully
18m         Normal    Unconsolidatable              node/ip-10-2-113-208.ec2.internal   Can't replace with a cheaper node
15m         Normal    RegisteredNode                node/ip-10-2-113-208.ec2.internal   Node ip-10-2-113-208.ec2.internal event: Registered Node ip-10-2-113-208.ec2.internal in Controller
13m         Normal    DisruptionBlocked             node/ip-10-2-113-208.ec2.internal   Node is deleting or marked for deletion
14m         Normal    DisruptionTerminating         node/ip-10-2-113-208.ec2.internal   Disrupting Node: Drifted/Replace
14m         Warning   FailedDraining                node/ip-10-2-113-208.ec2.internal   Failed to drain node, 6 pods are waiting to be evicted
13m         Warning   InstanceTerminating           node/ip-10-2-113-208.ec2.internal   Instance is terminating
12m         Normal    NodeNotReady                  node/ip-10-2-113-208.ec2.internal   Node ip-10-2-113-208.ec2.internal status is now: NodeNotReady
12m         Normal    MemoryPressure                node/ip-10-2-113-208.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DiskPressure                  node/ip-10-2-113-208.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    PIDPressure                   node/ip-10-2-113-208.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    Ready                         node/ip-10-2-113-208.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    RemovingNode                  node/ip-10-2-113-208.ec2.internal   Node ip-10-2-113-208.ec2.internal event: Removing Node ip-10-2-113-208.ec2.internal from Controller
16m         Normal    Starting                      node/ip-10-2-113-22.ec2.internal    Starting kubelet.
16m         Warning   InvalidDiskCapacity           node/ip-10-2-113-22.ec2.internal    invalid capacity 0 on image filesystem
16m         Normal    NodeHasSufficientMemory       node/ip-10-2-113-22.ec2.internal    Node ip-10-2-113-22.ec2.internal status is now: NodeHasSufficientMemory
16m         Normal    NodeHasNoDiskPressure         node/ip-10-2-113-22.ec2.internal    Node ip-10-2-113-22.ec2.internal status is now: NodeHasNoDiskPressure
16m         Normal    NodeHasSufficientPID          node/ip-10-2-113-22.ec2.internal    Node ip-10-2-113-22.ec2.internal status is now: NodeHasSufficientPID
16m         Normal    NodeAllocatableEnforced       node/ip-10-2-113-22.ec2.internal    Updated Node Allocatable limit across pods
15m         Normal    DisruptionBlocked             node/ip-10-2-113-22.ec2.internal    Node isn't initialized
15m         Normal    RegisteredNode                node/ip-10-2-113-22.ec2.internal    Node ip-10-2-113-22.ec2.internal event: Registered Node ip-10-2-113-22.ec2.internal in Controller
15m         Normal    Synced                        node/ip-10-2-113-22.ec2.internal    Node synced successfully
15m         Normal    Starting                      node/ip-10-2-113-22.ec2.internal    
15m         Normal    ControllerVersionNotice       node/ip-10-2-113-22.ec2.internal    The node is managed by VPC resource controller version v1.7.11
15m         Normal    NodeReady                     node/ip-10-2-113-22.ec2.internal    Node ip-10-2-113-22.ec2.internal status is now: NodeReady
15m         Normal    Ready                         node/ip-10-2-113-22.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    NodeTrunkInitiated            node/ip-10-2-113-22.ec2.internal    The node has trunk interface initialized successfully
15m         Normal    DisruptionBlocked             node/ip-10-2-113-22.ec2.internal    Node is nominated for a pending pod
12m         Normal    Starting                      node/ip-10-2-113-243.ec2.internal   Starting kubelet.
12m         Warning   InvalidDiskCapacity           node/ip-10-2-113-243.ec2.internal   invalid capacity 0 on image filesystem
12m         Normal    NodeHasSufficientMemory       node/ip-10-2-113-243.ec2.internal   Node ip-10-2-113-243.ec2.internal status is now: NodeHasSufficientMemory
12m         Normal    NodeHasNoDiskPressure         node/ip-10-2-113-243.ec2.internal   Node ip-10-2-113-243.ec2.internal status is now: NodeHasNoDiskPressure
12m         Normal    NodeHasSufficientPID          node/ip-10-2-113-243.ec2.internal   Node ip-10-2-113-243.ec2.internal status is now: NodeHasSufficientPID
12m         Normal    NodeAllocatableEnforced       node/ip-10-2-113-243.ec2.internal   Updated Node Allocatable limit across pods
12m         Normal    Synced                        node/ip-10-2-113-243.ec2.internal   Node synced successfully
12m         Normal    RegisteredNode                node/ip-10-2-113-243.ec2.internal   Node ip-10-2-113-243.ec2.internal event: Registered Node ip-10-2-113-243.ec2.internal in Controller
12m         Normal    Starting                      node/ip-10-2-113-243.ec2.internal   
12m         Normal    DisruptionBlocked             node/ip-10-2-113-243.ec2.internal   Node isn't initialized
12m         Normal    ControllerVersionNotice       node/ip-10-2-113-243.ec2.internal   The node is managed by VPC resource controller version v1.7.11
12m         Normal    NodeReady                     node/ip-10-2-113-243.ec2.internal   Node ip-10-2-113-243.ec2.internal status is now: NodeReady
12m         Normal    Ready                         node/ip-10-2-113-243.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
12m         Normal    NodeTrunkInitiated            node/ip-10-2-113-243.ec2.internal   The node has trunk interface initialized successfully
10m         Normal    DisruptionBlocked             node/ip-10-2-113-243.ec2.internal   Node is nominated for a pending pod
81s         Normal    DisruptionBlocked             node/ip-10-2-113-243.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
15m         Normal    Starting                      node/ip-10-2-113-29.ec2.internal    Starting kubelet.
15m         Warning   InvalidDiskCapacity           node/ip-10-2-113-29.ec2.internal    invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory       node/ip-10-2-113-29.ec2.internal    Node ip-10-2-113-29.ec2.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure         node/ip-10-2-113-29.ec2.internal    Node ip-10-2-113-29.ec2.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID          node/ip-10-2-113-29.ec2.internal    Node ip-10-2-113-29.ec2.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced       node/ip-10-2-113-29.ec2.internal    Updated Node Allocatable limit across pods
15m         Normal    RegisteredNode                node/ip-10-2-113-29.ec2.internal    Node ip-10-2-113-29.ec2.internal event: Registered Node ip-10-2-113-29.ec2.internal in Controller
14m         Normal    RemovingNode                  node/ip-10-2-113-29.ec2.internal    Node ip-10-2-113-29.ec2.internal event: Removing Node ip-10-2-113-29.ec2.internal from Controller
23m         Warning   Unsupported                   node/ip-10-2-114-100.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    RegisteredNode                node/ip-10-2-114-100.ec2.internal   Node ip-10-2-114-100.ec2.internal event: Registered Node ip-10-2-114-100.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-114-100.ec2.internal   The node is managed by VPC resource controller version v1.7.11
14m         Warning   Unsupported                   node/ip-10-2-114-100.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
18m         Normal    NodeNotSchedulable            node/ip-10-2-114-100.ec2.internal   Node ip-10-2-114-100.ec2.internal status is now: NodeNotSchedulable
15m         Normal    RegisteredNode                node/ip-10-2-114-100.ec2.internal   Node ip-10-2-114-100.ec2.internal event: Registered Node ip-10-2-114-100.ec2.internal in Controller
15m         Normal    NodeNotReady                  node/ip-10-2-114-100.ec2.internal   Node ip-10-2-114-100.ec2.internal status is now: NodeNotReady
15m         Normal    MemoryPressure                node/ip-10-2-114-100.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DiskPressure                  node/ip-10-2-114-100.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    PIDPressure                   node/ip-10-2-114-100.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    Ready                         node/ip-10-2-114-100.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DeletingNode                  node/ip-10-2-114-100.ec2.internal   Deleting node ip-10-2-114-100.ec2.internal because it does not exist in the cloud provider
14m         Normal    RemovingNode                  node/ip-10-2-114-100.ec2.internal   Node ip-10-2-114-100.ec2.internal event: Removing Node ip-10-2-114-100.ec2.internal from Controller
19m         Normal    Starting                      node/ip-10-2-114-22.ec2.internal    Starting kubelet.
19m         Warning   InvalidDiskCapacity           node/ip-10-2-114-22.ec2.internal    invalid capacity 0 on image filesystem
19m         Normal    NodeHasSufficientMemory       node/ip-10-2-114-22.ec2.internal    Node ip-10-2-114-22.ec2.internal status is now: NodeHasSufficientMemory
19m         Normal    NodeHasNoDiskPressure         node/ip-10-2-114-22.ec2.internal    Node ip-10-2-114-22.ec2.internal status is now: NodeHasNoDiskPressure
19m         Normal    NodeHasSufficientPID          node/ip-10-2-114-22.ec2.internal    Node ip-10-2-114-22.ec2.internal status is now: NodeHasSufficientPID
19m         Normal    NodeAllocatableEnforced       node/ip-10-2-114-22.ec2.internal    Updated Node Allocatable limit across pods
19m         Normal    RegisteredNode                node/ip-10-2-114-22.ec2.internal    Node ip-10-2-114-22.ec2.internal event: Registered Node ip-10-2-114-22.ec2.internal in Controller
19m         Normal    Synced                        node/ip-10-2-114-22.ec2.internal    Node synced successfully
19m         Normal    Starting                      node/ip-10-2-114-22.ec2.internal    
18m         Normal    ControllerVersionNotice       node/ip-10-2-114-22.ec2.internal    The node is managed by VPC resource controller version v1.7.11
7m22s       Warning   Unsupported                   node/ip-10-2-114-22.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
18m         Normal    NodeReady                     node/ip-10-2-114-22.ec2.internal    Node ip-10-2-114-22.ec2.internal status is now: NodeReady
18m         Normal    Ready                         node/ip-10-2-114-22.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    RegisteredNode                node/ip-10-2-114-22.ec2.internal    Node ip-10-2-114-22.ec2.internal event: Registered Node ip-10-2-114-22.ec2.internal in Controller
9m7s        Normal    NodeNotSchedulable            node/ip-10-2-114-22.ec2.internal    Node ip-10-2-114-22.ec2.internal status is now: NodeNotSchedulable
7m22s       Normal    NodeNotReady                  node/ip-10-2-114-22.ec2.internal    Node ip-10-2-114-22.ec2.internal status is now: NodeNotReady
7m22s       Normal    MemoryPressure                node/ip-10-2-114-22.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m22s       Normal    DiskPressure                  node/ip-10-2-114-22.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m22s       Normal    PIDPressure                   node/ip-10-2-114-22.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m22s       Normal    Ready                         node/ip-10-2-114-22.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m18s       Normal    DeletingNode                  node/ip-10-2-114-22.ec2.internal    Deleting node ip-10-2-114-22.ec2.internal because it does not exist in the cloud provider
7m17s       Normal    RemovingNode                  node/ip-10-2-114-22.ec2.internal    Node ip-10-2-114-22.ec2.internal event: Removing Node ip-10-2-114-22.ec2.internal from Controller
2m16s       Normal    Starting                      node/ip-10-2-114-59.ec2.internal    Starting kubelet.
2m16s       Warning   InvalidDiskCapacity           node/ip-10-2-114-59.ec2.internal    invalid capacity 0 on image filesystem
2m16s       Normal    NodeHasSufficientMemory       node/ip-10-2-114-59.ec2.internal    Node ip-10-2-114-59.ec2.internal status is now: NodeHasSufficientMemory
2m16s       Normal    NodeHasNoDiskPressure         node/ip-10-2-114-59.ec2.internal    Node ip-10-2-114-59.ec2.internal status is now: NodeHasNoDiskPressure
2m16s       Normal    NodeHasSufficientPID          node/ip-10-2-114-59.ec2.internal    Node ip-10-2-114-59.ec2.internal status is now: NodeHasSufficientPID
2m16s       Normal    NodeAllocatableEnforced       node/ip-10-2-114-59.ec2.internal    Updated Node Allocatable limit across pods
2m13s       Normal    Synced                        node/ip-10-2-114-59.ec2.internal    Node synced successfully
2m12s       Normal    DisruptionBlocked             node/ip-10-2-114-59.ec2.internal    Node isn't initialized
2m12s       Normal    RegisteredNode                node/ip-10-2-114-59.ec2.internal    Node ip-10-2-114-59.ec2.internal event: Registered Node ip-10-2-114-59.ec2.internal in Controller
2m4s        Normal    Starting                      node/ip-10-2-114-59.ec2.internal    
109s        Normal    ControllerVersionNotice       node/ip-10-2-114-59.ec2.internal    The node is managed by VPC resource controller version v1.7.11
108s        Normal    NodeReady                     node/ip-10-2-114-59.ec2.internal    Node ip-10-2-114-59.ec2.internal status is now: NodeReady
108s        Normal    Ready                         node/ip-10-2-114-59.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
105s        Normal    NodeTrunkInitiated            node/ip-10-2-114-59.ec2.internal    The node has trunk interface initialized successfully
70m         Normal    DisruptionBlocked             node/ip-10-2-114-94.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
30m         Normal    Unconsolidatable              node/ip-10-2-114-94.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
21m         Normal    RegisteredNode                node/ip-10-2-114-94.ec2.internal    Node ip-10-2-114-94.ec2.internal event: Registered Node ip-10-2-114-94.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-114-94.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-114-94.ec2.internal    The node has trunk interface initialized successfully
18m         Normal    Unconsolidatable              node/ip-10-2-114-94.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
17m         Normal    DisruptionBlocked             node/ip-10-2-114-94.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
15m         Normal    RegisteredNode                node/ip-10-2-114-94.ec2.internal    Node ip-10-2-114-94.ec2.internal event: Registered Node ip-10-2-114-94.ec2.internal in Controller
12m         Normal    DisruptionBlocked             node/ip-10-2-114-94.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=datahub/datahub-elasticsearch-master-pdb)
7m39s       Normal    DisruptionBlocked             node/ip-10-2-114-94.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=datahub/datahub-elasticsearch-master-pdb)
3m28s       Normal    DisruptionBlocked             node/ip-10-2-114-94.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
100s        Normal    DisruptionTerminating         node/ip-10-2-114-94.ec2.internal    Disrupting Node: Drifted/Replace
100s        Warning   FailedDraining                node/ip-10-2-114-94.ec2.internal    Failed to drain node, 6 pods are waiting to be evicted
81s         Normal    DisruptionBlocked             node/ip-10-2-114-94.ec2.internal    Node is deleting or marked for deletion
29s         Warning   InstanceTerminating           node/ip-10-2-114-94.ec2.internal    Instance is terminating
69m         Normal    Starting                      node/ip-10-2-116-106.ec2.internal   Starting kubelet.
69m         Warning   InvalidDiskCapacity           node/ip-10-2-116-106.ec2.internal   invalid capacity 0 on image filesystem
69m         Normal    NodeHasSufficientMemory       node/ip-10-2-116-106.ec2.internal   Node ip-10-2-116-106.ec2.internal status is now: NodeHasSufficientMemory
69m         Normal    NodeHasNoDiskPressure         node/ip-10-2-116-106.ec2.internal   Node ip-10-2-116-106.ec2.internal status is now: NodeHasNoDiskPressure
69m         Normal    NodeHasSufficientPID          node/ip-10-2-116-106.ec2.internal   Node ip-10-2-116-106.ec2.internal status is now: NodeHasSufficientPID
69m         Normal    NodeAllocatableEnforced       node/ip-10-2-116-106.ec2.internal   Updated Node Allocatable limit across pods
69m         Normal    Synced                        node/ip-10-2-116-106.ec2.internal   Node synced successfully
69m         Normal    RegisteredNode                node/ip-10-2-116-106.ec2.internal   Node ip-10-2-116-106.ec2.internal event: Registered Node ip-10-2-116-106.ec2.internal in Controller
69m         Normal    DisruptionBlocked             node/ip-10-2-116-106.ec2.internal   Node isn't initialized
69m         Normal    Starting                      node/ip-10-2-116-106.ec2.internal   
69m         Normal    ControllerVersionNotice       node/ip-10-2-116-106.ec2.internal   The node is managed by VPC resource controller version v1.7.9
69m         Normal    NodeReady                     node/ip-10-2-116-106.ec2.internal   Node ip-10-2-116-106.ec2.internal status is now: NodeReady
69m         Normal    Ready                         node/ip-10-2-116-106.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
69m         Normal    NodeTrunkInitiated            node/ip-10-2-116-106.ec2.internal   The node has trunk interface initialized successfully
30m         Normal    Unconsolidatable              node/ip-10-2-116-106.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
21m         Normal    RegisteredNode                node/ip-10-2-116-106.ec2.internal   Node ip-10-2-116-106.ec2.internal event: Registered Node ip-10-2-116-106.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-116-106.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-116-106.ec2.internal   The node has trunk interface initialized successfully
17m         Normal    DisruptionBlocked             node/ip-10-2-116-106.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
15m         Normal    RegisteredNode                node/ip-10-2-116-106.ec2.internal   Node ip-10-2-116-106.ec2.internal event: Registered Node ip-10-2-116-106.ec2.internal in Controller
13m         Normal    DisruptionBlocked             node/ip-10-2-116-106.ec2.internal   Node is nominated for a pending pod
9m46s       Normal    DisruptionBlocked             node/ip-10-2-116-106.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
7m39s       Normal    DisruptionBlocked             node/ip-10-2-116-106.ec2.internal   Node is nominated for a pending pod
2m23s       Normal    DisruptionBlocked             node/ip-10-2-116-106.ec2.internal   Node is deleting or marked for deletion
3m39s       Normal    DisruptionTerminating         node/ip-10-2-116-106.ec2.internal   Disrupting Node: Drifted/Replace
3m39s       Warning   FailedDraining                node/ip-10-2-116-106.ec2.internal   Failed to drain node, 2 pods are waiting to be evicted
2m39s       Warning   InstanceTerminating           node/ip-10-2-116-106.ec2.internal   Instance is terminating
111s        Normal    NodeNotReady                  node/ip-10-2-116-106.ec2.internal   Node ip-10-2-116-106.ec2.internal status is now: NodeNotReady
111s        Normal    MemoryPressure                node/ip-10-2-116-106.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
111s        Normal    DiskPressure                  node/ip-10-2-116-106.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
111s        Normal    PIDPressure                   node/ip-10-2-116-106.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
111s        Normal    Ready                         node/ip-10-2-116-106.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
101s        Normal    RemovingNode                  node/ip-10-2-116-106.ec2.internal   Node ip-10-2-116-106.ec2.internal event: Removing Node ip-10-2-116-106.ec2.internal from Controller
70m         Normal    DisruptionBlocked             node/ip-10-2-116-176.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
59m         Normal    Unconsolidatable              node/ip-10-2-116-176.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
31m         Normal    DisruptionBlocked             node/ip-10-2-116-176.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=fraud-hourly-alerts/fraud-hourly-alerts-29310240-ml8rn)
21m         Normal    RegisteredNode                node/ip-10-2-116-176.ec2.internal   Node ip-10-2-116-176.ec2.internal event: Registered Node ip-10-2-116-176.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-116-176.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-116-176.ec2.internal   The node has trunk interface initialized successfully
17m         Normal    DisruptionBlocked             node/ip-10-2-116-176.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
15m         Normal    RegisteredNode                node/ip-10-2-116-176.ec2.internal   Node ip-10-2-116-176.ec2.internal event: Registered Node ip-10-2-116-176.ec2.internal in Controller
14m         Normal    DisruptionBlocked             node/ip-10-2-116-176.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
12m         Normal    DisruptionBlocked             node/ip-10-2-116-176.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=datahub/datahub-elasticsearch-master-pdb)
10m         Normal    DisruptionBlocked             node/ip-10-2-116-176.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=datahub/datahub-elasticsearch-master-pdb)
4m35s       Normal    DisruptionBlocked             node/ip-10-2-116-176.ec2.internal   Node is deleting or marked for deletion
7m49s       Normal    DisruptionTerminating         node/ip-10-2-116-176.ec2.internal   Disrupting Node: Drifted/Replace
7m49s       Warning   FailedDraining                node/ip-10-2-116-176.ec2.internal   Failed to drain node, 12 pods are waiting to be evicted
5m48s       Warning   FailedDraining                node/ip-10-2-116-176.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
4m41s       Warning   InstanceTerminating           node/ip-10-2-116-176.ec2.internal   Instance is terminating
3m57s       Normal    NodeNotReady                  node/ip-10-2-116-176.ec2.internal   Node ip-10-2-116-176.ec2.internal status is now: NodeNotReady
3m57s       Normal    MemoryPressure                node/ip-10-2-116-176.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
3m57s       Normal    DiskPressure                  node/ip-10-2-116-176.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
3m57s       Normal    PIDPressure                   node/ip-10-2-116-176.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
3m57s       Normal    Ready                         node/ip-10-2-116-176.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
3m52s       Normal    DeletingNode                  node/ip-10-2-116-176.ec2.internal   Deleting node ip-10-2-116-176.ec2.internal because it does not exist in the cloud provider
3m47s       Normal    RemovingNode                  node/ip-10-2-116-176.ec2.internal   Node ip-10-2-116-176.ec2.internal event: Removing Node ip-10-2-116-176.ec2.internal from Controller
17m         Normal    Starting                      node/ip-10-2-116-18.ec2.internal    Starting kubelet.
17m         Warning   InvalidDiskCapacity           node/ip-10-2-116-18.ec2.internal    invalid capacity 0 on image filesystem
17m         Normal    NodeHasSufficientMemory       node/ip-10-2-116-18.ec2.internal    Node ip-10-2-116-18.ec2.internal status is now: NodeHasSufficientMemory
17m         Normal    NodeHasNoDiskPressure         node/ip-10-2-116-18.ec2.internal    Node ip-10-2-116-18.ec2.internal status is now: NodeHasNoDiskPressure
17m         Normal    NodeHasSufficientPID          node/ip-10-2-116-18.ec2.internal    Node ip-10-2-116-18.ec2.internal status is now: NodeHasSufficientPID
17m         Normal    NodeAllocatableEnforced       node/ip-10-2-116-18.ec2.internal    Updated Node Allocatable limit across pods
17m         Normal    RegisteredNode                node/ip-10-2-116-18.ec2.internal    Node ip-10-2-116-18.ec2.internal event: Registered Node ip-10-2-116-18.ec2.internal in Controller
17m         Normal    DisruptionBlocked             node/ip-10-2-116-18.ec2.internal    Node isn't initialized
17m         Normal    Starting                      node/ip-10-2-116-18.ec2.internal    
17m         Normal    Synced                        node/ip-10-2-116-18.ec2.internal    Node synced successfully
17m         Normal    ControllerVersionNotice       node/ip-10-2-116-18.ec2.internal    The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeReady                     node/ip-10-2-116-18.ec2.internal    Node ip-10-2-116-18.ec2.internal status is now: NodeReady
17m         Normal    Ready                         node/ip-10-2-116-18.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    NodeTrunkInitiated            node/ip-10-2-116-18.ec2.internal    The node has trunk interface initialized successfully
15m         Normal    RegisteredNode                node/ip-10-2-116-18.ec2.internal    Node ip-10-2-116-18.ec2.internal event: Registered Node ip-10-2-116-18.ec2.internal in Controller
81s         Normal    DisruptionBlocked             node/ip-10-2-116-18.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
70m         Normal    DisruptionBlocked             node/ip-10-2-116-212.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
25m         Normal    Unconsolidatable              node/ip-10-2-116-212.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
21m         Normal    RegisteredNode                node/ip-10-2-116-212.ec2.internal   Node ip-10-2-116-212.ec2.internal event: Registered Node ip-10-2-116-212.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-116-212.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-116-212.ec2.internal   The node has trunk interface initialized successfully
18m         Normal    Unconsolidatable              node/ip-10-2-116-212.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
17m         Normal    DisruptionBlocked             node/ip-10-2-116-212.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
15m         Normal    RegisteredNode                node/ip-10-2-116-212.ec2.internal   Node ip-10-2-116-212.ec2.internal event: Registered Node ip-10-2-116-212.ec2.internal in Controller
12m         Normal    DisruptionBlocked             node/ip-10-2-116-212.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=datahub/datahub-kafka-broker)
10m         Normal    DisruptionBlocked             node/ip-10-2-116-212.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=datahub/datahub-kafka-broker)
30s         Normal    DisruptionBlocked             node/ip-10-2-116-212.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=datahub/datahub-elasticsearch-master-pdb)
4m35s       Normal    DisruptionBlocked             node/ip-10-2-116-212.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=dbt-core-runs-de-trino-consumer-raw/dbt-core-runs-de-trino-consumer-raw-29310279-nlrh9)
2m33s       Normal    DisruptionBlocked             node/ip-10-2-116-212.ec2.internal   Node is nominated for a pending pod
8m24s       Normal    Starting                      node/ip-10-2-116-222.ec2.internal   Starting kubelet.
8m24s       Warning   InvalidDiskCapacity           node/ip-10-2-116-222.ec2.internal   invalid capacity 0 on image filesystem
8m23s       Normal    NodeHasSufficientMemory       node/ip-10-2-116-222.ec2.internal   Node ip-10-2-116-222.ec2.internal status is now: NodeHasSufficientMemory
8m23s       Normal    NodeHasNoDiskPressure         node/ip-10-2-116-222.ec2.internal   Node ip-10-2-116-222.ec2.internal status is now: NodeHasNoDiskPressure
8m23s       Normal    NodeHasSufficientPID          node/ip-10-2-116-222.ec2.internal   Node ip-10-2-116-222.ec2.internal status is now: NodeHasSufficientPID
8m23s       Normal    NodeAllocatableEnforced       node/ip-10-2-116-222.ec2.internal   Updated Node Allocatable limit across pods
8m20s       Normal    DisruptionBlocked             node/ip-10-2-116-222.ec2.internal   Node isn't initialized
8m20s       Normal    Synced                        node/ip-10-2-116-222.ec2.internal   Node synced successfully
8m19s       Normal    RegisteredNode                node/ip-10-2-116-222.ec2.internal   Node ip-10-2-116-222.ec2.internal event: Registered Node ip-10-2-116-222.ec2.internal in Controller
8m12s       Normal    Starting                      node/ip-10-2-116-222.ec2.internal   
7m56s       Normal    ControllerVersionNotice       node/ip-10-2-116-222.ec2.internal   The node is managed by VPC resource controller version v1.7.11
7m56s       Normal    NodeReady                     node/ip-10-2-116-222.ec2.internal   Node ip-10-2-116-222.ec2.internal status is now: NodeReady
7m55s       Normal    Ready                         node/ip-10-2-116-222.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
7m54s       Normal    NodeTrunkInitiated            node/ip-10-2-116-222.ec2.internal   The node has trunk interface initialized successfully
81s         Normal    DisruptionBlocked             node/ip-10-2-116-222.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
25m         Normal    Unconsolidatable              node/ip-10-2-116-45.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
21m         Normal    RegisteredNode                node/ip-10-2-116-45.ec2.internal    Node ip-10-2-116-45.ec2.internal event: Registered Node ip-10-2-116-45.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-116-45.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-116-45.ec2.internal    The node has trunk interface initialized successfully
15m         Normal    RegisteredNode                node/ip-10-2-116-45.ec2.internal    Node ip-10-2-116-45.ec2.internal event: Registered Node ip-10-2-116-45.ec2.internal in Controller
14m         Normal    DisruptionBlocked             node/ip-10-2-116-45.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=datahub/datahub-elasticsearch-master-pdb)
12m         Normal    DisruptionBlocked             node/ip-10-2-116-45.ec2.internal    Node is deleting or marked for deletion
12m         Normal    DisruptionTerminating         node/ip-10-2-116-45.ec2.internal    Disrupting Node: Drifted/Replace
12m         Warning   FailedDraining                node/ip-10-2-116-45.ec2.internal    Failed to drain node, 9 pods are waiting to be evicted
10m         Warning   InstanceTerminating           node/ip-10-2-116-45.ec2.internal    Instance is terminating
10m         Normal    DisruptionBlocked             node/ip-10-2-116-45.ec2.internal    Node is deleting or marked for deletion
10m         Normal    NodeNotReady                  node/ip-10-2-116-45.ec2.internal    Node ip-10-2-116-45.ec2.internal status is now: NodeNotReady
10m         Normal    MemoryPressure                node/ip-10-2-116-45.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    DiskPressure                  node/ip-10-2-116-45.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    PIDPressure                   node/ip-10-2-116-45.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    Ready                         node/ip-10-2-116-45.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m30s       Normal    DeletingNode                  node/ip-10-2-116-45.ec2.internal    Deleting node ip-10-2-116-45.ec2.internal because it does not exist in the cloud provider
9m24s       Normal    RemovingNode                  node/ip-10-2-116-45.ec2.internal    Node ip-10-2-116-45.ec2.internal event: Removing Node ip-10-2-116-45.ec2.internal from Controller
24m         Warning   Unsupported                   node/ip-10-2-116-57.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    RegisteredNode                node/ip-10-2-116-57.ec2.internal    Node ip-10-2-116-57.ec2.internal event: Registered Node ip-10-2-116-57.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-116-57.ec2.internal    The node is managed by VPC resource controller version v1.7.11
12m         Warning   Unsupported                   node/ip-10-2-116-57.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
18m         Normal    NodeNotSchedulable            node/ip-10-2-116-57.ec2.internal    Node ip-10-2-116-57.ec2.internal status is now: NodeNotSchedulable
15m         Normal    RegisteredNode                node/ip-10-2-116-57.ec2.internal    Node ip-10-2-116-57.ec2.internal event: Registered Node ip-10-2-116-57.ec2.internal in Controller
12m         Normal    MemoryPressure                node/ip-10-2-116-57.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DiskPressure                  node/ip-10-2-116-57.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    PIDPressure                   node/ip-10-2-116-57.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    Ready                         node/ip-10-2-116-57.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    NodeNotReady                  node/ip-10-2-116-57.ec2.internal    Node ip-10-2-116-57.ec2.internal status is now: NodeNotReady
12m         Normal    DeletingNode                  node/ip-10-2-116-57.ec2.internal    Deleting node ip-10-2-116-57.ec2.internal because it does not exist in the cloud provider
12m         Normal    RemovingNode                  node/ip-10-2-116-57.ec2.internal    Node ip-10-2-116-57.ec2.internal event: Removing Node ip-10-2-116-57.ec2.internal from Controller
23m         Normal    ControllerVersionNotice       node/ip-10-2-116-8.ec2.internal     The node is managed by VPC resource controller version v1.7.9
23m         Warning   Unsupported                   node/ip-10-2-116-8.ec2.internal     The instance type m8i-flex.2xlarge is not supported yet by the vpc resource controller
70m         Normal    DisruptionBlocked             node/ip-10-2-116-8.ec2.internal     Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
30m         Normal    Unconsolidatable              node/ip-10-2-116-8.ec2.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
79m         Normal    DisruptionBlocked             node/ip-10-2-116-8.ec2.internal     Node is nominated for a pending pod
21m         Normal    RegisteredNode                node/ip-10-2-116-8.ec2.internal     Node ip-10-2-116-8.ec2.internal event: Registered Node ip-10-2-116-8.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-116-8.ec2.internal     The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-116-8.ec2.internal     The node has trunk interface initialized successfully
18m         Normal    Unconsolidatable              node/ip-10-2-116-8.ec2.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
17m         Normal    DisruptionBlocked             node/ip-10-2-116-8.ec2.internal     Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
15m         Normal    RegisteredNode                node/ip-10-2-116-8.ec2.internal     Node ip-10-2-116-8.ec2.internal event: Registered Node ip-10-2-116-8.ec2.internal in Controller
14m         Normal    DisruptionBlocked             node/ip-10-2-116-8.ec2.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
7m49s       Normal    DisruptionBlocked             node/ip-10-2-116-8.ec2.internal     Node is deleting or marked for deletion
9m56s       Normal    DisruptionTerminating         node/ip-10-2-116-8.ec2.internal     Disrupting Node: Drifted/Delete
9m56s       Warning   FailedDraining                node/ip-10-2-116-8.ec2.internal     Failed to drain node, 10 pods are waiting to be evicted
8m48s       Warning   InstanceTerminating           node/ip-10-2-116-8.ec2.internal     Instance is terminating
7m58s       Normal    NodeNotReady                  node/ip-10-2-116-8.ec2.internal     Node ip-10-2-116-8.ec2.internal status is now: NodeNotReady
7m58s       Normal    MemoryPressure                node/ip-10-2-116-8.ec2.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m58s       Normal    DiskPressure                  node/ip-10-2-116-8.ec2.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m58s       Normal    PIDPressure                   node/ip-10-2-116-8.ec2.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m58s       Normal    Ready                         node/ip-10-2-116-8.ec2.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m42s       Normal    RemovingNode                  node/ip-10-2-116-8.ec2.internal     Node ip-10-2-116-8.ec2.internal event: Removing Node ip-10-2-116-8.ec2.internal from Controller
4m13s       Normal    Starting                      node/ip-10-2-117-108.ec2.internal   Starting kubelet.
4m13s       Warning   InvalidDiskCapacity           node/ip-10-2-117-108.ec2.internal   invalid capacity 0 on image filesystem
4m13s       Normal    NodeHasSufficientMemory       node/ip-10-2-117-108.ec2.internal   Node ip-10-2-117-108.ec2.internal status is now: NodeHasSufficientMemory
4m13s       Normal    NodeHasNoDiskPressure         node/ip-10-2-117-108.ec2.internal   Node ip-10-2-117-108.ec2.internal status is now: NodeHasNoDiskPressure
4m13s       Normal    NodeHasSufficientPID          node/ip-10-2-117-108.ec2.internal   Node ip-10-2-117-108.ec2.internal status is now: NodeHasSufficientPID
4m13s       Normal    NodeAllocatableEnforced       node/ip-10-2-117-108.ec2.internal   Updated Node Allocatable limit across pods
4m10s       Normal    Synced                        node/ip-10-2-117-108.ec2.internal   Node synced successfully
4m10s       Normal    DisruptionBlocked             node/ip-10-2-117-108.ec2.internal   Node isn't initialized
4m7s        Normal    RegisteredNode                node/ip-10-2-117-108.ec2.internal   Node ip-10-2-117-108.ec2.internal event: Registered Node ip-10-2-117-108.ec2.internal in Controller
4m2s        Normal    Starting                      node/ip-10-2-117-108.ec2.internal   
3m46s       Normal    ControllerVersionNotice       node/ip-10-2-117-108.ec2.internal   The node is managed by VPC resource controller version v1.7.11
3m45s       Normal    NodeReady                     node/ip-10-2-117-108.ec2.internal   Node ip-10-2-117-108.ec2.internal status is now: NodeReady
3m45s       Normal    Ready                         node/ip-10-2-117-108.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
3m42s       Normal    NodeTrunkInitiated            node/ip-10-2-117-108.ec2.internal   The node has trunk interface initialized successfully
92s         Normal    DisruptionBlocked             node/ip-10-2-117-108.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
21m         Normal    Starting                      node/ip-10-2-117-135.ec2.internal   Starting kubelet.
21m         Warning   InvalidDiskCapacity           node/ip-10-2-117-135.ec2.internal   invalid capacity 0 on image filesystem
21m         Normal    NodeHasSufficientMemory       node/ip-10-2-117-135.ec2.internal   Node ip-10-2-117-135.ec2.internal status is now: NodeHasSufficientMemory
21m         Normal    NodeHasNoDiskPressure         node/ip-10-2-117-135.ec2.internal   Node ip-10-2-117-135.ec2.internal status is now: NodeHasNoDiskPressure
21m         Normal    NodeHasSufficientPID          node/ip-10-2-117-135.ec2.internal   Node ip-10-2-117-135.ec2.internal status is now: NodeHasSufficientPID
21m         Normal    NodeAllocatableEnforced       node/ip-10-2-117-135.ec2.internal   Updated Node Allocatable limit across pods
21m         Normal    RegisteredNode                node/ip-10-2-117-135.ec2.internal   Node ip-10-2-117-135.ec2.internal event: Registered Node ip-10-2-117-135.ec2.internal in Controller
21m         Normal    Synced                        node/ip-10-2-117-135.ec2.internal   Node synced successfully
20m         Normal    Starting                      node/ip-10-2-117-135.ec2.internal   
20m         Normal    ControllerVersionNotice       node/ip-10-2-117-135.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeReady                     node/ip-10-2-117-135.ec2.internal   Node ip-10-2-117-135.ec2.internal status is now: NodeReady
20m         Normal    Ready                         node/ip-10-2-117-135.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
26s         Warning   Unsupported                   node/ip-10-2-117-135.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
15m         Normal    RegisteredNode                node/ip-10-2-117-135.ec2.internal   Node ip-10-2-117-135.ec2.internal event: Registered Node ip-10-2-117-135.ec2.internal in Controller
79m         Normal    DisruptionBlocked             node/ip-10-2-117-202.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
75m         Normal    SpotRebalanceRecommendation   node/ip-10-2-117-202.ec2.internal   Spot rebalance recommendation was triggered
75m         Warning   SpotInterrupted               node/ip-10-2-117-202.ec2.internal   Spot interruption warning was triggered
75m         Warning   TerminatingOnInterruption     node/ip-10-2-117-202.ec2.internal   Interruption triggered termination for the Node
75m         Warning   FailedDraining                node/ip-10-2-117-202.ec2.internal   Failed to drain node, 2 pods are waiting to be evicted
75m         Normal    DisruptionBlocked             node/ip-10-2-117-202.ec2.internal   Node is deleting or marked for deletion
74m         Warning   InstanceTerminating           node/ip-10-2-117-202.ec2.internal   Instance is terminating
73m         Normal    RemovingNode                  node/ip-10-2-117-202.ec2.internal   Node ip-10-2-117-202.ec2.internal event: Removing Node ip-10-2-117-202.ec2.internal from Controller
70m         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
90m         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29310195-q2zxh)
76m         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29310210-cm9s9)
61m         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29310225-wmwld)
46m         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29310240-7dr9q)
30m         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29310255-mcxt4)
21m         Normal    RegisteredNode                node/ip-10-2-117-233.ec2.internal   Node ip-10-2-117-233.ec2.internal event: Registered Node ip-10-2-117-233.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-117-233.ec2.internal   The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-117-233.ec2.internal   The node has trunk interface initialized successfully
17m         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
15m         Normal    RegisteredNode                node/ip-10-2-117-233.ec2.internal   Node ip-10-2-117-233.ec2.internal event: Registered Node ip-10-2-117-233.ec2.internal in Controller
15m         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29310270-ts545)
10m         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=snowflake-cache-service-hs-brands/snowflake-cache-service-hs-brands-pdb)
6m37s       Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=dbt-core-runs-de-trino-consumer-raw/dbt-core-runs-de-trino-consumer-raw-29310276-bjwpt)
81s         Normal    DisruptionBlocked             node/ip-10-2-117-233.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
75m         Normal    DisruptionBlocked             node/ip-10-2-117-253.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
77m         Normal    Unconsolidatable              node/ip-10-2-117-253.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
70m         Warning   SpotInterrupted               node/ip-10-2-117-253.ec2.internal   Spot interruption warning was triggered
70m         Warning   TerminatingOnInterruption     node/ip-10-2-117-253.ec2.internal   Interruption triggered termination for the Node
70m         Warning   FailedDraining                node/ip-10-2-117-253.ec2.internal   Failed to drain node, 2 pods are waiting to be evicted
70m         Normal    SpotRebalanceRecommendation   node/ip-10-2-117-253.ec2.internal   Spot rebalance recommendation was triggered
70m         Normal    DisruptionBlocked             node/ip-10-2-117-253.ec2.internal   Node is deleting or marked for deletion
69m         Warning   InstanceTerminating           node/ip-10-2-117-253.ec2.internal   Instance is terminating
68m         Normal    RemovingNode                  node/ip-10-2-117-253.ec2.internal   Node ip-10-2-117-253.ec2.internal event: Removing Node ip-10-2-117-253.ec2.internal from Controller
79m         Normal    DisruptionBlocked             node/ip-10-2-117-41.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
78m         Normal    DisruptionTerminating         node/ip-10-2-117-41.ec2.internal    Disrupting Node: Underutilized/Delete
78m         Warning   FailedDraining                node/ip-10-2-117-41.ec2.internal    Failed to drain node, 2 pods are waiting to be evicted
77m         Normal    DisruptionBlocked             node/ip-10-2-117-41.ec2.internal    Node is deleting or marked for deletion
77m         Warning   InstanceTerminating           node/ip-10-2-117-41.ec2.internal    Instance is terminating
76m         Normal    NodeNotReady                  node/ip-10-2-117-41.ec2.internal    Node ip-10-2-117-41.ec2.internal status is now: NodeNotReady
76m         Normal    MemoryPressure                node/ip-10-2-117-41.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
76m         Normal    DiskPressure                  node/ip-10-2-117-41.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
76m         Normal    PIDPressure                   node/ip-10-2-117-41.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
76m         Normal    Ready                         node/ip-10-2-117-41.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
76m         Normal    DeletingNode                  node/ip-10-2-117-41.ec2.internal    Deleting node ip-10-2-117-41.ec2.internal because it does not exist in the cloud provider
76m         Normal    RemovingNode                  node/ip-10-2-117-41.ec2.internal    Node ip-10-2-117-41.ec2.internal event: Removing Node ip-10-2-117-41.ec2.internal from Controller
74m         Normal    Starting                      node/ip-10-2-117-81.ec2.internal    Starting kubelet.
74m         Warning   InvalidDiskCapacity           node/ip-10-2-117-81.ec2.internal    invalid capacity 0 on image filesystem
74m         Normal    NodeHasSufficientMemory       node/ip-10-2-117-81.ec2.internal    Node ip-10-2-117-81.ec2.internal status is now: NodeHasSufficientMemory
74m         Normal    NodeHasNoDiskPressure         node/ip-10-2-117-81.ec2.internal    Node ip-10-2-117-81.ec2.internal status is now: NodeHasNoDiskPressure
74m         Normal    NodeHasSufficientPID          node/ip-10-2-117-81.ec2.internal    Node ip-10-2-117-81.ec2.internal status is now: NodeHasSufficientPID
74m         Normal    NodeAllocatableEnforced       node/ip-10-2-117-81.ec2.internal    Updated Node Allocatable limit across pods
74m         Normal    Synced                        node/ip-10-2-117-81.ec2.internal    Node synced successfully
74m         Normal    DisruptionBlocked             node/ip-10-2-117-81.ec2.internal    Node isn't initialized
74m         Normal    RegisteredNode                node/ip-10-2-117-81.ec2.internal    Node ip-10-2-117-81.ec2.internal event: Registered Node ip-10-2-117-81.ec2.internal in Controller
74m         Normal    Starting                      node/ip-10-2-117-81.ec2.internal    
74m         Normal    ControllerVersionNotice       node/ip-10-2-117-81.ec2.internal    The node is managed by VPC resource controller version v1.7.9
74m         Normal    NodeReady                     node/ip-10-2-117-81.ec2.internal    Node ip-10-2-117-81.ec2.internal status is now: NodeReady
74m         Normal    Ready                         node/ip-10-2-117-81.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
74m         Normal    NodeTrunkInitiated            node/ip-10-2-117-81.ec2.internal    The node has trunk interface initialized successfully
70m         Normal    DisruptionBlocked             node/ip-10-2-117-81.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
25m         Normal    Unconsolidatable              node/ip-10-2-117-81.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
55m         Normal    SpotRebalanceRecommendation   node/ip-10-2-117-81.ec2.internal    Spot rebalance recommendation was triggered
21m         Normal    RegisteredNode                node/ip-10-2-117-81.ec2.internal    Node ip-10-2-117-81.ec2.internal event: Registered Node ip-10-2-117-81.ec2.internal in Controller
20m         Normal    ControllerVersionNotice       node/ip-10-2-117-81.ec2.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeTrunkInitiated            node/ip-10-2-117-81.ec2.internal    The node has trunk interface initialized successfully
18m         Normal    Unconsolidatable              node/ip-10-2-117-81.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
17m         Normal    DisruptionBlocked             node/ip-10-2-117-81.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
15m         Normal    RegisteredNode                node/ip-10-2-117-81.ec2.internal    Node ip-10-2-117-81.ec2.internal event: Registered Node ip-10-2-117-81.ec2.internal in Controller
81s         Normal    DisruptionBlocked             node/ip-10-2-117-81.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=worldchain-wallet-balances-consumer/worldchain-wallet-balances-consumer-pdb)
```

Pods with issues
```
graph-analytics                                  graph-analytics-5c9c99b587-nkmvw                                  0/1     CrashLoopBackOff   3 (12s ago)     100s
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
de-jupyterlab                                    de-jupyterlab-pdb                                    N/A             1                 0                     162d
interviews-metabase                              interviews-metabase-pdb                              N/A             1                 1                     48d
karpenter                                        karpenter                                            N/A             1                 1                     2y134d
kube-system                                      coredns                                              N/A             1                 1                     624d
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
ip-10-2-112-20.ec2.internal   dbt-core-runs-de-trino-consumer-raw-29310282-lkc66             (dbt-core-runs-de-trino-consumer-raw)
ip-10-2-112-20.ec2.internal   orb-analytics-workers-29310285-2rnqw                           (orb-analytics-workers)
ip-10-2-112-5.ec2.internal    snowflake-cache-service-consumer-backend-api-6648c5c785-wdth9  (snowflake-cache-service-consumer-backend-api)
ip-10-2-113-11.ec2.internal   dbt-core-runs-de-trino-consumer-raw-29308851-zbvfv             (dbt-core-runs-de-trino-consumer-raw)
ip-10-2-113-11.ec2.internal   dbt-core-runs-de-trino-consumer-raw-29308860-9nnrz             (dbt-core-runs-de-trino-consumer-raw)
ip-10-2-113-121.ec2.internal  snowflake-cache-service-consumer-backend-api-6648c5c785-p4rdm  (snowflake-cache-service-consumer-backend-api)
ip-10-2-113-164.ec2.internal  snowflake-cache-service-consumer-backend-api-6648c5c785-p82pw  (snowflake-cache-service-consumer-backend-api)
ip-10-2-116-212.ec2.internal  dbt-core-runs-de-trino-consumer-raw-29310279-nlrh9             (dbt-core-runs-de-trino-consumer-raw)
ip-10-2-117-233.ec2.internal  dbt-core-runs-de-trino-consumer-raw-29310276-bjwpt             (dbt-core-runs-de-trino-consumer-raw)
ip-10-2-117-233.ec2.internal  orb-analytics-workers-29310270-ts545                           (orb-analytics-workers)
```

Pods Tolerating karpenter.sh/disrupted
```
```

Static Pods
```
```

Cluster version up to date - no pluto apis detection rquired

Generated on: Tue Sep 23 10:46:14 CEST 2025
