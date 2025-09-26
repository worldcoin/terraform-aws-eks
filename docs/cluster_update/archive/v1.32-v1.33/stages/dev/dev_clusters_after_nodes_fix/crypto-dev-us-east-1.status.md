# Cluster recon for tfh-crypto-dev-infra,us-east-1,crypto-dev-us-east-1

TFH EKS login...
```console
2025/09/17 14:43:37 INFO Logging into AWS
2025/09/17 14:43:37 INFO Token found and valid
2025/09/17 14:43:40 INFO Switch WARP Virtual Network to name=tunnel-vpc-crypto-dev-us-east-1 id=b01f88c2-eca1-401d-b2ae-3a9e8c4edeee
2025/09/17 14:43:41 INFO Active WARP Virtual Network id=b01f88c2-eca1-401d-b2ae-3a9e8c4edeee
Updated context tfh-crypto-dev-us-east-1 in /Users/lukasz.glowacki/.kube/config
```

Current version: 1.33
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

Cluster version up to date - no update insights

Show full cluster description:
```json
{
    "cluster": {
        "name": "crypto-dev-us-east-1",
        "arn": "arn:aws:eks:us-east-1:348981876543:cluster/crypto-dev-us-east-1",
        "createdAt": "2023-10-03T11:25:20.240000+02:00",
        "version": "1.33",
        "endpoint": "https://9286F4C7EEB7E9A806A8DDDF6010A4DC.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::348981876543:role/eks-cluster-crypto-dev-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0995f3ab09592f826",
                "subnet-0079ef7c5c14802a4",
                "subnet-0c9586b1c73e72ab1"
            ],
            "securityGroupIds": [
                "sg-0e515dca4689bf3b7"
            ],
            "clusterSecurityGroupId": "sg-003de5107da5229cf",
            "vpcId": "vpc-0f3b4956f3926b996",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/9286F4C7EEB7E9A806A8DDDF6010A4DC"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJTTFIVUkvcWZFMWN3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TXpFd01ETXdPVE16TURsYUZ3MHpNekE1TXpBd09UTXpNRGxhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURxRU1EUlN0NzBnMVFhUkpDQ3RwcmlERGtMWGdaVlVzSlJvUi90c29wb1hKTTJYUEJhbkZ3enFGYVIKZ0R5bUhHY0xicGoxOGNQTldURXFaaVh6WWJhOFdCQk1EV2pzbWRVVVVDSTUzZDlvcG4rS3Nqb3lCRkVHTkRSbwo0S0ZIQmo2VjNyenFUWUVSRjJzbGNNcEFuTk53UE14YTQ0dk1paGhkVVlveUtLb1JkeDhacE5oU28wYTJoU1psCjBXMjFHUWFJVFQ5bktGbWtaYTVrVmFaWDU4WGRLcVN6K0ZVS0k1MGxCM2JXeWtHbFF0eXJBVHA0U0pjeXVLNlEKT1F0YmhsRnRCZXgyQmFEUE00RUNhaEJ4and0UnhZWU5NUWlBL1EwS2VOR0F0RHhvT2l0WnpJTldQQktFYVhWbApNYlpWZ1FQSFVUUS84WHFDejJ5UGc2TXpPaEVoQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUYmJMUnh3WkFwRk9WZi8vd2ZVUG1WeUlsRDdEQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQTFjc3M0SDh0VApvdEh3ejkrcWN1cG9WUUs1Uno0cjVJTDRrTDFIbkdDaUVhaWFDVjNSQlIyenFHUVJkaFNSdG1RWVNLekNEVjE2Cmx3Mlh1NlhMSGhrMHNWcDhCQXNnSHRqSGVPK3BDMkhqcWx2d2NQT2hSYU5oU1IwaHM0bEh0Nkx2UTRCa3JUUisKckdTS3lDOHhFT2ttWTBkdHc2bEFhN2pWNlQrUXMxWEtNV21iOHlmc0lpK24ycFNsMGFDSGh6L0ZheXNqaUVjOQpOV1dkb2dKSThud0RoN0tVTzdZMDc0R1d6WXk1OVJkbTI3K1NRc283RVIxemJLVWFoK2p0R09LL055T2RISlN3CnNodnpIZEZ2M0diOUxVV1R6NGJpUUIrODBncWZCUDlSd1dkaFZqZUQ2ZzF4V21XQXNQT1BwRkJ2NEFSMGNjN0gKRDluSEROdi9nZ3VKCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.13",
        "tags": {
            "Environment": "dev",
            "karpenter.sh/discovery": "crypto-dev-us-east-1",
            "Team": "crypto",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:348981876543:key/d7e8feb7-c86d-40f6-a009-892a60eccfde"
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
NAME                           STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                   CONTAINER-RUNTIME
ip-10-2-192-155.ec2.internal   Ready    <none>   21h     v1.33.4-eks-99d6cc0   10.2.192.155   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-2-192-63.ec2.internal    Ready    <none>   4h6m    v1.33.4-eks-99d6cc0   10.2.192.63    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-2-193-204.ec2.internal   Ready    <none>   70m     v1.33.4-eks-99d6cc0   10.2.193.204   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-2-194-231.ec2.internal   Ready    <none>   21h     v1.33.4-eks-99d6cc0   10.2.194.231   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-2-195-133.ec2.internal   Ready    <none>   4h7m    v1.33.4-eks-99d6cc0   10.2.195.133   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-2-197-166.ec2.internal   Ready    <none>   7h13m   v1.33.4-eks-99d6cc0   10.2.197.166   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON              OBJECT                              MESSAGE
102s        Warning   Unsupported         node/ip-10-2-192-155.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
7m49s       Normal    Unconsolidatable    node/ip-10-2-192-63.ec2.internal    Can't replace with a cheaper node
51s         Normal    DisruptionBlocked   node/ip-10-2-193-204.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=semaphore-mtb-orb-ethereum/semaphore-mtb-orb-ethereum-deletion-pdb)
4m56s       Normal    DisruptionBlocked   node/ip-10-2-193-204.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=semaphore-mtb-orb-ethereum/semaphore-mtb-orb-ethereum-pdb)
6m29s       Warning   Unsupported         node/ip-10-2-194-231.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
7m49s       Normal    Unconsolidatable    node/ip-10-2-195-133.ec2.internal   Can't replace with a cheaper node
17m         Normal    Unconsolidatable    node/ip-10-2-197-166.ec2.internal   Can't remove without creating 2 candidates
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                       NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring              cluster-monitoring-pdb                    N/A             1                 1                     292d
default                         mysql-1736275338                          N/A             1                 0                     252d
karpenter                       karpenter                                 N/A             1                 1                     714d
kube-system                     coredns                                   N/A             1                 1                     648d
kube-system                     ebs-csi-controller                        N/A             1                 1                     715d
kyverno                         kyverno-admission-controller              1               N/A               2                     602d
semaphore-mtb-orb-ethereum      semaphore-mtb-orb-ethereum-deletion-pdb   50%             N/A               0                     287d
semaphore-mtb-orb-ethereum      semaphore-mtb-orb-ethereum-pdb            50%             N/A               0                     287d
signup-sequencer-orb-ethereum   signup-sequencer-orb-ethereum-pdb         N/A             1                 1                     296d
tx-sitter-monolith              tx-sitter-monolith-pdb                    N/A             1                 1                     170d
world-tree                      world-tree-pdb                            N/A             1                 1                     214d
```

Cluster version up to date - no pluto apis detection rquired
