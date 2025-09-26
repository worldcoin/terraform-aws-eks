# Cluster recon for tfh-internal-tools-infra,eu-central-1,terraform-enterprise-eu-central-1,tunnel-vpc-terraform-enterprise-eu-central-1

TFH EKS login...
```console
2025/09/19 14:48:45 INFO Logging into AWS
2025/09/19 14:48:45 INFO Token found and valid
2025/09/19 14:48:46 INFO Switch WARP Virtual Network to name=tunnel-vpc-terraform-enterprise-eu-central-1 id=fcbd426e-6a45-40db-8217-d912467742e4
2025/09/19 14:48:48 INFO Active WARP Virtual Network id=fcbd426e-6a45-40db-8217-d912467742e4
Updated context tfh-terraform-enterprise-eu-central-1 in /Users/lukasz.glowacki/.kube/config
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
            "id": "39d9d62e-28ff-4547-b9b7-9298c9f81978",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-19T06:34:31+02:00",
            "lastTransitionTime": "2024-12-20T10:29:24+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "d77437b4-ab01-4da4-aed0-05a26d75b3f9",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-19T06:34:21+02:00",
            "lastTransitionTime": "2024-12-20T10:29:24+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "90076741-18b0-4925-acb5-6118c0e2ca93",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-19T06:34:31+02:00",
            "lastTransitionTime": "2025-07-29T09:24:20+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "cbbbe798-d4ab-4b75-a126-f856ba4c0963",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-19T06:34:21+02:00",
            "lastTransitionTime": "2024-12-20T10:29:24+01:00",
            "description": "Checks for kubelet versions of worker nodes in the cluster to see if upgrade would cause non compliance with supported Kubernetes kubelet version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "Node kubelet versions match the cluster control plane version."
            }
        },
        {
            "id": "78ff27d3-cc87-4027-84d4-447f465afa0f",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-19T06:34:21+02:00",
            "lastTransitionTime": "2025-09-16T18:19:21+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        }
    ]
}
```

Show full cluster description:
```json
{
    "cluster": {
        "name": "terraform-enterprise-eu-central-1",
        "arn": "arn:aws:eks:eu-central-1:507152310572:cluster/terraform-enterprise-eu-central-1",
        "createdAt": "2024-05-08T13:27:38.390000+02:00",
        "version": "1.32",
        "endpoint": "https://EC133FAD8614E7648912C6F02BAE9443.gr7.eu-central-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::507152310572:role/eks-cluster-terraform-enterprise-eu-central-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-09d492121ba9f8cad",
                "subnet-0078b4e1e01f72cca",
                "subnet-0e6efaadfe94dcd4a"
            ],
            "securityGroupIds": [
                "sg-0aa15518a1ad976fc"
            ],
            "clusterSecurityGroupId": "sg-01e44e8a70318696d",
            "vpcId": "vpc-0e724f6f5da58eb9b",
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
                "issuer": "https://oidc.eks.eu-central-1.amazonaws.com/id/EC133FAD8614E7648912C6F02BAE9443"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJQ2ZoVk1TOXovczB3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TkRBMU1EZ3hNVEkzTWpCYUZ3MHpOREExTURZeE1UTXlNakJhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUM2RUZFTU1xSnFrSHRETUFqR3YwL21hRWhCb2lWZGs5SGc4NDFXUk1xUTFwdVcwVlpMMFZKNkorcmsKc21wYXVPelM0b29veG9uZXhiSitldmllN0VJSnB2clZGRDErK0hwLzBYME14ZFZWOHlDa1RZeSsrdThwYnhiNwp2eUh3cWxzaXNCQU5GT1FlTEgvNDB2UUFQT1gwcHNFL1doZmxmU3Z4eGd5QlhFRlJhMjNuRDNEMGN0d3N4NEhPCng3TGhlZkhiNGpaNUh2bEExWHFRd2o2YWNoQkFRS1ZJajhOY2g4S0xvRG5iSkQvV0w4dFUrMy95NEV1MFozRUwKdkE5N2hFMFdGNmh1ZVBETnFuc25IOTJjU2wvZjdKTjVQbThaSG1jZ1hTYVYwZDNvOTM5c0d2ZnNnYVptbEN0bQozbzNIUE56SzV3aEtFWmVRYUI5YTYxQ0l3bXdQQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUNXBBT3NvckpRZm0reE1hVlFxTE5hVFlncDR6QVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQnhpUktCaGJDRApLUGZtdittbWpFbjlhMGlVSjFsS2RwVlBxendDSHdtNjE1YWpCdW1oOTFzTHY1d3JhVENIVDh1dW5oc2ljUlRsCjk0MDUzQ0FCMXpCeDN5Q2ZlUGRTT3V1TWZkM1RoWmIvVjRoeE9DdlRRemJhYU9nTUM0Z2Q1NVFhUk05bFFoR24KaytaS2xvWlFtN0ZVZ1VmVTFuTnV1VlNtUi9OUmVycFVPSk1tL1dhYkdlNXV1Z2RCQzFVVHhZSFdEUUpZOVRCUAp6ampxbExPL0lLMlZFcVF1Qi9FUTNsSG04VWM2RFZPWTUzVVloMXFaWEcxbG40U1Myd0NQblpuNG02T21JWWpJCkY2TWdRa2dRVkdVZXJIbDJKUVI4bndJK09rc21TODRYYmdmbHVWQ0NyV21Kai8wM0I2eGpGNFN6d0p6bTl5TmsKeEIxN09qOXlRT1JBCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "prod",
            "karpenter.sh/discovery": "terraform-enterprise-eu-central-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-central-1:507152310572:key/7651912b-5e19-42df-8b76-af8ce753addf"
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
NAME                                             STATUS   ROLES    AGE     VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-52-160-247.eu-central-1.compute.internal   Ready    <none>   78m     v1.32.8-eks-99d6cc0   10.52.160.247   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   eks-node-al2023-terraform-enterprise-eu-central-1
ip-10-52-162-110.eu-central-1.compute.internal   Ready    <none>   2d22h   v1.32.8-eks-99d6cc0   10.52.162.110   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27   
ip-10-52-162-191.eu-central-1.compute.internal   Ready    <none>   2m16s   v1.32.8-eks-99d6cc0   10.52.162.191   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-52-162-231.eu-central-1.compute.internal   Ready    <none>   69m     v1.32.8-eks-99d6cc0   10.52.162.231   <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   
ip-10-52-165-12.eu-central-1.compute.internal    Ready    <none>   80m     v1.32.8-eks-99d6cc0   10.52.165.12    <none>        Amazon Linux 2023.8.20250908   6.1.148-173.267.amzn2023.x86_64   containerd://1.7.27   eks-node-al2023-terraform-enterprise-eu-central-1
ip-10-52-165-195.eu-central-1.compute.internal   Ready    <none>   2d22h   v1.32.8-eks-99d6cc0   10.52.165.195   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64   containerd://1.7.27   
```

Nodes and their taints
```
NAME                                             STATUS   ROLES    TAINTS
ip-10-52-160-247.eu-central-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-52-162-110.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-52-162-191.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-52-162-231.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-52-165-12.eu-central-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-52-165-195.eu-central-1.compute.internal   Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON                        OBJECT                                                MESSAGE
90s         Normal    Finalized                     node                                                  Finalized karpenter.sh/termination
2m44s       Warning   Unsupported                   node/ip-10-52-160-247.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
89s         Normal    DisruptionBlocked             node/ip-10-52-162-110.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=terraform-enterprise/terraform-enterprise-584c74868b-ddb9p)
2m21s       Normal    Starting                      node/ip-10-52-162-191.eu-central-1.compute.internal   Starting kubelet.
2m21s       Warning   InvalidDiskCapacity           node/ip-10-52-162-191.eu-central-1.compute.internal   invalid capacity 0 on image filesystem
2m21s       Normal    NodeHasSufficientMemory       node/ip-10-52-162-191.eu-central-1.compute.internal   Node ip-10-52-162-191.eu-central-1.compute.internal status is now: NodeHasSufficientMemory
2m21s       Normal    NodeHasNoDiskPressure         node/ip-10-52-162-191.eu-central-1.compute.internal   Node ip-10-52-162-191.eu-central-1.compute.internal status is now: NodeHasNoDiskPressure
2m21s       Normal    NodeHasSufficientPID          node/ip-10-52-162-191.eu-central-1.compute.internal   Node ip-10-52-162-191.eu-central-1.compute.internal status is now: NodeHasSufficientPID
2m21s       Normal    NodeAllocatableEnforced       node/ip-10-52-162-191.eu-central-1.compute.internal   Updated Node Allocatable limit across pods
2m18s       Normal    Synced                        node/ip-10-52-162-191.eu-central-1.compute.internal   Node synced successfully
2m16s       Normal    RegisteredNode                node/ip-10-52-162-191.eu-central-1.compute.internal   Node ip-10-52-162-191.eu-central-1.compute.internal event: Registered Node ip-10-52-162-191.eu-central-1.compute.internal in Controller
2m11s       Normal    Starting                      node/ip-10-52-162-191.eu-central-1.compute.internal   
2m10s       Normal    DisruptionBlocked             node/ip-10-52-162-191.eu-central-1.compute.internal   Node isn't initialized
2m7s        Normal    ControllerVersionNotice       node/ip-10-52-162-191.eu-central-1.compute.internal   The node is managed by VPC resource controller version v1.7.9
2m6s        Normal    NodeReady                     node/ip-10-52-162-191.eu-central-1.compute.internal   Node ip-10-52-162-191.eu-central-1.compute.internal status is now: NodeReady
2m6s        Normal    Ready                         node/ip-10-52-162-191.eu-central-1.compute.internal   Status condition transitioned, Type: Ready, Status: False -> True, Reason: KubeletReady, Message: kubelet is posting ready status
2m3s        Normal    NodeTrunkInitiated            node/ip-10-52-162-191.eu-central-1.compute.internal   The node has trunk interface initialized successfully
3m13s       Normal    DisruptionBlocked             node/ip-10-52-162-231.eu-central-1.compute.internal   Pdb prevents pod evictions (PodDisruptionBudget=kube-system/ebs-csi-controller)
4m39s       Warning   Unsupported                   node/ip-10-52-165-12.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
89s         Normal    DisruptionBlocked             node/ip-10-52-165-195.eu-central-1.compute.internal   Pod has "karpenter.sh/do-not-disrupt" annotation (Pod=terraform-enterprise/terraform-enterprise-584c74868b-4shhp)
7m55s       Normal    Unconsolidatable              node/ip-10-52-165-48.eu-central-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
2m48s       Normal    SpotRebalanceRecommendation   node/ip-10-52-165-48.eu-central-1.compute.internal    Spot rebalance recommendation was triggered
2m46s       Warning   SpotInterrupted               node/ip-10-52-165-48.eu-central-1.compute.internal    Spot interruption warning was triggered
2m46s       Warning   TerminatingOnInterruption     node/ip-10-52-165-48.eu-central-1.compute.internal    Interruption triggered termination for the Node
2m45s       Warning   FailedDraining                node/ip-10-52-165-48.eu-central-1.compute.internal    Failed to drain node, 4 pods are waiting to be evicted
2m40s       Normal    DisruptionBlocked             node/ip-10-52-165-48.eu-central-1.compute.internal    Node is deleting or marked for deletion
2m17s       Warning   InstanceTerminating           node/ip-10-52-165-48.eu-central-1.compute.internal    Instance is terminating
91s         Normal    NodeNotReady                  node/ip-10-52-165-48.eu-central-1.compute.internal    Node ip-10-52-165-48.eu-central-1.compute.internal status is now: NodeNotReady
91s         Normal    MemoryPressure                node/ip-10-52-165-48.eu-central-1.compute.internal    Status condition transitioned, Type: MemoryPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
91s         Normal    DiskPressure                  node/ip-10-52-165-48.eu-central-1.compute.internal    Status condition transitioned, Type: DiskPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
91s         Normal    PIDPressure                   node/ip-10-52-165-48.eu-central-1.compute.internal    Status condition transitioned, Type: PIDPressure, Status: False -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
91s         Normal    Ready                         node/ip-10-52-165-48.eu-central-1.compute.internal    Status condition transitioned, Type: Ready, Status: True -> Unknown, Reason: NodeStatusUnknown, Message: Kubelet stopped posting node status.
86s         Normal    RemovingNode                  node/ip-10-52-165-48.eu-central-1.compute.internal    Node ip-10-52-165-48.eu-central-1.compute.internal event: Removing Node ip-10-52-165-48.eu-central-1.compute.internal from Controller
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE              NAME                           MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
karpenter              karpenter                      N/A             1                 1                     497d
kube-system            coredns                        N/A             1                 1                     498d
kube-system            ebs-csi-controller             N/A             1                 1                     498d
kyverno                kyverno-admission-controller   1               N/A               2                     497d
terraform-enterprise   tfe-metrics-pdb                N/A             1                 1                     294d
```

Pods with Karpenter.sh/Do-Not-Disrupt Annotation
```
ip-10-52-162-110.eu-central-1.compute.internal  terraform-enterprise-584c74868b-ddb9p  (terraform-enterprise)
ip-10-52-165-195.eu-central-1.compute.internal  terraform-enterprise-584c74868b-4shhp  (terraform-enterprise)
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

Generated on: Fri Sep 19 14:49:16 CEST 2025
