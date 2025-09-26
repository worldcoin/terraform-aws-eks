# Cluster recon for tfh-orb-prod-infra,us-east-1,orb-prod-v2-us-east-1,tunnel-vpc-orb-prod-us-east-1

TFH EKS login...
```console
2025/09/23 11:43:35 INFO Logging into AWS
2025/09/23 11:43:35 INFO Token found and valid
2025/09/23 11:43:37 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-prod-us-east-1 id=7599e212-34d0-4509-95b2-43c482692c20
2025/09/23 11:43:39 INFO Active WARP Virtual Network id=7599e212-34d0-4509-95b2-43c482692c20
Added new context tfh-orb-prod-v2-us-east-1 to /Users/lukasz.glowacki/.kube/config
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
            "id": "d5443ac2-5c52-46e9-998d-ea9bca20092a",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T19:59:14+02:00",
            "lastTransitionTime": "2025-07-29T05:29:03+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "3ea186cd-7301-4cec-ac3f-682b3537f8de",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T19:59:11+02:00",
            "lastTransitionTime": "2025-09-16T21:39:03+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "f1753660-c001-4404-bc49-3e30b2dbed0d",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T19:59:14+02:00",
            "lastTransitionTime": "2024-12-21T02:44:04+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "410b10c7-4cbe-48d5-b4f9-06f6d254bd8e",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T19:59:11+02:00",
            "lastTransitionTime": "2024-12-21T02:44:04+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "c55825b2-71dc-4882-8269-b710522cc7b5",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-22T19:59:11+02:00",
            "lastTransitionTime": "2024-12-21T02:44:04+01:00",
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
        "name": "orb-prod-v2-us-east-1",
        "arn": "arn:aws:eks:us-east-1:573252405782:cluster/orb-prod-v2-us-east-1",
        "createdAt": "2023-06-16T09:55:31.552000+02:00",
        "version": "1.32",
        "endpoint": "https://6B76BF9055C7EF0E646F2AE8B33D4970.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::573252405782:role/eks-cluster-orb-prod-v2-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0d6e9a1f67d90593e",
                "subnet-0d55f8238b96decac",
                "subnet-02d31ea0e899b133b"
            ],
            "securityGroupIds": [
                "sg-0187d0caacf22e438"
            ],
            "clusterSecurityGroupId": "sg-020a34715dcd352d9",
            "vpcId": "vpc-08f3971f114afe74a",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/6B76BF9055C7EF0E646F2AE8B33D4970"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EWXhOakE0TURFeE1Wb1hEVE16TURZeE16QTRNREV4TVZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBT29CCmcySVR0RzlQaC9NMEd3RG45UmU2RUdxQi9jRTVkaUJhKzFLVmkzVWVZakloaTRXSEJLdkJNYjlQTWowM0xkWHIKUm5UL2JwOGZOREdFZVQzWjVXQVNLNGlkeG5SUDZMaUYrM0lmOFhuK1lxcXlTN2xRdi9qcE4zSHdxZmFvV2kzTAozWk9NRTZHbm9ubWxGQlNlY2NvU3V0eTlMdnY2U0hVVmt2eG1WNzN6RjYwak42M014K1NDU3U1R0dackNsRlcyCjlyWkw4RGMveDUzWnVGZ011MCtRUmpSVXlBazNFdGJLUjNpZWwySjlaU3JGamV0SE8yYVh2VEpmenh6bTNkRE4KMEFEc3lvekZDcnpuZGp4MkZ6MjJCWHRNajJZaytUUjNjU2MwUVBjbGk5TVMzaElmb2tMS3ZvdWpKb3UzWjNtagpIWHI0Um5uTWZPOFJ0QTlTdk1VQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZOUFk5SHdnUVRMa2dqN2VwZEFxL21MMDIweWRNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBRmJZL2RadFV5ak1TbVN2NnBDYQpZMEt4TWgwbEVFclhCQlRtK3o4a0J6VUZEV0lZZU1TZlJ5UjhOdWZEdTFkSW5pVE9yZE1sL012Z3dyWGlzYjBGCjJGNFIvNGU0VjgxTGtrZ1MvMTJ1b0swNFB4cFdpclZnMGtRaWl1UmxYbjBwZUhMRlBOQWsrSHZxQndXVkRjSzgKODVPd2lYeUs2Sm5obi9xdDk5bmVsSm50SnRGanpxNTIzMXF4ZDh4Y0R2K1FzTVdTNUpwcUxqWno4by90bUVDWQprU1ZFNmVyV29aYXFFbVBQeWZ3WHRrV1NZeTlObktUdFJIejlGZFV6MnNMMVlGYWdKVmJOU0NoZDhrRytSc3JnCm5jNjRQN2pGajhpeGlMdnlTdkZRYkNMYUJJak45Q2VDTndMMnhDSUlCN1B4MTY4UzJlUlZIYUZRMndmVCtjeUMKVnRVPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-prod-v2-us-east-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:573252405782:key/1d172c69-c28b-4072-846b-a2a97eea6a91"
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
ip-10-2-80-110.ec2.internal   Ready    <none>   14h     v1.32.8-eks-99d6cc0   10.2.80.110   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-80-141.ec2.internal   Ready    <none>   3d14h   v1.32.8-eks-99d6cc0   10.2.80.141   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-80-58.ec2.internal    Ready    <none>   14h     v1.32.8-eks-99d6cc0   10.2.80.58    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-80-88.ec2.internal    Ready    <none>   11h     v1.32.8-eks-99d6cc0   10.2.80.88    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-82-200.ec2.internal   Ready    <none>   5h44m   v1.32.8-eks-99d6cc0   10.2.82.200   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-82-226.ec2.internal   Ready    <none>   11h     v1.32.8-eks-99d6cc0   10.2.82.226   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-82-242.ec2.internal   Ready    <none>   10h     v1.32.8-eks-99d6cc0   10.2.82.242   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-82-26.ec2.internal    Ready    <none>   5h43m   v1.32.8-eks-99d6cc0   10.2.82.26    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-82-50.ec2.internal    Ready    <none>   5h41m   v1.32.8-eks-99d6cc0   10.2.82.50    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-83-185.ec2.internal   Ready    <none>   11h     v1.32.8-eks-99d6cc0   10.2.83.185   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-83-30.ec2.internal    Ready    <none>   3d4h    v1.32.8-eks-99d6cc0   10.2.83.30    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   
ip-10-2-83-69.ec2.internal    Ready    <none>   21h     v1.32.8-eks-99d6cc0   10.2.83.69    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-us-east-1
ip-10-2-84-174.ec2.internal   Ready    <none>   21h     v1.32.8-eks-99d6cc0   10.2.84.174   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-us-east-1
ip-10-2-84-205.ec2.internal   Ready    <none>   110m    v1.32.8-eks-99d6cc0   10.2.84.205   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                          STATUS   ROLES    TAINTS
ip-10-2-80-110.ec2.internal   Ready    <none>   <none>
ip-10-2-80-141.ec2.internal   Ready    <none>   <none>
ip-10-2-80-58.ec2.internal    Ready    <none>   <none>
ip-10-2-80-88.ec2.internal    Ready    <none>   <none>
ip-10-2-82-200.ec2.internal   Ready    <none>   <none>
ip-10-2-82-226.ec2.internal   Ready    <none>   <none>
ip-10-2-82-242.ec2.internal   Ready    <none>   <none>
ip-10-2-82-26.ec2.internal    Ready    <none>   <none>
ip-10-2-82-50.ec2.internal    Ready    <none>   <none>
ip-10-2-83-185.ec2.internal   Ready    <none>   <none>
ip-10-2-83-30.ec2.internal    Ready    <none>   <none>
ip-10-2-83-69.ec2.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-2-84-174.ec2.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-2-84-205.ec2.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON             OBJECT                             MESSAGE
12m         Normal    Unconsolidatable   node/ip-10-2-80-110.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
12m         Normal    Unconsolidatable   node/ip-10-2-80-141.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
12m         Normal    Unconsolidatable   node/ip-10-2-80-58.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
12m         Normal    Unconsolidatable   node/ip-10-2-80-88.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
12m         Normal    Unconsolidatable   node/ip-10-2-82-200.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
12m         Normal    Unconsolidatable   node/ip-10-2-82-226.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
12m         Normal    Unconsolidatable   node/ip-10-2-82-242.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
12m         Normal    Unconsolidatable   node/ip-10-2-82-50.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
12m         Normal    Unconsolidatable   node/ip-10-2-83-185.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
12m         Normal    Unconsolidatable   node/ip-10-2-83-30.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
112s        Warning   Unsupported        node/ip-10-2-83-69.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
5m17s       Warning   Unsupported        node/ip-10-2-84-174.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
12m         Normal    Unconsolidatable   node/ip-10-2-84-205.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                             NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                    cluster-monitoring-pdb                    N/A             1                 1                     297d
karpenter                             karpenter                                 N/A             1                 1                     2y96d
kube-system                           coredns                                   N/A             1                 1                     624d
kube-system                           ebs-csi-controller                        N/A             1                 1                     2y100d
kyverno                               kyverno-admission-controller              1               N/A               2                     606d
orb-fleet-backend-docs-server         orb-fleet-backend-docs-server-pdb         N/A             1                 0                     157d
orb-fleet-backend-event-server        orb-fleet-backend-event-server-pdb        N/A             1                 0                     185d
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     290d
orb-fleet-backend-internal            orb-fleet-backend-internal-pdb            N/A             1                 1                     290d
orb-fleet-backend-job-server          orb-fleet-backend-job-server-pdb          N/A             1                 0                     217d
orb-fleet-backend-monitoring-server   orb-fleet-backend-monitoring-server-pdb   N/A             1                 0                     217d
signup-service                        signup-service-pdb                        N/A             1                 1                     81d
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

Generated on: Tue Sep 23 11:44:24 CEST 2025
