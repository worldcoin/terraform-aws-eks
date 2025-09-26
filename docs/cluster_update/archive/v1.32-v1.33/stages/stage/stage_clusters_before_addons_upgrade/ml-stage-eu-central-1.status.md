# Cluster recon for tfh-ml-stage-infra,eu-central-1,ml-stage-eu-central-1,tunnel-vpc-ml-stage-eu-central-1

TFH EKS login...
```console
2025/09/17 16:58:16 INFO Logging into AWS
2025/09/17 16:58:16 INFO Token found and valid
2025/09/17 16:58:19 INFO Switch WARP Virtual Network to name=tunnel-vpc-ml-stage-eu-central-1 id=9d4a1667-825f-4d61-ac90-7338685e4b1f
2025/09/17 16:58:20 INFO Active WARP Virtual Network id=9d4a1667-825f-4d61-ac90-7338685e4b1f
Updated context tfh-ml-stage-eu-central-1 in /Users/lukasz.glowacki/.kube/config
```

Current version: 1.32
Next version: 1.33

Checking addons...
```
aws-ebs-csi-driver      v1.39.0-eksbuild.1
coredns                 v1.11.4-eksbuild.10
eks-pod-identity-agent  v1.3.5-eksbuild.2
kube-proxy              v1.32.0-eksbuild.2
snapshot-controller     v8.2.0-eksbuild.1
vpc-cni                 v1.19.2-eksbuild.5
```

Insights for the upcoming update to 1.33
```json
{
    "insights": [
        {
            "id": "d85e0578-6f23-43e1-8997-50ce7139ebad",
            "name": "Amazon Linux 2 compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T15:49:27+02:00",
            "lastTransitionTime": "2025-09-05T22:39:26+02:00",
            "description": "Checks if any nodes in the cluster are running Amazon Linux 2. Support for Amazon Linux 2 on Amazon EKS will end on November 26, 2025. Additionally, Amazon EKS will not release Amazon Linux 2 AMIs for Kubernetes version 1.33 and higher",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No Amazon Linux 2 nodes detected."
            }
        },
        {
            "id": "549708f8-7b94-424a-9ed7-20f1665552df",
            "name": "Cluster health issues",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T15:49:30+02:00",
            "lastTransitionTime": "2024-12-20T11:49:25+01:00",
            "description": "Checks for any cluster health issues that prevent successful upgrade to the next Kubernetes version on EKS.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "No cluster health issues detected."
            }
        },
        {
            "id": "8e80a193-3128-41b3-86b4-bde1f7e741cb",
            "name": "EKS add-on version compatibility",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T15:49:30+02:00",
            "lastTransitionTime": "2025-07-29T10:49:25+02:00",
            "description": "Checks version of installed EKS add-ons to ensure they are compatible with the next version of Kubernetes. ",
            "insightStatus": {
                "status": "PASSING",
                "reason": "All installed EKS add-on versions are compatible with next Kubernetes version."
            }
        },
        {
            "id": "e26553dc-3285-4146-8c7b-1831424cf9ad",
            "name": "kube-proxy version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T15:49:27+02:00",
            "lastTransitionTime": "2024-12-20T11:49:25+01:00",
            "description": "Checks version of kube-proxy in cluster to see if upgrade would cause non compliance with supported Kubernetes kube-proxy version skew policy.",
            "insightStatus": {
                "status": "PASSING",
                "reason": "kube-proxy versions match the cluster control plane version."
            }
        },
        {
            "id": "37b40eef-c7a4-40ff-8d2f-88c9f9acf0ec",
            "name": "Kubelet version skew",
            "category": "UPGRADE_READINESS",
            "kubernetesVersion": "1.33",
            "lastRefreshTime": "2025-09-17T15:49:26+02:00",
            "lastTransitionTime": "2024-12-20T11:49:25+01:00",
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
        "name": "ml-stage-eu-central-1",
        "arn": "arn:aws:eks:eu-central-1:181819404475:cluster/ml-stage-eu-central-1",
        "createdAt": "2022-12-23T14:35:12.577000+01:00",
        "version": "1.32",
        "endpoint": "https://A87881576B3A449EC2945197D800F750.yl4.eu-central-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::181819404475:role/eks-cluster-ml-stage-eu-central-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0f193f4f6b2de9939",
                "subnet-0a205283b05046f14",
                "subnet-02575e76422dd569b"
            ],
            "securityGroupIds": [
                "sg-09d7ef6403460990d"
            ],
            "clusterSecurityGroupId": "sg-08ecd18a69a98b82c",
            "vpcId": "vpc-0bce073c4f1919625",
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
                "issuer": "https://oidc.eks.eu-central-1.amazonaws.com/id/A87881576B3A449EC2945197D800F750"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJeU1USXlNekV6TkRBMU1Gb1hEVE15TVRJeU1ERXpOREExTUZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTlR5CkRyeXdISllzSlJSY3pidkNqV3ZuV2xOVmZZcGJMSmhLeENmamNYSlJiYU55N0pvWUt4SHJaNmR4K0VWUk5CYmwKcHFGeklXV3FKTkhXSmoxckwvNHo4QmhOeWJzRXRlZDRjdUNlV2tPc283YkpMeVBCOXU2dkFJOTZyMHIvUWdCKwo4eUVDYS9FQ3lkQUJUQzIrd0FZQTdXWkp1TUF4VXlrbmJFYnhmZGwwTnRiVlp3RS9FTzMyUkJLVXJEb3QxRFViCnJHN2xIUE9LQTdVTzdhRGM4RzBuZE1kbWp6dUREQlNDUWs4Z0JGeEZoWDJ6NFJhN1ZoeElOMFpUUnloV0NSdGIKRlZnY3pTeEFzREdsV2tFQldYR2dwaFpneTMyS0hwdmRHRVlxUG1ScUk5THhiVG5yaWF5eSsxZCtqNExjT2VMUwpsOTRJWG9sdWdYbGlWenRDR1ZjQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZGTG9uTWNLaU10dllqK3UxOC96QXEwa2JmWmJNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBTFZjd1BqZ0RWK1dldmhpZ0tmWApxTkVtSnJKRzlYb1crWWs0dkovVk5oZFpVSXlmNE9BbmxMQWxsV0FoUkVLcGtMYUc2c1NQcG9qbjNXb1A3bTg3CnlRMFY4L0hvUitlK0wyNmpMdXJXMUZac3pOQURGcDRRTWR5VjE3VXVhYWM4a0J4WVVzM0M4WS9iVEVTN1huc0kKdGVid0tEdVI0T0wvTmUzd280Qk5zb2dwakh1SmlOcmhKVlc5TWRuY3B4ekNLSEZTL1dseFFlZUFnc2paenlpYQoyMGRnbmhDSDhSeENoaTFRU1BpbGhJV0JNRU5yMnUrL2t2OURNbW00dlVpeFJYMS9zQWF1b1p4UHlXQnFjbWw0CksrdlVheG1iQUtualJSd2lZa2xUbWRFckZsUHlGSnFuWEtqeExnWkFlNmFyNVNWaVByMEw5b1NQM0dwb3dmb0YKc0RvPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.18",
        "tags": {
            "Environment": "stage",
            "karpenter.sh/discovery": "ml-stage-eu-central-1",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-central-1:181819404475:key/4561dd33-b5ae-4d9e-bc60-d4c263f3f49b"
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
NAME                                             STATUS   ROLES    AGE     VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                     CONTAINER-RUNTIME
ip-10-54-128-120.eu-central-1.compute.internal   Ready    <none>   9d      v1.32.8-eks-99d6cc0   10.54.128.120   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-54-129-235.eu-central-1.compute.internal   Ready    <none>   6h19m   v1.32.8-eks-99d6cc0   10.54.129.235   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-54-130-98.eu-central-1.compute.internal    Ready    <none>   67m     v1.32.8-eks-99d6cc0   10.54.130.98    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-54-131-55.eu-central-1.compute.internal    Ready    <none>   83m     v1.32.8-eks-99d6cc0   10.54.131.55    <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.aarch64   containerd://1.7.27
ip-10-54-131-7.eu-central-1.compute.internal     Ready    <none>   83m     v1.32.8-eks-99d6cc0   10.54.131.7     <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
ip-10-54-133-185.eu-central-1.compute.internal   Ready    <none>   9d      v1.32.8-eks-99d6cc0   10.54.133.185   <none>        Amazon Linux 2023.8.20250818   6.1.147-172.266.amzn2023.x86_64    containerd://1.7.27
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON             OBJECT                                                MESSAGE
3m37s       Warning   Unsupported        node/ip-10-54-128-120.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
12m         Normal    Unconsolidatable   node/ip-10-54-129-235.eu-central-1.compute.internal   Can't replace with a cheaper node
2m21s       Normal    Unconsolidatable   node/ip-10-54-130-98.eu-central-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
12m         Normal    Unconsolidatable   node/ip-10-54-131-55.eu-central-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
3m37s       Warning   Unsupported        node/ip-10-54-133-185.eu-central-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                     NAME                              MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring            cluster-monitoring-pdb            N/A             1                 1                     292d
iris-registration-app         iris-registration-app-pdb         N/A             1                 1                     175d
karpenter                     karpenter                         N/A             1                 1                     2y242d
kube-system                   coredns                           N/A             1                 1                     645d
kube-system                   ebs-csi-controller                N/A             1                 1                     2y199d
kyverno                       kyverno-admission-controller      1               N/A               2                     603d
labelling-platform-api        labelling-platform-api-pdb        N/A             1                 1                     295d
labelling-platform-frontend   labelling-platform-frontend-pdb   N/A             1                 1                     295d
pii-deletion-service          pii-deletion-service-pdb          N/A             1                 1                     272d
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
