# Cluster recon for tfh-crypto-stage-infra,us-east-1,crypto-v2-stage-us-east-1,tunnel-vpc-crypto-stage-us-east-1

TFH EKS login...
```console
2025/09/18 11:10:52 INFO Logging into AWS
2025/09/18 11:10:52 INFO Token found and valid
2025/09/18 11:10:54 INFO Switch WARP Virtual Network to name=tunnel-vpc-crypto-stage-us-east-1 id=0de741d8-76d8-4217-83f7-ac2cd6a9bf86
2025/09/18 11:10:55 INFO Active WARP Virtual Network id=0de741d8-76d8-4217-83f7-ac2cd6a9bf86
Updated context tfh-crypto-v2-stage-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "7cc36a62-9000-4b70-87df-22e6e4f34cc1",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T00:54:04+02:00",
            "lastTransitionTime": "2024-12-21T09:49:03+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "06280f3f-45e9-4411-980e-2fc14ce6fbdd",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T00:54:16+02:00",
            "lastTransitionTime": "2024-12-21T09:49:03+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "210cd6f0-b44a-423f-91ad-9abb6f47d77d",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T00:54:16+02:00",
            "lastTransitionTime": "2025-07-29T12:24:03+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "334c5e63-08b4-4814-8e99-f44704e65925",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T00:54:04+02:00",
            "lastTransitionTime": "2025-09-06T03:49:04+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "a37d096d-04b1-4663-88de-62a700852ab7",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-18T00:54:04+02:00",
            "lastTransitionTime": "2024-12-21T09:49:03+01:00",
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
        "name": "crypto-v2-stage-us-east-1",
        "arn": "arn:aws:eks:us-east-1:267301337261:cluster/crypto-v2-stage-us-east-1",
        "createdAt": "2023-03-30T19:13:21.929000+02:00",
        "version": "1.32",
        "endpoint": "https://941A1E510BE7C4BDA4761C460CA55576.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::267301337261:role/eks-cluster-crypto-v2-stage-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0a642daedb6209b70",
                "subnet-046871a255e761851",
                "subnet-019629458b56cda58"
            ],
            "securityGroupIds": [
                "sg-0851857595b759526"
            ],
            "clusterSecurityGroupId": "sg-0b35304c396f8edbc",
            "vpcId": "vpc-0e6e9f601cadd3fa9",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/941A1E510BE7C4BDA4761C460CA55576"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1ETXpNREUzTVRnME5Wb1hEVE16TURNeU56RTNNVGcwTlZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTUlWClYveVhiUmVKTE9jVUU4ZHhwWXZpZ0hUdWNGOHF4OEN2OUNhWWpTKyt1T3BtNUVUUnFJS0dHUGg0SlNWaGtGMjkKN3lnNXVsajhtZnY4OU91R2NBT0ROVXh6M253U2pwWVB5NXFBVGV6L2JFWHgxdy9XdUNvK0pHSm1VZmQveGV6TQp0bFFpdjZ5YUJBS2ZxZnk1UVEvbVB0Y0s3YTNQUk8raDg4QmF3bUxsd256OGNGT0NtUVNzSjdWWkNQak5YaGxpCkFvMGFRYVBzUDR1V0Vac0pFVndxWDNBeHFwRWZWQm9vKzhMaWNjZ0IxamxPVGtwL0NvTi9wTFNFVmJzY0RXanIKMkN1SGtXb0s2Zkg3Y3ZtaGgrb2Fpa0FMR0hWQzhFOFJFWGs4VldtNmQ2cGJHUFhwZ2VJOXkvM2dzNmFOelVlUgphMkhxQ0RlWENDM3gxN21MTXVzQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZKb2RCcFRDbWJnU0JPeWZ0aXdIZ0pVaGZTcHBNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBQWxGcUNxUjNGTmZOZEJyaFJHdgpnRmpHYUgzMzMrTzJwZnRIZVVoYmUrUVlqVS81NktYMEg5RUVuRUUxeGc4VTZ4NDZhZ0JVT2MycGkyZHh3TGRnCmNWYkttRjFoWkd4V25QL1ZLZnkzdFZnOEVERHJYYUx6bWdIc3FPdWZKSnZ4aVZyNWxnWW11TkJmUUxEZVQ4STEKMFJSN0xYSzRBRHQrVCtYQkdjdTNpM3VwblgvNi9HYU56eW1sOVpUelNWMDJ6STN6UFJZR2VISDRWaUhOelc3VApCVXNyUWFmc2xWRlgyWnkyWlVWczlmMmU2VWY0UkV0a0hFM1ZmbFRiVVdEM3o4TWJLb2R4SHNzd2RkbUsvQU5oCjNadWlhY0xDN1BiTWlXK0hRTEl2b3BxaTdFR0F0aGcwS1YrOHRMeHM0WEpURFJ5cVZwM05KYiswVXpKZ05tTW8KNzA0PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.16",
        "tags": {
            "Environment": "stage",
            "karpenter.sh/discovery": "crypto-v2-stage-us-east-1",
            "Team": "crypto",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:267301337261:key/8815fc76-171a-44b5-b5d9-67fe332f3dea"
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
NAME                          STATUS   ROLES    AGE     VERSION               INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME
ip-10-0-16-117.ec2.internal   Ready    <none>   2d      v1.32.8-eks-99d6cc0   10.0.16.117   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-16-215.ec2.internal   Ready    <none>   23d     v1.32.7-eks-3abbec1   10.0.16.215   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-16-49.ec2.internal    Ready    <none>   23d     v1.32.7-eks-3abbec1   10.0.16.49    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-17-157.ec2.internal   Ready    <none>   23d     v1.32.7-eks-3abbec1   10.0.17.157   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-17-229.ec2.internal   Ready    <none>   36h     v1.32.8-eks-99d6cc0   10.0.17.229   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-17-4.ec2.internal     Ready    <none>   3h59m   v1.32.8-eks-99d6cc0   10.0.17.4     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-18-204.ec2.internal   Ready    <none>   12h     v1.32.8-eks-99d6cc0   10.0.18.204   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-18-208.ec2.internal   Ready    <none>   19d     v1.32.7-eks-3abbec1   10.0.18.208   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-19-150.ec2.internal   Ready    <none>   8d      v1.32.8-eks-99d6cc0   10.0.19.150   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-19-163.ec2.internal   Ready    <none>   23d     v1.32.7-eks-3abbec1   10.0.19.163   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-19-221.ec2.internal   Ready    <none>   9d      v1.32.8-eks-99d6cc0   10.0.19.221   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-20-120.ec2.internal   Ready    <none>   23d     v1.32.7-eks-3abbec1   10.0.20.120   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-20-205.ec2.internal   Ready    <none>   9d      v1.32.8-eks-99d6cc0   10.0.20.205   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-20-43.ec2.internal    Ready    <none>   2d1h    v1.32.8-eks-99d6cc0   10.0.20.43    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-21-103.ec2.internal   Ready    <none>   2d14h   v1.32.8-eks-99d6cc0   10.0.21.103   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
ip-10-0-21-104.ec2.internal   Ready    <none>   24d     v1.32.7-eks-3abbec1   10.0.21.104   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                             MESSAGE
4m49s       Normal    DisruptionBlocked         node/ip-10-0-16-117.ec2.internal   Node is nominated for a pending pod
15m         Normal    Starting                  node/ip-10-0-16-117.ec2.internal   
2m7s        Normal    DisruptionBlocked         node/ip-10-0-16-215.ec2.internal   Node is deleting or marked for deletion
3m2s        Warning   FailedDraining            node/ip-10-0-16-215.ec2.internal   Failed to drain node, 4 pods are waiting to be evicted
15m         Normal    Starting                  node/ip-10-0-16-215.ec2.internal   
2m22s       Warning   FailedDraining            node/ip-10-0-16-49.ec2.internal    Failed to drain node, 2 pods are waiting to be evicted
2m7s        Normal    DisruptionBlocked         node/ip-10-0-16-49.ec2.internal    Node is deleting or marked for deletion
15m         Normal    Starting                  node/ip-10-0-16-49.ec2.internal    
3m26s       Warning   FailedDraining            node/ip-10-0-17-157.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
2m7s        Normal    DisruptionBlocked         node/ip-10-0-17-157.ec2.internal   Node is deleting or marked for deletion
15m         Normal    Starting                  node/ip-10-0-17-157.ec2.internal   
67s         Normal    DisruptionBlocked         node/ip-10-0-17-229.ec2.internal   Node is nominated for a pending pod
15m         Normal    Starting                  node/ip-10-0-17-229.ec2.internal   
3m31s       Normal    ControllerVersionNotice   node/ip-10-0-17-4.ec2.internal     The node is managed by VPC resource controller version v1.7.9
3m31s       Warning   Unsupported               node/ip-10-0-17-4.ec2.internal     The instance type m8i-flex.16xlarge is not supported yet by the vpc resource controller
33m         Normal    DisruptionBlocked         node/ip-10-0-17-4.ec2.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-app-insertion-b10t30-69b6cc49f9-g2j5k)
2m58s       Normal    DisruptionBlocked         node/ip-10-0-17-4.ec2.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b10t30-7d47bb56c9-t57rk)
15m         Normal    Starting                  node/ip-10-0-17-4.ec2.internal     
3m18s       Normal    DisruptionBlocked         node/ip-10-0-18-204.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-app-deletion-b10t30-56b5d5c94f-j4x2q)
15m         Normal    Starting                  node/ip-10-0-18-204.ec2.internal   
99s         Warning   FailedDraining            node/ip-10-0-18-208.ec2.internal   Failed to drain node, 2 pods are waiting to be evicted
2m7s        Normal    DisruptionBlocked         node/ip-10-0-18-208.ec2.internal   Node is deleting or marked for deletion
15m         Normal    Starting                  node/ip-10-0-18-208.ec2.internal   
2m28s       Normal    DisruptionBlocked         node/ip-10-0-19-150.ec2.internal   Node is deleting or marked for deletion
3m7s        Warning   FailedDraining            node/ip-10-0-19-150.ec2.internal   Failed to drain node, 2 pods are waiting to be evicted
15m         Normal    Starting                  node/ip-10-0-19-150.ec2.internal   
17m         Warning   FailedDraining            node/ip-10-0-19-163.ec2.internal   Failed to drain node, 7 pods are waiting to be evicted
2m7s        Normal    DisruptionBlocked         node/ip-10-0-19-163.ec2.internal   Node is deleting or marked for deletion
15m         Normal    Starting                  node/ip-10-0-19-163.ec2.internal   
3m4s        Warning   FailedDraining            node/ip-10-0-19-163.ec2.internal   Failed to drain node, 6 pods are waiting to be evicted
2m4s        Warning   Unsupported               node/ip-10-0-19-221.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
15m         Normal    Starting                  node/ip-10-0-19-221.ec2.internal   
18m         Warning   FailedDraining            node/ip-10-0-20-120.ec2.internal   Failed to drain node, 5 pods are waiting to be evicted
2m7s        Normal    DisruptionBlocked         node/ip-10-0-20-120.ec2.internal   Node is deleting or marked for deletion
15m         Normal    Starting                  node/ip-10-0-20-120.ec2.internal   
2m8s        Warning   FailedDraining            node/ip-10-0-20-120.ec2.internal   Failed to drain node, 4 pods are waiting to be evicted
3m29s       Warning   Unsupported               node/ip-10-0-20-205.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
15m         Normal    Starting                  node/ip-10-0-20-205.ec2.internal   
15m         Normal    DisruptionBlocked         node/ip-10-0-20-43.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
15m         Normal    Starting                  node/ip-10-0-20-43.ec2.internal    
15m         Normal    Starting                  node/ip-10-0-21-103.ec2.internal   
104s        Warning   FailedDraining            node/ip-10-0-21-104.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
2m7s        Normal    DisruptionBlocked         node/ip-10-0-21-104.ec2.internal   Node is deleting or marked for deletion
15m         Normal    Starting                  node/ip-10-0-21-104.ec2.internal   
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                                     NAME                                                MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
backup-service                                backup-service-pdb                                  N/A             1                 1                     154d
cluster-monitoring                            cluster-monitoring-pdb                              N/A             1                 1                     292d
ctf-onboarding                                ctf-onboarding-pdb                                  N/A             1                 1                     212d
karpenter                                     karpenter                                           N/A             1                 1                     2y172d
kube-system                                   coredns                                             N/A             1                 1                     645d
kube-system                                   ebs-csi-controller                                  N/A             1                 1                     2y172d
kyverno                                       kyverno-admission-controller                        1               N/A               2                     603d
nfc-uniqueness-service                        mpc-service-pdb                                     N/A             1                 1                     128d
nfc-uniqueness-service                        nfc-uniqueness-service-pdb                          N/A             1                 1                     297d
nfc-uniqueness-service                        sod-service-pdb                                     N/A             1                 1                     297d
proxyd                                        proxyd-pdb                                          N/A             1                 1                     143d
semaphore-mtb-orb                             semaphore-mtb-app-deletion-b10t30-pdb               N/A             1                 1                     288d
semaphore-mtb-orb                             semaphore-mtb-app-insertion-b10t30-pdb              N/A             1                 1                     288d
semaphore-mtb-orb                             semaphore-mtb-orb-deletion-b10t30-pdb               N/A             1                 1                     288d
semaphore-mtb-orb                             semaphore-mtb-orb-insertion-b100t30-pdb             N/A             1                 1                     288d
semaphore-mtb-orb                             semaphore-mtb-orb-insertion-b1200t30-pdb            N/A             1                 0                     288d
signup-sequencer-app                          signup-sequencer-app-pdb                            N/A             1                 1                     296d
signup-sequencer-nfc-ethereum                 signup-sequencer-nfc-ethereum-pdb                   N/A             1                 1                     296d
signup-sequencer-nfc-secure-ethereum          signup-sequencer-nfc-secure-ethereum-pdb            N/A             1                 1                     296d
signup-sequencer-orb-ethereum                 signup-sequencer-orb-ethereum-pdb                   N/A             1                 1                     296d
signup-sequencer-phone-ethereum               signup-sequencer-phone-ethereum-pdb                 N/A             1                 1                     296d
tx-data-ingress                               tx-data-ingress-pdb                                 N/A             1                 1                     292d
tx-sitter-monolith                            tx-sitter-monolith-pdb                              N/A             1                 1                     170d
world-chain-sepolia-archive-node-reth         world-chain-sepolia-archive-node-reth-op-node-pdb   N/A             1                 1                     218d
world-chain-sepolia-archive-node-reth         world-chain-sepolia-archive-node-reth-op-reth-pdb   N/A             1                 1                     218d
world-chain-sepolia-archive-node              world-chain-sepolia-archive-node-op-geth-pdb        N/A             1                 1                     222d
world-chain-sepolia-archive-node              world-chain-sepolia-archive-node-op-node-pdb        N/A             1                 1                     222d
world-id-relay                                world-id-relay-pdb                                  50%             N/A               0                     299d
world-tree                                    world-tree-pdb                                      N/A             1                 1                     215d
worldcoin-chainlink-datastreams-transmitter   worldcoin-chainlink-datastreams-transmitter-pdb     N/A             1                 1                     174d
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
