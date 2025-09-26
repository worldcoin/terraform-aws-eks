# Cluster recon for tfh-orb-prod-infra,eu-central-1,orb-prod-v2-eu-central-1,tunnel-vpc-orb-prod-v2-eu-central-1

TFH EKS login...
```console
2025/09/23 14:10:00 INFO Logging into AWS
2025/09/23 14:10:00 INFO Token found and valid
2025/09/23 14:10:02 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-prod-v2-eu-central-1 id=c52e71ec-bf27-4d9b-b675-cb1631b9d6b4
2025/09/23 14:10:05 INFO Active WARP Virtual Network id=c52e71ec-bf27-4d9b-b675-cb1631b9d6b4
Updated context tfh-orb-prod-v2-eu-central-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "orb-prod-v2-eu-central-1",
        "arn": "arn:aws:eks:eu-central-1:573252405782:cluster/orb-prod-v2-eu-central-1",
        "createdAt": "2023-09-01T10:46:52.772000+02:00",
        "version": "1.33",
        "endpoint": "https://9DA8499E4D105E1A87F00E646D07F266.gr7.eu-central-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::573252405782:role/eks-cluster-orb-prod-v2-eu-central-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-061156b6c19a11825",
                "subnet-04d8d2275055a5e9e",
                "subnet-02f7cdc4b81b5b7f9"
            ],
            "securityGroupIds": [
                "sg-03b74627ec388343f"
            ],
            "clusterSecurityGroupId": "sg-02a5646317788057f",
            "vpcId": "vpc-0b8a59e391a62543e",
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
                "issuer": "https://oidc.eks.eu-central-1.amazonaws.com/id/9DA8499E4D105E1A87F00E646D07F266"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJSVE2ejEzUW4zUTh3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TXpBNU1ERXdPRFV4TVRoYUZ3MHpNekE0TWprd09EVXhNVGhhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUNZNTJPTS9xck01OHRaUDFmQkJtSTlLS0hwUUhpZ1RWaExvSDJteHdFOGkyeDBZQTdRdElIRFQ1L2EKemJDc2E3Qm0rMDU3QUVpNEtkTTR0M1pQdjFxQysxajZzNlJrM2pnTGZCMGpyTDQ4U3pWbWVsSEx2RnFobjNaOApkTVJuQ202TC9LY2F3d2tlVGgvUDNIUU5JT1ZhMFpselQyUE5KNEhyWS9XL3I0OXBINTk4b2xGSDhxY3ZTdXQ2CmlIZm0wSFZQcXhMRW42Q3VNNlFhTFBwaW1YWm5DeGVwUTlPMVdzVjlic0ZyZk5wLzluaFRmLzJCZE0ydHBYZ0kKbjVuN1ZZMXFvZ3dGY1NhQloxTDR5WmdyOWYwVEhZZ25WejNXeG9oK1NDZ3o0TXZick1URElsSU5uMUNvMzk3RgprSkUzQks2Q0VSZFh0OXRrQmozZXEwZVFBU2ZYQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSaGxCcU9Ba3MzK1E0blEzczdnU1kwVHlIemp6QVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQk1ZdEF3eG1GeApvSDJCamNBeVg2cFd3KzlrWVZOZ0dLTk04MzErUkhyNkpTZE8xelFId3ZtaEMrK2hwVW9aRGRIQVI2T1NFZlk1CmZEdmEwRTBpcnNYcDdjaWNuQ0YyS0gvZ2NJNVI0V3pNVE9GRXJ0dkV6YUVwdlFKNzRMVDB1NThMZE5pOHNsejgKdmpjNDNqcmNYSFYxd2RLdmZBSFl0M2NGTVlud3hJWjl2N2hTWXlvNkFrcU52ZWd2R2o1c0I4UEpBN3Z2VDJsdApmcUZjMFlCQVVCRkdXdWxXUk1MdFRUOVpuNUZuL2lpVnB5ZGFISTlyLzIrZU15Tm1VYXpaaXVIQ2R4TEtaMWNTCmhqSHdtM0pDWVdua2Nsc1Q4MHBNdWttN1BPNUFoQnpQNCtoWTlKc3MxSnFUeUdUMnR0Q2FtRGNud045QzlHUDQKMEtKSVNLVjV5QWIzCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "orb-prod-v2-eu-central-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-central-1:573252405782:key/f9d9a58e-d6d8-4f9a-8f62-6810fd553379"
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
NAME                                             STATUS   ROLES    AGE   VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-54-100-107.eu-central-1.compute.internal   Ready    <none>   18m   v1.33.4-eks-99d6cc0   10.54.100.107   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-100-113.eu-central-1.compute.internal   Ready    <none>   19m   v1.33.4-eks-99d6cc0   10.54.100.113   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-100-130.eu-central-1.compute.internal   Ready    <none>   14m   v1.33.4-eks-99d6cc0   10.54.100.130   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-100-147.eu-central-1.compute.internal   Ready    <none>   14m   v1.33.4-eks-99d6cc0   10.54.100.147   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-100-198.eu-central-1.compute.internal   Ready    <none>   22m   v1.33.4-eks-99d6cc0   10.54.100.198   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-100-213.eu-central-1.compute.internal   Ready    <none>   14m   v1.33.4-eks-99d6cc0   10.54.100.213   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-100-217.eu-central-1.compute.internal   Ready    <none>   15m   v1.33.4-eks-99d6cc0   10.54.100.217   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-100-230.eu-central-1.compute.internal   Ready    <none>   25m   v1.33.4-eks-99d6cc0   10.54.100.230   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-100-231.eu-central-1.compute.internal   Ready    <none>   11m   v1.33.4-eks-99d6cc0   10.54.100.231   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-100-239.eu-central-1.compute.internal   Ready    <none>   21m   v1.33.4-eks-99d6cc0   10.54.100.239   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-100-255.eu-central-1.compute.internal   Ready    <none>   11m   v1.33.4-eks-99d6cc0   10.54.100.255   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-100-86.eu-central-1.compute.internal    Ready    <none>   12m   v1.33.4-eks-99d6cc0   10.54.100.86    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-101-1.eu-central-1.compute.internal     Ready    <none>   19m   v1.33.4-eks-99d6cc0   10.54.101.1     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-101-18.eu-central-1.compute.internal    Ready    <none>   22m   v1.33.4-eks-99d6cc0   10.54.101.18    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-101-214.eu-central-1.compute.internal   Ready    <none>   23m   v1.33.4-eks-99d6cc0   10.54.101.214   <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-101-23.eu-central-1.compute.internal    Ready    <none>   24m   v1.33.4-eks-99d6cc0   10.54.101.23    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-101-28.eu-central-1.compute.internal    Ready    <none>   18m   v1.33.4-eks-99d6cc0   10.54.101.28    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-101-86.eu-central-1.compute.internal    Ready    <none>   16m   v1.33.4-eks-99d6cc0   10.54.101.86    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-101-99.eu-central-1.compute.internal    Ready    <none>   28m   v1.33.4-eks-99d6cc0   10.54.101.99    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-eu-central-1
ip-10-54-96-36.eu-central-1.compute.internal     Ready    <none>   29m   v1.33.4-eks-99d6cc0   10.54.96.36     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-prod-v2-eu-central-1
ip-10-54-98-253.eu-central-1.compute.internal    Ready    <none>   21m   v1.33.4-eks-99d6cc0   10.54.98.253    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-98-34.eu-central-1.compute.internal     Ready    <none>   14m   v1.33.4-eks-99d6cc0   10.54.98.34     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-98-42.eu-central-1.compute.internal     Ready    <none>   13m   v1.33.4-eks-99d6cc0   10.54.98.42     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-98-98.eu-central-1.compute.internal     Ready    <none>   24m   v1.33.4-eks-99d6cc0   10.54.98.98     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-99-115.eu-central-1.compute.internal    Ready    <none>   17m   v1.33.4-eks-99d6cc0   10.54.99.115    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-99-147.eu-central-1.compute.internal    Ready    <none>   18m   v1.33.4-eks-99d6cc0   10.54.99.147    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-99-149.eu-central-1.compute.internal    Ready    <none>   16m   v1.33.4-eks-99d6cc0   10.54.99.149    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-99-177.eu-central-1.compute.internal    Ready    <none>   21m   v1.33.4-eks-99d6cc0   10.54.99.177    <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-99-22.eu-central-1.compute.internal     Ready    <none>   19m   v1.33.4-eks-99d6cc0   10.54.99.22     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-99-37.eu-central-1.compute.internal     Ready    <none>   15m   v1.33.4-eks-99d6cc0   10.54.99.37     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-99-64.eu-central-1.compute.internal     Ready    <none>   24m   v1.33.4-eks-99d6cc0   10.54.99.64     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-99-70.eu-central-1.compute.internal     Ready    <none>   19m   v1.33.4-eks-99d6cc0   10.54.99.70     <none>        Amazon Linux 2023.8.20250908   6.12.40-64.114.amzn2023.aarch64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                             STATUS   ROLES    TAINTS
ip-10-54-100-107.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-100-113.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-100-130.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-100-147.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-100-198.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-100-213.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-100-217.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-100-230.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-100-231.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-100-239.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-100-255.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-100-86.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-101-1.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-101-18.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-101-214.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-101-23.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-101-28.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-101-86.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-101-99.eu-central-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-54-96-36.eu-central-1.compute.internal     Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-54-98-253.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-98-34.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-98-42.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-98-98.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-99-115.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-99-147.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-99-149.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-99-177.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-99-22.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-99-37.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-99-64.eu-central-1.compute.internal     Ready    <none>   <none>
ip-10-54-99-70.eu-central-1.compute.internal     Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                                                MESSAGE
22m         Normal    Finalized                     node                                                  Finalized karpenter.sh/termination
9m9s        Normal    Finalized                     node                                                  Finalized karpenter.sh/termination
18m         Normal    Starting                      node/ip-10-54-100-107.eu-central-1.compute.internal   Starting kubelet.
18m         Warning   InvalidDiskCapacity           node/ip-10-54-100-107.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
18m         Normal    NodeHasSufficientMemory       node/ip-10-54-100-107.eu-central-1.compute.internal   Node ip-10-54-100-107.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
18m         Normal    NodeHasNoDiskPressure         node/ip-10-54-100-107.eu-central-1.compute.internal   Node ip-10-54-100-107.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
18m         Normal    NodeHasSufficientPID          node/ip-10-54-100-107.eu-central-1.compute.internal   Node ip-10-54-100-107.eu-central-1.compute.internal status is now: NodeHasSufficientPID
18m         Normal    NodeAllocatableEnforced       node/ip-10-54-100-107.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
18m         Normal    RegisteredNode                node/ip-10-54-100-107.eu-central-1.compute.internal   Node ip-10-54-100-107.eu-central-1.compute.internal event: Registered Node ip-10-54-100-107.eu-central-1.compute.internal in Controller
18m         Normal    Synced                        node/ip-10-54-100-107.eu-central-1.compute.internal   Node synced successfully
18m         Normal    DisruptionBlocked             node/ip-10-54-100-107.eu-central-1.compute.internal   Node isn't initialized
17m         Normal    Starting                      node/ip-10-54-100-107.eu-central-1.compute.internal   
17m         Normal    ControllerVersionNotice       node/ip-10-54-100-107.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeReady                     node/ip-10-54-100-107.eu-central-1.compute.internal   Node ip-10-54-100-107.eu-central-1.compute.internal status is now: NodeReady
17m         Normal    Ready                         node/ip-10-54-100-107.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    NodeTrunkInitiated            node/ip-10-54-100-107.eu-central-1.compute.internal   The node has trunk interface initialized successfully
11m         Normal    DisruptionBlocked             node/ip-10-54-100-107.eu-central-1.compute.internal   Node is nominated for a pending pod
14m         Normal    Unconsolidatable              node/ip-10-54-100-107.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
19m         Normal    Starting                      node/ip-10-54-100-113.eu-central-1.compute.internal   Starting kubelet.
19m         Warning   InvalidDiskCapacity           node/ip-10-54-100-113.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
19m         Normal    NodeHasSufficientMemory       node/ip-10-54-100-113.eu-central-1.compute.internal   Node ip-10-54-100-113.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
19m         Normal    NodeHasNoDiskPressure         node/ip-10-54-100-113.eu-central-1.compute.internal   Node ip-10-54-100-113.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
19m         Normal    NodeHasSufficientPID          node/ip-10-54-100-113.eu-central-1.compute.internal   Node ip-10-54-100-113.eu-central-1.compute.internal status is now: NodeHasSufficientPID
19m         Normal    NodeAllocatableEnforced       node/ip-10-54-100-113.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
19m         Normal    RegisteredNode                node/ip-10-54-100-113.eu-central-1.compute.internal   Node ip-10-54-100-113.eu-central-1.compute.internal event: Registered Node ip-10-54-100-113.eu-central-1.compute.internal in Controller
19m         Normal    Synced                        node/ip-10-54-100-113.eu-central-1.compute.internal   Node synced successfully
19m         Normal    DisruptionBlocked             node/ip-10-54-100-113.eu-central-1.compute.internal   Node isn't initialized
19m         Normal    Starting                      node/ip-10-54-100-113.eu-central-1.compute.internal   
19m         Normal    ControllerVersionNotice       node/ip-10-54-100-113.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
19m         Normal    NodeReady                     node/ip-10-54-100-113.eu-central-1.compute.internal   Node ip-10-54-100-113.eu-central-1.compute.internal status is now: NodeReady
19m         Normal    Ready                         node/ip-10-54-100-113.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    NodeTrunkInitiated            node/ip-10-54-100-113.eu-central-1.compute.internal   The node has trunk interface initialized successfully
3m48s       Normal    Unconsolidatable              node/ip-10-54-100-113.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
13m         Normal    DisruptionBlocked             node/ip-10-54-100-113.eu-central-1.compute.internal   Node is nominated for a pending pod
14m         Normal    Starting                      node/ip-10-54-100-130.eu-central-1.compute.internal   Starting kubelet.
14m         Warning   InvalidDiskCapacity           node/ip-10-54-100-130.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory       node/ip-10-54-100-130.eu-central-1.compute.internal   Node ip-10-54-100-130.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure         node/ip-10-54-100-130.eu-central-1.compute.internal   Node ip-10-54-100-130.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID          node/ip-10-54-100-130.eu-central-1.compute.internal   Node ip-10-54-100-130.eu-central-1.compute.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced       node/ip-10-54-100-130.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
14m         Normal    Synced                        node/ip-10-54-100-130.eu-central-1.compute.internal   Node synced successfully
14m         Normal    RegisteredNode                node/ip-10-54-100-130.eu-central-1.compute.internal   Node ip-10-54-100-130.eu-central-1.compute.internal event: Registered Node ip-10-54-100-130.eu-central-1.compute.internal in Controller
14m         Normal    DisruptionBlocked             node/ip-10-54-100-130.eu-central-1.compute.internal   Node isn't initialized
13m         Normal    Starting                      node/ip-10-54-100-130.eu-central-1.compute.internal   
13m         Normal    ControllerVersionNotice       node/ip-10-54-100-130.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
13m         Normal    NodeReady                     node/ip-10-54-100-130.eu-central-1.compute.internal   Node ip-10-54-100-130.eu-central-1.compute.internal status is now: NodeReady
13m         Normal    Ready                         node/ip-10-54-100-130.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
13m         Normal    NodeTrunkInitiated            node/ip-10-54-100-130.eu-central-1.compute.internal   The node has trunk interface initialized successfully
11m         Normal    DisruptionBlocked             node/ip-10-54-100-130.eu-central-1.compute.internal   Node is nominated for a pending pod
10m         Normal    Unconsolidatable              node/ip-10-54-100-130.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
33m         Normal    Unconsolidatable              node/ip-10-54-100-143.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
23m         Normal    DisruptionBlocked             node/ip-10-54-100-143.eu-central-1.compute.internal   Node is nominated for a pending pod
66m         Normal    DisruptionBlocked             node/ip-10-54-100-143.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=signup-service-app/signup-service-app-pdb)
28m         Normal    RegisteredNode                node/ip-10-54-100-143.eu-central-1.compute.internal   Node ip-10-54-100-143.eu-central-1.compute.internal event: Registered Node ip-10-54-100-143.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-100-143.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-100-143.eu-central-1.compute.internal   The node has trunk interface initialized successfully
18m         Normal    DisruptionBlocked             node/ip-10-54-100-143.eu-central-1.compute.internal   Node is nominated for a pending pod
21m         Normal    Unconsolidatable              node/ip-10-54-100-143.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
16m         Normal    DisruptionTerminating         node/ip-10-54-100-143.eu-central-1.compute.internal   Disrupting Node: Drifted/Replace
16m         Warning   FailedDraining                node/ip-10-54-100-143.eu-central-1.compute.internal   Failed to drain node, 7 pods are waiting to be evicted
16m         Normal    DisruptionBlocked             node/ip-10-54-100-143.eu-central-1.compute.internal   Node is deleting or marked for deletion
15m         Warning   InstanceTerminating           node/ip-10-54-100-143.eu-central-1.compute.internal   Instance is terminating
14m         Normal    NodeNotReady                  node/ip-10-54-100-143.eu-central-1.compute.internal   Node ip-10-54-100-143.eu-central-1.compute.internal status is now: NodeNotReady
14m         Normal    MemoryPressure                node/ip-10-54-100-143.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure                  node/ip-10-54-100-143.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure                   node/ip-10-54-100-143.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                         node/ip-10-54-100-143.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DeletingNode                  node/ip-10-54-100-143.eu-central-1.compute.internal   Deleting node ip-10-54-100-143.eu-central-1.compute.internal because it does not exist in the cloud provider
14m         Normal    RemovingNode                  node/ip-10-54-100-143.eu-central-1.compute.internal   Node ip-10-54-100-143.eu-central-1.compute.internal event: Removing Node ip-10-54-100-143.eu-central-1.compute.internal from Controller
14m         Normal    Starting                      node/ip-10-54-100-147.eu-central-1.compute.internal   Starting kubelet.
14m         Warning   InvalidDiskCapacity           node/ip-10-54-100-147.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory       node/ip-10-54-100-147.eu-central-1.compute.internal   Node ip-10-54-100-147.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure         node/ip-10-54-100-147.eu-central-1.compute.internal   Node ip-10-54-100-147.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID          node/ip-10-54-100-147.eu-central-1.compute.internal   Node ip-10-54-100-147.eu-central-1.compute.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced       node/ip-10-54-100-147.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
14m         Normal    Synced                        node/ip-10-54-100-147.eu-central-1.compute.internal   Node synced successfully
14m         Normal    RegisteredNode                node/ip-10-54-100-147.eu-central-1.compute.internal   Node ip-10-54-100-147.eu-central-1.compute.internal event: Registered Node ip-10-54-100-147.eu-central-1.compute.internal in Controller
14m         Normal    Starting                      node/ip-10-54-100-147.eu-central-1.compute.internal   
14m         Normal    DisruptionBlocked             node/ip-10-54-100-147.eu-central-1.compute.internal   Node isn't initialized
14m         Normal    ControllerVersionNotice       node/ip-10-54-100-147.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeReady                     node/ip-10-54-100-147.eu-central-1.compute.internal   Node ip-10-54-100-147.eu-central-1.compute.internal status is now: NodeReady
14m         Normal    Ready                         node/ip-10-54-100-147.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeTrunkInitiated            node/ip-10-54-100-147.eu-central-1.compute.internal   The node has trunk interface initialized successfully
13m         Normal    Unconsolidatable              node/ip-10-54-100-147.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
12m         Normal    DisruptionBlocked             node/ip-10-54-100-147.eu-central-1.compute.internal   Node is nominated for a pending pod
34m         Normal    Unconsolidatable              node/ip-10-54-100-157.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
23m         Normal    DisruptionBlocked             node/ip-10-54-100-157.eu-central-1.compute.internal   Node is nominated for a pending pod
28m         Normal    RegisteredNode                node/ip-10-54-100-157.eu-central-1.compute.internal   Node ip-10-54-100-157.eu-central-1.compute.internal event: Registered Node ip-10-54-100-157.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-100-157.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-100-157.eu-central-1.compute.internal   The node has trunk interface initialized successfully
16m         Normal    DisruptionBlocked             node/ip-10-54-100-157.eu-central-1.compute.internal   Node is nominated for a pending pod
20m         Normal    Unconsolidatable              node/ip-10-54-100-157.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
14m         Normal    DisruptionBlocked             node/ip-10-54-100-157.eu-central-1.compute.internal   Node is deleting or marked for deletion
13m         Normal    DisruptionTerminating         node/ip-10-54-100-157.eu-central-1.compute.internal   Disrupting Node: Drifted/Replace
13m         Warning   FailedDraining                node/ip-10-54-100-157.eu-central-1.compute.internal   Failed to drain node, 7 pods are waiting to be evicted
12m         Warning   InstanceTerminating           node/ip-10-54-100-157.eu-central-1.compute.internal   Instance is terminating
12m         Normal    RemovingNode                  node/ip-10-54-100-157.eu-central-1.compute.internal   Node ip-10-54-100-157.eu-central-1.compute.internal event: Removing Node ip-10-54-100-157.eu-central-1.compute.internal from Controller
22m         Normal    Starting                      node/ip-10-54-100-198.eu-central-1.compute.internal   Starting kubelet.
22m         Warning   InvalidDiskCapacity           node/ip-10-54-100-198.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
22m         Normal    NodeHasSufficientMemory       node/ip-10-54-100-198.eu-central-1.compute.internal   Node ip-10-54-100-198.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
22m         Normal    NodeHasNoDiskPressure         node/ip-10-54-100-198.eu-central-1.compute.internal   Node ip-10-54-100-198.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
22m         Normal    NodeHasSufficientPID          node/ip-10-54-100-198.eu-central-1.compute.internal   Node ip-10-54-100-198.eu-central-1.compute.internal status is now: NodeHasSufficientPID
22m         Normal    NodeAllocatableEnforced       node/ip-10-54-100-198.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
22m         Normal    Synced                        node/ip-10-54-100-198.eu-central-1.compute.internal   Node synced successfully
22m         Normal    DisruptionBlocked             node/ip-10-54-100-198.eu-central-1.compute.internal   Node isn't initialized
22m         Normal    RegisteredNode                node/ip-10-54-100-198.eu-central-1.compute.internal   Node ip-10-54-100-198.eu-central-1.compute.internal event: Registered Node ip-10-54-100-198.eu-central-1.compute.internal in Controller
22m         Normal    Starting                      node/ip-10-54-100-198.eu-central-1.compute.internal   
22m         Normal    ControllerVersionNotice       node/ip-10-54-100-198.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeReady                     node/ip-10-54-100-198.eu-central-1.compute.internal   Node ip-10-54-100-198.eu-central-1.compute.internal status is now: NodeReady
22m         Normal    Ready                         node/ip-10-54-100-198.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    NodeTrunkInitiated            node/ip-10-54-100-198.eu-central-1.compute.internal   The node has trunk interface initialized successfully
22m         Normal    DisruptionBlocked             node/ip-10-54-100-198.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
5m32s       Normal    Unconsolidatable              node/ip-10-54-100-198.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
11m         Normal    DisruptionBlocked             node/ip-10-54-100-198.eu-central-1.compute.internal   Node is nominated for a pending pod
14m         Normal    Starting                      node/ip-10-54-100-213.eu-central-1.compute.internal   Starting kubelet.
14m         Warning   InvalidDiskCapacity           node/ip-10-54-100-213.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory       node/ip-10-54-100-213.eu-central-1.compute.internal   Node ip-10-54-100-213.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure         node/ip-10-54-100-213.eu-central-1.compute.internal   Node ip-10-54-100-213.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID          node/ip-10-54-100-213.eu-central-1.compute.internal   Node ip-10-54-100-213.eu-central-1.compute.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced       node/ip-10-54-100-213.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
14m         Normal    Synced                        node/ip-10-54-100-213.eu-central-1.compute.internal   Node synced successfully
14m         Normal    RegisteredNode                node/ip-10-54-100-213.eu-central-1.compute.internal   Node ip-10-54-100-213.eu-central-1.compute.internal event: Registered Node ip-10-54-100-213.eu-central-1.compute.internal in Controller
14m         Normal    DisruptionBlocked             node/ip-10-54-100-213.eu-central-1.compute.internal   Node isn't initialized
14m         Normal    Starting                      node/ip-10-54-100-213.eu-central-1.compute.internal   
14m         Normal    ControllerVersionNotice       node/ip-10-54-100-213.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeReady                     node/ip-10-54-100-213.eu-central-1.compute.internal   Node ip-10-54-100-213.eu-central-1.compute.internal status is now: NodeReady
14m         Normal    Ready                         node/ip-10-54-100-213.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeTrunkInitiated            node/ip-10-54-100-213.eu-central-1.compute.internal   The node has trunk interface initialized successfully
12m         Normal    DisruptionBlocked             node/ip-10-54-100-213.eu-central-1.compute.internal   Node is nominated for a pending pod
11m         Normal    Unconsolidatable              node/ip-10-54-100-213.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
15m         Normal    Starting                      node/ip-10-54-100-217.eu-central-1.compute.internal   Starting kubelet.
15m         Warning   InvalidDiskCapacity           node/ip-10-54-100-217.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory       node/ip-10-54-100-217.eu-central-1.compute.internal   Node ip-10-54-100-217.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure         node/ip-10-54-100-217.eu-central-1.compute.internal   Node ip-10-54-100-217.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID          node/ip-10-54-100-217.eu-central-1.compute.internal   Node ip-10-54-100-217.eu-central-1.compute.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced       node/ip-10-54-100-217.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
15m         Normal    Synced                        node/ip-10-54-100-217.eu-central-1.compute.internal   Node synced successfully
15m         Normal    DisruptionBlocked             node/ip-10-54-100-217.eu-central-1.compute.internal   Node isn't initialized
15m         Normal    RegisteredNode                node/ip-10-54-100-217.eu-central-1.compute.internal   Node ip-10-54-100-217.eu-central-1.compute.internal event: Registered Node ip-10-54-100-217.eu-central-1.compute.internal in Controller
15m         Normal    Starting                      node/ip-10-54-100-217.eu-central-1.compute.internal   
15m         Normal    ControllerVersionNotice       node/ip-10-54-100-217.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
15m         Normal    NodeReady                     node/ip-10-54-100-217.eu-central-1.compute.internal   Node ip-10-54-100-217.eu-central-1.compute.internal status is now: NodeReady
15m         Normal    Ready                         node/ip-10-54-100-217.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    NodeTrunkInitiated            node/ip-10-54-100-217.eu-central-1.compute.internal   The node has trunk interface initialized successfully
14m         Normal    Unconsolidatable              node/ip-10-54-100-217.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
12m         Normal    DisruptionBlocked             node/ip-10-54-100-217.eu-central-1.compute.internal   Node is nominated for a pending pod
33m         Warning   Unsupported                   node/ip-10-54-100-228.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    RegisteredNode                node/ip-10-54-100-228.eu-central-1.compute.internal   Node ip-10-54-100-228.eu-central-1.compute.internal event: Registered Node ip-10-54-100-228.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-100-228.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
21m         Warning   Unsupported                   node/ip-10-54-100-228.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    NodeNotSchedulable            node/ip-10-54-100-228.eu-central-1.compute.internal   Node ip-10-54-100-228.eu-central-1.compute.internal status is now: NodeNotSchedulable
21m         Normal    NodeNotReady                  node/ip-10-54-100-228.eu-central-1.compute.internal   Node ip-10-54-100-228.eu-central-1.compute.internal status is now: NodeNotReady
21m         Normal    MemoryPressure                node/ip-10-54-100-228.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    DiskPressure                  node/ip-10-54-100-228.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    PIDPressure                   node/ip-10-54-100-228.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    Ready                         node/ip-10-54-100-228.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    DeletingNode                  node/ip-10-54-100-228.eu-central-1.compute.internal   Deleting node ip-10-54-100-228.eu-central-1.compute.internal because it does not exist in the cloud provider
21m         Normal    RemovingNode                  node/ip-10-54-100-228.eu-central-1.compute.internal   Node ip-10-54-100-228.eu-central-1.compute.internal event: Removing Node ip-10-54-100-228.eu-central-1.compute.internal from Controller
25m         Normal    Starting                      node/ip-10-54-100-230.eu-central-1.compute.internal   Starting kubelet.
25m         Warning   InvalidDiskCapacity           node/ip-10-54-100-230.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
25m         Normal    NodeHasSufficientMemory       node/ip-10-54-100-230.eu-central-1.compute.internal   Node ip-10-54-100-230.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
25m         Normal    NodeHasNoDiskPressure         node/ip-10-54-100-230.eu-central-1.compute.internal   Node ip-10-54-100-230.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
25m         Normal    NodeHasSufficientPID          node/ip-10-54-100-230.eu-central-1.compute.internal   Node ip-10-54-100-230.eu-central-1.compute.internal status is now: NodeHasSufficientPID
25m         Normal    NodeAllocatableEnforced       node/ip-10-54-100-230.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
25m         Normal    RegisteredNode                node/ip-10-54-100-230.eu-central-1.compute.internal   Node ip-10-54-100-230.eu-central-1.compute.internal event: Registered Node ip-10-54-100-230.eu-central-1.compute.internal in Controller
25m         Normal    DisruptionBlocked             node/ip-10-54-100-230.eu-central-1.compute.internal   Node isn't initialized
24m         Normal    Starting                      node/ip-10-54-100-230.eu-central-1.compute.internal   
24m         Normal    Synced                        node/ip-10-54-100-230.eu-central-1.compute.internal   Node synced successfully
24m         Normal    ControllerVersionNotice       node/ip-10-54-100-230.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeReady                     node/ip-10-54-100-230.eu-central-1.compute.internal   Node ip-10-54-100-230.eu-central-1.compute.internal status is now: NodeReady
24m         Normal    Ready                         node/ip-10-54-100-230.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
24m         Normal    NodeTrunkInitiated            node/ip-10-54-100-230.eu-central-1.compute.internal   The node has trunk interface initialized successfully
24m         Normal    Unconsolidatable              node/ip-10-54-100-230.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
22m         Normal    DisruptionBlocked             node/ip-10-54-100-230.eu-central-1.compute.internal   Node is nominated for a pending pod
17m         Normal    DisruptionBlocked             node/ip-10-54-100-230.eu-central-1.compute.internal   Node is nominated for a pending pod
5m42s       Normal    Unconsolidatable              node/ip-10-54-100-230.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
15m         Normal    DisruptionBlocked             node/ip-10-54-100-230.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=app-authentication-service-external/app-authentication-service-external-pdb)
11m         Normal    Starting                      node/ip-10-54-100-231.eu-central-1.compute.internal   Starting kubelet.
11m         Warning   InvalidDiskCapacity           node/ip-10-54-100-231.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
11m         Normal    NodeHasSufficientMemory       node/ip-10-54-100-231.eu-central-1.compute.internal   Node ip-10-54-100-231.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
11m         Normal    NodeHasNoDiskPressure         node/ip-10-54-100-231.eu-central-1.compute.internal   Node ip-10-54-100-231.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
11m         Normal    NodeHasSufficientPID          node/ip-10-54-100-231.eu-central-1.compute.internal   Node ip-10-54-100-231.eu-central-1.compute.internal status is now: NodeHasSufficientPID
11m         Normal    NodeAllocatableEnforced       node/ip-10-54-100-231.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
11m         Normal    RegisteredNode                node/ip-10-54-100-231.eu-central-1.compute.internal   Node ip-10-54-100-231.eu-central-1.compute.internal event: Registered Node ip-10-54-100-231.eu-central-1.compute.internal in Controller
11m         Normal    Synced                        node/ip-10-54-100-231.eu-central-1.compute.internal   Node synced successfully
11m         Normal    DisruptionBlocked             node/ip-10-54-100-231.eu-central-1.compute.internal   Node isn't initialized
11m         Normal    Starting                      node/ip-10-54-100-231.eu-central-1.compute.internal   
11m         Normal    ControllerVersionNotice       node/ip-10-54-100-231.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
11m         Normal    NodeReady                     node/ip-10-54-100-231.eu-central-1.compute.internal   Node ip-10-54-100-231.eu-central-1.compute.internal status is now: NodeReady
11m         Normal    Ready                         node/ip-10-54-100-231.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
11m         Normal    Unconsolidatable              node/ip-10-54-100-231.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
11m         Normal    NodeTrunkInitiated            node/ip-10-54-100-231.eu-central-1.compute.internal   The node has trunk interface initialized successfully
9m50s       Normal    DisruptionBlocked             node/ip-10-54-100-231.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29310480-qfwr9)
5m11s       Normal    DisruptionBlocked             node/ip-10-54-100-231.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-caae4766fa9272aac7f26d88c1a9ea3e96ce531f-29310485-9sd42)
12s         Normal    DisruptionBlocked             node/ip-10-54-100-231.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=pcp-backfill-service/update-caae4766fa9272aac7f26d88c1a9ea3e96ce531f-29310490-76nrp)
21m         Normal    Starting                      node/ip-10-54-100-239.eu-central-1.compute.internal   Starting kubelet.
21m         Warning   InvalidDiskCapacity           node/ip-10-54-100-239.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
21m         Normal    NodeHasSufficientMemory       node/ip-10-54-100-239.eu-central-1.compute.internal   Node ip-10-54-100-239.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
21m         Normal    NodeHasNoDiskPressure         node/ip-10-54-100-239.eu-central-1.compute.internal   Node ip-10-54-100-239.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
21m         Normal    NodeHasSufficientPID          node/ip-10-54-100-239.eu-central-1.compute.internal   Node ip-10-54-100-239.eu-central-1.compute.internal status is now: NodeHasSufficientPID
21m         Normal    NodeAllocatableEnforced       node/ip-10-54-100-239.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
21m         Normal    Synced                        node/ip-10-54-100-239.eu-central-1.compute.internal   Node synced successfully
21m         Normal    RegisteredNode                node/ip-10-54-100-239.eu-central-1.compute.internal   Node ip-10-54-100-239.eu-central-1.compute.internal event: Registered Node ip-10-54-100-239.eu-central-1.compute.internal in Controller
21m         Normal    DisruptionBlocked             node/ip-10-54-100-239.eu-central-1.compute.internal   Node isn't initialized
21m         Normal    Starting                      node/ip-10-54-100-239.eu-central-1.compute.internal   
21m         Normal    ControllerVersionNotice       node/ip-10-54-100-239.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeReady                     node/ip-10-54-100-239.eu-central-1.compute.internal   Node ip-10-54-100-239.eu-central-1.compute.internal status is now: NodeReady
21m         Normal    Ready                         node/ip-10-54-100-239.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    NodeTrunkInitiated            node/ip-10-54-100-239.eu-central-1.compute.internal   The node has trunk interface initialized successfully
5m42s       Normal    Unconsolidatable              node/ip-10-54-100-239.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
18m         Normal    DisruptionBlocked             node/ip-10-54-100-239.eu-central-1.compute.internal   Node is nominated for a pending pod
11m         Normal    DisruptionBlocked             node/ip-10-54-100-239.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-event-server/orb-fleet-backend-event-server-pdb)
11m         Normal    Starting                      node/ip-10-54-100-255.eu-central-1.compute.internal   Starting kubelet.
11m         Warning   InvalidDiskCapacity           node/ip-10-54-100-255.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
11m         Normal    NodeHasSufficientMemory       node/ip-10-54-100-255.eu-central-1.compute.internal   Node ip-10-54-100-255.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
11m         Normal    NodeHasNoDiskPressure         node/ip-10-54-100-255.eu-central-1.compute.internal   Node ip-10-54-100-255.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
11m         Normal    NodeHasSufficientPID          node/ip-10-54-100-255.eu-central-1.compute.internal   Node ip-10-54-100-255.eu-central-1.compute.internal status is now: NodeHasSufficientPID
11m         Normal    NodeAllocatableEnforced       node/ip-10-54-100-255.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
11m         Normal    Synced                        node/ip-10-54-100-255.eu-central-1.compute.internal   Node synced successfully
11m         Normal    DisruptionBlocked             node/ip-10-54-100-255.eu-central-1.compute.internal   Node isn't initialized
11m         Normal    RegisteredNode                node/ip-10-54-100-255.eu-central-1.compute.internal   Node ip-10-54-100-255.eu-central-1.compute.internal event: Registered Node ip-10-54-100-255.eu-central-1.compute.internal in Controller
11m         Normal    Starting                      node/ip-10-54-100-255.eu-central-1.compute.internal   
11m         Normal    ControllerVersionNotice       node/ip-10-54-100-255.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
11m         Normal    NodeReady                     node/ip-10-54-100-255.eu-central-1.compute.internal   Node ip-10-54-100-255.eu-central-1.compute.internal status is now: NodeReady
11m         Normal    Ready                         node/ip-10-54-100-255.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
11m         Normal    NodeTrunkInitiated            node/ip-10-54-100-255.eu-central-1.compute.internal   The node has trunk interface initialized successfully
10m         Normal    Unconsolidatable              node/ip-10-54-100-255.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
9m18s       Normal    DisruptionBlocked             node/ip-10-54-100-255.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29310480-5j998)
12m         Normal    Starting                      node/ip-10-54-100-86.eu-central-1.compute.internal    Starting kubelet.
12m         Warning   InvalidDiskCapacity           node/ip-10-54-100-86.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
12m         Normal    NodeHasSufficientMemory       node/ip-10-54-100-86.eu-central-1.compute.internal    Node ip-10-54-100-86.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
12m         Normal    NodeHasNoDiskPressure         node/ip-10-54-100-86.eu-central-1.compute.internal    Node ip-10-54-100-86.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
12m         Normal    NodeHasSufficientPID          node/ip-10-54-100-86.eu-central-1.compute.internal    Node ip-10-54-100-86.eu-central-1.compute.internal status is now: NodeHasSufficientPID
12m         Normal    NodeAllocatableEnforced       node/ip-10-54-100-86.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
12m         Normal    Synced                        node/ip-10-54-100-86.eu-central-1.compute.internal    Node synced successfully
12m         Normal    RegisteredNode                node/ip-10-54-100-86.eu-central-1.compute.internal    Node ip-10-54-100-86.eu-central-1.compute.internal event: Registered Node ip-10-54-100-86.eu-central-1.compute.internal in Controller
12m         Normal    DisruptionBlocked             node/ip-10-54-100-86.eu-central-1.compute.internal    Node isn't initialized
12m         Normal    Starting                      node/ip-10-54-100-86.eu-central-1.compute.internal    
12m         Normal    ControllerVersionNotice       node/ip-10-54-100-86.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
12m         Normal    NodeReady                     node/ip-10-54-100-86.eu-central-1.compute.internal    Node ip-10-54-100-86.eu-central-1.compute.internal status is now: NodeReady
12m         Normal    Ready                         node/ip-10-54-100-86.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
12m         Normal    NodeTrunkInitiated            node/ip-10-54-100-86.eu-central-1.compute.internal    The node has trunk interface initialized successfully
11m         Normal    Unconsolidatable              node/ip-10-54-100-86.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
10m         Normal    DisruptionBlocked             node/ip-10-54-100-86.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-monitoring-server/orb-fleet-backend-monitoring-server-pdb)
19m         Normal    Starting                      node/ip-10-54-101-1.eu-central-1.compute.internal     Starting kubelet.
19m         Warning   InvalidDiskCapacity           node/ip-10-54-101-1.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
19m         Normal    NodeHasSufficientMemory       node/ip-10-54-101-1.eu-central-1.compute.internal     Node ip-10-54-101-1.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
19m         Normal    NodeHasNoDiskPressure         node/ip-10-54-101-1.eu-central-1.compute.internal     Node ip-10-54-101-1.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
19m         Normal    NodeHasSufficientPID          node/ip-10-54-101-1.eu-central-1.compute.internal     Node ip-10-54-101-1.eu-central-1.compute.internal status is now: NodeHasSufficientPID
19m         Normal    NodeAllocatableEnforced       node/ip-10-54-101-1.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
19m         Normal    Synced                        node/ip-10-54-101-1.eu-central-1.compute.internal     Node synced successfully
19m         Normal    RegisteredNode                node/ip-10-54-101-1.eu-central-1.compute.internal     Node ip-10-54-101-1.eu-central-1.compute.internal event: Registered Node ip-10-54-101-1.eu-central-1.compute.internal in Controller
19m         Normal    DisruptionBlocked             node/ip-10-54-101-1.eu-central-1.compute.internal     Node isn't initialized
19m         Normal    Starting                      node/ip-10-54-101-1.eu-central-1.compute.internal     
19m         Normal    ControllerVersionNotice       node/ip-10-54-101-1.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
19m         Normal    NodeReady                     node/ip-10-54-101-1.eu-central-1.compute.internal     Node ip-10-54-101-1.eu-central-1.compute.internal status is now: NodeReady
19m         Normal    Ready                         node/ip-10-54-101-1.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    NodeTrunkInitiated            node/ip-10-54-101-1.eu-central-1.compute.internal     The node has trunk interface initialized successfully
3m48s       Normal    Unconsolidatable              node/ip-10-54-101-1.eu-central-1.compute.internal     NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    DisruptionBlocked             node/ip-10-54-101-1.eu-central-1.compute.internal     Node is nominated for a pending pod
11m         Normal    DisruptionBlocked             node/ip-10-54-101-1.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
34m         Normal    Unconsolidatable              node/ip-10-54-101-112.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
25m         Normal    DisruptionBlocked             node/ip-10-54-101-112.eu-central-1.compute.internal   Node is nominated for a pending pod
66m         Normal    DisruptionBlocked             node/ip-10-54-101-112.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=signup-service-app/signup-service-app-pdb)
28m         Normal    RegisteredNode                node/ip-10-54-101-112.eu-central-1.compute.internal   Node ip-10-54-101-112.eu-central-1.compute.internal event: Registered Node ip-10-54-101-112.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-101-112.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-101-112.eu-central-1.compute.internal   The node has trunk interface initialized successfully
21m         Normal    Unconsolidatable              node/ip-10-54-101-112.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
21m         Normal    DisruptionBlocked             node/ip-10-54-101-112.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-event-server/orb-fleet-backend-event-server-pdb)
19m         Normal    DisruptionBlocked             node/ip-10-54-101-112.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=cluster-monitoring/cluster-monitoring-pdb)
17m         Normal    DisruptionTerminating         node/ip-10-54-101-112.eu-central-1.compute.internal   Disrupting Node: Drifted/Replace
17m         Warning   FailedDraining                node/ip-10-54-101-112.eu-central-1.compute.internal   Failed to drain node, 7 pods are waiting to be evicted
16m         Normal    DisruptionBlocked             node/ip-10-54-101-112.eu-central-1.compute.internal   Node is deleting or marked for deletion
16m         Warning   InstanceTerminating           node/ip-10-54-101-112.eu-central-1.compute.internal   Instance is terminating
15m         Normal    RemovingNode                  node/ip-10-54-101-112.eu-central-1.compute.internal   Node ip-10-54-101-112.eu-central-1.compute.internal event: Removing Node ip-10-54-101-112.eu-central-1.compute.internal from Controller
34m         Normal    Unconsolidatable              node/ip-10-54-101-135.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
66m         Normal    DisruptionBlocked             node/ip-10-54-101-135.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=signup-service-app/signup-service-app-pdb)
28m         Normal    RegisteredNode                node/ip-10-54-101-135.eu-central-1.compute.internal   Node ip-10-54-101-135.eu-central-1.compute.internal event: Registered Node ip-10-54-101-135.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-101-135.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-101-135.eu-central-1.compute.internal   The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked             node/ip-10-54-101-135.eu-central-1.compute.internal   Not all pods would schedule, orb-monitoring-service/orb-monitoring-service-worker-8dbfb957f-95d4m => would schedule against uninitialized nodeclaim/main-amd64-n646f
21m         Normal    Unconsolidatable              node/ip-10-54-101-135.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
15m         Normal    DisruptionBlocked             node/ip-10-54-101-135.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=app-authentication-service-external/app-authentication-service-external-pdb)
14m         Normal    DisruptionTerminating         node/ip-10-54-101-135.eu-central-1.compute.internal   Disrupting Node: Drifted/Replace
14m         Warning   FailedDraining                node/ip-10-54-101-135.eu-central-1.compute.internal   Failed to drain node, 5 pods are waiting to be evicted
13m         Normal    DisruptionBlocked             node/ip-10-54-101-135.eu-central-1.compute.internal   Node is deleting or marked for deletion
13m         Warning   InstanceTerminating           node/ip-10-54-101-135.eu-central-1.compute.internal   Instance is terminating
12m         Normal    RemovingNode                  node/ip-10-54-101-135.eu-central-1.compute.internal   Node ip-10-54-101-135.eu-central-1.compute.internal event: Removing Node ip-10-54-101-135.eu-central-1.compute.internal from Controller
22m         Normal    Starting                      node/ip-10-54-101-18.eu-central-1.compute.internal    Starting kubelet.
22m         Warning   InvalidDiskCapacity           node/ip-10-54-101-18.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
22m         Normal    NodeHasSufficientMemory       node/ip-10-54-101-18.eu-central-1.compute.internal    Node ip-10-54-101-18.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
22m         Normal    NodeHasNoDiskPressure         node/ip-10-54-101-18.eu-central-1.compute.internal    Node ip-10-54-101-18.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
22m         Normal    NodeHasSufficientPID          node/ip-10-54-101-18.eu-central-1.compute.internal    Node ip-10-54-101-18.eu-central-1.compute.internal status is now: NodeHasSufficientPID
22m         Normal    NodeAllocatableEnforced       node/ip-10-54-101-18.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
22m         Normal    Synced                        node/ip-10-54-101-18.eu-central-1.compute.internal    Node synced successfully
22m         Normal    RegisteredNode                node/ip-10-54-101-18.eu-central-1.compute.internal    Node ip-10-54-101-18.eu-central-1.compute.internal event: Registered Node ip-10-54-101-18.eu-central-1.compute.internal in Controller
22m         Normal    Starting                      node/ip-10-54-101-18.eu-central-1.compute.internal    
22m         Normal    DisruptionBlocked             node/ip-10-54-101-18.eu-central-1.compute.internal    Node isn't initialized
22m         Normal    ControllerVersionNotice       node/ip-10-54-101-18.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
22m         Normal    NodeReady                     node/ip-10-54-101-18.eu-central-1.compute.internal    Node ip-10-54-101-18.eu-central-1.compute.internal status is now: NodeReady
22m         Normal    Ready                         node/ip-10-54-101-18.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
22m         Normal    NodeTrunkInitiated            node/ip-10-54-101-18.eu-central-1.compute.internal    The node has trunk interface initialized successfully
6m54s       Normal    Unconsolidatable              node/ip-10-54-101-18.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
13m         Normal    DisruptionBlocked             node/ip-10-54-101-18.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=proof-verification-srv/proof-verification-srv-pdb)
15m         Normal    DisruptionBlocked             node/ip-10-54-101-18.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=data-ingestion-service/data-ingestion-service-pdb)
66m         Normal    Starting                      node/ip-10-54-101-203.eu-central-1.compute.internal   Starting kubelet.
66m         Warning   InvalidDiskCapacity           node/ip-10-54-101-203.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
66m         Normal    NodeHasSufficientMemory       node/ip-10-54-101-203.eu-central-1.compute.internal   Node ip-10-54-101-203.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
66m         Normal    NodeHasNoDiskPressure         node/ip-10-54-101-203.eu-central-1.compute.internal   Node ip-10-54-101-203.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
66m         Normal    NodeHasSufficientPID          node/ip-10-54-101-203.eu-central-1.compute.internal   Node ip-10-54-101-203.eu-central-1.compute.internal status is now: NodeHasSufficientPID
66m         Normal    NodeAllocatableEnforced       node/ip-10-54-101-203.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
66m         Normal    Synced                        node/ip-10-54-101-203.eu-central-1.compute.internal   Node synced successfully
66m         Normal    RegisteredNode                node/ip-10-54-101-203.eu-central-1.compute.internal   Node ip-10-54-101-203.eu-central-1.compute.internal event: Registered Node ip-10-54-101-203.eu-central-1.compute.internal in Controller
65m         Normal    Starting                      node/ip-10-54-101-203.eu-central-1.compute.internal   
65m         Normal    DisruptionBlocked             node/ip-10-54-101-203.eu-central-1.compute.internal   Node isn't initialized
65m         Normal    ControllerVersionNotice       node/ip-10-54-101-203.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
65m         Normal    NodeReady                     node/ip-10-54-101-203.eu-central-1.compute.internal   Node ip-10-54-101-203.eu-central-1.compute.internal status is now: NodeReady
65m         Normal    Ready                         node/ip-10-54-101-203.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
65m         Normal    NodeTrunkInitiated            node/ip-10-54-101-203.eu-central-1.compute.internal   The node has trunk interface initialized successfully
65m         Normal    Unconsolidatable              node/ip-10-54-101-203.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
61m         Normal    SpotRebalanceRecommendation   node/ip-10-54-101-203.eu-central-1.compute.internal   Spot rebalance recommendation was triggered
61m         Warning   SpotInterrupted               node/ip-10-54-101-203.eu-central-1.compute.internal   Spot interruption warning was triggered
61m         Warning   TerminatingOnInterruption     node/ip-10-54-101-203.eu-central-1.compute.internal   Interruption triggered termination for the Node
61m         Warning   FailedDraining                node/ip-10-54-101-203.eu-central-1.compute.internal   Failed to drain node, 3 pods are waiting to be evicted
61m         Normal    DisruptionBlocked             node/ip-10-54-101-203.eu-central-1.compute.internal   Node is deleting or marked for deletion
61m         Warning   InstanceTerminating           node/ip-10-54-101-203.eu-central-1.compute.internal   Instance is terminating
60m         Normal    NodeNotReady                  node/ip-10-54-101-203.eu-central-1.compute.internal   Node ip-10-54-101-203.eu-central-1.compute.internal status is now: NodeNotReady
60m         Normal    MemoryPressure                node/ip-10-54-101-203.eu-central-1.compute.internal   Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
60m         Normal    DiskPressure                  node/ip-10-54-101-203.eu-central-1.compute.internal   Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
60m         Normal    PIDPressure                   node/ip-10-54-101-203.eu-central-1.compute.internal   Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
60m         Normal    Ready                         node/ip-10-54-101-203.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
60m         Normal    DeletingNode                  node/ip-10-54-101-203.eu-central-1.compute.internal   Deleting node ip-10-54-101-203.eu-central-1.compute.internal because it does not exist in the cloud provider
60m         Normal    RemovingNode                  node/ip-10-54-101-203.eu-central-1.compute.internal   Node ip-10-54-101-203.eu-central-1.compute.internal event: Removing Node ip-10-54-101-203.eu-central-1.compute.internal from Controller
23m         Normal    Starting                      node/ip-10-54-101-214.eu-central-1.compute.internal   Starting kubelet.
23m         Warning   InvalidDiskCapacity           node/ip-10-54-101-214.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
23m         Normal    NodeHasSufficientMemory       node/ip-10-54-101-214.eu-central-1.compute.internal   Node ip-10-54-101-214.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
23m         Normal    NodeHasNoDiskPressure         node/ip-10-54-101-214.eu-central-1.compute.internal   Node ip-10-54-101-214.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
23m         Normal    NodeHasSufficientPID          node/ip-10-54-101-214.eu-central-1.compute.internal   Node ip-10-54-101-214.eu-central-1.compute.internal status is now: NodeHasSufficientPID
23m         Normal    NodeAllocatableEnforced       node/ip-10-54-101-214.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
23m         Normal    Synced                        node/ip-10-54-101-214.eu-central-1.compute.internal   Node synced successfully
23m         Normal    RegisteredNode                node/ip-10-54-101-214.eu-central-1.compute.internal   Node ip-10-54-101-214.eu-central-1.compute.internal event: Registered Node ip-10-54-101-214.eu-central-1.compute.internal in Controller
23m         Normal    Starting                      node/ip-10-54-101-214.eu-central-1.compute.internal   
23m         Normal    DisruptionBlocked             node/ip-10-54-101-214.eu-central-1.compute.internal   Node isn't initialized
23m         Normal    ControllerVersionNotice       node/ip-10-54-101-214.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.11
23m         Normal    NodeReady                     node/ip-10-54-101-214.eu-central-1.compute.internal   Node ip-10-54-101-214.eu-central-1.compute.internal status is now: NodeReady
23m         Normal    Ready                         node/ip-10-54-101-214.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
23m         Normal    NodeTrunkInitiated            node/ip-10-54-101-214.eu-central-1.compute.internal   The node has trunk interface initialized successfully
19m         Normal    DisruptionBlocked             node/ip-10-54-101-214.eu-central-1.compute.internal   Node is nominated for a pending pod
6m2s        Normal    Unconsolidatable              node/ip-10-54-101-214.eu-central-1.compute.internal   NodePool "main-amd64" has non-empty consolidation disabled
11m         Normal    DisruptionBlocked             node/ip-10-54-101-214.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-event-server/orb-fleet-backend-event-server-pdb)
24m         Normal    Starting                      node/ip-10-54-101-23.eu-central-1.compute.internal    Starting kubelet.
24m         Warning   InvalidDiskCapacity           node/ip-10-54-101-23.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
24m         Normal    NodeHasSufficientMemory       node/ip-10-54-101-23.eu-central-1.compute.internal    Node ip-10-54-101-23.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
24m         Normal    NodeHasNoDiskPressure         node/ip-10-54-101-23.eu-central-1.compute.internal    Node ip-10-54-101-23.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
24m         Normal    NodeHasSufficientPID          node/ip-10-54-101-23.eu-central-1.compute.internal    Node ip-10-54-101-23.eu-central-1.compute.internal status is now: NodeHasSufficientPID
24m         Normal    NodeAllocatableEnforced       node/ip-10-54-101-23.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
24m         Normal    RegisteredNode                node/ip-10-54-101-23.eu-central-1.compute.internal    Node ip-10-54-101-23.eu-central-1.compute.internal event: Registered Node ip-10-54-101-23.eu-central-1.compute.internal in Controller
24m         Normal    Starting                      node/ip-10-54-101-23.eu-central-1.compute.internal    
24m         Normal    Synced                        node/ip-10-54-101-23.eu-central-1.compute.internal    Node synced successfully
24m         Normal    DisruptionBlocked             node/ip-10-54-101-23.eu-central-1.compute.internal    Node isn't initialized
24m         Normal    ControllerVersionNotice       node/ip-10-54-101-23.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeReady                     node/ip-10-54-101-23.eu-central-1.compute.internal    Node ip-10-54-101-23.eu-central-1.compute.internal status is now: NodeReady
24m         Normal    Ready                         node/ip-10-54-101-23.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
24m         Normal    NodeTrunkInitiated            node/ip-10-54-101-23.eu-central-1.compute.internal    The node has trunk interface initialized successfully
24m         Normal    Unconsolidatable              node/ip-10-54-101-23.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
22m         Normal    DisruptionBlocked             node/ip-10-54-101-23.eu-central-1.compute.internal    Node is nominated for a pending pod
6m54s       Normal    Unconsolidatable              node/ip-10-54-101-23.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
21m         Normal    DisruptionBlocked             node/ip-10-54-101-23.eu-central-1.compute.internal    Node is nominated for a pending pod
18m         Normal    Starting                      node/ip-10-54-101-28.eu-central-1.compute.internal    Starting kubelet.
18m         Warning   InvalidDiskCapacity           node/ip-10-54-101-28.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
18m         Normal    NodeHasSufficientMemory       node/ip-10-54-101-28.eu-central-1.compute.internal    Node ip-10-54-101-28.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
18m         Normal    NodeHasNoDiskPressure         node/ip-10-54-101-28.eu-central-1.compute.internal    Node ip-10-54-101-28.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
18m         Normal    NodeHasSufficientPID          node/ip-10-54-101-28.eu-central-1.compute.internal    Node ip-10-54-101-28.eu-central-1.compute.internal status is now: NodeHasSufficientPID
18m         Normal    NodeAllocatableEnforced       node/ip-10-54-101-28.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
18m         Normal    Synced                        node/ip-10-54-101-28.eu-central-1.compute.internal    Node synced successfully
18m         Normal    DisruptionBlocked             node/ip-10-54-101-28.eu-central-1.compute.internal    Node isn't initialized
18m         Normal    RegisteredNode                node/ip-10-54-101-28.eu-central-1.compute.internal    Node ip-10-54-101-28.eu-central-1.compute.internal event: Registered Node ip-10-54-101-28.eu-central-1.compute.internal in Controller
17m         Normal    Starting                      node/ip-10-54-101-28.eu-central-1.compute.internal    
17m         Normal    ControllerVersionNotice       node/ip-10-54-101-28.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeReady                     node/ip-10-54-101-28.eu-central-1.compute.internal    Node ip-10-54-101-28.eu-central-1.compute.internal status is now: NodeReady
17m         Normal    Ready                         node/ip-10-54-101-28.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    NodeTrunkInitiated            node/ip-10-54-101-28.eu-central-1.compute.internal    The node has trunk interface initialized successfully
115s        Normal    Unconsolidatable              node/ip-10-54-101-28.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
11m         Normal    DisruptionBlocked             node/ip-10-54-101-28.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=signup-service-app/signup-service-app-pdb)
14m         Normal    DisruptionBlocked             node/ip-10-54-101-28.eu-central-1.compute.internal    Node is nominated for a pending pod
16m         Normal    Starting                      node/ip-10-54-101-86.eu-central-1.compute.internal    Starting kubelet.
16m         Warning   InvalidDiskCapacity           node/ip-10-54-101-86.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
16m         Normal    NodeHasSufficientMemory       node/ip-10-54-101-86.eu-central-1.compute.internal    Node ip-10-54-101-86.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
16m         Normal    NodeHasNoDiskPressure         node/ip-10-54-101-86.eu-central-1.compute.internal    Node ip-10-54-101-86.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
16m         Normal    NodeHasSufficientPID          node/ip-10-54-101-86.eu-central-1.compute.internal    Node ip-10-54-101-86.eu-central-1.compute.internal status is now: NodeHasSufficientPID
16m         Normal    NodeAllocatableEnforced       node/ip-10-54-101-86.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
16m         Normal    Synced                        node/ip-10-54-101-86.eu-central-1.compute.internal    Node synced successfully
16m         Normal    RegisteredNode                node/ip-10-54-101-86.eu-central-1.compute.internal    Node ip-10-54-101-86.eu-central-1.compute.internal event: Registered Node ip-10-54-101-86.eu-central-1.compute.internal in Controller
16m         Normal    DisruptionBlocked             node/ip-10-54-101-86.eu-central-1.compute.internal    Node isn't initialized
16m         Normal    Starting                      node/ip-10-54-101-86.eu-central-1.compute.internal    
16m         Normal    ControllerVersionNotice       node/ip-10-54-101-86.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
16m         Normal    NodeReady                     node/ip-10-54-101-86.eu-central-1.compute.internal    Node ip-10-54-101-86.eu-central-1.compute.internal status is now: NodeReady
16m         Normal    Ready                         node/ip-10-54-101-86.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
16m         Normal    NodeTrunkInitiated            node/ip-10-54-101-86.eu-central-1.compute.internal    The node has trunk interface initialized successfully
14m         Normal    Unconsolidatable              node/ip-10-54-101-86.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
14m         Normal    DisruptionBlocked             node/ip-10-54-101-86.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=app-authentication-service-external/app-authentication-service-external-pdb)
11m         Normal    DisruptionBlocked             node/ip-10-54-101-86.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-monitoring-server/orb-fleet-backend-monitoring-server-pdb)
28m         Normal    Starting                      node/ip-10-54-101-99.eu-central-1.compute.internal    Starting kubelet.
28m         Warning   InvalidDiskCapacity           node/ip-10-54-101-99.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
28m         Normal    NodeHasSufficientMemory       node/ip-10-54-101-99.eu-central-1.compute.internal    Node ip-10-54-101-99.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure         node/ip-10-54-101-99.eu-central-1.compute.internal    Node ip-10-54-101-99.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID          node/ip-10-54-101-99.eu-central-1.compute.internal    Node ip-10-54-101-99.eu-central-1.compute.internal status is now: NodeHasSufficientPID
28m         Normal    NodeAllocatableEnforced       node/ip-10-54-101-99.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
28m         Normal    RegisteredNode                node/ip-10-54-101-99.eu-central-1.compute.internal    Node ip-10-54-101-99.eu-central-1.compute.internal event: Registered Node ip-10-54-101-99.eu-central-1.compute.internal in Controller
27m         Normal    Synced                        node/ip-10-54-101-99.eu-central-1.compute.internal    Node synced successfully
27m         Normal    Starting                      node/ip-10-54-101-99.eu-central-1.compute.internal    
27m         Normal    NodeReady                     node/ip-10-54-101-99.eu-central-1.compute.internal    Node ip-10-54-101-99.eu-central-1.compute.internal status is now: NodeReady
27m         Normal    Ready                         node/ip-10-54-101-99.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
27m         Normal    ControllerVersionNotice       node/ip-10-54-101-99.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
84s         Warning   Unsupported                   node/ip-10-54-101-99.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
29m         Normal    Starting                      node/ip-10-54-96-36.eu-central-1.compute.internal     Starting kubelet.
29m         Warning   InvalidDiskCapacity           node/ip-10-54-96-36.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
29m         Normal    NodeHasSufficientMemory       node/ip-10-54-96-36.eu-central-1.compute.internal     Node ip-10-54-96-36.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
29m         Normal    NodeHasNoDiskPressure         node/ip-10-54-96-36.eu-central-1.compute.internal     Node ip-10-54-96-36.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
29m         Normal    NodeHasSufficientPID          node/ip-10-54-96-36.eu-central-1.compute.internal     Node ip-10-54-96-36.eu-central-1.compute.internal status is now: NodeHasSufficientPID
29m         Normal    NodeAllocatableEnforced       node/ip-10-54-96-36.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
29m         Normal    Synced                        node/ip-10-54-96-36.eu-central-1.compute.internal     Node synced successfully
29m         Normal    RegisteredNode                node/ip-10-54-96-36.eu-central-1.compute.internal     Node ip-10-54-96-36.eu-central-1.compute.internal event: Registered Node ip-10-54-96-36.eu-central-1.compute.internal in Controller
29m         Normal    Starting                      node/ip-10-54-96-36.eu-central-1.compute.internal     
29m         Normal    ControllerVersionNotice       node/ip-10-54-96-36.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.9
28m         Warning   Unsupported                   node/ip-10-54-96-36.eu-central-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
29m         Normal    NodeReady                     node/ip-10-54-96-36.eu-central-1.compute.internal     Node ip-10-54-96-36.eu-central-1.compute.internal status is now: NodeReady
29m         Normal    Ready                         node/ip-10-54-96-36.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
28m         Normal    RegisteredNode                node/ip-10-54-96-36.eu-central-1.compute.internal     Node ip-10-54-96-36.eu-central-1.compute.internal event: Registered Node ip-10-54-96-36.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-96-36.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
43s         Warning   Unsupported                   node/ip-10-54-96-36.eu-central-1.compute.internal     The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
29m         Normal    Starting                      node/ip-10-54-97-158.eu-central-1.compute.internal    Starting kubelet.
29m         Warning   InvalidDiskCapacity           node/ip-10-54-97-158.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
29m         Normal    NodeHasSufficientMemory       node/ip-10-54-97-158.eu-central-1.compute.internal    Node ip-10-54-97-158.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
29m         Normal    NodeHasNoDiskPressure         node/ip-10-54-97-158.eu-central-1.compute.internal    Node ip-10-54-97-158.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
29m         Normal    NodeHasSufficientPID          node/ip-10-54-97-158.eu-central-1.compute.internal    Node ip-10-54-97-158.eu-central-1.compute.internal status is now: NodeHasSufficientPID
29m         Normal    NodeAllocatableEnforced       node/ip-10-54-97-158.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
29m         Normal    Synced                        node/ip-10-54-97-158.eu-central-1.compute.internal    Node synced successfully
29m         Normal    RegisteredNode                node/ip-10-54-97-158.eu-central-1.compute.internal    Node ip-10-54-97-158.eu-central-1.compute.internal event: Registered Node ip-10-54-97-158.eu-central-1.compute.internal in Controller
29m         Normal    Starting                      node/ip-10-54-97-158.eu-central-1.compute.internal    
29m         Normal    ControllerVersionNotice       node/ip-10-54-97-158.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.9
28m         Warning   Unsupported                   node/ip-10-54-97-158.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
29m         Normal    NodeReady                     node/ip-10-54-97-158.eu-central-1.compute.internal    Node ip-10-54-97-158.eu-central-1.compute.internal status is now: NodeReady
29m         Normal    Ready                         node/ip-10-54-97-158.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
28m         Normal    RegisteredNode                node/ip-10-54-97-158.eu-central-1.compute.internal    Node ip-10-54-97-158.eu-central-1.compute.internal event: Registered Node ip-10-54-97-158.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-97-158.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
17m         Warning   Unsupported                   node/ip-10-54-97-158.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
18m         Normal    NodeNotSchedulable            node/ip-10-54-97-158.eu-central-1.compute.internal    Node ip-10-54-97-158.eu-central-1.compute.internal status is now: NodeNotSchedulable
17m         Normal    NodeNotReady                  node/ip-10-54-97-158.eu-central-1.compute.internal    Node ip-10-54-97-158.eu-central-1.compute.internal status is now: NodeNotReady
17m         Normal    MemoryPressure                node/ip-10-54-97-158.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure                  node/ip-10-54-97-158.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure                   node/ip-10-54-97-158.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                         node/ip-10-54-97-158.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DeletingNode                  node/ip-10-54-97-158.eu-central-1.compute.internal    Deleting node ip-10-54-97-158.eu-central-1.compute.internal because it does not exist in the cloud provider
16m         Normal    RemovingNode                  node/ip-10-54-97-158.eu-central-1.compute.internal    Node ip-10-54-97-158.eu-central-1.compute.internal event: Removing Node ip-10-54-97-158.eu-central-1.compute.internal from Controller
23m         Normal    DisruptionBlocked             node/ip-10-54-98-114.eu-central-1.compute.internal    Node is nominated for a pending pod
37m         Normal    Unconsolidatable              node/ip-10-54-98-114.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-98-114.eu-central-1.compute.internal    Node ip-10-54-98-114.eu-central-1.compute.internal event: Registered Node ip-10-54-98-114.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-98-114.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-98-114.eu-central-1.compute.internal    The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-54-98-114.eu-central-1.compute.internal    Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-rr6qh => would schedule against uninitialized nodeclaim/main-arm64-vcdhb
16m         Normal    DisruptionBlocked             node/ip-10-54-98-114.eu-central-1.compute.internal    Node is nominated for a pending pod
21m         Normal    Unconsolidatable              node/ip-10-54-98-114.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
14m         Normal    DisruptionBlocked             node/ip-10-54-98-114.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=proof-verification-srv/proof-verification-srv-pdb)
13m         Normal    DisruptionTerminating         node/ip-10-54-98-114.eu-central-1.compute.internal    Disrupting Node: Drifted/Replace
13m         Warning   FailedDraining                node/ip-10-54-98-114.eu-central-1.compute.internal    Failed to drain node, 12 pods are waiting to be evicted
12m         Warning   InstanceTerminating           node/ip-10-54-98-114.eu-central-1.compute.internal    Instance is terminating
11m         Normal    DisruptionBlocked             node/ip-10-54-98-114.eu-central-1.compute.internal    Node is deleting or marked for deletion
11m         Normal    NodeNotReady                  node/ip-10-54-98-114.eu-central-1.compute.internal    Node ip-10-54-98-114.eu-central-1.compute.internal status is now: NodeNotReady
11m         Normal    MemoryPressure                node/ip-10-54-98-114.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    DiskPressure                  node/ip-10-54-98-114.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    PIDPressure                   node/ip-10-54-98-114.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    Ready                         node/ip-10-54-98-114.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
11m         Normal    RemovingNode                  node/ip-10-54-98-114.eu-central-1.compute.internal    Node ip-10-54-98-114.eu-central-1.compute.internal event: Removing Node ip-10-54-98-114.eu-central-1.compute.internal from Controller
34m         Normal    Unconsolidatable              node/ip-10-54-98-16.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-98-16.eu-central-1.compute.internal     Node ip-10-54-98-16.eu-central-1.compute.internal event: Registered Node ip-10-54-98-16.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-98-16.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-98-16.eu-central-1.compute.internal     The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-54-98-16.eu-central-1.compute.internal     Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-h2m7v => would schedule against uninitialized nodeclaim/main-arm64-vcdhb
22m         Normal    DisruptionBlocked             node/ip-10-54-98-16.eu-central-1.compute.internal     Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-h2m7v => would schedule against uninitialized nodeclaim/main-arm64-kppgb, node/ip-10-54-101-18.eu-central-1.compute.internal
22m         Normal    DisruptionBlocked             node/ip-10-54-98-16.eu-central-1.compute.internal     Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-h2m7v => would schedule against uninitialized nodeclaim/main-arm64-8rq2c
21m         Normal    Unconsolidatable              node/ip-10-54-98-16.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
20m         Normal    DisruptionTerminating         node/ip-10-54-98-16.eu-central-1.compute.internal     Disrupting Node: Drifted/Replace
20m         Warning   FailedDraining                node/ip-10-54-98-16.eu-central-1.compute.internal     Failed to drain node, 6 pods are waiting to be evicted
20m         Normal    DisruptionBlocked             node/ip-10-54-98-16.eu-central-1.compute.internal     Node is deleting or marked for deletion
19m         Warning   InstanceTerminating           node/ip-10-54-98-16.eu-central-1.compute.internal     Instance is terminating
19m         Normal    RemovingNode                  node/ip-10-54-98-16.eu-central-1.compute.internal     Node ip-10-54-98-16.eu-central-1.compute.internal event: Removing Node ip-10-54-98-16.eu-central-1.compute.internal from Controller
34m         Normal    Unconsolidatable              node/ip-10-54-98-185.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-98-185.eu-central-1.compute.internal    Node ip-10-54-98-185.eu-central-1.compute.internal event: Registered Node ip-10-54-98-185.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-98-185.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-98-185.eu-central-1.compute.internal    The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked             node/ip-10-54-98-185.eu-central-1.compute.internal    Node is deleting or marked for deletion
24m         Normal    DisruptionTerminating         node/ip-10-54-98-185.eu-central-1.compute.internal    Disrupting Node: Drifted/Replace
24m         Warning   FailedDraining                node/ip-10-54-98-185.eu-central-1.compute.internal    Failed to drain node, 6 pods are waiting to be evicted
23m         Warning   InstanceTerminating           node/ip-10-54-98-185.eu-central-1.compute.internal    Instance is terminating
22m         Normal    NodeNotReady                  node/ip-10-54-98-185.eu-central-1.compute.internal    Node ip-10-54-98-185.eu-central-1.compute.internal status is now: NodeNotReady
22m         Normal    MemoryPressure                node/ip-10-54-98-185.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure                  node/ip-10-54-98-185.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure                   node/ip-10-54-98-185.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                         node/ip-10-54-98-185.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    RemovingNode                  node/ip-10-54-98-185.eu-central-1.compute.internal    Node ip-10-54-98-185.eu-central-1.compute.internal event: Removing Node ip-10-54-98-185.eu-central-1.compute.internal from Controller
34m         Normal    Unconsolidatable              node/ip-10-54-98-20.eu-central-1.compute.internal     NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    DisruptionBlocked             node/ip-10-54-98-20.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=signup-service-app/signup-service-app-pdb)
28m         Normal    RegisteredNode                node/ip-10-54-98-20.eu-central-1.compute.internal     Node ip-10-54-98-20.eu-central-1.compute.internal event: Registered Node ip-10-54-98-20.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-98-20.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-98-20.eu-central-1.compute.internal     The node has trunk interface initialized successfully
21m         Normal    Unconsolidatable              node/ip-10-54-98-20.eu-central-1.compute.internal     NodePool "main-amd64" has non-empty consolidation disabled
21m         Normal    DisruptionBlocked             node/ip-10-54-98-20.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=signup-service-app/signup-service-app-pdb)
19m         Normal    DisruptionTerminating         node/ip-10-54-98-20.eu-central-1.compute.internal     Disrupting Node: Drifted/Replace
19m         Warning   FailedDraining                node/ip-10-54-98-20.eu-central-1.compute.internal     Failed to drain node, 6 pods are waiting to be evicted
19m         Normal    DisruptionBlocked             node/ip-10-54-98-20.eu-central-1.compute.internal     Node is deleting or marked for deletion
18m         Warning   InstanceTerminating           node/ip-10-54-98-20.eu-central-1.compute.internal     Instance is terminating
17m         Normal    NodeNotReady                  node/ip-10-54-98-20.eu-central-1.compute.internal     Node ip-10-54-98-20.eu-central-1.compute.internal status is now: NodeNotReady
17m         Normal    MemoryPressure                node/ip-10-54-98-20.eu-central-1.compute.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure                  node/ip-10-54-98-20.eu-central-1.compute.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure                   node/ip-10-54-98-20.eu-central-1.compute.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                         node/ip-10-54-98-20.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DeletingNode                  node/ip-10-54-98-20.eu-central-1.compute.internal     Deleting node ip-10-54-98-20.eu-central-1.compute.internal because it does not exist in the cloud provider
17m         Normal    RemovingNode                  node/ip-10-54-98-20.eu-central-1.compute.internal     Node ip-10-54-98-20.eu-central-1.compute.internal event: Removing Node ip-10-54-98-20.eu-central-1.compute.internal from Controller
34m         Normal    Unconsolidatable              node/ip-10-54-98-244.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-98-244.eu-central-1.compute.internal    Node ip-10-54-98-244.eu-central-1.compute.internal event: Registered Node ip-10-54-98-244.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-98-244.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-98-244.eu-central-1.compute.internal    The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-54-98-244.eu-central-1.compute.internal    Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-gs59c => would schedule against uninitialized nodeclaim/main-arm64-vcdhb
22m         Normal    DisruptionBlocked             node/ip-10-54-98-244.eu-central-1.compute.internal    Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-gs59c => would schedule against uninitialized nodeclaim/main-arm64-kppgb, node/ip-10-54-101-18.eu-central-1.compute.internal
22m         Normal    DisruptionBlocked             node/ip-10-54-98-244.eu-central-1.compute.internal    Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-gs59c => would schedule against uninitialized nodeclaim/main-arm64-8rq2c
21m         Normal    Unconsolidatable              node/ip-10-54-98-244.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
19m         Normal    DisruptionBlocked             node/ip-10-54-98-244.eu-central-1.compute.internal    Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-gs59c => would schedule against uninitialized nodeclaim/main-arm64-q949t, node/ip-10-54-99-22.eu-central-1.compute.internal
19m         Normal    DisruptionTerminating         node/ip-10-54-98-244.eu-central-1.compute.internal    Disrupting Node: Drifted/Replace
19m         Warning   FailedDraining                node/ip-10-54-98-244.eu-central-1.compute.internal    Failed to drain node, 4 pods are waiting to be evicted
18m         Warning   InstanceTerminating           node/ip-10-54-98-244.eu-central-1.compute.internal    Instance is terminating
17m         Normal    DisruptionBlocked             node/ip-10-54-98-244.eu-central-1.compute.internal    Node is deleting or marked for deletion
17m         Normal    NodeNotReady                  node/ip-10-54-98-244.eu-central-1.compute.internal    Node ip-10-54-98-244.eu-central-1.compute.internal status is now: NodeNotReady
17m         Normal    MemoryPressure                node/ip-10-54-98-244.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure                  node/ip-10-54-98-244.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure                   node/ip-10-54-98-244.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                         node/ip-10-54-98-244.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
16m         Normal    RemovingNode                  node/ip-10-54-98-244.eu-central-1.compute.internal    Node ip-10-54-98-244.eu-central-1.compute.internal event: Removing Node ip-10-54-98-244.eu-central-1.compute.internal from Controller
21m         Normal    Starting                      node/ip-10-54-98-253.eu-central-1.compute.internal    Starting kubelet.
21m         Warning   InvalidDiskCapacity           node/ip-10-54-98-253.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
21m         Normal    NodeHasSufficientMemory       node/ip-10-54-98-253.eu-central-1.compute.internal    Node ip-10-54-98-253.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
21m         Normal    NodeHasNoDiskPressure         node/ip-10-54-98-253.eu-central-1.compute.internal    Node ip-10-54-98-253.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
21m         Normal    NodeHasSufficientPID          node/ip-10-54-98-253.eu-central-1.compute.internal    Node ip-10-54-98-253.eu-central-1.compute.internal status is now: NodeHasSufficientPID
21m         Normal    NodeAllocatableEnforced       node/ip-10-54-98-253.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
21m         Normal    DisruptionBlocked             node/ip-10-54-98-253.eu-central-1.compute.internal    Node isn't initialized
21m         Normal    Synced                        node/ip-10-54-98-253.eu-central-1.compute.internal    Node synced successfully
21m         Normal    RegisteredNode                node/ip-10-54-98-253.eu-central-1.compute.internal    Node ip-10-54-98-253.eu-central-1.compute.internal event: Registered Node ip-10-54-98-253.eu-central-1.compute.internal in Controller
21m         Normal    Starting                      node/ip-10-54-98-253.eu-central-1.compute.internal    
21m         Normal    ControllerVersionNotice       node/ip-10-54-98-253.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
21m         Normal    NodeReady                     node/ip-10-54-98-253.eu-central-1.compute.internal    Node ip-10-54-98-253.eu-central-1.compute.internal status is now: NodeReady
21m         Normal    Ready                         node/ip-10-54-98-253.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
21m         Normal    NodeTrunkInitiated            node/ip-10-54-98-253.eu-central-1.compute.internal    The node has trunk interface initialized successfully
6m3s        Normal    Unconsolidatable              node/ip-10-54-98-253.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
20m         Warning   OOMKilling                    node/ip-10-54-98-253.eu-central-1.compute.internal    Memory cgroup out of memory: Killed process 11150 (reports-control) total-vm:5593292kB, anon-rss:127192kB, file-rss:66760kB, shmem-rss:0kB, UID:65532 pgtables:528kB oom_score_adj:999
20m         Warning   OOMKilling                    node/ip-10-54-98-253.eu-central-1.compute.internal    Memory cgroup out of memory: Killed process 12252 (reports-control) total-vm:5593228kB, anon-rss:127224kB, file-rss:65988kB, shmem-rss:0kB, UID:65532 pgtables:524kB oom_score_adj:999
20m         Warning   OOMKilling                    node/ip-10-54-98-253.eu-central-1.compute.internal    Memory cgroup out of memory: Killed process 12277 (reports-control) total-vm:5593228kB, anon-rss:127224kB, file-rss:65988kB, shmem-rss:0kB, UID:65532 pgtables:524kB oom_score_adj:999
20m         Warning   OOMKilling                    node/ip-10-54-98-253.eu-central-1.compute.internal    Memory cgroup out of memory: Killed process 12761 (reports-control) total-vm:5592652kB, anon-rss:128224kB, file-rss:65348kB, shmem-rss:0kB, UID:65532 pgtables:524kB oom_score_adj:999
20m         Warning   OOMKilling                    node/ip-10-54-98-253.eu-central-1.compute.internal    Memory cgroup out of memory: Killed process 12786 (reports-control) total-vm:5592652kB, anon-rss:128224kB, file-rss:65348kB, shmem-rss:0kB, UID:65532 pgtables:524kB oom_score_adj:999
19m         Normal    DisruptionBlocked             node/ip-10-54-98-253.eu-central-1.compute.internal    Node is nominated for a pending pod
19m         Warning   OOMKilling                    node/ip-10-54-98-253.eu-central-1.compute.internal    Memory cgroup out of memory: Killed process 13750 (reports-control) total-vm:5593612kB, anon-rss:128184kB, file-rss:65536kB, shmem-rss:0kB, UID:65532 pgtables:528kB oom_score_adj:999
19m         Warning   OOMKilling                    node/ip-10-54-98-253.eu-central-1.compute.internal    Memory cgroup out of memory: Killed process 13770 (reports-control) total-vm:5593612kB, anon-rss:128184kB, file-rss:65536kB, shmem-rss:0kB, UID:65532 pgtables:528kB oom_score_adj:999
18m         Warning   OOMKilling                    node/ip-10-54-98-253.eu-central-1.compute.internal    Memory cgroup out of memory: Killed process 15115 (reports-control) total-vm:5593996kB, anon-rss:127368kB, file-rss:65188kB, shmem-rss:0kB, UID:65532 pgtables:528kB oom_score_adj:999
18m         Warning   OOMKilling                    node/ip-10-54-98-253.eu-central-1.compute.internal    Memory cgroup out of memory: Killed process 15140 (reports-control) total-vm:5593996kB, anon-rss:127368kB, file-rss:65188kB, shmem-rss:0kB, UID:65532 pgtables:528kB oom_score_adj:999
14m         Normal    DisruptionBlocked             node/ip-10-54-98-253.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=proof-verification-srv/proof-verification-srv-pdb)
3m4s        Warning   OOMKilling                    node/ip-10-54-98-253.eu-central-1.compute.internal    (combined from similar events): Memory cgroup out of memory: Killed process 36508 (reports-control) total-vm:5593228kB, anon-rss:128260kB, file-rss:65720kB, shmem-rss:0kB, UID:65532 pgtables:528kB oom_score_adj:999
23m         Normal    DisruptionBlocked             node/ip-10-54-98-33.eu-central-1.compute.internal     Node is nominated for a pending pod
38m         Normal    Unconsolidatable              node/ip-10-54-98-33.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
56m         Normal    DisruptionBlocked             node/ip-10-54-98-33.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
28m         Normal    RegisteredNode                node/ip-10-54-98-33.eu-central-1.compute.internal     Node ip-10-54-98-33.eu-central-1.compute.internal event: Registered Node ip-10-54-98-33.eu-central-1.compute.internal in Controller
27m         Normal    DisruptionBlocked             node/ip-10-54-98-33.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
27m         Normal    ControllerVersionNotice       node/ip-10-54-98-33.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-98-33.eu-central-1.compute.internal     The node has trunk interface initialized successfully
20m         Normal    DisruptionBlocked             node/ip-10-54-98-33.eu-central-1.compute.internal     Node is nominated for a pending pod
21m         Normal    Unconsolidatable              node/ip-10-54-98-33.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
16m         Normal    DisruptionBlocked             node/ip-10-54-98-33.eu-central-1.compute.internal     Node is deleting or marked for deletion
17m         Normal    DisruptionTerminating         node/ip-10-54-98-33.eu-central-1.compute.internal     Disrupting Node: Drifted/Replace
17m         Warning   FailedDraining                node/ip-10-54-98-33.eu-central-1.compute.internal     Failed to drain node, 12 pods are waiting to be evicted
16m         Warning   InstanceTerminating           node/ip-10-54-98-33.eu-central-1.compute.internal     Instance is terminating
15m         Normal    NodeNotReady                  node/ip-10-54-98-33.eu-central-1.compute.internal     Node ip-10-54-98-33.eu-central-1.compute.internal status is now: NodeNotReady
15m         Normal    MemoryPressure                node/ip-10-54-98-33.eu-central-1.compute.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DiskPressure                  node/ip-10-54-98-33.eu-central-1.compute.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    PIDPressure                   node/ip-10-54-98-33.eu-central-1.compute.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    Ready                         node/ip-10-54-98-33.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DeletingNode                  node/ip-10-54-98-33.eu-central-1.compute.internal     Deleting node ip-10-54-98-33.eu-central-1.compute.internal because it does not exist in the cloud provider
15m         Normal    RemovingNode                  node/ip-10-54-98-33.eu-central-1.compute.internal     Node ip-10-54-98-33.eu-central-1.compute.internal event: Removing Node ip-10-54-98-33.eu-central-1.compute.internal from Controller
14m         Normal    Starting                      node/ip-10-54-98-34.eu-central-1.compute.internal     Starting kubelet.
14m         Warning   InvalidDiskCapacity           node/ip-10-54-98-34.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
14m         Normal    NodeHasSufficientMemory       node/ip-10-54-98-34.eu-central-1.compute.internal     Node ip-10-54-98-34.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
14m         Normal    NodeHasNoDiskPressure         node/ip-10-54-98-34.eu-central-1.compute.internal     Node ip-10-54-98-34.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
14m         Normal    NodeHasSufficientPID          node/ip-10-54-98-34.eu-central-1.compute.internal     Node ip-10-54-98-34.eu-central-1.compute.internal status is now: NodeHasSufficientPID
14m         Normal    NodeAllocatableEnforced       node/ip-10-54-98-34.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
14m         Normal    Synced                        node/ip-10-54-98-34.eu-central-1.compute.internal     Node synced successfully
14m         Normal    RegisteredNode                node/ip-10-54-98-34.eu-central-1.compute.internal     Node ip-10-54-98-34.eu-central-1.compute.internal event: Registered Node ip-10-54-98-34.eu-central-1.compute.internal in Controller
14m         Normal    Starting                      node/ip-10-54-98-34.eu-central-1.compute.internal     
14m         Normal    DisruptionBlocked             node/ip-10-54-98-34.eu-central-1.compute.internal     Node isn't initialized
14m         Normal    ControllerVersionNotice       node/ip-10-54-98-34.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeReady                     node/ip-10-54-98-34.eu-central-1.compute.internal     Node ip-10-54-98-34.eu-central-1.compute.internal status is now: NodeReady
14m         Normal    Ready                         node/ip-10-54-98-34.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeTrunkInitiated            node/ip-10-54-98-34.eu-central-1.compute.internal     The node has trunk interface initialized successfully
13m         Normal    Unconsolidatable              node/ip-10-54-98-34.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
13m         Normal    Starting                      node/ip-10-54-98-42.eu-central-1.compute.internal     Starting kubelet.
13m         Warning   InvalidDiskCapacity           node/ip-10-54-98-42.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
13m         Normal    NodeHasSufficientMemory       node/ip-10-54-98-42.eu-central-1.compute.internal     Node ip-10-54-98-42.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
13m         Normal    NodeHasNoDiskPressure         node/ip-10-54-98-42.eu-central-1.compute.internal     Node ip-10-54-98-42.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
13m         Normal    NodeHasSufficientPID          node/ip-10-54-98-42.eu-central-1.compute.internal     Node ip-10-54-98-42.eu-central-1.compute.internal status is now: NodeHasSufficientPID
13m         Normal    NodeAllocatableEnforced       node/ip-10-54-98-42.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
13m         Normal    Synced                        node/ip-10-54-98-42.eu-central-1.compute.internal     Node synced successfully
13m         Normal    DisruptionBlocked             node/ip-10-54-98-42.eu-central-1.compute.internal     Node isn't initialized
13m         Normal    RegisteredNode                node/ip-10-54-98-42.eu-central-1.compute.internal     Node ip-10-54-98-42.eu-central-1.compute.internal event: Registered Node ip-10-54-98-42.eu-central-1.compute.internal in Controller
13m         Normal    Starting                      node/ip-10-54-98-42.eu-central-1.compute.internal     
13m         Normal    ControllerVersionNotice       node/ip-10-54-98-42.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
13m         Normal    NodeReady                     node/ip-10-54-98-42.eu-central-1.compute.internal     Node ip-10-54-98-42.eu-central-1.compute.internal status is now: NodeReady
13m         Normal    Ready                         node/ip-10-54-98-42.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
13m         Normal    NodeTrunkInitiated            node/ip-10-54-98-42.eu-central-1.compute.internal     The node has trunk interface initialized successfully
12m         Normal    Unconsolidatable              node/ip-10-54-98-42.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
34m         Normal    Unconsolidatable              node/ip-10-54-98-56.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-98-56.eu-central-1.compute.internal     Node ip-10-54-98-56.eu-central-1.compute.internal event: Registered Node ip-10-54-98-56.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-98-56.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-98-56.eu-central-1.compute.internal     The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-54-98-56.eu-central-1.compute.internal     Not all pods would schedule, pii-deletion-worker/pii-deletion-worker-68b957dcd7-r92q2 => would schedule against uninitialized nodeclaim/main-arm64-vcdhb pii-deletion-worker/pii-deletion-worker-68b957dcd7-rfk4b => would schedule against uninitialized nodeclaim/main-arm64-vcdhb
22m         Normal    DisruptionBlocked             node/ip-10-54-98-56.eu-central-1.compute.internal     Not all pods would schedule, pii-deletion-worker/pii-deletion-worker-68b957dcd7-r92q2 => would schedule against uninitialized nodeclaim/main-arm64-kppgb, node/ip-10-54-101-18.eu-central-1.compute.internal pii-deletion-worker/pii-deletion-worker-68b957dcd7-rfk4b => would schedule against uninitialized nodeclaim/main-arm64-kppgb, node/ip-10-54-101-18.eu-central-1.compute.internal
21m         Normal    DisruptionBlocked             node/ip-10-54-98-56.eu-central-1.compute.internal     Not all pods would schedule, pii-deletion-worker/pii-deletion-worker-68b957dcd7-r92q2 => would schedule against uninitialized nodeclaim/main-arm64-8rq2c pii-deletion-worker/pii-deletion-worker-68b957dcd7-rfk4b => would schedule against uninitialized nodeclaim/main-arm64-8rq2c
21m         Normal    Unconsolidatable              node/ip-10-54-98-56.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
21m         Normal    DisruptionTerminating         node/ip-10-54-98-56.eu-central-1.compute.internal     Disrupting Node: Drifted/Delete
21m         Warning   FailedDraining                node/ip-10-54-98-56.eu-central-1.compute.internal     Failed to drain node, 6 pods are waiting to be evicted
20m         Warning   InstanceTerminating           node/ip-10-54-98-56.eu-central-1.compute.internal     Instance is terminating
19m         Normal    RemovingNode                  node/ip-10-54-98-56.eu-central-1.compute.internal     Node ip-10-54-98-56.eu-central-1.compute.internal event: Removing Node ip-10-54-98-56.eu-central-1.compute.internal from Controller
37m         Normal    Unconsolidatable              node/ip-10-54-98-57.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-98-57.eu-central-1.compute.internal     Node ip-10-54-98-57.eu-central-1.compute.internal event: Registered Node ip-10-54-98-57.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-98-57.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-98-57.eu-central-1.compute.internal     The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-54-98-57.eu-central-1.compute.internal     Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-sm62f => would schedule against uninitialized nodeclaim/main-arm64-vcdhb
22m         Normal    DisruptionBlocked             node/ip-10-54-98-57.eu-central-1.compute.internal     Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-sm62f => would schedule against uninitialized nodeclaim/main-arm64-kppgb, node/ip-10-54-101-18.eu-central-1.compute.internal
21m         Normal    DisruptionBlocked             node/ip-10-54-98-57.eu-central-1.compute.internal     Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-sm62f => would schedule against uninitialized nodeclaim/main-arm64-8rq2c
21m         Normal    Unconsolidatable              node/ip-10-54-98-57.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
19m         Normal    DisruptionBlocked             node/ip-10-54-98-57.eu-central-1.compute.internal     Not all pods would schedule, proof-verification-srv/proof-verification-srv-67454ff6c9-9splr => would schedule against uninitialized nodeclaim/main-arm64-q949t, node/ip-10-54-99-22.eu-central-1.compute.internal
17m         Normal    DisruptionBlocked             node/ip-10-54-98-57.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=data-ingestion-service/data-ingestion-service-pdb)
15m         Normal    DisruptionTerminating         node/ip-10-54-98-57.eu-central-1.compute.internal     Disrupting Node: Drifted/Replace
15m         Warning   FailedDraining                node/ip-10-54-98-57.eu-central-1.compute.internal     Failed to drain node, 10 pods are waiting to be evicted
15m         Normal    DisruptionBlocked             node/ip-10-54-98-57.eu-central-1.compute.internal     Node is deleting or marked for deletion
14m         Warning   InstanceTerminating           node/ip-10-54-98-57.eu-central-1.compute.internal     Instance is terminating
14m         Normal    NodeNotReady                  node/ip-10-54-98-57.eu-central-1.compute.internal     Node ip-10-54-98-57.eu-central-1.compute.internal status is now: NodeNotReady
14m         Normal    MemoryPressure                node/ip-10-54-98-57.eu-central-1.compute.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    DiskPressure                  node/ip-10-54-98-57.eu-central-1.compute.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    PIDPressure                   node/ip-10-54-98-57.eu-central-1.compute.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
14m         Normal    Ready                         node/ip-10-54-98-57.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    RemovingNode                  node/ip-10-54-98-57.eu-central-1.compute.internal     Node ip-10-54-98-57.eu-central-1.compute.internal event: Removing Node ip-10-54-98-57.eu-central-1.compute.internal from Controller
28m         Normal    Unconsolidatable              node/ip-10-54-98-65.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-98-65.eu-central-1.compute.internal     Node ip-10-54-98-65.eu-central-1.compute.internal event: Registered Node ip-10-54-98-65.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-98-65.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-98-65.eu-central-1.compute.internal     The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-54-98-65.eu-central-1.compute.internal     Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-vlmpm => would schedule against uninitialized nodeclaim/main-arm64-vcdhb
22m         Normal    DisruptionBlocked             node/ip-10-54-98-65.eu-central-1.compute.internal     Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-vlmpm => would schedule against uninitialized nodeclaim/main-arm64-kppgb, node/ip-10-54-101-18.eu-central-1.compute.internal
21m         Normal    DisruptionBlocked             node/ip-10-54-98-65.eu-central-1.compute.internal     Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-vlmpm => would schedule against uninitialized nodeclaim/main-arm64-8rq2c
21m         Normal    Unconsolidatable              node/ip-10-54-98-65.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
19m         Normal    DisruptionBlocked             node/ip-10-54-98-65.eu-central-1.compute.internal     Not all pods would schedule, proof-verification-srv/proof-verification-srv-67454ff6c9-bpzp8 => would schedule against uninitialized nodeclaim/main-arm64-q949t, node/ip-10-54-99-22.eu-central-1.compute.internal orb-data-service-app-external/orb-data-service-app-external-647df76d94-vlmpm => would schedule against uninitialized nodeclaim/main-arm64-q949t, node/ip-10-54-99-22.eu-central-1.compute.internal
17m         Normal    DisruptionBlocked             node/ip-10-54-98-65.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=proof-verification-srv/proof-verification-srv-pdb)
14m         Normal    DisruptionBlocked             node/ip-10-54-98-65.eu-central-1.compute.internal     Node is deleting or marked for deletion
14m         Normal    DisruptionTerminating         node/ip-10-54-98-65.eu-central-1.compute.internal     Disrupting Node: Drifted/Replace
14m         Warning   FailedDraining                node/ip-10-54-98-65.eu-central-1.compute.internal     Failed to drain node, 4 pods are waiting to be evicted
13m         Warning   InstanceTerminating           node/ip-10-54-98-65.eu-central-1.compute.internal     Instance is terminating
12m         Normal    RemovingNode                  node/ip-10-54-98-65.eu-central-1.compute.internal     Node ip-10-54-98-65.eu-central-1.compute.internal event: Removing Node ip-10-54-98-65.eu-central-1.compute.internal from Controller
33m         Normal    Unconsolidatable              node/ip-10-54-98-80.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-98-80.eu-central-1.compute.internal     Node ip-10-54-98-80.eu-central-1.compute.internal event: Registered Node ip-10-54-98-80.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-98-80.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-98-80.eu-central-1.compute.internal     The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-54-98-80.eu-central-1.compute.internal     Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-2wrlc => would schedule against uninitialized nodeclaim/main-arm64-vcdhb
23m         Normal    DisruptionBlocked             node/ip-10-54-98-80.eu-central-1.compute.internal     Node is deleting or marked for deletion
22m         Normal    DisruptionTerminating         node/ip-10-54-98-80.eu-central-1.compute.internal     Disrupting Node: Drifted/Replace
22m         Warning   FailedDraining                node/ip-10-54-98-80.eu-central-1.compute.internal     Failed to drain node, 7 pods are waiting to be evicted
22m         Warning   FailedDraining                node/ip-10-54-98-80.eu-central-1.compute.internal     Failed to drain node, 5 pods are waiting to be evicted
22m         Normal    DisruptionBlocked             node/ip-10-54-98-80.eu-central-1.compute.internal     Node is deleting or marked for deletion
21m         Warning   InstanceTerminating           node/ip-10-54-98-80.eu-central-1.compute.internal     Instance is terminating
20m         Normal    NodeNotReady                  node/ip-10-54-98-80.eu-central-1.compute.internal     Node ip-10-54-98-80.eu-central-1.compute.internal status is now: NodeNotReady
20m         Normal    MemoryPressure                node/ip-10-54-98-80.eu-central-1.compute.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    DiskPressure                  node/ip-10-54-98-80.eu-central-1.compute.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    PIDPressure                   node/ip-10-54-98-80.eu-central-1.compute.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    Ready                         node/ip-10-54-98-80.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    RemovingNode                  node/ip-10-54-98-80.eu-central-1.compute.internal     Node ip-10-54-98-80.eu-central-1.compute.internal event: Removing Node ip-10-54-98-80.eu-central-1.compute.internal from Controller
25m         Normal    Starting                      node/ip-10-54-98-98.eu-central-1.compute.internal     Starting kubelet.
25m         Warning   InvalidDiskCapacity           node/ip-10-54-98-98.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
25m         Normal    NodeHasSufficientMemory       node/ip-10-54-98-98.eu-central-1.compute.internal     Node ip-10-54-98-98.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
25m         Normal    NodeHasNoDiskPressure         node/ip-10-54-98-98.eu-central-1.compute.internal     Node ip-10-54-98-98.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
25m         Normal    NodeHasSufficientPID          node/ip-10-54-98-98.eu-central-1.compute.internal     Node ip-10-54-98-98.eu-central-1.compute.internal status is now: NodeHasSufficientPID
25m         Normal    NodeAllocatableEnforced       node/ip-10-54-98-98.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
24m         Normal    DisruptionBlocked             node/ip-10-54-98-98.eu-central-1.compute.internal     Node isn't initialized
24m         Normal    RegisteredNode                node/ip-10-54-98-98.eu-central-1.compute.internal     Node ip-10-54-98-98.eu-central-1.compute.internal event: Registered Node ip-10-54-98-98.eu-central-1.compute.internal in Controller
24m         Normal    Starting                      node/ip-10-54-98-98.eu-central-1.compute.internal     
24m         Normal    ControllerVersionNotice       node/ip-10-54-98-98.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
24m         Warning   TrunkENICreationFailed        node/ip-10-54-98-98.eu-central-1.compute.internal     Failed to create trunk interface: Error Code: InsufficientFreeAddressesInSubnet
24m         Normal    NodeTrunkFailedInit           node/ip-10-54-98-98.eu-central-1.compute.internal     The node failed initializing trunk interface
24m         Normal    NodeReady                     node/ip-10-54-98-98.eu-central-1.compute.internal     Node ip-10-54-98-98.eu-central-1.compute.internal status is now: NodeReady
24m         Normal    Ready                         node/ip-10-54-98-98.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
24m         Normal    Synced                        node/ip-10-54-98-98.eu-central-1.compute.internal     Node synced successfully
24m         Normal    NodeTrunkInitiated            node/ip-10-54-98-98.eu-central-1.compute.internal     The node has trunk interface initialized successfully
24m         Normal    Unconsolidatable              node/ip-10-54-98-98.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
6m55s       Normal    Unconsolidatable              node/ip-10-54-98-98.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
13m         Normal    DisruptionBlocked             node/ip-10-54-98-98.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=proof-verification-srv/proof-verification-srv-pdb)
37m         Normal    Unconsolidatable              node/ip-10-54-99-105.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-99-105.eu-central-1.compute.internal    Node ip-10-54-99-105.eu-central-1.compute.internal event: Registered Node ip-10-54-99-105.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-105.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-99-105.eu-central-1.compute.internal    The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-54-99-105.eu-central-1.compute.internal    Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-rh6kp => would schedule against uninitialized nodeclaim/main-arm64-vcdhb
24m         Normal    DisruptionTerminating         node/ip-10-54-99-105.eu-central-1.compute.internal    Disrupting Node: Drifted/Replace
24m         Warning   FailedDraining                node/ip-10-54-99-105.eu-central-1.compute.internal    Failed to drain node, 5 pods are waiting to be evicted
23m         Normal    DisruptionBlocked             node/ip-10-54-99-105.eu-central-1.compute.internal    Node is deleting or marked for deletion
22m         Warning   InstanceTerminating           node/ip-10-54-99-105.eu-central-1.compute.internal    Instance is terminating
22m         Normal    DisruptionBlocked             node/ip-10-54-99-105.eu-central-1.compute.internal    Node is deleting or marked for deletion
22m         Normal    NodeNotReady                  node/ip-10-54-99-105.eu-central-1.compute.internal    Node ip-10-54-99-105.eu-central-1.compute.internal status is now: NodeNotReady
22m         Normal    MemoryPressure                node/ip-10-54-99-105.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    DiskPressure                  node/ip-10-54-99-105.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    PIDPressure                   node/ip-10-54-99-105.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
22m         Normal    Ready                         node/ip-10-54-99-105.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Warning   InstanceTerminating           node/ip-10-54-99-105.eu-central-1.compute.internal    Instance is terminating
21m         Normal    DeletingNode                  node/ip-10-54-99-105.eu-central-1.compute.internal    Deleting node ip-10-54-99-105.eu-central-1.compute.internal because it does not exist in the cloud provider
21m         Normal    RemovingNode                  node/ip-10-54-99-105.eu-central-1.compute.internal    Node ip-10-54-99-105.eu-central-1.compute.internal event: Removing Node ip-10-54-99-105.eu-central-1.compute.internal from Controller
17m         Normal    Starting                      node/ip-10-54-99-115.eu-central-1.compute.internal    Starting kubelet.
17m         Warning   InvalidDiskCapacity           node/ip-10-54-99-115.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
17m         Normal    NodeHasSufficientMemory       node/ip-10-54-99-115.eu-central-1.compute.internal    Node ip-10-54-99-115.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
17m         Normal    NodeHasNoDiskPressure         node/ip-10-54-99-115.eu-central-1.compute.internal    Node ip-10-54-99-115.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
17m         Normal    NodeHasSufficientPID          node/ip-10-54-99-115.eu-central-1.compute.internal    Node ip-10-54-99-115.eu-central-1.compute.internal status is now: NodeHasSufficientPID
17m         Normal    NodeAllocatableEnforced       node/ip-10-54-99-115.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
17m         Normal    Synced                        node/ip-10-54-99-115.eu-central-1.compute.internal    Node synced successfully
17m         Normal    DisruptionBlocked             node/ip-10-54-99-115.eu-central-1.compute.internal    Node isn't initialized
17m         Normal    RegisteredNode                node/ip-10-54-99-115.eu-central-1.compute.internal    Node ip-10-54-99-115.eu-central-1.compute.internal event: Registered Node ip-10-54-99-115.eu-central-1.compute.internal in Controller
17m         Normal    Starting                      node/ip-10-54-99-115.eu-central-1.compute.internal    
17m         Normal    ControllerVersionNotice       node/ip-10-54-99-115.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeReady                     node/ip-10-54-99-115.eu-central-1.compute.internal    Node ip-10-54-99-115.eu-central-1.compute.internal status is now: NodeReady
17m         Normal    Ready                         node/ip-10-54-99-115.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    NodeTrunkInitiated            node/ip-10-54-99-115.eu-central-1.compute.internal    The node has trunk interface initialized successfully
96s         Normal    Unconsolidatable              node/ip-10-54-99-115.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
14m         Normal    DisruptionBlocked             node/ip-10-54-99-115.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=proof-verification-srv/proof-verification-srv-pdb)
75m         Normal    Unconsolidatable              node/ip-10-54-99-119.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
85m         Normal    DisruptionBlocked             node/ip-10-54-99-119.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29310405-hl4cs)
70m         Normal    DisruptionBlocked             node/ip-10-54-99-119.eu-central-1.compute.internal    Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29310420-mt4z4)
66m         Normal    DisruptionBlocked             node/ip-10-54-99-119.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=signup-service-app/signup-service-app-pdb)
66m         Normal    SpotRebalanceRecommendation   node/ip-10-54-99-119.eu-central-1.compute.internal    Spot rebalance recommendation was triggered
66m         Warning   SpotInterrupted               node/ip-10-54-99-119.eu-central-1.compute.internal    Spot interruption warning was triggered
66m         Warning   TerminatingOnInterruption     node/ip-10-54-99-119.eu-central-1.compute.internal    Interruption triggered termination for the Node
66m         Warning   FailedDraining                node/ip-10-54-99-119.eu-central-1.compute.internal    Failed to drain node, 7 pods are waiting to be evicted
65m         Warning   InstanceTerminating           node/ip-10-54-99-119.eu-central-1.compute.internal    Instance is terminating
64m         Normal    NodeNotReady                  node/ip-10-54-99-119.eu-central-1.compute.internal    Node ip-10-54-99-119.eu-central-1.compute.internal status is now: NodeNotReady
64m         Normal    MemoryPressure                node/ip-10-54-99-119.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
64m         Normal    DiskPressure                  node/ip-10-54-99-119.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
64m         Normal    PIDPressure                   node/ip-10-54-99-119.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
64m         Normal    Ready                         node/ip-10-54-99-119.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
64m         Normal    DisruptionBlocked             node/ip-10-54-99-119.eu-central-1.compute.internal    Node is deleting or marked for deletion
64m         Normal    RemovingNode                  node/ip-10-54-99-119.eu-central-1.compute.internal    Node ip-10-54-99-119.eu-central-1.compute.internal event: Removing Node ip-10-54-99-119.eu-central-1.compute.internal from Controller
30m         Normal    Unconsolidatable              node/ip-10-54-99-125.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
67m         Normal    DisruptionBlocked             node/ip-10-54-99-125.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=signup-service/signup-service-worker-pdb)
28m         Normal    RegisteredNode                node/ip-10-54-99-125.eu-central-1.compute.internal    Node ip-10-54-99-125.eu-central-1.compute.internal event: Registered Node ip-10-54-99-125.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-125.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-99-125.eu-central-1.compute.internal    The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-54-99-125.eu-central-1.compute.internal    Node is nominated for a pending pod
23m         Normal    DisruptionBlocked             node/ip-10-54-99-125.eu-central-1.compute.internal    Not all pods would schedule, orb-monitoring-service/orb-monitoring-service-worker-8dbfb957f-wkdt6 => would schedule against uninitialized nodeclaim/main-amd64-n646f, node/ip-10-54-101-214.eu-central-1.compute.internal
21m         Normal    Unconsolidatable              node/ip-10-54-99-125.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
17m         Normal    DisruptionBlocked             node/ip-10-54-99-125.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=signup-service-app/signup-service-app-pdb)
15m         Normal    DisruptionBlocked             node/ip-10-54-99-125.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-monitoring-server/orb-fleet-backend-monitoring-server-pdb)
13m         Normal    DisruptionBlocked             node/ip-10-54-99-125.eu-central-1.compute.internal    Node is deleting or marked for deletion
12m         Normal    DisruptionTerminating         node/ip-10-54-99-125.eu-central-1.compute.internal    Disrupting Node: Drifted/Replace
12m         Warning   FailedDraining                node/ip-10-54-99-125.eu-central-1.compute.internal    Failed to drain node, 6 pods are waiting to be evicted
11m         Warning   InstanceTerminating           node/ip-10-54-99-125.eu-central-1.compute.internal    Instance is terminating
11m         Normal    RemovingNode                  node/ip-10-54-99-125.eu-central-1.compute.internal    Node ip-10-54-99-125.eu-central-1.compute.internal event: Removing Node ip-10-54-99-125.eu-central-1.compute.internal from Controller
36m         Normal    Unconsolidatable              node/ip-10-54-99-126.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
66m         Normal    DisruptionBlocked             node/ip-10-54-99-126.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=signup-service-app/signup-service-app-pdb)
28m         Normal    RegisteredNode                node/ip-10-54-99-126.eu-central-1.compute.internal    Node ip-10-54-99-126.eu-central-1.compute.internal event: Registered Node ip-10-54-99-126.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-126.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-99-126.eu-central-1.compute.internal    The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked             node/ip-10-54-99-126.eu-central-1.compute.internal    Node is deleting or marked for deletion
24m         Normal    DisruptionTerminating         node/ip-10-54-99-126.eu-central-1.compute.internal    Disrupting Node: Drifted/Replace
24m         Warning   FailedDraining                node/ip-10-54-99-126.eu-central-1.compute.internal    Failed to drain node, 4 pods are waiting to be evicted
24m         Normal    SpotRebalanceRecommendation   node/ip-10-54-99-126.eu-central-1.compute.internal    Spot rebalance recommendation was triggered
23m         Warning   InstanceTerminating           node/ip-10-54-99-126.eu-central-1.compute.internal    Instance is terminating
23m         Normal    RemovingNode                  node/ip-10-54-99-126.eu-central-1.compute.internal    Node ip-10-54-99-126.eu-central-1.compute.internal event: Removing Node ip-10-54-99-126.eu-central-1.compute.internal from Controller
34m         Normal    Unconsolidatable              node/ip-10-54-99-128.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-99-128.eu-central-1.compute.internal    Node ip-10-54-99-128.eu-central-1.compute.internal event: Registered Node ip-10-54-99-128.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-128.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-99-128.eu-central-1.compute.internal    The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked             node/ip-10-54-99-128.eu-central-1.compute.internal    Not all pods would schedule, orb-monitoring-service/orb-monitoring-service-worker-8dbfb957f-8bxvl => would schedule against uninitialized nodeclaim/main-amd64-n646f pcp-backfill-service/pcp-backfill-service-84578cfd87-rmnjq => would schedule against uninitialized nodeclaim/main-amd64-n646f
21m         Normal    Unconsolidatable              node/ip-10-54-99-128.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
21m         Normal    DisruptionBlocked             node/ip-10-54-99-128.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=app-authentication-service-external/app-authentication-service-external-pdb)
19m         Normal    DisruptionTerminating         node/ip-10-54-99-128.eu-central-1.compute.internal    Disrupting Node: Drifted/Replace
19m         Warning   FailedDraining                node/ip-10-54-99-128.eu-central-1.compute.internal    Failed to drain node, 6 pods are waiting to be evicted
19m         Normal    DisruptionBlocked             node/ip-10-54-99-128.eu-central-1.compute.internal    Node is deleting or marked for deletion
18m         Warning   InstanceTerminating           node/ip-10-54-99-128.eu-central-1.compute.internal    Instance is terminating
17m         Normal    NodeNotReady                  node/ip-10-54-99-128.eu-central-1.compute.internal    Node ip-10-54-99-128.eu-central-1.compute.internal status is now: NodeNotReady
17m         Normal    MemoryPressure                node/ip-10-54-99-128.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure                  node/ip-10-54-99-128.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure                   node/ip-10-54-99-128.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                         node/ip-10-54-99-128.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    RemovingNode                  node/ip-10-54-99-128.eu-central-1.compute.internal    Node ip-10-54-99-128.eu-central-1.compute.internal event: Removing Node ip-10-54-99-128.eu-central-1.compute.internal from Controller
34m         Normal    Unconsolidatable              node/ip-10-54-99-133.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
25m         Normal    DisruptionBlocked             node/ip-10-54-99-133.eu-central-1.compute.internal    (combined from similar events): Node is nominated for a pending pod
28m         Normal    RegisteredNode                node/ip-10-54-99-133.eu-central-1.compute.internal    Node ip-10-54-99-133.eu-central-1.compute.internal event: Registered Node ip-10-54-99-133.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-133.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-99-133.eu-central-1.compute.internal    The node has trunk interface initialized successfully
21m         Normal    Unconsolidatable              node/ip-10-54-99-133.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
21m         Normal    DisruptionBlocked             node/ip-10-54-99-133.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-event-server/orb-fleet-backend-event-server-pdb)
15m         Normal    DisruptionBlocked             node/ip-10-54-99-133.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-internal/orb-fleet-backend-internal-pdb)
13m         Normal    DisruptionBlocked             node/ip-10-54-99-133.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-job-server/orb-fleet-backend-job-server-pdb)
11m         Normal    DisruptionTerminating         node/ip-10-54-99-133.eu-central-1.compute.internal    Disrupting Node: Drifted/Replace
11m         Warning   FailedDraining                node/ip-10-54-99-133.eu-central-1.compute.internal    Failed to drain node, 12 pods are waiting to be evicted
9m30s       Normal    DisruptionBlocked             node/ip-10-54-99-133.eu-central-1.compute.internal    Node is deleting or marked for deletion
10m         Warning   InstanceTerminating           node/ip-10-54-99-133.eu-central-1.compute.internal    Instance is terminating
9m35s       Normal    NodeNotReady                  node/ip-10-54-99-133.eu-central-1.compute.internal    Node ip-10-54-99-133.eu-central-1.compute.internal status is now: NodeNotReady
9m35s       Normal    MemoryPressure                node/ip-10-54-99-133.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m35s       Normal    DiskPressure                  node/ip-10-54-99-133.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m35s       Normal    PIDPressure                   node/ip-10-54-99-133.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m35s       Normal    Ready                         node/ip-10-54-99-133.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
9m5s        Normal    RemovingNode                  node/ip-10-54-99-133.eu-central-1.compute.internal    Node ip-10-54-99-133.eu-central-1.compute.internal event: Removing Node ip-10-54-99-133.eu-central-1.compute.internal from Controller
18m         Normal    Starting                      node/ip-10-54-99-147.eu-central-1.compute.internal    Starting kubelet.
18m         Warning   InvalidDiskCapacity           node/ip-10-54-99-147.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
18m         Normal    NodeHasSufficientMemory       node/ip-10-54-99-147.eu-central-1.compute.internal    Node ip-10-54-99-147.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
18m         Normal    NodeHasNoDiskPressure         node/ip-10-54-99-147.eu-central-1.compute.internal    Node ip-10-54-99-147.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
18m         Normal    NodeHasSufficientPID          node/ip-10-54-99-147.eu-central-1.compute.internal    Node ip-10-54-99-147.eu-central-1.compute.internal status is now: NodeHasSufficientPID
18m         Normal    NodeAllocatableEnforced       node/ip-10-54-99-147.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
18m         Normal    Synced                        node/ip-10-54-99-147.eu-central-1.compute.internal    Node synced successfully
18m         Normal    RegisteredNode                node/ip-10-54-99-147.eu-central-1.compute.internal    Node ip-10-54-99-147.eu-central-1.compute.internal event: Registered Node ip-10-54-99-147.eu-central-1.compute.internal in Controller
18m         Normal    Starting                      node/ip-10-54-99-147.eu-central-1.compute.internal    
18m         Normal    DisruptionBlocked             node/ip-10-54-99-147.eu-central-1.compute.internal    Node isn't initialized
18m         Normal    ControllerVersionNotice       node/ip-10-54-99-147.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
17m         Normal    NodeReady                     node/ip-10-54-99-147.eu-central-1.compute.internal    Node ip-10-54-99-147.eu-central-1.compute.internal status is now: NodeReady
17m         Normal    Ready                         node/ip-10-54-99-147.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    NodeTrunkInitiated            node/ip-10-54-99-147.eu-central-1.compute.internal    The node has trunk interface initialized successfully
96s         Normal    Unconsolidatable              node/ip-10-54-99-147.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
16m         Normal    DisruptionBlocked             node/ip-10-54-99-147.eu-central-1.compute.internal    Node is nominated for a pending pod
14m         Normal    DisruptionBlocked             node/ip-10-54-99-147.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=proof-verification-srv/proof-verification-srv-pdb)
16m         Normal    Starting                      node/ip-10-54-99-149.eu-central-1.compute.internal    Starting kubelet.
16m         Warning   InvalidDiskCapacity           node/ip-10-54-99-149.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
16m         Normal    NodeHasSufficientMemory       node/ip-10-54-99-149.eu-central-1.compute.internal    Node ip-10-54-99-149.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
16m         Normal    NodeHasNoDiskPressure         node/ip-10-54-99-149.eu-central-1.compute.internal    Node ip-10-54-99-149.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
16m         Normal    NodeHasSufficientPID          node/ip-10-54-99-149.eu-central-1.compute.internal    Node ip-10-54-99-149.eu-central-1.compute.internal status is now: NodeHasSufficientPID
16m         Normal    NodeAllocatableEnforced       node/ip-10-54-99-149.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
16m         Normal    Synced                        node/ip-10-54-99-149.eu-central-1.compute.internal    Node synced successfully
16m         Normal    DisruptionBlocked             node/ip-10-54-99-149.eu-central-1.compute.internal    Node isn't initialized
16m         Normal    RegisteredNode                node/ip-10-54-99-149.eu-central-1.compute.internal    Node ip-10-54-99-149.eu-central-1.compute.internal event: Registered Node ip-10-54-99-149.eu-central-1.compute.internal in Controller
16m         Normal    Starting                      node/ip-10-54-99-149.eu-central-1.compute.internal    
15m         Normal    ControllerVersionNotice       node/ip-10-54-99-149.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
15m         Normal    NodeReady                     node/ip-10-54-99-149.eu-central-1.compute.internal    Node ip-10-54-99-149.eu-central-1.compute.internal status is now: NodeReady
15m         Normal    Ready                         node/ip-10-54-99-149.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
15m         Normal    NodeTrunkInitiated            node/ip-10-54-99-149.eu-central-1.compute.internal    The node has trunk interface initialized successfully
23s         Normal    Unconsolidatable              node/ip-10-54-99-149.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
14m         Normal    DisruptionBlocked             node/ip-10-54-99-149.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=proof-verification-srv/proof-verification-srv-pdb)
37m         Normal    Unconsolidatable              node/ip-10-54-99-152.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-99-152.eu-central-1.compute.internal    Node ip-10-54-99-152.eu-central-1.compute.internal event: Registered Node ip-10-54-99-152.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-152.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-99-152.eu-central-1.compute.internal    The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-54-99-152.eu-central-1.compute.internal    Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-9jxnc => would schedule against uninitialized nodeclaim/main-arm64-vcdhb
22m         Normal    DisruptionBlocked             node/ip-10-54-99-152.eu-central-1.compute.internal    Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-9jxnc => would schedule against uninitialized nodeclaim/main-arm64-kppgb, node/ip-10-54-101-18.eu-central-1.compute.internal
18m         Normal    DisruptionBlocked             node/ip-10-54-99-152.eu-central-1.compute.internal    Node is deleting or marked for deletion
21m         Normal    Unconsolidatable              node/ip-10-54-99-152.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
19m         Normal    DisruptionTerminating         node/ip-10-54-99-152.eu-central-1.compute.internal    Disrupting Node: Drifted/Replace
19m         Warning   FailedDraining                node/ip-10-54-99-152.eu-central-1.compute.internal    Failed to drain node, 5 pods are waiting to be evicted
18m         Warning   InstanceTerminating           node/ip-10-54-99-152.eu-central-1.compute.internal    Instance is terminating
17m         Normal    NodeNotReady                  node/ip-10-54-99-152.eu-central-1.compute.internal    Node ip-10-54-99-152.eu-central-1.compute.internal status is now: NodeNotReady
17m         Normal    MemoryPressure                node/ip-10-54-99-152.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DiskPressure                  node/ip-10-54-99-152.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    PIDPressure                   node/ip-10-54-99-152.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    Ready                         node/ip-10-54-99-152.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
17m         Normal    DeletingNode                  node/ip-10-54-99-152.eu-central-1.compute.internal    Deleting node ip-10-54-99-152.eu-central-1.compute.internal because it does not exist in the cloud provider
17m         Warning   DeletingNodeFailed            node/ip-10-54-99-152.eu-central-1.compute.internal    Failed deleting node ip-10-54-99-152.eu-central-1.compute.internal: nodes "ip-10-54-99-152.eu-central-1.compute.internal" not found
17m         Normal    RemovingNode                  node/ip-10-54-99-152.eu-central-1.compute.internal    Node ip-10-54-99-152.eu-central-1.compute.internal event: Removing Node ip-10-54-99-152.eu-central-1.compute.internal from Controller
34m         Normal    Unconsolidatable              node/ip-10-54-99-166.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-99-166.eu-central-1.compute.internal    Node ip-10-54-99-166.eu-central-1.compute.internal event: Registered Node ip-10-54-99-166.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-166.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-99-166.eu-central-1.compute.internal    The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked             node/ip-10-54-99-166.eu-central-1.compute.internal    Not all pods would schedule, orb-monitoring-service/orb-monitoring-service-worker-8dbfb957f-nzl75 => would schedule against uninitialized nodeclaim/main-amd64-n646f
21m         Normal    Unconsolidatable              node/ip-10-54-99-166.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
21m         Normal    DisruptionBlocked             node/ip-10-54-99-166.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=orb-fleet-backend-event-server/orb-fleet-backend-event-server-pdb)
16m         Normal    DisruptionBlocked             node/ip-10-54-99-166.eu-central-1.compute.internal    Node is deleting or marked for deletion
17m         Normal    DisruptionTerminating         node/ip-10-54-99-166.eu-central-1.compute.internal    Disrupting Node: Drifted/Replace
17m         Warning   FailedDraining                node/ip-10-54-99-166.eu-central-1.compute.internal    Failed to drain node, 9 pods are waiting to be evicted
16m         Warning   InstanceTerminating           node/ip-10-54-99-166.eu-central-1.compute.internal    Instance is terminating
16m         Normal    RemovingNode                  node/ip-10-54-99-166.eu-central-1.compute.internal    Node ip-10-54-99-166.eu-central-1.compute.internal event: Removing Node ip-10-54-99-166.eu-central-1.compute.internal from Controller
21m         Normal    Starting                      node/ip-10-54-99-177.eu-central-1.compute.internal    Starting kubelet.
21m         Warning   InvalidDiskCapacity           node/ip-10-54-99-177.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
21m         Normal    NodeHasSufficientMemory       node/ip-10-54-99-177.eu-central-1.compute.internal    Node ip-10-54-99-177.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
21m         Normal    NodeHasNoDiskPressure         node/ip-10-54-99-177.eu-central-1.compute.internal    Node ip-10-54-99-177.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
21m         Normal    NodeHasSufficientPID          node/ip-10-54-99-177.eu-central-1.compute.internal    Node ip-10-54-99-177.eu-central-1.compute.internal status is now: NodeHasSufficientPID
21m         Normal    NodeAllocatableEnforced       node/ip-10-54-99-177.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
21m         Normal    Synced                        node/ip-10-54-99-177.eu-central-1.compute.internal    Node synced successfully
21m         Normal    DisruptionBlocked             node/ip-10-54-99-177.eu-central-1.compute.internal    Node isn't initialized
21m         Normal    RegisteredNode                node/ip-10-54-99-177.eu-central-1.compute.internal    Node ip-10-54-99-177.eu-central-1.compute.internal event: Registered Node ip-10-54-99-177.eu-central-1.compute.internal in Controller
20m         Normal    Starting                      node/ip-10-54-99-177.eu-central-1.compute.internal    
20m         Normal    ControllerVersionNotice       node/ip-10-54-99-177.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
20m         Normal    NodeReady                     node/ip-10-54-99-177.eu-central-1.compute.internal    Node ip-10-54-99-177.eu-central-1.compute.internal status is now: NodeReady
20m         Normal    Ready                         node/ip-10-54-99-177.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
20m         Normal    NodeTrunkInitiated            node/ip-10-54-99-177.eu-central-1.compute.internal    The node has trunk interface initialized successfully
5m33s       Normal    Unconsolidatable              node/ip-10-54-99-177.eu-central-1.compute.internal    NodePool "main-arm64" has non-empty consolidation disabled
15m         Normal    DisruptionBlocked             node/ip-10-54-99-177.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=data-ingestion-service/data-ingestion-service-pdb)
13m         Normal    DisruptionBlocked             node/ip-10-54-99-177.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=proof-verification-srv/proof-verification-srv-pdb)
34m         Normal    Unconsolidatable              node/ip-10-54-99-205.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-99-205.eu-central-1.compute.internal    Node ip-10-54-99-205.eu-central-1.compute.internal event: Registered Node ip-10-54-99-205.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-205.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-99-205.eu-central-1.compute.internal    The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked             node/ip-10-54-99-205.eu-central-1.compute.internal    Not all pods would schedule, orb-monitoring-service/orb-monitoring-service-worker-8dbfb957f-mmc8z => would schedule against uninitialized nodeclaim/main-amd64-n646f
20m         Normal    DisruptionBlocked             node/ip-10-54-99-205.eu-central-1.compute.internal    Node is deleting or marked for deletion
21m         Normal    DisruptionTerminating         node/ip-10-54-99-205.eu-central-1.compute.internal    Disrupting Node: Drifted/Replace
21m         Warning   FailedDraining                node/ip-10-54-99-205.eu-central-1.compute.internal    Failed to drain node, 4 pods are waiting to be evicted
20m         Warning   InstanceTerminating           node/ip-10-54-99-205.eu-central-1.compute.internal    Instance is terminating
19m         Normal    RemovingNode                  node/ip-10-54-99-205.eu-central-1.compute.internal    Node ip-10-54-99-205.eu-central-1.compute.internal event: Removing Node ip-10-54-99-205.eu-central-1.compute.internal from Controller
38m         Normal    Unconsolidatable              node/ip-10-54-99-21.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-99-21.eu-central-1.compute.internal     Node ip-10-54-99-21.eu-central-1.compute.internal event: Registered Node ip-10-54-99-21.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-21.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-99-21.eu-central-1.compute.internal     The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked             node/ip-10-54-99-21.eu-central-1.compute.internal     Node is deleting or marked for deletion
24m         Normal    DisruptionTerminating         node/ip-10-54-99-21.eu-central-1.compute.internal     Disrupting Node: Drifted/Replace
24m         Warning   FailedDraining                node/ip-10-54-99-21.eu-central-1.compute.internal     Failed to drain node, 5 pods are waiting to be evicted
23m         Warning   InstanceTerminating           node/ip-10-54-99-21.eu-central-1.compute.internal     Instance is terminating
22m         Normal    NodeNotReady                  node/ip-10-54-99-21.eu-central-1.compute.internal     Node ip-10-54-99-21.eu-central-1.compute.internal status is now: NodeNotReady
22m         Normal    DeletingNode                  node/ip-10-54-99-21.eu-central-1.compute.internal     Deleting node ip-10-54-99-21.eu-central-1.compute.internal because it does not exist in the cloud provider
22m         Normal    RemovingNode                  node/ip-10-54-99-21.eu-central-1.compute.internal     Node ip-10-54-99-21.eu-central-1.compute.internal event: Removing Node ip-10-54-99-21.eu-central-1.compute.internal from Controller
33m         Normal    Unconsolidatable              node/ip-10-54-99-210.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-99-210.eu-central-1.compute.internal    Node ip-10-54-99-210.eu-central-1.compute.internal event: Registered Node ip-10-54-99-210.eu-central-1.compute.internal in Controller
27m         Normal    DisruptionBlocked             node/ip-10-54-99-210.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=kube-system/coredns)
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-210.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-99-210.eu-central-1.compute.internal    The node has trunk interface initialized successfully
23m         Normal    DisruptionBlocked             node/ip-10-54-99-210.eu-central-1.compute.internal    Not all pods would schedule, orb-monitoring-service/orb-monitoring-service-worker-8dbfb957f-7hjks => would schedule against uninitialized nodeclaim/main-amd64-n646f
21m         Normal    Unconsolidatable              node/ip-10-54-99-210.eu-central-1.compute.internal    NodePool "main-amd64" has non-empty consolidation disabled
19m         Normal    DisruptionBlocked             node/ip-10-54-99-210.eu-central-1.compute.internal    Pdb prevents pod evictions (PodDisruptionBudget=app-authentication-service-external/app-authentication-service-external-pdb)
14m         Normal    DisruptionBlocked             node/ip-10-54-99-210.eu-central-1.compute.internal    Node is deleting or marked for deletion
15m         Normal    DisruptionTerminating         node/ip-10-54-99-210.eu-central-1.compute.internal    Disrupting Node: Drifted/Replace
15m         Warning   FailedDraining                node/ip-10-54-99-210.eu-central-1.compute.internal    Failed to drain node, 6 pods are waiting to be evicted
14m         Warning   InstanceTerminating           node/ip-10-54-99-210.eu-central-1.compute.internal    Instance is terminating
13m         Normal    NodeNotReady                  node/ip-10-54-99-210.eu-central-1.compute.internal    Node ip-10-54-99-210.eu-central-1.compute.internal status is now: NodeNotReady
13m         Normal    MemoryPressure                node/ip-10-54-99-210.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DiskPressure                  node/ip-10-54-99-210.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    PIDPressure                   node/ip-10-54-99-210.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    Ready                         node/ip-10-54-99-210.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    RemovingNode                  node/ip-10-54-99-210.eu-central-1.compute.internal    Node ip-10-54-99-210.eu-central-1.compute.internal event: Removing Node ip-10-54-99-210.eu-central-1.compute.internal from Controller
20m         Normal    Starting                      node/ip-10-54-99-22.eu-central-1.compute.internal     Starting kubelet.
20m         Warning   InvalidDiskCapacity           node/ip-10-54-99-22.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
20m         Normal    NodeHasSufficientMemory       node/ip-10-54-99-22.eu-central-1.compute.internal     Node ip-10-54-99-22.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
20m         Normal    NodeHasNoDiskPressure         node/ip-10-54-99-22.eu-central-1.compute.internal     Node ip-10-54-99-22.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
20m         Normal    NodeHasSufficientPID          node/ip-10-54-99-22.eu-central-1.compute.internal     Node ip-10-54-99-22.eu-central-1.compute.internal status is now: NodeHasSufficientPID
20m         Normal    NodeAllocatableEnforced       node/ip-10-54-99-22.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
19m         Normal    Synced                        node/ip-10-54-99-22.eu-central-1.compute.internal     Node synced successfully
19m         Normal    RegisteredNode                node/ip-10-54-99-22.eu-central-1.compute.internal     Node ip-10-54-99-22.eu-central-1.compute.internal event: Registered Node ip-10-54-99-22.eu-central-1.compute.internal in Controller
19m         Normal    DisruptionBlocked             node/ip-10-54-99-22.eu-central-1.compute.internal     Node isn't initialized
19m         Normal    Starting                      node/ip-10-54-99-22.eu-central-1.compute.internal     
19m         Normal    ControllerVersionNotice       node/ip-10-54-99-22.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
19m         Normal    NodeReady                     node/ip-10-54-99-22.eu-central-1.compute.internal     Node ip-10-54-99-22.eu-central-1.compute.internal status is now: NodeReady
19m         Normal    Ready                         node/ip-10-54-99-22.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    NodeTrunkInitiated            node/ip-10-54-99-22.eu-central-1.compute.internal     The node has trunk interface initialized successfully
4m10s       Normal    Unconsolidatable              node/ip-10-54-99-22.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
17m         Normal    DisruptionBlocked             node/ip-10-54-99-22.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=data-ingestion-service/data-ingestion-service-pdb)
13m         Normal    DisruptionBlocked             node/ip-10-54-99-22.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=proof-verification-srv/proof-verification-srv-pdb)
27m         Normal    Starting                      node/ip-10-54-99-223.eu-central-1.compute.internal    Starting kubelet.
27m         Warning   InvalidDiskCapacity           node/ip-10-54-99-223.eu-central-1.compute.internal    invalid capacity 0 on image filesystem
27m         Normal    NodeHasSufficientMemory       node/ip-10-54-99-223.eu-central-1.compute.internal    Node ip-10-54-99-223.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
27m         Normal    NodeHasNoDiskPressure         node/ip-10-54-99-223.eu-central-1.compute.internal    Node ip-10-54-99-223.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
27m         Normal    NodeHasSufficientPID          node/ip-10-54-99-223.eu-central-1.compute.internal    Node ip-10-54-99-223.eu-central-1.compute.internal status is now: NodeHasSufficientPID
27m         Normal    NodeAllocatableEnforced       node/ip-10-54-99-223.eu-central-1.compute.internal    Updated Node Allocatable limit across pods
27m         Normal    RegisteredNode                node/ip-10-54-99-223.eu-central-1.compute.internal    Node ip-10-54-99-223.eu-central-1.compute.internal event: Registered Node ip-10-54-99-223.eu-central-1.compute.internal in Controller
26m         Normal    Starting                      node/ip-10-54-99-223.eu-central-1.compute.internal    
26m         Normal    Synced                        node/ip-10-54-99-223.eu-central-1.compute.internal    Node synced successfully
26m         Normal    ControllerVersionNotice       node/ip-10-54-99-223.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
15m         Warning   Unsupported                   node/ip-10-54-99-223.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    NodeReady                     node/ip-10-54-99-223.eu-central-1.compute.internal    Node ip-10-54-99-223.eu-central-1.compute.internal status is now: NodeReady
26m         Normal    Ready                         node/ip-10-54-99-223.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
17m         Normal    NodeNotSchedulable            node/ip-10-54-99-223.eu-central-1.compute.internal    Node ip-10-54-99-223.eu-central-1.compute.internal status is now: NodeNotSchedulable
15m         Normal    NodeNotReady                  node/ip-10-54-99-223.eu-central-1.compute.internal    Node ip-10-54-99-223.eu-central-1.compute.internal status is now: NodeNotReady
15m         Normal    MemoryPressure                node/ip-10-54-99-223.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DiskPressure                  node/ip-10-54-99-223.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    PIDPressure                   node/ip-10-54-99-223.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    Ready                         node/ip-10-54-99-223.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
15m         Normal    DeletingNode                  node/ip-10-54-99-223.eu-central-1.compute.internal    Deleting node ip-10-54-99-223.eu-central-1.compute.internal because it does not exist in the cloud provider
15m         Normal    RemovingNode                  node/ip-10-54-99-223.eu-central-1.compute.internal    Node ip-10-54-99-223.eu-central-1.compute.internal event: Removing Node ip-10-54-99-223.eu-central-1.compute.internal from Controller
28m         Warning   Unsupported                   node/ip-10-54-99-244.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
28m         Normal    RegisteredNode                node/ip-10-54-99-244.eu-central-1.compute.internal    Node ip-10-54-99-244.eu-central-1.compute.internal event: Registered Node ip-10-54-99-244.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-244.eu-central-1.compute.internal    The node is managed by VPC resource controller version v1.7.11
19m         Warning   Unsupported                   node/ip-10-54-99-244.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
26m         Normal    NodeNotSchedulable            node/ip-10-54-99-244.eu-central-1.compute.internal    Node ip-10-54-99-244.eu-central-1.compute.internal status is now: NodeNotSchedulable
19m         Normal    NodeNotReady                  node/ip-10-54-99-244.eu-central-1.compute.internal    Node ip-10-54-99-244.eu-central-1.compute.internal status is now: NodeNotReady
19m         Normal    MemoryPressure                node/ip-10-54-99-244.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DiskPressure                  node/ip-10-54-99-244.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    PIDPressure                   node/ip-10-54-99-244.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    Ready                         node/ip-10-54-99-244.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
19m         Normal    DeletingNode                  node/ip-10-54-99-244.eu-central-1.compute.internal    Deleting node ip-10-54-99-244.eu-central-1.compute.internal because it does not exist in the cloud provider
19m         Normal    RemovingNode                  node/ip-10-54-99-244.eu-central-1.compute.internal    Node ip-10-54-99-244.eu-central-1.compute.internal event: Removing Node ip-10-54-99-244.eu-central-1.compute.internal from Controller
61m         Normal    Starting                      node/ip-10-54-99-34.eu-central-1.compute.internal     Starting kubelet.
61m         Warning   InvalidDiskCapacity           node/ip-10-54-99-34.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
61m         Normal    NodeHasSufficientMemory       node/ip-10-54-99-34.eu-central-1.compute.internal     Node ip-10-54-99-34.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
61m         Normal    NodeHasNoDiskPressure         node/ip-10-54-99-34.eu-central-1.compute.internal     Node ip-10-54-99-34.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
61m         Normal    NodeHasSufficientPID          node/ip-10-54-99-34.eu-central-1.compute.internal     Node ip-10-54-99-34.eu-central-1.compute.internal status is now: NodeHasSufficientPID
61m         Normal    NodeAllocatableEnforced       node/ip-10-54-99-34.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
61m         Normal    Synced                        node/ip-10-54-99-34.eu-central-1.compute.internal     Node synced successfully
61m         Normal    RegisteredNode                node/ip-10-54-99-34.eu-central-1.compute.internal     Node ip-10-54-99-34.eu-central-1.compute.internal event: Registered Node ip-10-54-99-34.eu-central-1.compute.internal in Controller
61m         Normal    DisruptionBlocked             node/ip-10-54-99-34.eu-central-1.compute.internal     Node isn't initialized
61m         Normal    Starting                      node/ip-10-54-99-34.eu-central-1.compute.internal     
61m         Normal    ControllerVersionNotice       node/ip-10-54-99-34.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.9
61m         Normal    NodeReady                     node/ip-10-54-99-34.eu-central-1.compute.internal     Node ip-10-54-99-34.eu-central-1.compute.internal status is now: NodeReady
61m         Normal    Ready                         node/ip-10-54-99-34.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
61m         Normal    NodeTrunkInitiated            node/ip-10-54-99-34.eu-central-1.compute.internal     The node has trunk interface initialized successfully
30m         Normal    Unconsolidatable              node/ip-10-54-99-34.eu-central-1.compute.internal     NodePool "main-amd64" has non-empty consolidation disabled
56m         Normal    DisruptionBlocked             node/ip-10-54-99-34.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
40m         Normal    DisruptionBlocked             node/ip-10-54-99-34.eu-central-1.compute.internal     Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=signup-integration-tests/signup-integration-tests-29310450-tq8tk)
28m         Normal    RegisteredNode                node/ip-10-54-99-34.eu-central-1.compute.internal     Node ip-10-54-99-34.eu-central-1.compute.internal event: Registered Node ip-10-54-99-34.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-34.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-99-34.eu-central-1.compute.internal     The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-54-99-34.eu-central-1.compute.internal     Node is nominated for a pending pod
23m         Normal    DisruptionBlocked             node/ip-10-54-99-34.eu-central-1.compute.internal     Node is deleting or marked for deletion
23m         Normal    DisruptionTerminating         node/ip-10-54-99-34.eu-central-1.compute.internal     Disrupting Node: Drifted/Replace
23m         Warning   FailedDraining                node/ip-10-54-99-34.eu-central-1.compute.internal     Failed to drain node, 5 pods are waiting to be evicted
22m         Warning   FailedDraining                node/ip-10-54-99-34.eu-central-1.compute.internal     Failed to drain node, 2 pods are waiting to be evicted
22m         Normal    DisruptionBlocked             node/ip-10-54-99-34.eu-central-1.compute.internal     Node is deleting or marked for deletion
22m         Warning   InstanceTerminating           node/ip-10-54-99-34.eu-central-1.compute.internal     Instance is terminating
21m         Normal    NodeNotReady                  node/ip-10-54-99-34.eu-central-1.compute.internal     Node ip-10-54-99-34.eu-central-1.compute.internal status is now: NodeNotReady
21m         Normal    MemoryPressure                node/ip-10-54-99-34.eu-central-1.compute.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    DiskPressure                  node/ip-10-54-99-34.eu-central-1.compute.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    PIDPressure                   node/ip-10-54-99-34.eu-central-1.compute.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
21m         Normal    Ready                         node/ip-10-54-99-34.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
20m         Normal    RemovingNode                  node/ip-10-54-99-34.eu-central-1.compute.internal     Node ip-10-54-99-34.eu-central-1.compute.internal event: Removing Node ip-10-54-99-34.eu-central-1.compute.internal from Controller
15m         Normal    Starting                      node/ip-10-54-99-37.eu-central-1.compute.internal     Starting kubelet.
15m         Warning   InvalidDiskCapacity           node/ip-10-54-99-37.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
15m         Normal    NodeHasSufficientMemory       node/ip-10-54-99-37.eu-central-1.compute.internal     Node ip-10-54-99-37.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
15m         Normal    NodeHasNoDiskPressure         node/ip-10-54-99-37.eu-central-1.compute.internal     Node ip-10-54-99-37.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
15m         Normal    NodeHasSufficientPID          node/ip-10-54-99-37.eu-central-1.compute.internal     Node ip-10-54-99-37.eu-central-1.compute.internal status is now: NodeHasSufficientPID
15m         Normal    NodeAllocatableEnforced       node/ip-10-54-99-37.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
15m         Normal    Synced                        node/ip-10-54-99-37.eu-central-1.compute.internal     Node synced successfully
15m         Normal    RegisteredNode                node/ip-10-54-99-37.eu-central-1.compute.internal     Node ip-10-54-99-37.eu-central-1.compute.internal event: Registered Node ip-10-54-99-37.eu-central-1.compute.internal in Controller
15m         Normal    DisruptionBlocked             node/ip-10-54-99-37.eu-central-1.compute.internal     Node isn't initialized
14m         Normal    Starting                      node/ip-10-54-99-37.eu-central-1.compute.internal     
14m         Normal    ControllerVersionNotice       node/ip-10-54-99-37.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
14m         Normal    NodeReady                     node/ip-10-54-99-37.eu-central-1.compute.internal     Node ip-10-54-99-37.eu-central-1.compute.internal status is now: NodeReady
14m         Normal    Ready                         node/ip-10-54-99-37.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
14m         Normal    NodeTrunkInitiated            node/ip-10-54-99-37.eu-central-1.compute.internal     The node has trunk interface initialized successfully
13m         Normal    Unconsolidatable              node/ip-10-54-99-37.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
12m         Normal    DisruptionBlocked             node/ip-10-54-99-37.eu-central-1.compute.internal     Node is nominated for a pending pod
31m         Normal    Unconsolidatable              node/ip-10-54-99-38.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-99-38.eu-central-1.compute.internal     Node ip-10-54-99-38.eu-central-1.compute.internal event: Registered Node ip-10-54-99-38.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-38.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-99-38.eu-central-1.compute.internal     The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-54-99-38.eu-central-1.compute.internal     Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-jwnhz => would schedule against uninitialized nodeclaim/main-arm64-vcdhb
22m         Normal    DisruptionBlocked             node/ip-10-54-99-38.eu-central-1.compute.internal     Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-jwnhz => would schedule against uninitialized nodeclaim/main-arm64-kppgb, node/ip-10-54-101-18.eu-central-1.compute.internal
21m         Normal    DisruptionBlocked             node/ip-10-54-99-38.eu-central-1.compute.internal     Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-jwnhz => would schedule against uninitialized nodeclaim/main-arm64-8rq2c
21m         Normal    Unconsolidatable              node/ip-10-54-99-38.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
19m         Normal    DisruptionBlocked             node/ip-10-54-99-38.eu-central-1.compute.internal     Not all pods would schedule, proof-verification-srv/proof-verification-srv-67454ff6c9-cl65w => would schedule against uninitialized nodeclaim/main-arm64-q949t, node/ip-10-54-99-22.eu-central-1.compute.internal orb-data-service-app-external/orb-data-service-app-external-647df76d94-jwnhz => would schedule against uninitialized nodeclaim/main-arm64-q949t, node/ip-10-54-99-22.eu-central-1.compute.internal
17m         Normal    DisruptionBlocked             node/ip-10-54-99-38.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=data-ingestion-service/data-ingestion-service-pdb)
15m         Normal    DisruptionBlocked             node/ip-10-54-99-38.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=proof-verification-srv/proof-verification-srv-pdb)
14m         Normal    DisruptionTerminating         node/ip-10-54-99-38.eu-central-1.compute.internal     Disrupting Node: Drifted/Replace
14m         Warning   FailedDraining                node/ip-10-54-99-38.eu-central-1.compute.internal     Failed to drain node, 4 pods are waiting to be evicted
13m         Warning   InstanceTerminating           node/ip-10-54-99-38.eu-central-1.compute.internal     Instance is terminating
13m         Normal    DisruptionBlocked             node/ip-10-54-99-38.eu-central-1.compute.internal     Node is deleting or marked for deletion
13m         Normal    NodeNotReady                  node/ip-10-54-99-38.eu-central-1.compute.internal     Node ip-10-54-99-38.eu-central-1.compute.internal status is now: NodeNotReady
13m         Normal    MemoryPressure                node/ip-10-54-99-38.eu-central-1.compute.internal     Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    DiskPressure                  node/ip-10-54-99-38.eu-central-1.compute.internal     Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    PIDPressure                   node/ip-10-54-99-38.eu-central-1.compute.internal     Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
13m         Normal    Ready                         node/ip-10-54-99-38.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
12m         Normal    RemovingNode                  node/ip-10-54-99-38.eu-central-1.compute.internal     Node ip-10-54-99-38.eu-central-1.compute.internal event: Removing Node ip-10-54-99-38.eu-central-1.compute.internal from Controller
34m         Normal    Unconsolidatable              node/ip-10-54-99-50.eu-central-1.compute.internal     NodePool "main-amd64" has non-empty consolidation disabled
24m         Normal    DisruptionBlocked             node/ip-10-54-99-50.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=signup-service-app/signup-service-app-pdb)
28m         Normal    RegisteredNode                node/ip-10-54-99-50.eu-central-1.compute.internal     Node ip-10-54-99-50.eu-central-1.compute.internal event: Registered Node ip-10-54-99-50.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-50.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-99-50.eu-central-1.compute.internal     The node has trunk interface initialized successfully
21m         Normal    DisruptionBlocked             node/ip-10-54-99-50.eu-central-1.compute.internal     Node is deleting or marked for deletion
21m         Normal    DisruptionTerminating         node/ip-10-54-99-50.eu-central-1.compute.internal     Disrupting Node: Drifted/Replace
21m         Warning   FailedDraining                node/ip-10-54-99-50.eu-central-1.compute.internal     Failed to drain node, 8 pods are waiting to be evicted
20m         Warning   InstanceTerminating           node/ip-10-54-99-50.eu-central-1.compute.internal     Instance is terminating
19m         Normal    RemovingNode                  node/ip-10-54-99-50.eu-central-1.compute.internal     Node ip-10-54-99-50.eu-central-1.compute.internal event: Removing Node ip-10-54-99-50.eu-central-1.compute.internal from Controller
24m         Normal    Starting                      node/ip-10-54-99-64.eu-central-1.compute.internal     Starting kubelet.
24m         Warning   InvalidDiskCapacity           node/ip-10-54-99-64.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
24m         Normal    NodeHasSufficientMemory       node/ip-10-54-99-64.eu-central-1.compute.internal     Node ip-10-54-99-64.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
24m         Normal    NodeHasNoDiskPressure         node/ip-10-54-99-64.eu-central-1.compute.internal     Node ip-10-54-99-64.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
24m         Normal    NodeHasSufficientPID          node/ip-10-54-99-64.eu-central-1.compute.internal     Node ip-10-54-99-64.eu-central-1.compute.internal status is now: NodeHasSufficientPID
24m         Normal    NodeAllocatableEnforced       node/ip-10-54-99-64.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
24m         Normal    Synced                        node/ip-10-54-99-64.eu-central-1.compute.internal     Node synced successfully
24m         Normal    RegisteredNode                node/ip-10-54-99-64.eu-central-1.compute.internal     Node ip-10-54-99-64.eu-central-1.compute.internal event: Registered Node ip-10-54-99-64.eu-central-1.compute.internal in Controller
24m         Normal    Starting                      node/ip-10-54-99-64.eu-central-1.compute.internal     
24m         Normal    DisruptionBlocked             node/ip-10-54-99-64.eu-central-1.compute.internal     Node isn't initialized
24m         Normal    ControllerVersionNotice       node/ip-10-54-99-64.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
24m         Normal    NodeReady                     node/ip-10-54-99-64.eu-central-1.compute.internal     Node ip-10-54-99-64.eu-central-1.compute.internal status is now: NodeReady
24m         Normal    Ready                         node/ip-10-54-99-64.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
24m         Normal    NodeTrunkInitiated            node/ip-10-54-99-64.eu-central-1.compute.internal     The node has trunk interface initialized successfully
23m         Normal    Unconsolidatable              node/ip-10-54-99-64.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
6m55s       Normal    Unconsolidatable              node/ip-10-54-99-64.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
13m         Normal    DisruptionBlocked             node/ip-10-54-99-64.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=proof-verification-srv/proof-verification-srv-pdb)
19m         Normal    Starting                      node/ip-10-54-99-70.eu-central-1.compute.internal     Starting kubelet.
19m         Warning   InvalidDiskCapacity           node/ip-10-54-99-70.eu-central-1.compute.internal     invalid capacity 0 on image filesystem
19m         Normal    NodeHasSufficientMemory       node/ip-10-54-99-70.eu-central-1.compute.internal     Node ip-10-54-99-70.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
19m         Normal    NodeHasNoDiskPressure         node/ip-10-54-99-70.eu-central-1.compute.internal     Node ip-10-54-99-70.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
19m         Normal    NodeHasSufficientPID          node/ip-10-54-99-70.eu-central-1.compute.internal     Node ip-10-54-99-70.eu-central-1.compute.internal status is now: NodeHasSufficientPID
19m         Normal    NodeAllocatableEnforced       node/ip-10-54-99-70.eu-central-1.compute.internal     Updated Node Allocatable limit across pods
19m         Normal    Synced                        node/ip-10-54-99-70.eu-central-1.compute.internal     Node synced successfully
19m         Normal    DisruptionBlocked             node/ip-10-54-99-70.eu-central-1.compute.internal     Node isn't initialized
19m         Normal    RegisteredNode                node/ip-10-54-99-70.eu-central-1.compute.internal     Node ip-10-54-99-70.eu-central-1.compute.internal event: Registered Node ip-10-54-99-70.eu-central-1.compute.internal in Controller
19m         Normal    Starting                      node/ip-10-54-99-70.eu-central-1.compute.internal     
19m         Normal    ControllerVersionNotice       node/ip-10-54-99-70.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
19m         Normal    NodeReady                     node/ip-10-54-99-70.eu-central-1.compute.internal     Node ip-10-54-99-70.eu-central-1.compute.internal status is now: NodeReady
19m         Normal    Ready                         node/ip-10-54-99-70.eu-central-1.compute.internal     Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
19m         Normal    NodeTrunkInitiated            node/ip-10-54-99-70.eu-central-1.compute.internal     The node has trunk interface initialized successfully
3m18s       Normal    Unconsolidatable              node/ip-10-54-99-70.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
14m         Normal    DisruptionBlocked             node/ip-10-54-99-70.eu-central-1.compute.internal     Pdb prevents pod evictions (PodDisruptionBudget=data-ingestion-service/data-ingestion-service-pdb)
26m         Normal    Unconsolidatable              node/ip-10-54-99-72.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
28m         Normal    RegisteredNode                node/ip-10-54-99-72.eu-central-1.compute.internal     Node ip-10-54-99-72.eu-central-1.compute.internal event: Registered Node ip-10-54-99-72.eu-central-1.compute.internal in Controller
27m         Normal    ControllerVersionNotice       node/ip-10-54-99-72.eu-central-1.compute.internal     The node is managed by VPC resource controller version v1.7.11
27m         Normal    NodeTrunkInitiated            node/ip-10-54-99-72.eu-central-1.compute.internal     The node has trunk interface initialized successfully
25m         Normal    DisruptionBlocked             node/ip-10-54-99-72.eu-central-1.compute.internal     Not all pods would schedule, proof-verification-srv/proof-verification-srv-67454ff6c9-96j99 => would schedule against uninitialized nodeclaim/main-arm64-vcdhb
22m         Normal    DisruptionBlocked             node/ip-10-54-99-72.eu-central-1.compute.internal     Not all pods would schedule, proof-verification-srv/proof-verification-srv-67454ff6c9-96j99 => would schedule against uninitialized nodeclaim/main-arm64-kppgb, node/ip-10-54-101-18.eu-central-1.compute.internal
22m         Normal    DisruptionBlocked             node/ip-10-54-99-72.eu-central-1.compute.internal     Not all pods would schedule, orb-data-service-app-external/orb-data-service-app-external-647df76d94-wh9bg => would schedule against uninitialized nodeclaim/main-arm64-8rq2c
21m         Normal    Unconsolidatable              node/ip-10-54-99-72.eu-central-1.compute.internal     NodePool "main-arm64" has non-empty consolidation disabled
19m         Normal    DisruptionBlocked             node/ip-10-54-99-72.eu-central-1.compute.internal     Not all pods would schedule, proof-verification-srv/proof-verification-srv-67454ff6c9-96j99 => would schedule against uninitialized nodeclaim/main-arm64-q949t, node/ip-10-54-99-22.eu-central-1.compute.internal
15m         Normal    DisruptionBlocked             node/ip-10-54-99-72.eu-central-1.compute.internal     Node is deleting or marked for deletion
17m         Normal    DisruptionTerminating         node/ip-10-54-99-72.eu-central-1.compute.internal     Disrupting Node: Drifted/Replace
17m         Warning   FailedDraining                node/ip-10-54-99-72.eu-central-1.compute.internal     Failed to drain node, 5 pods are waiting to be evicted
16m         Warning   InstanceTerminating           node/ip-10-54-99-72.eu-central-1.compute.internal     Instance is terminating
15m         Normal    RemovingNode                  node/ip-10-54-99-72.eu-central-1.compute.internal     Node ip-10-54-99-72.eu-central-1.compute.internal event: Removing Node ip-10-54-99-72.eu-central-1.compute.internal from Controller
```

Pods with issues
```
kyverno                               kyverno-reports-controller-7c49c78b7b-ftft7                       0/1     CrashLoopBackOff   8 (3m4s ago)   21m
```

PodDisruptionBudgets
```
NAMESPACE                             NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
app-authentication-service-external   app-authentication-service-external-pdb   N/A             1                 1                     63d
cluster-monitoring                    cluster-monitoring-pdb                    N/A             1                 1                     298d
data-ingestion-service                data-ingestion-service-pdb                N/A             1                 1                     281d
karpenter                             karpenter                                 N/A             1                 1                     2y18d
kube-system                           coredns                                   N/A             1                 1                     624d
kube-system                           ebs-csi-controller                        N/A             1                 1                     2y23d
kyverno                               kyverno-admission-controller              1               N/A               2                     606d
orb-fleet-backend-docs-server         orb-fleet-backend-docs-server-pdb         N/A             1                 1                     157d
orb-fleet-backend-event-server        orb-fleet-backend-event-server-pdb        N/A             1                 1                     186d
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     304d
orb-fleet-backend-internal            orb-fleet-backend-internal-pdb            N/A             1                 1                     290d
orb-fleet-backend-job-server          orb-fleet-backend-job-server-pdb          N/A             1                 1                     215d
orb-fleet-backend-monitoring-server   orb-fleet-backend-monitoring-server-pdb   N/A             1                 1                     215d
orb-relay-service-canary              orb-relay-service-canary-pdb              N/A             1                 1                     278d
orb-relay-service-orb                 orb-relay-service-orb-pdb                 N/A             1                 1                     279d
orb-relay-service-orb                 orb-relay-service-sqs-cleanup-pdb         N/A             1                 0                     278d
proof-verification-srv                proof-verification-srv-pdb                N/A             1                 1                     214d
signup-service-app                    signup-service-app-pdb                    N/A             1                 1                     81d
signup-service-processor              signup-service-processor-pdb              N/A             1                 1                     49d
signup-service                        signup-service-pdb                        N/A             1                 1                     81d
signup-service                        signup-service-worker-pdb                 N/A             1                 1                     81d
```

Pods with Karpenter.sh/Do-Not-Disrupt Annotation
```
ip-10-54-100-231.eu-central-1.compute.internal  signup-integration-tests-29310480-qfwr9                         (signup-integration-tests)
ip-10-54-100-231.eu-central-1.compute.internal  update-caae4766fa9272aac7f26d88c1a9ea3e96ce531f-29310485-9sd42  (pcp-backfill-service)
ip-10-54-100-231.eu-central-1.compute.internal  update-caae4766fa9272aac7f26d88c1a9ea3e96ce531f-29310490-76nrp  (pcp-backfill-service)
ip-10-54-100-255.eu-central-1.compute.internal  signup-integration-tests-29310480-5j998                         (signup-integration-tests)
```

Pods Tolerating karpenter.sh/disrupted
```
```

Static Pods
```
```

Cluster version up to date - no pluto apis detection rquired

Generated on: Tue Sep 23 14:10:23 CEST 2025
