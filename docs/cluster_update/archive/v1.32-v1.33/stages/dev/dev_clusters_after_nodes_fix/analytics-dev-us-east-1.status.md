# Cluster recon for tfh-analytics-dev-infra,us-east-1,analytics-dev-us-east-1

TFH EKS login...
```console
2025/09/17 13:53:08 INFO Logging into AWS
2025/09/17 13:53:08 INFO Token found and valid
2025/09/17 13:53:10 INFO Switch WARP Virtual Network to name=tunnel-vpc-analytics-dev-us-east-1 id=0ebb9e5c-f06e-4151-a631-ddd9fd8ce392
2025/09/17 13:53:11 INFO Active WARP Virtual Network id=0ebb9e5c-f06e-4151-a631-ddd9fd8ce392
Updated context tfh-analytics-dev-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "analytics-dev-us-east-1",
        "arn": "arn:aws:eks:us-east-1:051826714567:cluster/analytics-dev-us-east-1",
        "createdAt": "2025-06-03T16:28:57.759000+02:00",
        "version": "1.33",
        "endpoint": "https://C74BFB6ACB20F719DDB4293C6BDC18A4.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::051826714567:role/eks-cluster-analytics-dev-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0bdb563807a40aac0",
                "subnet-09dbcfa90c356ee14",
                "subnet-0c2f2e6e7d9ec3553"
            ],
            "securityGroupIds": [
                "sg-005fe198dfdd6e94c"
            ],
            "clusterSecurityGroupId": "sg-0caff59269484d5d2",
            "vpcId": "vpc-01eddbf3574d96ac9",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/C74BFB6ACB20F719DDB4293C6BDC18A4"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJVTlKcVFpUnFESjh3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMk1ETXhOREk1TUROYUZ3MHpOVEEyTURFeE5ETTBNRE5hTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURLSzFSbHJmc0FISHRiWjBySlNmVUlhcDZWR3BnUWh6ODZpTEE3VS9DREFkU0k4ajBpaG0xcnVFdGYKdTkrS0V3eWpZVXBKUFM2SE5qNHQ3cUh4TWlxeFJlYmtob2NNVDZ1V1liNDRhblNva29CV2FpWWlueFNFMmRteQoxcmR0bnNaNmZGeHhCeDBiNkRSOVZQbHVhQWRIRG5RVjJPVm1UZzhkME91K2dMVkg1K2Z5VHdEaTNJbDZJNXU2ClBtTHdBU1ZybzQweEUxUWJYYXhNUUJ6RTlXQVc2S29hTEJ4NFkvSUFVTHZ4dmhMSDU3WFgvekEyV2NSV3UvTFYKdHptZ3ZreDBIVFA3aVlSck94NXVaT0lMa1d6VC92blo5U01mU1BpcHo5N0NJT3lnSFV0Mi9BcFkwRXYrd2x0RQpWWlY5UU1XQU1Ed2l5U0dmcnpSS3pYSEhGT3BIQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSQXJ2N094aFhtOHVXMjcxNHhaNWo0eWZ4OS9EQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQk1QVkZoWWdtZQpQdW9jbHVkQ2dLdm9XMmxwUWt1aTBSZVBJL3hGbTRtSENEQ0I4dS94anMwUmFyYloydEdJTm5TRU5zR0ZGVkFCCmxzejZkcHplbG9reC9hdDMzTFRCWXUxWVc1a1pxRU85am9mYW0xZ0w1SndhdG9MVjNpbDZhbzVWZWFmajRhc1cKY1dlZ3ZkZE5WOUVJek8ycUpLY0tXQXVjSEFSNlJpakl4TldMeGdxNXRaTThrTGh0MHVGWVVSU2EvSnZmTEdJagozY0RZaEtRbmFpMHVjOFZpQVo2c3RKS043YkZNYmZUd2NRN2ZTbFNoaGIyNCtEeXQ0ZzZzSkMyVk9URHVEYjFQCnY4cGg2T0czbzZNeFhoYWVkYkVIUEV0ZHhlSmlrOTdpY2JMTDlLSk1DTytPcExRTy9JcUV2NElQTDdRWVJPcjkKcEtQK1k4L2JXUWFjCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.13",
        "tags": {
            "Environment": "dev",
            "karpenter.sh/discovery": "analytics-dev-us-east-1",
            "Team": "analytics",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:051826714567:key/4ea4b03e-e090-4a81-a796-5995bdc51834"
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
NAME                           STATUS   ROLES    AGE   VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME
ip-10-0-242-222.ec2.internal   Ready    <none>   18h   v1.33.4-eks-99d6cc0   10.0.242.222   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
ip-10-0-242-92.ec2.internal    Ready    <none>   20h   v1.33.4-eks-99d6cc0   10.0.242.92    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
ip-10-0-243-235.ec2.internal   Ready    <none>   17h   v1.33.4-eks-99d6cc0   10.0.243.235   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
ip-10-0-245-100.ec2.internal   Ready    <none>   20h   v1.33.4-eks-99d6cc0   10.0.245.100   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
ip-10-0-245-232.ec2.internal   Ready    <none>   18h   v1.33.4-eks-99d6cc0   10.0.245.232   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.aarch64   containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON             OBJECT                              MESSAGE
48m         Normal    Unconsolidatable   node/ip-10-0-242-222.ec2.internal   Can't remove without creating 2 candidates
7m37s       Normal    Unconsolidatable   node/ip-10-0-242-222.ec2.internal   Can't remove without creating 2 candidates
104s        Warning   Unsupported        node/ip-10-0-242-92.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
102s        Warning   Unsupported        node/ip-10-0-245-100.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
48m         Normal    Unconsolidatable   node/ip-10-0-245-232.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
2m32s       Normal    Unconsolidatable   node/ip-10-0-245-232.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE            NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring   cluster-monitoring-pdb         N/A             1                 1                     91d
karpenter            karpenter                      N/A             1                 1                     105d
kube-system          coredns                        N/A             1                 1                     105d
kube-system          ebs-csi-controller             N/A             1                 1                     105d
kyverno              kyverno-admission-controller   1               N/A               2                     105d
```

Cluster version up to date - no pluto apis detection rquired
