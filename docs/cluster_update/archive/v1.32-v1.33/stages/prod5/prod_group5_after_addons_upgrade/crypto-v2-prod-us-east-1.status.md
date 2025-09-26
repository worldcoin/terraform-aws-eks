# Cluster recon for tfh-crypto-prod-infra,us-east-1,crypto-v2-prod-us-east-1,tunnel-vpc-crypto-prod-us-east-1

TFH EKS login...
```console
2025/09/25 10:28:39 INFO Logging into AWS
2025/09/25 10:28:39 INFO Token found and valid
2025/09/25 10:28:41 INFO Switch WARP Virtual Network to name=tunnel-vpc-crypto-prod-us-east-1 id=c8ca54d1-de3b-4d42-a00d-abf0ed15d587
2025/09/25 10:28:44 INFO Active WARP Virtual Network id=c8ca54d1-de3b-4d42-a00d-abf0ed15d587
Updated context tfh-crypto-v2-prod-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "bf191675-2151-41cb-a3a1-6038d7a3bfce",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-25T04:09:11+02:00",
            "lastTransitionTime": "2024-12-21T12:49:04+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "f70b554a-64d3-472a-ad36-a69e1ef8996e",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-25T04:09:05+02:00",
            "lastTransitionTime": "2025-08-19T15:04:04+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "ERROR",
                "reason": "The cluster contains legacy Amazon Linux 2 (AL2) nodes. Migrate Amazon Linux 2 node groups to Amazon Linux 2023 before November 26, 2025 or before upgrading to EKS 1.33."
            }
        },
        {
            "id": "0ea80340-fffc-4cf6-8767-c39fc7064a64",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-25T04:09:05+02:00",
            "lastTransitionTime": "2024-12-21T12:49:04+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "ff4bef8f-2aae-42bd-9762-f8d70177f93b",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-25T04:09:05+02:00",
            "lastTransitionTime": "2024-12-21T12:49:04+01:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "e2b1009f-4616-447c-90cb-29e8bbce60b0",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-25T04:09:11+02:00",
            "lastTransitionTime": "2025-07-28T20:09:04+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        }
    ]
}
```

Show full cluster description:
```json
{
    "cluster": {
        "name": "crypto-v2-prod-us-east-1",
        "arn": "arn:aws:eks:us-east-1:866736719513:cluster/crypto-v2-prod-us-east-1",
        "createdAt": "2023-04-03T15:07:28.570000+02:00",
        "version": "1.32",
        "endpoint": "https://BC193B14833AC3FF7C3C69D0733C17E9.gr7.us-east-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::866736719513:role/eks-cluster-crypto-v2-prod-us-east-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0ed92f10dc91d6bcc",
                "subnet-0915dbb55fd7d11e4",
                "subnet-06e72f80b1e840edf"
            ],
            "securityGroupIds": [
                "sg-0eed5718ed047cd64"
            ],
            "clusterSecurityGroupId": "sg-0a9277458811d8edf",
            "vpcId": "vpc-0fb0c538fc47f4aab",
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
                "issuer": "https://oidc.eks.us-east-1.amazonaws.com/id/BC193B14833AC3FF7C3C69D0733C17E9"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EUXdNekV6TVRNeE0xb1hEVE16TURNek1URXpNVE14TTFvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTGg1ClFoOU1HWDVEOXZWVGxBbVdTSWtNVkJoaGF4dStBTFo5akJ5b0s0UFFxUTNjNVBlS0VnY3lHN0p6MEpnY05md3EKWVlJeEZEMDRpZmNNT2FZamMvM2k2QUpHK25BUTBrZWdEMWtnZWsrdWRLbGp6UFR4a3MyNEtmRlAwS285dGQycQpIZlFHM3dhRm5xY1ZveEM0WWJJQjhDVDdTam95UVpuVlAxYXY5alJjL3VTbUtUUXUwZUl0WnVGWU9weXYwR3QxCkt5U3ZoelpQTVNSOWx3ODhzdThBbml1eVJqeEo4NGhjSk0yVXI2cThoeWFSaDZSN09aL1hoNllVaHVQeUhTSjAKQnpCamUyNW1ZUGxSdFlmSUUrQW1ZMzZnb1RseDB1dmtIOXNPYk5PVHd3Z0ZaNFN5a0VHMVhnM2tPZ1ZKbGFpaAp5NHJnUnB2cEpJN3pLaUpOTzdFQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZCMmVFc2Ftc2t6Nnd4RDZWZ0JJeEd3ckdnWlFNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBSjF3Z3RWNmxielBRVU5xbmNqVAo1QVF3VGVtazRjSnQzYWZlbnVvVEpld2xJZEJvRFVVZWQ1NTc1R1ZwRUJyaElmRVRIUHRiN0tibGdPMVBrWHJMCkJDdUF5K1RodUhhays5NTNmSnRuMXc5T1hMREQ0ZXpIcnY3RHN5NjZNRDNqQmROZUZ5bm4vZVVrZ3lvN001SGQKbkJadGpWT2NFN2NqejNXQytQNjVWdWkzdUIvM01tOE82MVlwZElpUGJ6L1hDd3FidjEwWjN1OU9Ma1YrMjlhOApLZFdBbWNheFBESFU4YUh4cjhDbFJLNFZ4b2VpengzeTE0NTVVZjNSVkhDSEE3azBKSHQvbktvWHFIeU9xQzB2ClhGRHl1K0IzRitjaVdka011SVB6eW9xS2lsMTVqeEUzaDcyYWRKOWFVeDdtVStid2F4MGhBZXNUYmF2WlhNUEwKTHYwPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.20",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "crypto-v2-prod-us-east-1",
            "Team": "crypto",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:us-east-1:866736719513:key/15dcdbdd-b43c-477d-b62a-76a4fb5a5a86"
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
NAME                         STATUS   ROLES    AGE    VERSION               INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-0-0-101.ec2.internal   Ready    <none>   15m    v1.32.9-eks-113cf36   10.0.0.101    <none>        Amazon Linux 2023.8.20250915   6.1.150-174.273.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-0-106.ec2.internal   Ready    <none>   13m    v1.32.9-eks-113cf36   10.0.0.106    <none>        Amazon Linux 2023.8.20250915   6.1.150-174.273.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-0-112.ec2.internal   Ready    <none>   118d   v1.32.3-eks-473151a   10.0.0.112    <none>        Amazon Linux 2                 5.10.236-228.935.amzn2.x86_64     containerd://1.7.27   
ip-10-0-0-162.ec2.internal   Ready    <none>   181d   v1.32.1-eks-5d632ec   10.0.0.162    <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-0-193.ec2.internal   Ready    <none>   181d   v1.32.1-eks-5d632ec   10.0.0.193    <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-0-216.ec2.internal   Ready    <none>   14m    v1.32.9-eks-113cf36   10.0.0.216    <none>        Amazon Linux 2023.8.20250915   6.1.150-174.273.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-1-161.ec2.internal   Ready    <none>   142d   v1.32.3-eks-473151a   10.0.1.161    <none>        Amazon Linux 2                 5.10.236-227.928.amzn2.x86_64     containerd://1.7.27   
ip-10-0-1-18.ec2.internal    Ready    <none>   22m    v1.32.9-eks-113cf36   10.0.1.18     <none>        Amazon Linux 2023.8.20250915   6.1.150-174.273.amzn2023.x86_64   containerd://1.7.27   eks-node-al2023-crypto-v2-prod-us-east-1
ip-10-0-1-199.ec2.internal   Ready    <none>   181d   v1.32.1-eks-5d632ec   10.0.1.199    <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-1-216.ec2.internal   Ready    <none>   181d   v1.32.1-eks-5d632ec   10.0.1.216    <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-1-34.ec2.internal    Ready    <none>   181d   v1.32.1-eks-5d632ec   10.0.1.34     <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-2-125.ec2.internal   Ready    <none>   5d7h   v1.32.8-eks-99d6cc0   10.0.2.125    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-2-169.ec2.internal   Ready    <none>   181d   v1.32.1-eks-5d632ec   10.0.2.169    <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-2-19.ec2.internal    Ready    <none>   181d   v1.32.1-eks-5d632ec   10.0.2.19     <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-2-192.ec2.internal   Ready    <none>   23m    v1.32.9-eks-113cf36   10.0.2.192    <none>        Amazon Linux 2023.8.20250915   6.1.150-174.273.amzn2023.x86_64   containerd://1.7.27   eks-node-al2023-crypto-v2-prod-us-east-1
ip-10-0-2-234.ec2.internal   Ready    <none>   181d   v1.32.1-eks-5d632ec   10.0.2.234    <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-2-61.ec2.internal    Ready    <none>   15m    v1.32.9-eks-113cf36   10.0.2.61     <none>        Amazon Linux 2023.8.20250915   6.1.150-174.273.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-2-66.ec2.internal    Ready    <none>   177d   v1.32.1-eks-5d632ec   10.0.2.66     <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-2-95.ec2.internal    Ready    <none>   14m    v1.32.9-eks-113cf36   10.0.2.95     <none>        Amazon Linux 2023.8.20250915   6.1.150-174.273.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-3-119.ec2.internal   Ready    <none>   142d   v1.32.3-eks-473151a   10.0.3.119    <none>        Amazon Linux 2                 5.10.236-227.928.amzn2.x86_64     containerd://1.7.27   
ip-10-0-3-155.ec2.internal   Ready    <none>   15m    v1.32.9-eks-113cf36   10.0.3.155    <none>        Amazon Linux 2023.8.20250915   6.1.150-174.273.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-3-231.ec2.internal   Ready    <none>   13m    v1.32.9-eks-113cf36   10.0.3.231    <none>        Amazon Linux 2023.8.20250915   6.1.150-174.273.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-3-250.ec2.internal   Ready    <none>   181d   v1.32.1-eks-5d632ec   10.0.3.250    <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-3-65.ec2.internal    Ready    <none>   153d   v1.32.1-eks-5d632ec   10.0.3.65     <none>        Amazon Linux 2                 5.10.235-227.919.amzn2.x86_64     containerd://1.7.27   
ip-10-0-5-17.ec2.internal    Ready    <none>   196d   v1.32.1-eks-5d632ec   10.0.5.17     <none>        Amazon Linux 2                 5.10.234-225.895.amzn2.x86_64     containerd://1.7.25   
ip-10-0-5-206.ec2.internal   Ready    <none>   29d    v1.32.7-eks-3abbec1   10.0.5.206    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-5-97.ec2.internal    Ready    <none>   181d   v1.32.1-eks-5d632ec   10.0.5.97     <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
```

Nodes and their taints
```
NAME                         STATUS                  ROLES    TAINTS
ip-10-0-0-101.ec2.internal   Ready                   <none>   <none>
ip-10-0-0-106.ec2.internal   Ready                   <none>   <none>
ip-10-0-0-112.ec2.internal   Ready                   <none>   <none>
ip-10-0-0-162.ec2.internal   StorageReady            <none>   <none>
ip-10-0-0-193.ec2.internal   ContainerRuntimeReady   <none>   <none>
ip-10-0-0-216.ec2.internal   Ready                   <none>   <none>
ip-10-0-1-161.ec2.internal   Ready                   <none>   <none>
ip-10-0-1-18.ec2.internal    Ready                   <none>   [map[effect:NoExecute key:critical]]
ip-10-0-1-199.ec2.internal   StorageReady            <none>   <none>
ip-10-0-1-216.ec2.internal   KernelReady             <none>   <none>
ip-10-0-1-34.ec2.internal    ContainerRuntimeReady   <none>   <none>
ip-10-0-2-125.ec2.internal   Ready                   <none>   <none>
ip-10-0-2-169.ec2.internal   StorageReady            <none>   <none>
ip-10-0-2-19.ec2.internal    KernelReady             <none>   <none>
ip-10-0-2-192.ec2.internal   Ready                   <none>   [map[effect:NoExecute key:critical]]
ip-10-0-2-234.ec2.internal   KernelReady             <none>   <none>
ip-10-0-2-61.ec2.internal    Ready                   <none>   <none>
ip-10-0-2-66.ec2.internal    KernelReady             <none>   <none>
ip-10-0-2-95.ec2.internal    Ready                   <none>   <none>
ip-10-0-3-119.ec2.internal   Ready                   <none>   <none>
ip-10-0-3-155.ec2.internal   Ready                   <none>   <none>
ip-10-0-3-231.ec2.internal   Ready                   <none>   <none>
ip-10-0-3-250.ec2.internal   NetworkingReady         <none>   <none>
ip-10-0-3-65.ec2.internal    KernelReady             <none>   <none>
ip-10-0-5-17.ec2.internal    ContainerRuntimeReady   <none>   <none>
ip-10-0-5-206.ec2.internal   Ready                   <none>   <none>
ip-10-0-5-97.ec2.internal    KernelReady             <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                            MESSAGE
12m         Normal    Finalized                 node                              Finalized karpenter.sh/termination
10m         Normal    Finalized                 node                              Finalized karpenter.sh/termination
15m         Normal    Starting                  node/ip-10-0-0-101.ec2.internal   Starting kubelet.
15m         Warning   InvalidDiskCapacity       node/ip-10-0-0-101.ec2.internal   invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory   node/ip-10-0-0-101.ec2.internal   Node ip-10-0-0-101.ec2.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure     node/ip-10-0-0-101.ec2.internal   Node ip-10-0-0-101.ec2.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID      node/ip-10-0-0-101.ec2.internal   Node ip-10-0-0-101.ec2.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced   node/ip-10-0-0-101.ec2.internal   Updated Node Allocatable limit across pods
15m         Normal    Synced                    node/ip-10-0-0-101.ec2.internal   Node synced successfully
15m         Normal    RegisteredNode            node/ip-10-0-0-101.ec2.internal   Node ip-10-0-0-101.ec2.internal event: Registered Node ip-10-0-0-101.ec2.internal in Controller
15m         Normal    Starting                  node/ip-10-0-0-101.ec2.internal   
15m         Normal    DisruptionBlocked         node/ip-10-0-0-101.ec2.internal   Node isn't initialized
15m         Normal    ControllerVersionNotice   node/ip-10-0-0-101.ec2.internal   The node is managed by VPC resource controller version v1.7.11
15m         Normal    NodeReady                 node/ip-10-0-0-101.ec2.internal   Node ip-10-0-0-101.ec2.internal status is now: NodeReady
15m         Normal    Ready                     node/ip-10-0-0-101.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    NodeTrunkInitiated        node/ip-10-0-0-101.ec2.internal   The node has trunk interface initialized successfully
13m         Normal    DisruptionBlocked         node/ip-10-0-0-101.ec2.internal   Node is nominated for a pending pod
12m         Normal    Unconsolidatable          node/ip-10-0-0-101.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
4m31s       Normal    DisruptionBlocked         node/ip-10-0-0-101.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
13m         Normal    Starting                  node/ip-10-0-0-106.ec2.internal   Starting kubelet.
13m         Warning   InvalidDiskCapacity       node/ip-10-0-0-106.ec2.internal   invalid capacity 0 on image filesystem
13m         Normal    NodeHasSufficientMemory   node/ip-10-0-0-106.ec2.internal   Node ip-10-0-0-106.ec2.internal status is now: NodeHasSufficientMemory
13m         Normal    NodeHasNoDiskPressure     node/ip-10-0-0-106.ec2.internal   Node ip-10-0-0-106.ec2.internal status is now: NodeHasNoDiskPressure
13m         Normal    NodeHasSufficientPID      node/ip-10-0-0-106.ec2.internal   Node ip-10-0-0-106.ec2.internal status is now: NodeHasSufficientPID
13m         Normal    NodeAllocatableEnforced   node/ip-10-0-0-106.ec2.internal   Updated Node Allocatable limit across pods
13m         Normal    Synced                    node/ip-10-0-0-106.ec2.internal   Node synced successfully
13m         Normal    RegisteredNode            node/ip-10-0-0-106.ec2.internal   Node ip-10-0-0-106.ec2.internal event: Registered Node ip-10-0-0-106.ec2.internal in Controller
13m         Normal    DisruptionBlocked         node/ip-10-0-0-106.ec2.internal   Node isn't initialized
13m         Normal    Starting                  node/ip-10-0-0-106.ec2.internal   
13m         Normal    ControllerVersionNotice   node/ip-10-0-0-106.ec2.internal   The node is managed by VPC resource controller version v1.7.11
13m         Normal    NodeReady                 node/ip-10-0-0-106.ec2.internal   Node ip-10-0-0-106.ec2.internal status is now: NodeReady
13m         Normal    Ready                     node/ip-10-0-0-106.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
13m         Normal    NodeTrunkInitiated        node/ip-10-0-0-106.ec2.internal   The node has trunk interface initialized successfully
12m         Normal    DisruptionBlocked         node/ip-10-0-0-106.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=world-chain-mainnet-archive-node-reth/world-chain-mainnet-archive-node-reth-op-node-pdb)
10m         Normal    Unconsolidatable          node/ip-10-0-0-106.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
19m         Normal    DisruptionBlocked         node/ip-10-0-0-112.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-0)
24m         Normal    Starting                  node/ip-10-0-0-112.ec2.internal   
14m         Normal    DisruptionBlocked         node/ip-10-0-0-112.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-0)
106s        Normal    DisruptionBlocked         node/ip-10-0-0-112.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-0)
19m         Normal    DisruptionBlocked         node/ip-10-0-0-162.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b1200t30-7ddc598df6-xc2jw)
24m         Normal    Starting                  node/ip-10-0-0-162.ec2.internal   
14m         Normal    DisruptionBlocked         node/ip-10-0-0-162.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b1200t30-7ddc598df6-xc2jw)
106s        Normal    DisruptionBlocked         node/ip-10-0-0-162.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b1200t30-7ddc598df6-xc2jw)
19m         Normal    DisruptionBlocked         node/ip-10-0-0-193.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b10t30-857f5bfb5-24j4t)
24m         Normal    Starting                  node/ip-10-0-0-193.ec2.internal   
14m         Normal    DisruptionBlocked         node/ip-10-0-0-193.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b10t30-857f5bfb5-24j4t)
106s        Normal    DisruptionBlocked         node/ip-10-0-0-193.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b10t30-857f5bfb5-24j4t)
14m         Normal    Starting                  node/ip-10-0-0-216.ec2.internal   Starting kubelet.
14m         Warning   InvalidDiskCapacity       node/ip-10-0-0-216.ec2.internal   invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory   node/ip-10-0-0-216.ec2.internal   Node ip-10-0-0-216.ec2.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure     node/ip-10-0-0-216.ec2.internal   Node ip-10-0-0-216.ec2.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID      node/ip-10-0-0-216.ec2.internal   Node ip-10-0-0-216.ec2.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced   node/ip-10-0-0-216.ec2.internal   Updated Node Allocatable limit across pods
14m         Normal    Synced                    node/ip-10-0-0-216.ec2.internal   Node synced successfully
14m         Normal    DisruptionBlocked         node/ip-10-0-0-216.ec2.internal   Node isn't initialized
14m         Normal    RegisteredNode            node/ip-10-0-0-216.ec2.internal   Node ip-10-0-0-216.ec2.internal event: Registered Node ip-10-0-0-216.ec2.internal in Controller
14m         Normal    Starting                  node/ip-10-0-0-216.ec2.internal   
14m         Normal    ControllerVersionNotice   node/ip-10-0-0-216.ec2.internal   The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeReady                 node/ip-10-0-0-216.ec2.internal   Node ip-10-0-0-216.ec2.internal status is now: NodeReady
14m         Normal    Ready                     node/ip-10-0-0-216.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeTrunkInitiated        node/ip-10-0-0-216.ec2.internal   The node has trunk interface initialized successfully
13m         Normal    Unconsolidatable          node/ip-10-0-0-216.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
12m         Normal    Unconsolidatable          node/ip-10-0-0-216.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
16m         Warning   Unsupported               node/ip-10-0-0-238.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
24m         Normal    Starting                  node/ip-10-0-0-238.ec2.internal   
19m         Normal    NodeNotSchedulable        node/ip-10-0-0-238.ec2.internal   Node ip-10-0-0-238.ec2.internal status is now: NodeNotSchedulable
16m         Normal    NodeNotReady              node/ip-10-0-0-238.ec2.internal   Node ip-10-0-0-238.ec2.internal status is now: NodeNotReady
16m         Normal    MemoryPressure            node/ip-10-0-0-238.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    DiskPressure              node/ip-10-0-0-238.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    PIDPressure               node/ip-10-0-0-238.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    Ready                     node/ip-10-0-0-238.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    DeletingNode              node/ip-10-0-0-238.ec2.internal   Deleting node ip-10-0-0-238.ec2.internal because it does not exist in the cloud provider
16m         Normal    RemovingNode              node/ip-10-0-0-238.ec2.internal   Node ip-10-0-0-238.ec2.internal event: Removing Node ip-10-0-0-238.ec2.internal from Controller
28m         Normal    Unconsolidatable          node/ip-10-0-1-132.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    Starting                  node/ip-10-0-1-132.ec2.internal   
16m         Normal    Unconsolidatable          node/ip-10-0-1-132.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
15m         Normal    DisruptionBlocked         node/ip-10-0-1-132.ec2.internal   Not all pods would schedule, semaphore-mtb-phone/semaphore-mtb-phone-insertion-b100t30-7f8ff787b8-c46rd => would schedule against uninitialized nodeclaim/main-amd64-qkpsd
13m         Normal    DisruptionBlocked         node/ip-10-0-1-132.ec2.internal   Node is deleting or marked for deletion
12m         Normal    DisruptionTerminating     node/ip-10-0-1-132.ec2.internal   Disrupting Node: Drifted/Replace
12m         Warning   FailedDraining            node/ip-10-0-1-132.ec2.internal   Failed to drain node, 4 pods are waiting to be evicted
12m         Warning   FailedDraining            node/ip-10-0-1-132.ec2.internal   Failed to drain node, 1 pods are waiting to be evicted
12m         Normal    DisruptionBlocked         node/ip-10-0-1-132.ec2.internal   Node is deleting or marked for deletion
11m         Warning   InstanceTerminating       node/ip-10-0-1-132.ec2.internal   Instance is terminating
10m         Normal    NodeNotReady              node/ip-10-0-1-132.ec2.internal   Node ip-10-0-1-132.ec2.internal status is now: NodeNotReady
10m         Normal    MemoryPressure            node/ip-10-0-1-132.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    DiskPressure              node/ip-10-0-1-132.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    PIDPressure               node/ip-10-0-1-132.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    Ready                     node/ip-10-0-1-132.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    DeletingNode              node/ip-10-0-1-132.ec2.internal   Deleting node ip-10-0-1-132.ec2.internal because it does not exist in the cloud provider
10m         Normal    RemovingNode              node/ip-10-0-1-132.ec2.internal   Node ip-10-0-1-132.ec2.internal event: Removing Node ip-10-0-1-132.ec2.internal from Controller
19m         Normal    DisruptionBlocked         node/ip-10-0-1-161.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b600t30-6967fd87c6-82sj7)
24m         Normal    Starting                  node/ip-10-0-1-161.ec2.internal   
14m         Normal    DisruptionBlocked         node/ip-10-0-1-161.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b600t30-6967fd87c6-82sj7)
106s        Normal    DisruptionBlocked         node/ip-10-0-1-161.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b600t30-6967fd87c6-82sj7)
22m         Normal    Starting                  node/ip-10-0-1-18.ec2.internal    Starting kubelet.
22m         Warning   InvalidDiskCapacity       node/ip-10-0-1-18.ec2.internal    invalid capacity 0 on image filesystem
22m         Normal    NodeHasSufficientMemory   node/ip-10-0-1-18.ec2.internal    Node ip-10-0-1-18.ec2.internal status is now: NodeHasSufficientMemory
22m         Normal    NodeHasNoDiskPressure     node/ip-10-0-1-18.ec2.internal    Node ip-10-0-1-18.ec2.internal status is now: NodeHasNoDiskPressure
22m         Normal    NodeHasSufficientPID      node/ip-10-0-1-18.ec2.internal    Node ip-10-0-1-18.ec2.internal status is now: NodeHasSufficientPID
22m         Normal    NodeAllocatableEnforced   node/ip-10-0-1-18.ec2.internal    Updated Node Allocatable limit across pods
22m         Normal    Synced                    node/ip-10-0-1-18.ec2.internal    Node synced successfully
22m         Normal    RegisteredNode            node/ip-10-0-1-18.ec2.internal    Node ip-10-0-1-18.ec2.internal event: Registered Node ip-10-0-1-18.ec2.internal in Controller
21m         Normal    Starting                  node/ip-10-0-1-18.ec2.internal    
21m         Normal    ControllerVersionNotice   node/ip-10-0-1-18.ec2.internal    The node is managed by VPC resource controller version v1.7.11
81s         Warning   Unsupported               node/ip-10-0-1-18.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
21m         Normal    NodeReady                 node/ip-10-0-1-18.ec2.internal    Node ip-10-0-1-18.ec2.internal status is now: NodeReady
21m         Normal    Ready                     node/ip-10-0-1-18.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    Unconsolidatable          node/ip-10-0-1-188.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    Starting                  node/ip-10-0-1-188.ec2.internal   
16m         Normal    Unconsolidatable          node/ip-10-0-1-188.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
14m         Normal    DisruptionBlocked         node/ip-10-0-1-188.ec2.internal   Node is deleting or marked for deletion
13m         Normal    DisruptionTerminating     node/ip-10-0-1-188.ec2.internal   Disrupting Node: Drifted/Replace
13m         Warning   FailedDraining            node/ip-10-0-1-188.ec2.internal   Failed to drain node, 2 pods are waiting to be evicted
13m         Warning   InstanceTerminating       node/ip-10-0-1-188.ec2.internal   Instance is terminating
12m         Normal    NodeNotReady              node/ip-10-0-1-188.ec2.internal   Node ip-10-0-1-188.ec2.internal status is now: NodeNotReady
12m         Normal    MemoryPressure            node/ip-10-0-1-188.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    DiskPressure              node/ip-10-0-1-188.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    PIDPressure               node/ip-10-0-1-188.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    Ready                     node/ip-10-0-1-188.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    RemovingNode              node/ip-10-0-1-188.ec2.internal   Node ip-10-0-1-188.ec2.internal event: Removing Node ip-10-0-1-188.ec2.internal from Controller
19m         Normal    DisruptionBlocked         node/ip-10-0-1-199.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b100t30-7fd6577545-wrjgk)
24m         Normal    Starting                  node/ip-10-0-1-199.ec2.internal   
14m         Normal    DisruptionBlocked         node/ip-10-0-1-199.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b100t30-7fd6577545-wrjgk)
106s        Normal    DisruptionBlocked         node/ip-10-0-1-199.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b100t30-7fd6577545-wrjgk)
19m         Normal    DisruptionBlocked         node/ip-10-0-1-216.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b100t30-78d796f865-bvvtj)
24m         Normal    Starting                  node/ip-10-0-1-216.ec2.internal   
14m         Normal    DisruptionBlocked         node/ip-10-0-1-216.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b100t30-78d796f865-bvvtj)
106s        Normal    DisruptionBlocked         node/ip-10-0-1-216.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b100t30-78d796f865-bvvtj)
19m         Normal    DisruptionBlocked         node/ip-10-0-1-34.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b100t30-78d796f865-nmcvs)
25m         Normal    Starting                  node/ip-10-0-1-34.ec2.internal    
14m         Normal    DisruptionBlocked         node/ip-10-0-1-34.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b100t30-78d796f865-nmcvs)
106s        Normal    DisruptionBlocked         node/ip-10-0-1-34.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b100t30-78d796f865-nmcvs)
22m         Normal    Unconsolidatable          node/ip-10-0-1-96.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
32m         Normal    DisruptionBlocked         node/ip-10-0-1-96.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=world-chain-mainnet-archive-node/world-chain-mainnet-archive-node-op-geth-pdb)
25m         Normal    DisruptionBlocked         node/ip-10-0-1-96.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
24m         Normal    Starting                  node/ip-10-0-1-96.ec2.internal    
16m         Normal    Unconsolidatable          node/ip-10-0-1-96.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
13m         Normal    DisruptionBlocked         node/ip-10-0-1-96.ec2.internal    Node is deleting or marked for deletion
15m         Normal    DisruptionTerminating     node/ip-10-0-1-96.ec2.internal    Disrupting Node: Drifted/Replace
15m         Warning   FailedDraining            node/ip-10-0-1-96.ec2.internal    Failed to drain node, 5 pods are waiting to be evicted
13m         Warning   InstanceTerminating       node/ip-10-0-1-96.ec2.internal    Instance is terminating
13m         Normal    NodeNotReady              node/ip-10-0-1-96.ec2.internal    Node ip-10-0-1-96.ec2.internal status is now: NodeNotReady
13m         Normal    MemoryPressure            node/ip-10-0-1-96.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DiskPressure              node/ip-10-0-1-96.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    PIDPressure               node/ip-10-0-1-96.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    Ready                     node/ip-10-0-1-96.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DeletingNode              node/ip-10-0-1-96.ec2.internal    Deleting node ip-10-0-1-96.ec2.internal because it does not exist in the cloud provider
13m         Normal    RemovingNode              node/ip-10-0-1-96.ec2.internal    Node ip-10-0-1-96.ec2.internal event: Removing Node ip-10-0-1-96.ec2.internal from Controller
20m         Normal    Unconsolidatable          node/ip-10-0-2-119.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    Starting                  node/ip-10-0-2-119.ec2.internal   
19m         Normal    DisruptionBlocked         node/ip-10-0-2-119.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
16m         Normal    Unconsolidatable          node/ip-10-0-2-119.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
13m         Normal    DisruptionBlocked         node/ip-10-0-2-119.ec2.internal   Node is deleting or marked for deletion
15m         Normal    DisruptionTerminating     node/ip-10-0-2-119.ec2.internal   Disrupting Node: Drifted/Delete
15m         Warning   FailedDraining            node/ip-10-0-2-119.ec2.internal   Failed to drain node, 15 pods are waiting to be evicted
14m         Warning   InstanceTerminating       node/ip-10-0-2-119.ec2.internal   Instance is terminating
13m         Normal    RemovingNode              node/ip-10-0-2-119.ec2.internal   Node ip-10-0-2-119.ec2.internal event: Removing Node ip-10-0-2-119.ec2.internal from Controller
20m         Normal    DisruptionBlocked         node/ip-10-0-2-125.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-node/world-chain-node-0)
24m         Normal    Starting                  node/ip-10-0-2-125.ec2.internal   
14m         Normal    DisruptionBlocked         node/ip-10-0-2-125.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-node/world-chain-node-0)
106s        Normal    DisruptionBlocked         node/ip-10-0-2-125.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-node/world-chain-node-0)
19m         Normal    DisruptionBlocked         node/ip-10-0-2-169.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b10t30-857f5bfb5-zzz2q)
24m         Normal    Starting                  node/ip-10-0-2-169.ec2.internal   
14m         Normal    DisruptionBlocked         node/ip-10-0-2-169.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b10t30-857f5bfb5-zzz2q)
106s        Normal    DisruptionBlocked         node/ip-10-0-2-169.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b10t30-857f5bfb5-zzz2q)
24m         Normal    Starting                  node/ip-10-0-2-181.ec2.internal   Starting kubelet.
24m         Warning   InvalidDiskCapacity       node/ip-10-0-2-181.ec2.internal   invalid capacity 0 on image filesystem
24m         Normal    NodeHasSufficientMemory   node/ip-10-0-2-181.ec2.internal   Node ip-10-0-2-181.ec2.internal status is now: NodeHasSufficientMemory
24m         Normal    NodeHasNoDiskPressure     node/ip-10-0-2-181.ec2.internal   Node ip-10-0-2-181.ec2.internal status is now: NodeHasNoDiskPressure
24m         Normal    NodeHasSufficientPID      node/ip-10-0-2-181.ec2.internal   Node ip-10-0-2-181.ec2.internal status is now: NodeHasSufficientPID
24m         Normal    NodeAllocatableEnforced   node/ip-10-0-2-181.ec2.internal   Updated Node Allocatable limit across pods
24m         Normal    Synced                    node/ip-10-0-2-181.ec2.internal   Node synced successfully
24m         Normal    RegisteredNode            node/ip-10-0-2-181.ec2.internal   Node ip-10-0-2-181.ec2.internal event: Registered Node ip-10-0-2-181.ec2.internal in Controller
24m         Normal    Starting                  node/ip-10-0-2-181.ec2.internal   
23m         Normal    ControllerVersionNotice   node/ip-10-0-2-181.ec2.internal   The node is managed by VPC resource controller version v1.7.11
10m         Warning   Unsupported               node/ip-10-0-2-181.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
23m         Normal    NodeReady                 node/ip-10-0-2-181.ec2.internal   Node ip-10-0-2-181.ec2.internal status is now: NodeReady
23m         Normal    Ready                     node/ip-10-0-2-181.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
12m         Normal    NodeNotSchedulable        node/ip-10-0-2-181.ec2.internal   Node ip-10-0-2-181.ec2.internal status is now: NodeNotSchedulable
10m         Normal    NodeNotReady              node/ip-10-0-2-181.ec2.internal   Node ip-10-0-2-181.ec2.internal status is now: NodeNotReady
10m         Normal    MemoryPressure            node/ip-10-0-2-181.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    DiskPressure              node/ip-10-0-2-181.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    PIDPressure               node/ip-10-0-2-181.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    Ready                     node/ip-10-0-2-181.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
10m         Normal    DeletingNode              node/ip-10-0-2-181.ec2.internal   Deleting node ip-10-0-2-181.ec2.internal because it does not exist in the cloud provider
10m         Normal    RemovingNode              node/ip-10-0-2-181.ec2.internal   Node ip-10-0-2-181.ec2.internal event: Removing Node ip-10-0-2-181.ec2.internal from Controller
19m         Normal    DisruptionBlocked         node/ip-10-0-2-19.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b10t30-864bcb955-zvln2)
24m         Normal    Starting                  node/ip-10-0-2-19.ec2.internal    
14m         Normal    DisruptionBlocked         node/ip-10-0-2-19.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b10t30-864bcb955-zvln2)
106s        Normal    DisruptionBlocked         node/ip-10-0-2-19.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b10t30-864bcb955-zvln2)
24m         Normal    Starting                  node/ip-10-0-2-192.ec2.internal   Starting kubelet.
24m         Warning   InvalidDiskCapacity       node/ip-10-0-2-192.ec2.internal   invalid capacity 0 on image filesystem
24m         Normal    NodeHasSufficientMemory   node/ip-10-0-2-192.ec2.internal   Node ip-10-0-2-192.ec2.internal status is now: NodeHasSufficientMemory
24m         Normal    NodeHasNoDiskPressure     node/ip-10-0-2-192.ec2.internal   Node ip-10-0-2-192.ec2.internal status is now: NodeHasNoDiskPressure
24m         Normal    NodeHasSufficientPID      node/ip-10-0-2-192.ec2.internal   Node ip-10-0-2-192.ec2.internal status is now: NodeHasSufficientPID
24m         Normal    NodeAllocatableEnforced   node/ip-10-0-2-192.ec2.internal   Updated Node Allocatable limit across pods
23m         Normal    Synced                    node/ip-10-0-2-192.ec2.internal   Node synced successfully
23m         Normal    RegisteredNode            node/ip-10-0-2-192.ec2.internal   Node ip-10-0-2-192.ec2.internal event: Registered Node ip-10-0-2-192.ec2.internal in Controller
23m         Normal    Starting                  node/ip-10-0-2-192.ec2.internal   
23m         Normal    ControllerVersionNotice   node/ip-10-0-2-192.ec2.internal   The node is managed by VPC resource controller version v1.7.11
3m16s       Warning   Unsupported               node/ip-10-0-2-192.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
23m         Normal    NodeReady                 node/ip-10-0-2-192.ec2.internal   Node ip-10-0-2-192.ec2.internal status is now: NodeReady
23m         Normal    Ready                     node/ip-10-0-2-192.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    DisruptionBlocked         node/ip-10-0-2-234.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b1200t30-7ddc598df6-vcxsv)
24m         Normal    Starting                  node/ip-10-0-2-234.ec2.internal   
14m         Normal    DisruptionBlocked         node/ip-10-0-2-234.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b1200t30-7ddc598df6-vcxsv)
106s        Normal    DisruptionBlocked         node/ip-10-0-2-234.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b1200t30-7ddc598df6-vcxsv)
15m         Normal    Starting                  node/ip-10-0-2-61.ec2.internal    Starting kubelet.
15m         Warning   InvalidDiskCapacity       node/ip-10-0-2-61.ec2.internal    invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory   node/ip-10-0-2-61.ec2.internal    Node ip-10-0-2-61.ec2.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure     node/ip-10-0-2-61.ec2.internal    Node ip-10-0-2-61.ec2.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID      node/ip-10-0-2-61.ec2.internal    Node ip-10-0-2-61.ec2.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced   node/ip-10-0-2-61.ec2.internal    Updated Node Allocatable limit across pods
15m         Normal    Synced                    node/ip-10-0-2-61.ec2.internal    Node synced successfully
15m         Normal    DisruptionBlocked         node/ip-10-0-2-61.ec2.internal    Node isn't initialized
15m         Normal    RegisteredNode            node/ip-10-0-2-61.ec2.internal    Node ip-10-0-2-61.ec2.internal event: Registered Node ip-10-0-2-61.ec2.internal in Controller
15m         Normal    Starting                  node/ip-10-0-2-61.ec2.internal    
15m         Normal    ControllerVersionNotice   node/ip-10-0-2-61.ec2.internal    The node is managed by VPC resource controller version v1.7.11
15m         Normal    NodeReady                 node/ip-10-0-2-61.ec2.internal    Node ip-10-0-2-61.ec2.internal status is now: NodeReady
15m         Normal    Ready                     node/ip-10-0-2-61.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    NodeTrunkInitiated        node/ip-10-0-2-61.ec2.internal    The node has trunk interface initialized successfully
14m         Normal    Unconsolidatable          node/ip-10-0-2-61.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
13m         Normal    DisruptionBlocked         node/ip-10-0-2-61.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=signup-sequencer-nfc-secure-ethereum/signup-sequencer-nfc-secure-ethereum-pdb)
12m         Normal    Unconsolidatable          node/ip-10-0-2-61.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
19m         Normal    DisruptionBlocked         node/ip-10-0-2-66.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=world-id-relay/world-id-relay-pdb)
24m         Normal    Starting                  node/ip-10-0-2-66.ec2.internal    
14m         Normal    DisruptionBlocked         node/ip-10-0-2-66.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=world-id-relay/world-id-relay-pdb)
106s        Normal    DisruptionBlocked         node/ip-10-0-2-66.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=world-id-relay/world-id-relay-pdb)
14m         Normal    Starting                  node/ip-10-0-2-95.ec2.internal    Starting kubelet.
14m         Warning   InvalidDiskCapacity       node/ip-10-0-2-95.ec2.internal    invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory   node/ip-10-0-2-95.ec2.internal    Node ip-10-0-2-95.ec2.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure     node/ip-10-0-2-95.ec2.internal    Node ip-10-0-2-95.ec2.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID      node/ip-10-0-2-95.ec2.internal    Node ip-10-0-2-95.ec2.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced   node/ip-10-0-2-95.ec2.internal    Updated Node Allocatable limit across pods
14m         Normal    Synced                    node/ip-10-0-2-95.ec2.internal    Node synced successfully
14m         Normal    RegisteredNode            node/ip-10-0-2-95.ec2.internal    Node ip-10-0-2-95.ec2.internal event: Registered Node ip-10-0-2-95.ec2.internal in Controller
13m         Normal    DisruptionBlocked         node/ip-10-0-2-95.ec2.internal    Node isn't initialized
13m         Normal    Starting                  node/ip-10-0-2-95.ec2.internal    
13m         Normal    ControllerVersionNotice   node/ip-10-0-2-95.ec2.internal    The node is managed by VPC resource controller version v1.7.11
13m         Normal    NodeReady                 node/ip-10-0-2-95.ec2.internal    Node ip-10-0-2-95.ec2.internal status is now: NodeReady
13m         Normal    Ready                     node/ip-10-0-2-95.ec2.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
13m         Normal    NodeTrunkInitiated        node/ip-10-0-2-95.ec2.internal    The node has trunk interface initialized successfully
12m         Normal    Unconsolidatable          node/ip-10-0-2-95.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
12m         Normal    Unconsolidatable          node/ip-10-0-2-95.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
19m         Normal    DisruptionBlocked         node/ip-10-0-3-119.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=safe-transaction-service/safe-transaction-service-contracts-tokens-worker-pdb)
25m         Normal    Starting                  node/ip-10-0-3-119.ec2.internal   
14m         Normal    DisruptionBlocked         node/ip-10-0-3-119.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=safe-transaction-service/safe-transaction-service-contracts-tokens-worker-pdb)
106s        Normal    DisruptionBlocked         node/ip-10-0-3-119.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=safe-transaction-service/safe-transaction-service-contracts-tokens-worker-pdb)
15m         Normal    Starting                  node/ip-10-0-3-155.ec2.internal   Starting kubelet.
15m         Warning   InvalidDiskCapacity       node/ip-10-0-3-155.ec2.internal   invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory   node/ip-10-0-3-155.ec2.internal   Node ip-10-0-3-155.ec2.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure     node/ip-10-0-3-155.ec2.internal   Node ip-10-0-3-155.ec2.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID      node/ip-10-0-3-155.ec2.internal   Node ip-10-0-3-155.ec2.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced   node/ip-10-0-3-155.ec2.internal   Updated Node Allocatable limit across pods
15m         Normal    Synced                    node/ip-10-0-3-155.ec2.internal   Node synced successfully
15m         Normal    DisruptionBlocked         node/ip-10-0-3-155.ec2.internal   Node isn't initialized
15m         Normal    RegisteredNode            node/ip-10-0-3-155.ec2.internal   Node ip-10-0-3-155.ec2.internal event: Registered Node ip-10-0-3-155.ec2.internal in Controller
15m         Normal    Starting                  node/ip-10-0-3-155.ec2.internal   
15m         Normal    ControllerVersionNotice   node/ip-10-0-3-155.ec2.internal   The node is managed by VPC resource controller version v1.7.11
15m         Normal    NodeReady                 node/ip-10-0-3-155.ec2.internal   Node ip-10-0-3-155.ec2.internal status is now: NodeReady
15m         Normal    Ready                     node/ip-10-0-3-155.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    NodeTrunkInitiated        node/ip-10-0-3-155.ec2.internal   The node has trunk interface initialized successfully
13m         Normal    Unconsolidatable          node/ip-10-0-3-155.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
12m         Normal    Unconsolidatable          node/ip-10-0-3-155.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
19m         Normal    Unconsolidatable          node/ip-10-0-3-206.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    Starting                  node/ip-10-0-3-206.ec2.internal   
16m         Normal    Unconsolidatable          node/ip-10-0-3-206.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
16m         Normal    DisruptionBlocked         node/ip-10-0-3-206.ec2.internal   Node is deleting or marked for deletion
15m         Normal    DisruptionTerminating     node/ip-10-0-3-206.ec2.internal   Disrupting Node: Drifted/Replace
15m         Warning   FailedDraining            node/ip-10-0-3-206.ec2.internal   Failed to drain node, 3 pods are waiting to be evicted
14m         Warning   InstanceTerminating       node/ip-10-0-3-206.ec2.internal   Instance is terminating
14m         Normal    RemovingNode              node/ip-10-0-3-206.ec2.internal   Node ip-10-0-3-206.ec2.internal event: Removing Node ip-10-0-3-206.ec2.internal from Controller
13m         Normal    Starting                  node/ip-10-0-3-231.ec2.internal   Starting kubelet.
13m         Warning   InvalidDiskCapacity       node/ip-10-0-3-231.ec2.internal   invalid capacity 0 on image filesystem
13m         Normal    NodeHasSufficientMemory   node/ip-10-0-3-231.ec2.internal   Node ip-10-0-3-231.ec2.internal status is now: NodeHasSufficientMemory
13m         Normal    NodeHasNoDiskPressure     node/ip-10-0-3-231.ec2.internal   Node ip-10-0-3-231.ec2.internal status is now: NodeHasNoDiskPressure
13m         Normal    NodeHasSufficientPID      node/ip-10-0-3-231.ec2.internal   Node ip-10-0-3-231.ec2.internal status is now: NodeHasSufficientPID
13m         Normal    NodeAllocatableEnforced   node/ip-10-0-3-231.ec2.internal   Updated Node Allocatable limit across pods
13m         Normal    Synced                    node/ip-10-0-3-231.ec2.internal   Node synced successfully
13m         Normal    RegisteredNode            node/ip-10-0-3-231.ec2.internal   Node ip-10-0-3-231.ec2.internal event: Registered Node ip-10-0-3-231.ec2.internal in Controller
13m         Normal    DisruptionBlocked         node/ip-10-0-3-231.ec2.internal   Node isn't initialized
13m         Normal    ControllerVersionNotice   node/ip-10-0-3-231.ec2.internal   The node is managed by VPC resource controller version v1.7.11
13m         Normal    NodeReady                 node/ip-10-0-3-231.ec2.internal   Node ip-10-0-3-231.ec2.internal status is now: NodeReady
13m         Normal    Ready                     node/ip-10-0-3-231.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
13m         Normal    NodeTrunkInitiated        node/ip-10-0-3-231.ec2.internal   The node has trunk interface initialized successfully
12m         Normal    Starting                  node/ip-10-0-3-231.ec2.internal   
12m         Normal    Unconsolidatable          node/ip-10-0-3-231.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
4m31s       Normal    DisruptionBlocked         node/ip-10-0-3-231.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
19m         Normal    DisruptionBlocked         node/ip-10-0-3-250.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b10t30-864bcb955-2tdvg)
24m         Normal    Starting                  node/ip-10-0-3-250.ec2.internal   
14m         Normal    DisruptionBlocked         node/ip-10-0-3-250.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b10t30-864bcb955-2tdvg)
106s        Normal    DisruptionBlocked         node/ip-10-0-3-250.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b10t30-864bcb955-2tdvg)
19m         Normal    DisruptionBlocked         node/ip-10-0-3-65.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-2)
24m         Normal    Starting                  node/ip-10-0-3-65.ec2.internal    
14m         Normal    DisruptionBlocked         node/ip-10-0-3-65.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-2)
106s        Normal    DisruptionBlocked         node/ip-10-0-3-65.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-2)
19m         Normal    Unconsolidatable          node/ip-10-0-3-70.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
25m         Normal    Starting                  node/ip-10-0-3-70.ec2.internal    
16m         Normal    Unconsolidatable          node/ip-10-0-3-70.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
16m         Normal    DisruptionBlocked         node/ip-10-0-3-70.ec2.internal    Not all pods would schedule, signup-sequencer-nfc-secure-ethereum/signup-sequencer-nfc-secure-ethereum-2 => would schedule against uninitialized nodeclaim/main-amd64-glpmn
13m         Normal    DisruptionBlocked         node/ip-10-0-3-70.ec2.internal    Node is deleting or marked for deletion
13m         Normal    DisruptionTerminating     node/ip-10-0-3-70.ec2.internal    Disrupting Node: Drifted/Replace
13m         Warning   FailedDraining            node/ip-10-0-3-70.ec2.internal    Failed to drain node, 3 pods are waiting to be evicted
12m         Warning   InstanceTerminating       node/ip-10-0-3-70.ec2.internal    Instance is terminating
12m         Normal    DisruptionBlocked         node/ip-10-0-3-70.ec2.internal    Node is deleting or marked for deletion
11m         Warning   InstanceTerminating       node/ip-10-0-3-70.ec2.internal    Instance is terminating
11m         Normal    RemovingNode              node/ip-10-0-3-70.ec2.internal    Node ip-10-0-3-70.ec2.internal event: Removing Node ip-10-0-3-70.ec2.internal from Controller
20m         Normal    Starting                  node/ip-10-0-4-132.ec2.internal   Starting kubelet.
20m         Warning   InvalidDiskCapacity       node/ip-10-0-4-132.ec2.internal   invalid capacity 0 on image filesystem
20m         Normal    NodeHasSufficientMemory   node/ip-10-0-4-132.ec2.internal   Node ip-10-0-4-132.ec2.internal status is now: NodeHasSufficientMemory
20m         Normal    NodeHasNoDiskPressure     node/ip-10-0-4-132.ec2.internal   Node ip-10-0-4-132.ec2.internal status is now: NodeHasNoDiskPressure
20m         Normal    NodeHasSufficientPID      node/ip-10-0-4-132.ec2.internal   Node ip-10-0-4-132.ec2.internal status is now: NodeHasSufficientPID
20m         Normal    NodeAllocatableEnforced   node/ip-10-0-4-132.ec2.internal   Updated Node Allocatable limit across pods
20m         Normal    Synced                    node/ip-10-0-4-132.ec2.internal   Node synced successfully
20m         Normal    RegisteredNode            node/ip-10-0-4-132.ec2.internal   Node ip-10-0-4-132.ec2.internal event: Registered Node ip-10-0-4-132.ec2.internal in Controller
19m         Normal    Starting                  node/ip-10-0-4-132.ec2.internal   
19m         Normal    ControllerVersionNotice   node/ip-10-0-4-132.ec2.internal   The node is managed by VPC resource controller version v1.7.11
7m32s       Warning   Unsupported               node/ip-10-0-4-132.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
19m         Normal    NodeReady                 node/ip-10-0-4-132.ec2.internal   Node ip-10-0-4-132.ec2.internal status is now: NodeReady
19m         Normal    Ready                     node/ip-10-0-4-132.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
9m22s       Normal    NodeNotSchedulable        node/ip-10-0-4-132.ec2.internal   Node ip-10-0-4-132.ec2.internal status is now: NodeNotSchedulable
7m38s       Normal    NodeNotReady              node/ip-10-0-4-132.ec2.internal   Node ip-10-0-4-132.ec2.internal status is now: NodeNotReady
7m38s       Normal    MemoryPressure            node/ip-10-0-4-132.ec2.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m38s       Normal    DiskPressure              node/ip-10-0-4-132.ec2.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m38s       Normal    PIDPressure               node/ip-10-0-4-132.ec2.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m38s       Normal    Ready                     node/ip-10-0-4-132.ec2.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
7m29s       Normal    DeletingNode              node/ip-10-0-4-132.ec2.internal   Deleting node ip-10-0-4-132.ec2.internal because it does not exist in the cloud provider
7m27s       Normal    RemovingNode              node/ip-10-0-4-132.ec2.internal   Node ip-10-0-4-132.ec2.internal event: Removing Node ip-10-0-4-132.ec2.internal from Controller
19m         Normal    DisruptionBlocked         node/ip-10-0-5-17.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=safe-transaction-service/sts-notifications-webhooks-worker-pdb)
24m         Normal    Starting                  node/ip-10-0-5-17.ec2.internal    
16m         Normal    DisruptionBlocked         node/ip-10-0-5-17.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=safe-transaction-service/sts-notifications-webhooks-worker-pdb)
14m         Normal    DisruptionBlocked         node/ip-10-0-5-17.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=signup-sequencer-orb-ethereum/signup-sequencer-orb-ethereum-pdb)
106s        Normal    DisruptionBlocked         node/ip-10-0-5-17.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=safe-transaction-service/sts-notifications-webhooks-worker-pdb)
19m         Normal    DisruptionBlocked         node/ip-10-0-5-206.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-1)
24m         Normal    Starting                  node/ip-10-0-5-206.ec2.internal   
14m         Normal    DisruptionBlocked         node/ip-10-0-5-206.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-1)
106s        Normal    DisruptionBlocked         node/ip-10-0-5-206.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-1)
15m         Warning   Unsupported               node/ip-10-0-5-44.ec2.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
24m         Normal    Starting                  node/ip-10-0-5-44.ec2.internal    
19m         Normal    NodeNotSchedulable        node/ip-10-0-5-44.ec2.internal    Node ip-10-0-5-44.ec2.internal status is now: NodeNotSchedulable
13m         Normal    NodeNotReady              node/ip-10-0-5-44.ec2.internal    Node ip-10-0-5-44.ec2.internal status is now: NodeNotReady
13m         Normal    MemoryPressure            node/ip-10-0-5-44.ec2.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DiskPressure              node/ip-10-0-5-44.ec2.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    PIDPressure               node/ip-10-0-5-44.ec2.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    Ready                     node/ip-10-0-5-44.ec2.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DeletingNode              node/ip-10-0-5-44.ec2.internal    Deleting node ip-10-0-5-44.ec2.internal because it does not exist in the cloud provider
13m         Normal    RemovingNode              node/ip-10-0-5-44.ec2.internal    Node ip-10-0-5-44.ec2.internal event: Removing Node ip-10-0-5-44.ec2.internal from Controller
19m         Normal    DisruptionBlocked         node/ip-10-0-5-97.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b100t30-7fd6577545-9dqqn)
25m         Normal    DisruptionBlocked         node/ip-10-0-5-97.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b600t30-6967fd87c6-8x7vf)
24m         Normal    Starting                  node/ip-10-0-5-97.ec2.internal    
14m         Normal    DisruptionBlocked         node/ip-10-0-5-97.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b100t30-7fd6577545-9dqqn)
106s        Normal    DisruptionBlocked         node/ip-10-0-5-97.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b100t30-7fd6577545-9dqqn)
```

Pods with issues
```
world-chain-node                              world-chain-node-0                                                0/1     CrashLoopBackOff   1490 (2m22s ago)   5d7h
```

PodDisruptionBudgets
```
NAMESPACE                                     NAME                                                   MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                            cluster-monitoring-pdb                                 N/A             1                 1                     299d
karpenter                                     karpenter                                              N/A             1                 1                     2y166d
kube-system                                   coredns                                                N/A             1                 1                     626d
kube-system                                   ebs-csi-controller                                     N/A             1                 1                     2y175d
kyverno                                       kyverno-admission-controller                           1               N/A               2                     608d
nfc-uniqueness-service                        mpc-service-pdb                                        N/A             1                 1                     134d
nfc-uniqueness-service                        nfc-uniqueness-service-pdb                             N/A             1                 1                     302d
nfc-uniqueness-service                        sod-service-pdb                                        N/A             1                 1                     299d
safe-transaction-service                      safe-transaction-service-contracts-tokens-worker-pdb   50%             N/A               0                     198d
safe-transaction-service                      safe-transaction-service-indexer-worker-pdb            50%             N/A               0                     198d
safe-transaction-service                      safe-transaction-service-web-pdb                       50%             N/A               0                     203d
safe-transaction-service                      sts-indexer-worker-pdb                                 N/A             1                 0                     197d
safe-transaction-service                      sts-notifications-webhooks-worker-pdb                  50%             N/A               0                     198d
safe-transaction-service                      sts-scheduler-pdb                                      50%             N/A               0                     198d
safe-transaction-service                      sts-web-pdb                                            N/A             1                 1                     196d
semaphore-mtb-orb                             semaphore-mtb-orb-deletion-b100t30-pdb                 50%             N/A               1                     307d
semaphore-mtb-orb                             semaphore-mtb-orb-deletion-b10t30-pdb                  50%             N/A               1                     307d
semaphore-mtb-orb                             semaphore-mtb-orb-insertion-b100t30-pdb                50%             N/A               1                     307d
semaphore-mtb-orb                             semaphore-mtb-orb-insertion-b10t30-pdb                 50%             N/A               1                     307d
semaphore-mtb-orb                             semaphore-mtb-orb-insertion-b1200t30-pdb               50%             N/A               1                     231d
semaphore-mtb-orb                             semaphore-mtb-orb-insertion-b600t30-pdb                50%             N/A               1                     307d
signup-sequencer-nfc-ethereum                 signup-sequencer-nfc-ethereum-pdb                      N/A             1                 1                     259d
signup-sequencer-nfc-secure-ethereum          signup-sequencer-nfc-secure-ethereum-pdb               N/A             1                 1                     259d
signup-sequencer-orb-ethereum                 signup-sequencer-orb-ethereum-pdb                      N/A             1                 1                     288d
signup-sequencer-phone-ethereum               signup-sequencer-phone-ethereum-pdb                    N/A             1                 1                     294d
tx-data-ingress                               tx-data-ingress-pdb                                    N/A             1                 1                     303d
tx-sitter-monolith                            tx-sitter-monolith-pdb                                 N/A             1                 1                     177d
world-chain-mainnet-archive-node-reth         world-chain-mainnet-archive-node-reth-op-node-pdb      N/A             1                 1                     24h
world-chain-mainnet-archive-node-reth         world-chain-mainnet-archive-node-reth-op-reth-pdb      N/A             1                 1                     24h
world-chain-mainnet-archive-node              world-chain-mainnet-archive-node-op-geth-pdb           N/A             1                 1                     226d
world-chain-mainnet-archive-node              world-chain-mainnet-archive-node-op-node-pdb           N/A             1                 1                     226d
world-chain-node                              world-chain-node-pdb                                   50%             N/A               0                     5d7h
world-id-relay-nfc-secure                     world-id-relay-nfc-secure-pdb                          50%             N/A               0                     152d
world-id-relay-nfc                            world-id-relay-nfc-pdb                                 50%             N/A               0                     152d
world-id-relay-orb                            world-id-relay-orb-pdb                                 50%             N/A               0                     152d
world-id-relay                                world-id-relay-pdb                                     50%             N/A               0                     303d
worldcoin-chainlink-datastreams-transmitter   worldcoin-chainlink-datastreams-transmitter-pdb        N/A             1                 1                     174d
```

Pods with Karpenter.sh/Do-Not-Disrupt Annotation
```
ip-10-0-0-112.ec2.internal  signup-sequencer-phone-ethereum-0                      (signup-sequencer-phone-ethereum)
ip-10-0-0-162.ec2.internal  semaphore-mtb-orb-insertion-b1200t30-7ddc598df6-xc2jw  (semaphore-mtb-orb)
ip-10-0-0-193.ec2.internal  semaphore-mtb-orb-deletion-b10t30-857f5bfb5-24j4t      (semaphore-mtb-orb)
ip-10-0-1-161.ec2.internal  semaphore-mtb-orb-insertion-b600t30-6967fd87c6-82sj7   (semaphore-mtb-orb)
ip-10-0-1-199.ec2.internal  semaphore-mtb-orb-insertion-b100t30-7fd6577545-wrjgk   (semaphore-mtb-orb)
ip-10-0-1-216.ec2.internal  semaphore-mtb-orb-deletion-b100t30-78d796f865-bvvtj    (semaphore-mtb-orb)
ip-10-0-1-34.ec2.internal   semaphore-mtb-orb-deletion-b100t30-78d796f865-nmcvs    (semaphore-mtb-orb)
ip-10-0-2-125.ec2.internal  world-chain-node-0                                     (world-chain-node)
ip-10-0-2-169.ec2.internal  semaphore-mtb-orb-deletion-b10t30-857f5bfb5-zzz2q      (semaphore-mtb-orb)
ip-10-0-2-19.ec2.internal   semaphore-mtb-orb-insertion-b10t30-864bcb955-zvln2     (semaphore-mtb-orb)
ip-10-0-2-234.ec2.internal  semaphore-mtb-orb-insertion-b1200t30-7ddc598df6-vcxsv  (semaphore-mtb-orb)
ip-10-0-3-250.ec2.internal  semaphore-mtb-orb-insertion-b10t30-864bcb955-2tdvg     (semaphore-mtb-orb)
ip-10-0-3-65.ec2.internal   signup-sequencer-phone-ethereum-2                      (signup-sequencer-phone-ethereum)
ip-10-0-5-206.ec2.internal  signup-sequencer-phone-ethereum-1                      (signup-sequencer-phone-ethereum)
ip-10-0-5-97.ec2.internal   semaphore-mtb-orb-insertion-b100t30-7fd6577545-9dqqn   (semaphore-mtb-orb)
ip-10-0-5-97.ec2.internal   semaphore-mtb-orb-insertion-b600t30-6967fd87c6-8x7vf   (semaphore-mtb-orb)
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

Generated on: Thu Sep 25 10:29:53 CEST 2025
