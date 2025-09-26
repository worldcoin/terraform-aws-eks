# Cluster recon for tfh-orb-stage-infra,us-east-1,orb-stage-v2-us-east-1,tunnel-vpc-orb-stage-us-east-1

TFH EKS login...
```console
2025/09/18 11:13:37 INFO Logging into AWS
2025/09/18 11:13:37 INFO Token found and valid
2025/09/18 11:13:39 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-stage-us-east-1 id=44a9273a-4be4-42db-9ad7-e5b86d9cabe4
2025/09/18 11:13:41 INFO Active WARP Virtual Network id=44a9273a-4be4-42db-9ad7-e5b86d9cabe4
Updated context tfh-orb-stage-v2-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "089dc2b9-132d-47d3-89f1-15bd502277fb",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T04:54:27+02:00",
            "lastTransitionTime": "2024-12-21T14:24:04+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "50913f77-da1d-4e57-9342-360dae808087",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T04:54:27+02:00",
            "lastTransitionTime": "2025-07-28T21:14:04+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "8b4eba03-2491-4cb7-9fc9-1ef2d8ab11de",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T04:54:11+02:00",
            "lastTransitionTime": "2025-09-06T08:29:05+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "4d2a7306-735f-4abb-8f95-94ab0a9927e6",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T04:54:11+02:00",
            "lastTransitionTime": "2024-12-21T14:24:04+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "397fe774-3e31-45d6-b879-368fb273ff7c",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T04:54:11+02:00",
            "lastTransitionTime": "2024-12-21T14:24:04+01:00",
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
        "name": "orb-stage-v2-us-east-1",
        "arn": "arn:aws:eks:us-east-1:510867353226:cluster/orb-stage-v2-us-east-1",
        "createdAt": "2023-04-12T17:18:46.057000+02:00",
        "version": "1.32",
        "endpoint": "https://30288A90E82763184318DF98C85E4FC0.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::510867353226:role/eks-cluster-orb-stage-v2-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0398c9f39a9b3c8ac",
                "subnet-02ff55c4b25cccfb8",
                "subnet-0ed580ddb73792d37"
            ],
            "securityGroupIds": [
                "sg-05ee6ad321717a45b"
            ],
            "clusterSecurityGroupId": "sg-09129eb54cad0b816",
            "vpcId": "vpc-0f5ea8952b9a4edf0",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/30288A90E82763184318DF98C85E4FC0"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EUXhNakUxTWpRME0xb1hEVE16TURRd09URTFNalEwTTFvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTVBVCjUvUWdXSmR2NXQ1bitRa05LeXVOcVhHajVmMEl0TXlmRjJ0Wi9qN3dCcFpwNFFkSG4yZjZ6THdFVWJCY3YyQmwKZGVIT2NPTHVTSGtUKzZLNnJqRUxXV21MaDdCZVpMZ1dXQ1NpKzlQSGk0WU93dDRKMVUvS0ljd2xpNG9WVVo2egpJQXVsMngxZHd1RFc0cythSENicU4wdUI4M2NBTVE3b1ZqNnJCR1hjTWFNdm5JR3MxSHdKY0RwWWU1b0l1a1JQCmdlMGVvVk5MVk9saStKczI0YXpxRDZjYXovL05aMFExZU1xMkJIaVY5RWhXYlZuY1FOdnpMTUM0Vkd4a2V2YnIKdW1scnlRVkZHUG9GNHdWS1VvSmZScjEyVEV0NllJeUY1WVJUY0EwQTkyZk1ObE1OYTBiUk5MZFk4L2xMZ21acworVE5QelVCZ3BZRm1pR0RPM2s4Q0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZGZHI5NE5nVzhaRFhyUnNvKzU3SHFwT0svYWdNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBQ0tNY1U3blNmVG84SnFQc0tESQpicHNtZ2l6N1k1dDE5aE9PeHpvMW96dDU2L0d1dkhqNVoxbnpvTTlISWRMbGJFTm0zbE9JWFZNQ3BsMGRhYTBTCnRTRGhkR0hBeHVRMGlROEdQZGRqM0I4aXlTUnpCb3hNTUJJa2xlT1lrOGdVS1d0Y1FhRXZhWUo5L29aWWlIdmwKdnVQMzNwTXdTUnBmNitURDZHVnYwTEluRitJQXgySExrOTd6RzNKWHNpZC9vUXMrWDZlSTJTS2VacllpRFZmUQpoZFpiQm9YZnN6aHBYMjhRKytVL0I2UjFZQzlHelhPU2x5M2IxSVZ4MndVSUZ5bGduVmZNL0diNm5HcDdVNHFiCnhxc1FtSVpSdnNyT1p1eHNORkZ0V3hHQU81UVQrdHRpY2lxSjlvVlE2aWI3SkZ4alZ1eklBdEJJejJoZkYzbjgKVS9ZPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "stage",
            "karpenter.sh/discovery": "orb-stage-v2-us-east-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:510867353226:key/b90e5768-0c3b-4d7e-9703-051601ab11f0"
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
NAME                         STATUS   ROLES    AGE     VERSION               INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME
ip-10-1-0-107.ec2.internal   Ready    <none>   12h     v1.32.8-eks-99d6cc0   10.1.0.107    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-0-145.ec2.internal   Ready    <none>   8h      v1.32.8-eks-99d6cc0   10.1.0.145    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-0-171.ec2.internal   Ready    <none>   7h55m   v1.32.8-eks-99d6cc0   10.1.0.171    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-0-98.ec2.internal    Ready    <none>   9h      v1.32.8-eks-99d6cc0   10.1.0.98     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-1-100.ec2.internal   Ready    <none>   24h     v1.32.8-eks-99d6cc0   10.1.1.100    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-1-136.ec2.internal   Ready    <none>   9d      v1.32.8-eks-99d6cc0   10.1.1.136    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-1-186.ec2.internal   Ready    <none>   30h     v1.32.8-eks-99d6cc0   10.1.1.186    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-1-50.ec2.internal    Ready    <none>   19h     v1.32.8-eks-99d6cc0   10.1.1.50     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-1-52.ec2.internal    Ready    <none>   9h      v1.32.8-eks-99d6cc0   10.1.1.52     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-1-5-113.ec2.internal   Ready    <none>   9d      v1.32.8-eks-99d6cc0   10.1.5.113    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON              OBJECT                            MESSAGE
12m         Normal    Unconsolidatable    node/ip-10-1-0-107.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
18m         Normal    Starting            node/ip-10-1-0-107.ec2.internal   
37m         Normal    Unconsolidatable    node/ip-10-1-0-145.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
18m         Normal    DisruptionBlocked   node/ip-10-1-0-145.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
17m         Normal    Starting            node/ip-10-1-0-145.ec2.internal   
18m         Normal    DisruptionBlocked   node/ip-10-1-0-171.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
17m         Normal    Starting            node/ip-10-1-0-171.ec2.internal   
12m         Normal    DisruptionBlocked   node/ip-10-1-0-171.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
12m         Normal    Unconsolidatable    node/ip-10-1-0-98.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
17m         Normal    Starting            node/ip-10-1-0-98.ec2.internal    
18m         Normal    DisruptionBlocked   node/ip-10-1-1-100.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
37m         Normal    Unconsolidatable    node/ip-10-1-1-100.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
17m         Normal    Starting            node/ip-10-1-1-100.ec2.internal   
2m25s       Warning   Unsupported         node/ip-10-1-1-136.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    Starting            node/ip-10-1-1-136.ec2.internal   
2m56s       Normal    Unconsolidatable    node/ip-10-1-1-186.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
18m         Normal    Starting            node/ip-10-1-1-186.ec2.internal   
12m         Normal    Unconsolidatable    node/ip-10-1-1-50.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
18m         Normal    Starting            node/ip-10-1-1-50.ec2.internal    
3m6s        Normal    Unconsolidatable    node/ip-10-1-1-52.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
12m         Normal    DisruptionBlocked   node/ip-10-1-1-52.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
17m         Normal    Starting            node/ip-10-1-1-52.ec2.internal    
4m4s        Warning   Unsupported         node/ip-10-1-5-113.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
17m         Normal    Starting            node/ip-10-1-5-113.ec2.internal   
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                             NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                    cluster-monitoring-pdb                    N/A             1                 1                     292d
karpenter                             karpenter                                 N/A             1                 1                     2y147d
kube-system                           coredns                                   N/A             1                 1                     645d
kube-system                           ebs-csi-controller                        N/A             1                 1                     2y159d
kyverno                               kyverno-admission-controller              1               N/A               2                     603d
orb-fleet-backend-docs-server         orb-fleet-backend-docs-server-pdb         N/A             1                 0                     154d
orb-fleet-backend-event-server        orb-fleet-backend-event-server-pdb        N/A             1                 0                     181d
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     281d
orb-fleet-backend-internal            orb-fleet-backend-internal-pdb            N/A             1                 1                     281d
orb-fleet-backend-job-server          orb-fleet-backend-job-server-pdb          N/A             1                 0                     212d
orb-fleet-backend-job-worker          orb-fleet-backend-job-worker-pdb          N/A             1                 0                     216d
orb-fleet-backend-location-server     orb-fleet-backend-location-server-pdb     N/A             1                 0                     190d
orb-fleet-backend-monitoring-server   orb-fleet-backend-monitoring-server-pdb   N/A             1                 0                     212d
orb-fleet-backend-monitoring-worker   orb-fleet-backend-monitoring-worker-pdb   N/A             1                 0                     233d
signup-service                        signup-service-pdb                        N/A             1                 1                     76d
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
