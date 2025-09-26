# Cluster recon for tfh-crypto-prod-infra,us-east-1,crypto-v2-prod-us-east-1,tunnel-vpc-crypto-prod-us-east-1

TFH EKS login...
```console
2025/09/25 13:27:29 INFO Logging into AWS
2025/09/25 13:27:29 INFO Token found and valid
2025/09/25 13:27:31 INFO Switch WARP Virtual Network to name=tunnel-vpc-crypto-prod-us-east-1 id=c8ca54d1-de3b-4d42-a00d-abf0ed15d587
2025/09/25 13:27:32 INFO Active WARP Virtual Network id=c8ca54d1-de3b-4d42-a00d-abf0ed15d587
Updated context tfh-crypto-v2-prod-us-east-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "crypto-v2-prod-us-east-1",
        "arn": "arn:aws:eks:us-east-1:866736719513:cluster/crypto-v2-prod-us-east-1",
        "createdAt": "2023-04-03T15:07:28.570000+02:00",
        "version": "1.33",
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
        "platformVersion": "eks.14",
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
NAME                         STATUS                     ROLES    AGE     VERSION               INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-0-0-112.ec2.internal   Ready,SchedulingDisabled   <none>   119d    v1.32.3-eks-473151a   10.0.0.112    <none>        Amazon Linux 2                 5.10.236-228.935.amzn2.x86_64     containerd://1.7.27   
ip-10-0-0-162.ec2.internal   Ready,SchedulingDisabled   <none>   181d    v1.32.1-eks-5d632ec   10.0.0.162    <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-0-193.ec2.internal   Ready,SchedulingDisabled   <none>   181d    v1.32.1-eks-5d632ec   10.0.0.193    <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-0-229.ec2.internal   Ready                      <none>   160m    v1.33.5-eks-113cf36   10.0.0.229    <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-0-230.ec2.internal   Ready                      <none>   159m    v1.33.5-eks-113cf36   10.0.0.230    <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-1-161.ec2.internal   Ready,SchedulingDisabled   <none>   142d    v1.32.3-eks-473151a   10.0.1.161    <none>        Amazon Linux 2                 5.10.236-227.928.amzn2.x86_64     containerd://1.7.27   
ip-10-0-1-178.ec2.internal   Ready                      <none>   37m     v1.33.5-eks-113cf36   10.0.1.178    <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-1-199.ec2.internal   Ready,SchedulingDisabled   <none>   181d    v1.32.1-eks-5d632ec   10.0.1.199    <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-1-216.ec2.internal   Ready,SchedulingDisabled   <none>   181d    v1.32.1-eks-5d632ec   10.0.1.216    <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-1-32.ec2.internal    Ready                      <none>   158m    v1.33.5-eks-113cf36   10.0.1.32     <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-1-34.ec2.internal    Ready,SchedulingDisabled   <none>   181d    v1.32.1-eks-5d632ec   10.0.1.34     <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-1-83.ec2.internal    Ready                      <none>   160m    v1.33.5-eks-113cf36   10.0.1.83     <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-2-125.ec2.internal   Ready,SchedulingDisabled   <none>   5d10h   v1.32.8-eks-99d6cc0   10.0.2.125    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-2-146.ec2.internal   Ready                      <none>   164m    v1.33.5-eks-113cf36   10.0.2.146    <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-crypto-v2-prod-us-east-1
ip-10-0-2-169.ec2.internal   Ready,SchedulingDisabled   <none>   181d    v1.32.1-eks-5d632ec   10.0.2.169    <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-2-19.ec2.internal    Ready,SchedulingDisabled   <none>   181d    v1.32.1-eks-5d632ec   10.0.2.19     <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-2-234.ec2.internal   Ready,SchedulingDisabled   <none>   181d    v1.32.1-eks-5d632ec   10.0.2.234    <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-2-25.ec2.internal    Ready                      <none>   160m    v1.33.5-eks-113cf36   10.0.2.25     <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-2-66.ec2.internal    Ready,SchedulingDisabled   <none>   178d    v1.32.1-eks-5d632ec   10.0.2.66     <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-2-99.ec2.internal    Ready                      <none>   159m    v1.33.5-eks-113cf36   10.0.2.99     <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-3-119.ec2.internal   Ready,SchedulingDisabled   <none>   142d    v1.32.3-eks-473151a   10.0.3.119    <none>        Amazon Linux 2                 5.10.236-227.928.amzn2.x86_64     containerd://1.7.27   
ip-10-0-3-180.ec2.internal   Ready                      <none>   159m    v1.33.5-eks-113cf36   10.0.3.180    <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-0-3-250.ec2.internal   Ready,SchedulingDisabled   <none>   181d    v1.32.1-eks-5d632ec   10.0.3.250    <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
ip-10-0-3-65.ec2.internal    Ready,SchedulingDisabled   <none>   153d    v1.32.1-eks-5d632ec   10.0.3.65     <none>        Amazon Linux 2                 5.10.235-227.919.amzn2.x86_64     containerd://1.7.27   
ip-10-0-5-153.ec2.internal   Ready                      <none>   165m    v1.33.5-eks-113cf36   10.0.5.153    <none>        Amazon Linux 2023.8.20250915   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-crypto-v2-prod-us-east-1
ip-10-0-5-17.ec2.internal    Ready,SchedulingDisabled   <none>   197d    v1.32.1-eks-5d632ec   10.0.5.17     <none>        Amazon Linux 2                 5.10.234-225.895.amzn2.x86_64     containerd://1.7.25   
ip-10-0-5-206.ec2.internal   Ready,SchedulingDisabled   <none>   30d     v1.32.7-eks-3abbec1   10.0.5.206    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27   
ip-10-0-5-97.ec2.internal    Ready,SchedulingDisabled   <none>   181d    v1.32.1-eks-5d632ec   10.0.5.97     <none>        Amazon Linux 2                 5.10.234-225.910.amzn2.x86_64     containerd://1.7.25   
```

Nodes and their taints
```
NAME                         STATUS                  ROLES    TAINTS
ip-10-0-0-112.ec2.internal   Ready                   <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:25Z]]
ip-10-0-0-162.ec2.internal   StorageReady            <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:29Z]]
ip-10-0-0-193.ec2.internal   ContainerRuntimeReady   <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:31Z]]
ip-10-0-0-229.ec2.internal   Ready                   <none>   <none>
ip-10-0-0-230.ec2.internal   Ready                   <none>   <none>
ip-10-0-1-161.ec2.internal   Ready                   <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:37Z]]
ip-10-0-1-178.ec2.internal   Ready                   <none>   <none>
ip-10-0-1-199.ec2.internal   StorageReady            <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:39Z]]
ip-10-0-1-216.ec2.internal   KernelReady             <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:41Z]]
ip-10-0-1-32.ec2.internal    Ready                   <none>   <none>
ip-10-0-1-34.ec2.internal    ContainerRuntimeReady   <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:35Z]]
ip-10-0-1-83.ec2.internal    Ready                   <none>   <none>
ip-10-0-2-125.ec2.internal   Ready                   <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:47Z]]
ip-10-0-2-146.ec2.internal   Ready                   <none>   [map[effect:NoExecute key:critical]]
ip-10-0-2-169.ec2.internal   StorageReady            <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:51Z]]
ip-10-0-2-19.ec2.internal    KernelReady             <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:43Z]]
ip-10-0-2-234.ec2.internal   KernelReady             <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:53Z]]
ip-10-0-2-25.ec2.internal    Ready                   <none>   <none>
ip-10-0-2-66.ec2.internal    KernelReady             <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:45Z]]
ip-10-0-2-99.ec2.internal    Ready                   <none>   <none>
ip-10-0-3-119.ec2.internal   Ready                   <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:57Z]]
ip-10-0-3-180.ec2.internal   Ready                   <none>   <none>
ip-10-0-3-250.ec2.internal   NetworkingReady         <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:59Z]]
ip-10-0-3-65.ec2.internal    KernelReady             <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:55:55Z]]
ip-10-0-5-153.ec2.internal   Ready                   <none>   [map[effect:NoExecute key:critical]]
ip-10-0-5-17.ec2.internal    ContainerRuntimeReady   <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:56:01Z]]
ip-10-0-5-206.ec2.internal   Ready                   <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:56:05Z]]
ip-10-0-5-97.ec2.internal    KernelReady             <none>   [map[effect:NoSchedule key:node.kubernetes.io/unschedulable timeAdded:2025-09-25T08:56:03Z]]
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                    OBJECT                            MESSAGE
13s         Normal    DisruptionBlocked         node/ip-10-0-0-112.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-0)
13s         Normal    DisruptionBlocked         node/ip-10-0-0-162.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b1200t30-7ddc598df6-xc2jw)
13s         Normal    DisruptionBlocked         node/ip-10-0-0-193.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b10t30-857f5bfb5-24j4t)
10m         Normal    Unconsolidatable          node/ip-10-0-0-229.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
38m         Normal    DisruptionBlocked         node/ip-10-0-0-229.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=nfc-uniqueness-service/nfc-uniqueness-service-pdb)
10m         Normal    Unconsolidatable          node/ip-10-0-0-230.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
2m7s        Normal    DisruptionBlocked         node/ip-10-0-0-230.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
13s         Normal    DisruptionBlocked         node/ip-10-0-1-161.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b600t30-6967fd87c6-82sj7)
37m         Normal    Starting                  node/ip-10-0-1-178.ec2.internal   Starting kubelet.
37m         Warning   InvalidDiskCapacity       node/ip-10-0-1-178.ec2.internal   invalid capacity 0 on image filesystem
37m         Normal    NodeHasSufficientMemory   node/ip-10-0-1-178.ec2.internal   Node ip-10-0-1-178.ec2.internal status is now: NodeHasSufficientMemory
37m         Normal    NodeHasNoDiskPressure     node/ip-10-0-1-178.ec2.internal   Node ip-10-0-1-178.ec2.internal status is now: NodeHasNoDiskPressure
37m         Normal    NodeHasSufficientPID      node/ip-10-0-1-178.ec2.internal   Node ip-10-0-1-178.ec2.internal status is now: NodeHasSufficientPID
37m         Normal    NodeAllocatableEnforced   node/ip-10-0-1-178.ec2.internal   Updated Node Allocatable limit across pods
37m         Normal    Synced                    node/ip-10-0-1-178.ec2.internal   Node synced successfully
37m         Normal    DisruptionBlocked         node/ip-10-0-1-178.ec2.internal   Node isn't initialized
37m         Normal    RegisteredNode            node/ip-10-0-1-178.ec2.internal   Node ip-10-0-1-178.ec2.internal event: Registered Node ip-10-0-1-178.ec2.internal in Controller
37m         Normal    Starting                  node/ip-10-0-1-178.ec2.internal   
37m         Normal    ControllerVersionNotice   node/ip-10-0-1-178.ec2.internal   The node is managed by VPC resource controller version v1.7.11
37m         Normal    NodeReady                 node/ip-10-0-1-178.ec2.internal   Node ip-10-0-1-178.ec2.internal status is now: NodeReady
37m         Normal    Ready                     node/ip-10-0-1-178.ec2.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
37m         Normal    NodeTrunkInitiated        node/ip-10-0-1-178.ec2.internal   The node has trunk interface initialized successfully
6m34s       Normal    Unconsolidatable          node/ip-10-0-1-178.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
13s         Normal    DisruptionBlocked         node/ip-10-0-1-199.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b100t30-7fd6577545-wrjgk)
13s         Normal    DisruptionBlocked         node/ip-10-0-1-216.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b100t30-78d796f865-bvvtj)
10m         Normal    Unconsolidatable          node/ip-10-0-1-32.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
13s         Normal    DisruptionBlocked         node/ip-10-0-1-34.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b100t30-78d796f865-nmcvs)
10m         Normal    Unconsolidatable          node/ip-10-0-1-83.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
13s         Normal    DisruptionBlocked         node/ip-10-0-2-125.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=world-chain-node/world-chain-node-0)
4m27s       Warning   Unsupported               node/ip-10-0-2-146.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
13s         Normal    DisruptionBlocked         node/ip-10-0-2-169.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-deletion-b10t30-857f5bfb5-zzz2q)
13s         Normal    DisruptionBlocked         node/ip-10-0-2-19.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b10t30-864bcb955-zvln2)
13s         Normal    DisruptionBlocked         node/ip-10-0-2-234.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b1200t30-7ddc598df6-vcxsv)
10m         Normal    Unconsolidatable          node/ip-10-0-2-25.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
38m         Normal    DisruptionBlocked         node/ip-10-0-2-25.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=nfc-uniqueness-service/nfc-uniqueness-service-pdb)
13s         Normal    DisruptionBlocked         node/ip-10-0-2-66.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=world-id-relay/world-id-relay-pdb)
10m         Normal    Unconsolidatable          node/ip-10-0-2-99.ec2.internal    NodePool "main-amd64" has non-empty consolidation disabled
38m         Normal    DisruptionBlocked         node/ip-10-0-2-99.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=nfc-uniqueness-service/nfc-uniqueness-service-pdb)
13s         Normal    DisruptionBlocked         node/ip-10-0-3-119.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=safe-transaction-service/safe-transaction-service-contracts-tokens-worker-pdb)
10m         Normal    Unconsolidatable          node/ip-10-0-3-180.ec2.internal   NodePool "main-amd64" has non-empty consolidation disabled
38m         Normal    DisruptionBlocked         node/ip-10-0-3-180.ec2.internal   Pdb prevents pod evictions (PodDisruptionBudget=nfc-uniqueness-service/nfc-uniqueness-service-pdb)
13s         Normal    DisruptionBlocked         node/ip-10-0-3-250.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b10t30-864bcb955-2tdvg)
13s         Normal    DisruptionBlocked         node/ip-10-0-3-65.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-2)
4m33s       Warning   Unsupported               node/ip-10-0-5-153.ec2.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
13s         Normal    DisruptionBlocked         node/ip-10-0-5-17.ec2.internal    Pdb prevents pod evictions (PodDisruptionBudget=safe-transaction-service/sts-notifications-webhooks-worker-pdb)
13s         Normal    DisruptionBlocked         node/ip-10-0-5-206.ec2.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-sequencer-phone-ethereum/signup-sequencer-phone-ethereum-1)
13s         Normal    DisruptionBlocked         node/ip-10-0-5-97.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b600t30-6967fd87c6-8x7vf)
10m         Normal    DisruptionBlocked         node/ip-10-0-5-97.ec2.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=semaphore-mtb-orb/semaphore-mtb-orb-insertion-b100t30-7fd6577545-9dqqn)
```

Pods with issues
```
world-chain-node                              world-chain-node-0                                                0/1     CrashLoopBackOff   1525 (66s ago)   5d10h
```

PodDisruptionBudgets
```
NAMESPACE                                     NAME                                                   MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                            cluster-monitoring-pdb                                 N/A             1                 1                     300d
karpenter                                     karpenter                                              N/A             1                 1                     2y167d
kube-system                                   coredns                                                N/A             1                 1                     626d
kube-system                                   ebs-csi-controller                                     N/A             1                 1                     2y175d
kyverno                                       kyverno-admission-controller                           1               N/A               2                     608d
nfc-uniqueness-service                        mpc-service-pdb                                        N/A             1                 1                     134d
nfc-uniqueness-service                        nfc-uniqueness-service-pdb                             N/A             1                 1                     302d
nfc-uniqueness-service                        sod-service-pdb                                        N/A             1                 1                     299d
safe-transaction-service                      safe-transaction-service-contracts-tokens-worker-pdb   50%             N/A               0                     198d
safe-transaction-service                      safe-transaction-service-indexer-worker-pdb            50%             N/A               0                     198d
safe-transaction-service                      safe-transaction-service-web-pdb                       50%             N/A               0                     204d
safe-transaction-service                      sts-indexer-worker-pdb                                 N/A             1                 0                     197d
safe-transaction-service                      sts-notifications-webhooks-worker-pdb                  50%             N/A               0                     198d
safe-transaction-service                      sts-scheduler-pdb                                      50%             N/A               0                     198d
safe-transaction-service                      sts-web-pdb                                            N/A             1                 1                     196d
semaphore-mtb-orb                             semaphore-mtb-orb-deletion-b100t30-pdb                 50%             N/A               1                     307d
semaphore-mtb-orb                             semaphore-mtb-orb-deletion-b10t30-pdb                  50%             N/A               1                     307d
semaphore-mtb-orb                             semaphore-mtb-orb-insertion-b100t30-pdb                50%             N/A               1                     307d
semaphore-mtb-orb                             semaphore-mtb-orb-insertion-b10t30-pdb                 50%             N/A               1                     307d
semaphore-mtb-orb                             semaphore-mtb-orb-insertion-b1200t30-pdb               50%             N/A               1                     232d
semaphore-mtb-orb                             semaphore-mtb-orb-insertion-b600t30-pdb                50%             N/A               1                     307d
signup-sequencer-nfc-ethereum                 signup-sequencer-nfc-ethereum-pdb                      N/A             1                 1                     259d
signup-sequencer-nfc-secure-ethereum          signup-sequencer-nfc-secure-ethereum-pdb               N/A             1                 1                     259d
signup-sequencer-orb-ethereum                 signup-sequencer-orb-ethereum-pdb                      N/A             1                 1                     288d
signup-sequencer-phone-ethereum               signup-sequencer-phone-ethereum-pdb                    N/A             1                 1                     294d
tx-data-ingress                               tx-data-ingress-pdb                                    N/A             1                 1                     304d
tx-sitter-monolith                            tx-sitter-monolith-pdb                                 N/A             1                 1                     177d
world-chain-mainnet-archive-node-reth         world-chain-mainnet-archive-node-reth-op-node-pdb      N/A             1                 1                     27h
world-chain-mainnet-archive-node-reth         world-chain-mainnet-archive-node-reth-op-reth-pdb      N/A             1                 1                     27h
world-chain-mainnet-archive-node              world-chain-mainnet-archive-node-op-geth-pdb           N/A             1                 1                     227d
world-chain-mainnet-archive-node              world-chain-mainnet-archive-node-op-node-pdb           N/A             1                 1                     227d
world-chain-node                              world-chain-node-pdb                                   50%             N/A               0                     5d10h
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

Cluster version up to date - no pluto apis detection rquired

Generated on: Thu Sep 25 13:27:55 CEST 2025
