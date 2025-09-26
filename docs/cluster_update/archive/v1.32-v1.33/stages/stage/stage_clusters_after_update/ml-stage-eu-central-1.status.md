# Cluster recon for tfh-ml-stage-infra,eu-central-1,ml-stage-eu-central-1,tunnel-vpc-ml-stage-eu-central-1

TFH EKS login...
```console
2025/09/18 15:45:30 INFO Logging into AWS
2025/09/18 15:45:30 INFO Token found and valid
2025/09/18 15:45:32 INFO Switch WARP Virtual Network to name=tunnel-vpc-ml-stage-eu-central-1 id=9d4a1667-825f-4d61-ac90-7338685e4b1f
2025/09/18 15:45:34 INFO Active WARP Virtual Network id=9d4a1667-825f-4d61-ac90-7338685e4b1f
Updated context tfh-ml-stage-eu-central-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "ml-stage-eu-central-1",
        "arn": "arn:aws:eks:eu-central-1:181819404475:cluster/ml-stage-eu-central-1",
        "createdAt": "2022-12-23T14:35:12.577000+01:00",
        "version": "1.33",
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
        "platformVersion": "eks.14",
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
NAME                                             STATUS   ROLES    AGE    VERSION               INTERNAL-IP     EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-54-129-17.eu-central-1.compute.internal    Ready    <none>   149m   v1.33.4-eks-99d6cc0   10.54.129.17    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-130-14.eu-central-1.compute.internal    Ready    <none>   159m   v1.33.4-eks-99d6cc0   10.54.130.14    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-ml-stage-eu-central-1
ip-10-54-130-207.eu-central-1.compute.internal   Ready    <none>   69m    v1.33.4-eks-99d6cc0   10.54.130.207   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-131-129.eu-central-1.compute.internal   Ready    <none>   152m   v1.33.4-eks-99d6cc0   10.54.131.129   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-54-132-167.eu-central-1.compute.internal   Ready    <none>   147m   v1.33.4-eks-99d6cc0   10.54.132.167   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-132-219.eu-central-1.compute.internal   Ready    <none>   152m   v1.33.4-eks-99d6cc0   10.54.132.219   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-54-132-25.eu-central-1.compute.internal    Ready    <none>   157m   v1.33.4-eks-99d6cc0   10.54.132.25    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-ml-stage-eu-central-1
```

Nodes and their taints
```
NAME                                             STATUS   ROLES    TAINTS
ip-10-54-129-17.eu-central-1.compute.internal    Ready    <none>   <none>
ip-10-54-130-14.eu-central-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-54-130-207.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-131-129.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-132-167.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-132-219.eu-central-1.compute.internal   Ready    <none>   <none>
ip-10-54-132-25.eu-central-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON             OBJECT                                                MESSAGE
9m37s       Normal    Unconsolidatable   node/ip-10-54-129-17.eu-central-1.compute.internal    Can't replace with a cheaper node
49s         Warning   Unsupported        node/ip-10-54-130-14.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
19m         Normal    Unconsolidatable   node/ip-10-54-131-129.eu-central-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
9m37s       Normal    Unconsolidatable   node/ip-10-54-132-167.eu-central-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
19m         Normal    Unconsolidatable   node/ip-10-54-132-219.eu-central-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
104s        Warning   Unsupported        node/ip-10-54-132-25.eu-central-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
```

Pods with issues
```
```

PodDisruptionBudgets
```
NAMESPACE                     NAME                              MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring            cluster-monitoring-pdb            N/A             1                 1                     293d
iris-registration-app         iris-registration-app-pdb         N/A             1                 1                     176d
karpenter                     karpenter                         N/A             1                 1                     2y243d
kube-system                   coredns                           N/A             1                 1                     646d
kube-system                   ebs-csi-controller                N/A             1                 1                     2y200d
kyverno                       kyverno-admission-controller      1               N/A               2                     603d
labelling-platform-api        labelling-platform-api-pdb        N/A             1                 1                     296d
labelling-platform-frontend   labelling-platform-frontend-pdb   N/A             1                 1                     296d
pii-deletion-service          pii-deletion-service-pdb          N/A             1                 1                     273d
```

Cluster version up to date - no pluto apis detection rquired
