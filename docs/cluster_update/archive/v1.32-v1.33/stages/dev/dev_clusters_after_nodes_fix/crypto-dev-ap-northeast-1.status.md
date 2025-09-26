# Cluster recon for tfh-crypto-dev-infra,ap-northeast-1,crypto-dev-ap-northeast-1

TFH EKS login...
```console
2025/09/17 13:54:46 INFO Logging into AWS
2025/09/17 13:54:46 INFO Token found and valid
2025/09/17 13:54:49 INFO Switch WARP Virtual Network to name=tunnel-vpc-crypto-dev-ap-northeast-1 id=dbed604d-6073-4ef6-9b93-7b15944443aa
2025/09/17 13:54:50 INFO Active WARP Virtual Network id=dbed604d-6073-4ef6-9b93-7b15944443aa
Updated context tfh-crypto-dev-ap-northeast-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "crypto-dev-ap-northeast-1",
        "arn": "arn:aws:eks:ap-northeast-1:348981876543:cluster/crypto-dev-ap-northeast-1",
        "createdAt": "2025-06-26T21:42:06.210000+02:00",
        "version": "1.33",
        "endpoint": "https://FAE271D7C31CD6F52277C277B69FA213.gr7.ap-northeast-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::348981876543:role/eks-cluster-crypto-dev-ap-northeast-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-003c9ea66cade3ef3",
                "subnet-08c9c2231220245e9",
                "subnet-06767ae08ee853310"
            ],
            "securityGroupIds": [
                "sg-089475f57622993c0"
            ],
            "clusterSecurityGroupId": "sg-0a7d8423f451b5f5d",
            "vpcId": "vpc-09a8100e46ecc61dc",
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
                "issuer": "https://oidc.eks.ap-northeast-1.amazonaws.com/id/FAE271D7C31CD6F52277C277B69FA213"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJUmlhT3ZLSnlYVXN3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMk1qWXhPVFF4TWpKYUZ3MHpOVEEyTWpReE9UUTJNakphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURZRlFmYkZ0SktPMUE1ZnFXejR6aE5WQzBhQVU5NUE3UG9yd3UxM0VoQ2Q0N3duTmlsbkFwVVBBOCsKa1dFcGNPVVJ4eEdwOXFyT2k0MThrU1BVUmZWLzZ4VVpkVGdsdGQyektBQTMycHdVV1REbGV5akNDUVV3N3V0QgpFKzR5SFB6eHkyWkpodTlhSzVHSDdEOXg1cytoTkMwZy8rK0tDemtrSy9TTjJab0NaNytWa3hySWN4ejI0S2ZKCmhIVjlSV3BNY3VvVExucUp2QmFOSnVpWWZjc2kxQXgrQjkxYnVPMGJwUjgvRHBFM3FIYWE3YUdDSkRvQTI3NEcKaUZnN2NlSExCaytQbXVZY1lEZktsa1VmOG1qa0FFYlBSTDc0K0prVzdRQUszNG1TZWJTN0x2NUtNOE9QazBlcwpEeFRqMnZNOGRIRVVGaW9GYUFtOWFaN20rRW5YQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUMFZQaGk2Mnk5bnBtU0tEdWM2QUVkZEQwZ016QVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRREhpdWRZcnU1TQpSU0RLRWprVWNvNmFINEcyUnFqRFE4V21hYWMxYUduVHd3RUtLTytybm9hUGRrU0VOT0JaYnFHY0tKanppVzBEClJOeTlCN1RSMXdQeit0VlhnUkwvc0xLRHdmT1piYWZJaE91TE9ueTNGdWptcVpubDNzWEFvTWZtK3F3cmVhTUUKZ3FnYS95K0hsdEFycGRYdVZsTXZOdXV5YXN5QjArUFM1N09OZEtKeERJdGFZWFpxd3gvNGxiWk0wRmpmTFZlOAp0bENDOEZGSkNyeTAvZFBGa3RpUGgxRXlLWEUyMkF6U0NBM3hOc09sejROT0VBTmswUk5SY1NMY0ZESU5NbzM0CnRaK3ZXT1ZtT1NWR2VHTVA5TzFIYmlNK1AzMWwxWm15andSOUI0czk4QTYveVdIeDRsWHVjL2ZoU1FQcjRxT0EKTDc3Qk0veVpETFJDCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.13",
        "tags": {
            "Environment": "dev",
            "karpenter.sh/discovery": "crypto-dev-ap-northeast-1",
            "Team": "crypto",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:ap-northeast-1:348981876543:key/e01f84d6-cdc1-4bba-8c0c-9d8ec0f8b275"
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
NAME                                              STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME
ip-10-45-48-4.ap-northeast-1.compute.internal     Ready    <none>   21h     v1.33.4-eks-99d6cc0   10.45.48.4     <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
ip-10-45-49-19.ap-northeast-1.compute.internal    Ready    <none>   7h10m   v1.33.4-eks-99d6cc0   10.45.49.19    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.aarch64   containerd://1.7.27
ip-10-45-51-55.ap-northeast-1.compute.internal    Ready    <none>   20h     v1.33.4-eks-99d6cc0   10.45.51.55    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
ip-10-45-51-70.ap-northeast-1.compute.internal    Ready    <none>   7h10m   v1.33.4-eks-99d6cc0   10.45.51.70    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
ip-10-45-53-222.ap-northeast-1.compute.internal   Ready    <none>   21h     v1.33.4-eks-99d6cc0   10.45.53.222   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON              OBJECT                                                 MESSAGE
3m29s       Warning   Unsupported         node/ip-10-45-48-4.ap-northeast-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
55m         Normal    Unconsolidatable    node/ip-10-45-49-19.ap-northeast-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
5m10s       Normal    Unconsolidatable    node/ip-10-45-49-19.ap-northeast-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
55m         Normal    Unconsolidatable    node/ip-10-45-51-55.ap-northeast-1.compute.internal    Can't remove without creating 2 candidates
2m47s       Normal    Unconsolidatable    node/ip-10-45-51-55.ap-northeast-1.compute.internal    Can't remove without creating 2 candidates
51m         Normal    DisruptionBlocked   node/ip-10-45-51-70.ap-northeast-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
96s         Normal    DisruptionBlocked   node/ip-10-45-51-70.ap-northeast-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
3m41s       Warning   Unsupported         node/ip-10-45-53-222.ap-northeast-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE            NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring   cluster-monitoring-pdb         N/A             1                 1                     82d
karpenter            karpenter                      N/A             1                 1                     82d
kube-system          coredns                        N/A             1                 1                     82d
kube-system          ebs-csi-controller             N/A             1                 1                     82d
kyverno              kyverno-admission-controller   1               N/A               2                     82d
```

Cluster version up to date - no pluto apis detection rquired
