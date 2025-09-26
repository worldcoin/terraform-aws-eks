# Cluster recon for tfh-security-dev-infra,us-east-1,security-dev-us-east-1

TFH EKS login...
```console
2025/09/17 13:54:10 INFO Logging into AWS
2025/09/17 13:54:10 INFO Token found and valid
2025/09/17 13:54:13 INFO Switch WARP Virtual Network to name=tunnel-vpc-security-dev-us-east-1 id=b06dcd41-d150-41d5-9376-ee3d0be9db41
2025/09/17 13:54:14 INFO Active WARP Virtual Network id=b06dcd41-d150-41d5-9376-ee3d0be9db41
Updated context tfh-security-dev-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "security-dev-us-east-1",
        "arn": "arn:aws:eks:us-east-1:302263068167:cluster/security-dev-us-east-1",
        "createdAt": "2025-05-14T13:53:11.013000+02:00",
        "version": "1.33",
        "endpoint": "https://152BF9D7C35B715FD142764ED3D5A83D.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::302263068167:role/eks-cluster-security-dev-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0a8e8b4eaca463e05",
                "subnet-0f1e8bc2b0ae232f1",
                "subnet-0ebfd0ab222aa6821"
            ],
            "securityGroupIds": [
                "sg-0a049236a48de5d43"
            ],
            "clusterSecurityGroupId": "sg-06c0a4758260d0f06",
            "vpcId": "vpc-05ab7c175bbfc9837",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/152BF9D7C35B715FD142764ED3D5A83D"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJVEZlOXlFb3BYazB3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMU1UUXhNVFV5TXpsYUZ3MHpOVEExTVRJeE1UVTNNemxhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURUdFhKQ0NLYkFINHpxUDd5elA3c0ZBeUtLdmZUQzlOWWgrMGk5ZlJZeHRKNFl3T21LME5va2J2ZzYKdzl2ZHBWVngvODZkcjBJZzhZYWtXS1oxdDQyb1cyN3h6eHg3Z1VTeEppdUFJdG12dFcwZ3d5Z3FFY1lGa2tLbgpNWjN2NElRTWtmVGZjQnRVb3YxSjhyTEtRblcvOS83WE5LM2JUZlBpUUZ3RFNyM3k3dHppRW5FYTVzMmlyY2FsCjlpbEhKTGdoMUFGTm02bmhBWXJKdTh5OVQrQjdnSElqT1ExdE5tU1JJQVJTZW14ZnZlaVZuOEJGaEl3djRpbksKRzdsVEVhbzB4K1l0b2wyU29hSlJHQmMyanEwOGxBajVvYlo2YXdZaHc2dEJWWlNaaEh4ZjZOcXFDOHhpeThSNQpFRFJtZGJMQkRrRlJCam80R1IrVzNiTHdVeUpUQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJTYXNEekp1YXJYOFYyQVphV3ZyYUtHOGNYOEl6QVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQy92bW5ENVhNSApNN2VLeWhOcHZqZ0hZbzdBL2dJSnBtR0VjYk5kbTRXMzcyRVFGeDZlM1B5NmZtY0FIbUlZc1FXUVcrbFE5Sk5vClMrVTBZWVhXdldhY0FNSS9KSnVGbVlUMjRXWFMzT0hLR2lSOGRjbGpzd2hzZmo5OFNLc2hMc3I5aHVwdnJrOFAKa2lNbEcxZ0ZNR2dNa1BxdkpvWmtxZWxjZVRUYXdJS1VsRURrRFZVK01zTS9KS1l4UUh5V0c4aXJYL0FnSXlQNAphbnJjYjlMcW5WQ3ZsS1Z4eVliR3V0K1J1d3RvWXZkZnhSZUhRdXpkVFZETkN1c1JLVUVhbDZtVHYzaHJnd244Ckd6RXVKN1JoRHdreGdEYjdYOStEL1ZCdWpCbDNlU05oR1ZLTGhMYWdxd1pmWjFKaHozSHJSbkVtK3A4dWY2K1QKQUF0ajZieTY1N3FqCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.13",
        "tags": {
            "Environment": "dev",
            "karpenter.sh/discovery": "security-dev-us-east-1",
            "Team": "security",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:302263068167:key/dc11c29c-b54b-4d23-91fd-46486499568c"
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
NAME                           STATUS   ROLES    AGE    VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                   CONTAINER-RUNTIME
ip-10-1-240-19.ec2.internal    Ready    <none>   16h    v1.33.4-eks-99d6cc0   10.1.240.19    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-1-240-55.ec2.internal    Ready    <none>   19h    v1.33.4-eks-99d6cc0   10.1.240.55    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-1-241-156.ec2.internal   Ready    <none>   108m   v1.33.4-eks-99d6cc0   10.1.241.156   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-1-241-7.ec2.internal     Ready    <none>   86m    v1.33.4-eks-99d6cc0   10.1.241.7     <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-1-241-93.ec2.internal    Ready    <none>   158m   v1.33.4-eks-99d6cc0   10.1.241.93    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
ip-10-1-245-209.ec2.internal   Ready    <none>   19h    v1.33.4-eks-99d6cc0   10.1.245.209   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64   containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON              OBJECT                              MESSAGE
54m         Normal    DisruptionBlocked   node/ip-10-1-240-19.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29301780-rgp2j)
39m         Normal    DisruptionBlocked   node/ip-10-1-240-19.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29301795-w8cvv)
24m         Normal    DisruptionBlocked   node/ip-10-1-240-19.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29301810-ls98t)
9m28s       Normal    DisruptionBlocked   node/ip-10-1-240-19.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=orb-analytics-workers/orb-analytics-workers-29301825-wprfm)
56s         Warning   Unsupported         node/ip-10-1-240-55.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
48m         Normal    DisruptionBlocked   node/ip-10-1-241-156.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=vuln-mgmt-app/vuln-mgmt-api-pdb)
31s         Normal    DisruptionBlocked   node/ip-10-1-241-156.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=vuln-mgmt-app/vuln-mgmt-api-pdb)
54m         Normal    Unconsolidatable    node/ip-10-1-241-7.ec2.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
14m         Normal    Unconsolidatable    node/ip-10-1-241-7.ec2.internal     SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
11s         Warning   Unsupported         node/ip-10-1-245-209.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                     NAME                              MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring            cluster-monitoring-pdb            N/A             1                 1                     125d
commit-signing-verification   commit-signing-verification-pdb   N/A             1                 1                     76d
fskp-signing-tools            fskp-signing-tools-pdb            N/A             1                 1                     71d
karpenter                     karpenter                         N/A             1                 1                     125d
kube-system                   coredns                           N/A             1                 1                     125d
kube-system                   ebs-csi-controller                N/A             1                 1                     125d
kyverno                       kyverno-admission-controller      1               N/A               2                     125d
orb-os-signing-tools          orb-os-signing-tools-pdb          N/A             1                 1                     65d
service-security-memgraph     service-security-memgraph-pdb     N/A             1                 1                     27d
vuln-mgmt-app                 vuln-mgmt-api-pdb                 50%             N/A               0                     125d
```

Cluster version up to date - no pluto apis detection rquired
