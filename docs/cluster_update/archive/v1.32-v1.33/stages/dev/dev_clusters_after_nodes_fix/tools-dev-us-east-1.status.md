# Cluster recon for tfh-internal-tools-dev-infra,us-east-1,tools-dev-us-east-1

TFH EKS login...
```console
2025/09/17 13:53:44 INFO Logging into AWS
2025/09/17 13:53:44 INFO Token found and valid
2025/09/17 13:53:45 INFO Switch WARP Virtual Network to name=tunnel-vpc-internal-tools-dev-us-east-1 id=330d6670-ce47-4f8b-a1cd-91f4f91fc307
2025/09/17 13:53:47 INFO Active WARP Virtual Network id=330d6670-ce47-4f8b-a1cd-91f4f91fc307
Updated context tfh-tools-dev-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "tools-dev-us-east-1",
        "arn": "arn:aws:eks:us-east-1:442042548984:cluster/tools-dev-us-east-1",
        "createdAt": "2024-10-10T11:41:27.458000+02:00",
        "version": "1.33",
        "endpoint": "https://0E33994F22355E1B56E8CF970BEA4085.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::442042548984:role/eks-cluster-tools-dev-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0fb3904822d4809b6",
                "subnet-003d590b25c8e1863",
                "subnet-011eb102e8f707483"
            ],
            "securityGroupIds": [
                "sg-07158c297e9c819c0"
            ],
            "clusterSecurityGroupId": "sg-075100f1721740e0b",
            "vpcId": "vpc-0c61ba9aaf7767f80",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/0E33994F22355E1B56E8CF970BEA4085"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJRit5Rmo1RUNVV2N3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TkRFd01UQXdPVFF3TXpkYUZ3MHpOREV3TURnd09UUTFNemRhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUQzYU1NMm9HcGk0c1BwQWtTd3BMVlAvY2l1eE9ZOXFHMnVIOWQzYXFjWkJRcTFPYmlhcVk1SG4xNkIKc1Rwb3IxMzBIUVkxckxIYTNGUnhCUXNRMWo4R1dZVUdqRGlnSWNDcGY0WlBMUTR1V0VQVU0zQmc1bUZaZE55Vwp5OExoM0xuYy9oU0Fna2tUQ2svb0kzNU1Od1dXMDZBWFlVK0M2MGs2NkQxc2dKS0dyTGo5cXB4L1Z4Mm0zdjBqCkxURXBnTmZERFlYN05LTmhzM2dZYTRJRUJNUEl4SDYvNlNKRDAyVEtMaVpmd1BiTnhFT2R5UG5zbnBlb083cGEKVnBBdXpuWk1UaCs4Q0JtRm5FaitYZnRFc0l6Sks3TGlwVEN2M3pJK0VCaWh2M0NDVE5zbnI2UjNXMm82U21YbwpqTVNtaG96Q1JRMjFIN3U4d0o3M2VFTWZYN0JyQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUVFg5VWlBVnB0NXpicUNLOHc3eW0yTE1kYzd6QVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQ2J3ZTFJSlFGcQo5dllRY0MyUWh2bmtPM3FDWDVyRHJ3RU5scXVTUW5aUlJDNEIyTzJBNUtJREJSbXZMdThDcmZBRkVNbkR0dnFHCjVGcld1eVFiL0t1MUdKMFNXbjRMM1RGL01rT0hLNk9maklWZFFuOTdkVDkzaC8xaDNlR0V5TWt0MGlZKzBLd3cKYWhHOGZsVTdxdEsrc21ycXhEWFBBZ1hGRHRkUVF0UDhQZHVPWWJxL0ZvM0QvTTFjTmp5WWcrMWxXUXk4VmMvcwpZclh5dFMybUt4NW1WVnp0ZjFjektrcTZ2czRtRXpnYTEzckVhbXdRcGJBelJuREw3Mml2aWlSWGZ0NnViV04wCm5ISk0rd1lPV0k1OUxSb1dpSThhOVVPRU9EMDZnalFBb3lBQlBCYm5wdStqQjExN01ySnRrRitoNU8vQ09IRHMKeFk5UTlvdldNR1BjCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.12",
        "tags": {
            "Environment": "dev",
            "karpenter.sh/discovery": "tools-dev-us-east-1",
            "Team": "infrastructure",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:442042548984:key/bb27b85b-a703-45b7-92c3-e70828366379"
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
NAME                           STATUS   ROLES    AGE     VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME
ip-10-0-160-221.ec2.internal   Ready    <none>   152m    v1.33.4-eks-99d6cc0   10.0.160.221   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.aarch64   containerd://1.7.27
ip-10-0-163-19.ec2.internal    Ready    <none>   4d21h   v1.33.4-eks-99d6cc0   10.0.163.19    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
ip-10-0-164-238.ec2.internal   Ready    <none>   111m    v1.33.4-eks-99d6cc0   10.0.164.238   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
ip-10-0-164-37.ec2.internal    Ready    <none>   4d21h   v1.33.4-eks-99d6cc0   10.0.164.37    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
ip-10-0-164-92.ec2.internal    Ready    <none>   132m    v1.33.4-eks-99d6cc0   10.0.164.92    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
ip-10-0-165-14.ec2.internal    Ready    <none>   27h     v1.33.4-eks-99d6cc0   10.0.165.14    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON              OBJECT                              MESSAGE
6s          Normal    DisruptionBlocked   node/ip-10-0-160-221.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-autoscaler/cluster-autoscaler-aws-cluster-autoscaler)
71s         Warning   Unsupported         node/ip-10-0-163-19.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
58m         Normal    Unconsolidatable    node/ip-10-0-164-238.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
8m3s        Normal    Unconsolidatable    node/ip-10-0-164-238.ec2.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
2m28s       Warning   Unsupported         node/ip-10-0-164-37.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
48m         Normal    Unconsolidatable    node/ip-10-0-164-92.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
13m         Normal    Unconsolidatable    node/ip-10-0-164-92.ec2.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
49m         Normal    DisruptionBlocked   node/ip-10-0-165-14.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=terraform-enterprise/terraform-enterprise-86df454899-zkmkd)
16s         Normal    DisruptionBlocked   node/ip-10-0-165-14.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=terraform-enterprise/terraform-enterprise-86df454899-zkmkd)
```

Pods with issues
```
cluster-autoscaler             cluster-autoscaler-aws-cluster-autoscaler-649fb55b6f-v45qj        0/1     CrashLoopBackOff   13 (3m15s ago)   44m
```

PodDisruptionBudgets
```
NAMESPACE                      NAME                                        MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-autoscaler             cluster-autoscaler-aws-cluster-autoscaler   N/A             1                 0                     44m
cluster-monitoring             cluster-monitoring-pdb                      N/A             1                 1                     216d
go-hello-world                 go-hello-world-pdb                          N/A             1                 1                     218d
golden-path-test-repo2         golden-path-test-repo2-pdb                  N/A             1                 0                     189d
karpenter                      karpenter                                   N/A             1                 1                     223d
kube-system                    coredns                                     N/A             1                 1                     342d
kube-system                    ebs-csi-controller                          N/A             1                 1                     342d
kyverno                        kyverno-admission-controller                1               N/A               2                     336d
merge-a-saurus                 merge-a-saurus-pdb                          N/A             1                 1                     211d
policy-bot                     policy-bot-pdb                              N/A             1                 1                     87d
test-selfservice-application   test-selfservice-application-pdb            N/A             1                 1                     194d
```

Cluster version up to date - no pluto apis detection rquired
