# Cluster recon for tfh-orb-stage-infra,eu-west-1,orb-stage-v2-eu-west-1,tunnel-vpc-orb-stage-eu-west-1

TFH EKS login...
```console
2025/09/18 15:48:44 INFO Logging into AWS
2025/09/18 15:48:44 INFO Token found and valid
2025/09/18 15:48:46 INFO Switch WARP Virtual Network to name=tunnel-vpc-orb-stage-eu-west-1 id=ea718745-0878-456b-bf33-b3d760a03a66
2025/09/18 15:48:48 INFO Active WARP Virtual Network id=ea718745-0878-456b-bf33-b3d760a03a66
Updated context tfh-orb-stage-v2-eu-west-1 in /Users/lukasz.glowacki/.kube/config
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
        "name": "orb-stage-v2-eu-west-1",
        "arn": "arn:aws:eks:eu-west-1:510867353226:cluster/orb-stage-v2-eu-west-1",
        "createdAt": "2023-04-12T16:38:37.464000+02:00",
        "version": "1.33",
        "endpoint": "https://F5278E70B5341DF6E34C40EDEFB64A08.gr7.eu-west-1.eks.amazonaws.com",
        "roleArn": "arn:aws:iam::510867353226:role/eks-cluster-orb-stage-v2-eu-west-1",
        "resourcesVpcConfig": {
            "subnetIds": [
                "subnet-0a7dafbbc62245790",
                "subnet-0b16e399a8f70150e",
                "subnet-051684ce671865bb1"
            ],
            "securityGroupIds": [
                "sg-01fb59b6c9ef5133d"
            ],
            "clusterSecurityGroupId": "sg-05733a83bdf1b0d38",
            "vpcId": "vpc-046dd9276c9c75c25",
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
                "issuer": "https://oidc.eks.eu-west-1.amazonaws.com/id/F5278E70B5341DF6E34C40EDEFB64A08"
            }
        },
        "status": "ACTIVE",
        "certificateAuthority": {
            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EUXhNakUwTkRNek5Wb1hEVE16TURRd09URTBORE16TlZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTEhWCmllVUUxVnQ1ckF2ZUhQR3N0NE5GbEFWOG4vcm1XV3ZaVUQ4eENZekZ4RDFFSjBhbld3N3Vjb0JsU1RzYmZFSm0Kd09PYUh4UitGSDJVTlU2Vm1QYmhwbTg4ckRRbkw0TktYaUE5SitJKzRVOE4wMWlPd2xDcDVvbmRVem5PcXNpOQpFWmI2dElldGU5akJsZ1pTeHQ4Q1NNQnhNWkxtVVpES2pKWmp3b0luYmhXYStUaU9BOXdxdTgzSzJVVCtIczRjClRaK1R3RkVEQ0pPajZPL2gxanBibG44U0FoTU4zZVRWeUdBeXUweDRYV1QwekoxNDNoK0xVQ2FvZk9TMThCb0wKdWtqbVp3ZXRZd1gyb205M3lNT1o1Q1R6NlVrcTRubzlWTGxZS3hIVEk4L05uUm9HM21UWDdNTS92YWZseEpQVQpyVkR1TDBMdWs3UURpUkJQT01VQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZPeTZ1a2dGbHhJQjFPaXpBcGt6VnE2NXd0TWVNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBRy9Ndnc4b01ENlFnNkNpeWhvNgppZkgwTHRLZEtqSDAzS0dUSEtzS3B2a0Y1U093YU5KbXRoNGlmd0xjNFlVbVF2aHRMMGJXckR2d3N0QlNwQ3hYClIzeU04bmZOVHdKcTBNRHdKckZmSWRLdnhCRGRQTUZSaFRPTmF5b0tCcmN1dmgyUEozTWErUlhyQ1Buc3M2U04KdHA5NUkzNkNUZW9QQW5BRFdYMiswZ0xCS0Vzc0ZiUkRxYUN3WTJLNTE3NmRHMWlBcXhWb1VxaFl3ZjdSLzIyTQplWlJkeUVHUy9TVWJvYWtyc0lrTzJXaXEwN3l4LzVXNU5YVHZNTzgvR2M5bW8yKzNiblVVcDJnbm5YZE1YTGduCkx4RjZrRko0V2p0ellkbnRnemRZb1VsYk83SGRZNXJsa3dKeExYNkFyQ2ZMamNzTitNZW5pQnlkMGdVbmJHbmQKQzBRPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
        },
        "platformVersion": "eks.14",
        "tags": {
            "Environment": "stage",
            "karpenter.sh/discovery": "orb-stage-v2-eu-west-1",
            "Team": "backend",
            "CreatedBy": "terraform"
        },
        "encryptionConfig": [
            {
                "resources": [
                    "secrets"
                ],
                "provider": {
                    "keyArn": "arn:aws:kms:eu-west-1:510867353226:key/eab10138-a25f-4774-a5e0-108377c29ead"
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
NAME                                         STATUS   ROLES    AGE    VERSION               INTERNAL-IP    EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                    CONTAINER-RUNTIME     NODEGROUP
ip-10-57-17-61.eu-west-1.compute.internal    Ready    <none>   159m   v1.33.4-eks-99d6cc0   10.57.17.61    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-stage-v2-eu-west-1
ip-10-57-18-103.eu-west-1.compute.internal   Ready    <none>   158m   v1.33.4-eks-99d6cc0   10.57.18.103   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   eks-node-al2023-orb-stage-v2-eu-west-1
ip-10-57-18-122.eu-west-1.compute.internal   Ready    <none>   156m   v1.33.4-eks-99d6cc0   10.57.18.122   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-57-19-162.eu-west-1.compute.internal   Ready    <none>   152m   v1.33.4-eks-99d6cc0   10.57.19.162   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.aarch64   containerd://1.7.27   
ip-10-57-20-229.eu-west-1.compute.internal   Ready    <none>   151m   v1.33.4-eks-99d6cc0   10.57.20.229   <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-57-20-44.eu-west-1.compute.internal    Ready    <none>   152m   v1.33.4-eks-99d6cc0   10.57.20.44    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-57-20-48.eu-west-1.compute.internal    Ready    <none>   157m   v1.33.4-eks-99d6cc0   10.57.20.48    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-57-20-96.eu-west-1.compute.internal    Ready    <none>   153m   v1.33.4-eks-99d6cc0   10.57.20.96    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
ip-10-57-21-11.eu-west-1.compute.internal    Ready    <none>   155m   v1.33.4-eks-99d6cc0   10.57.21.11    <none>        Amazon Linux 2023.8.20250818   6.12.40-63.114.amzn2023.x86_64    containerd://1.7.27   
```

Nodes and their taints
```
NAME                                         STATUS   ROLES    TAINTS
ip-10-57-17-61.eu-west-1.compute.internal    Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-57-18-103.eu-west-1.compute.internal   Ready    <none>   [map[effect:NoExecute key:critical]]
ip-10-57-18-122.eu-west-1.compute.internal   Ready    <none>   <none>
ip-10-57-19-162.eu-west-1.compute.internal   Ready    <none>   <none>
ip-10-57-20-229.eu-west-1.compute.internal   Ready    <none>   <none>
ip-10-57-20-44.eu-west-1.compute.internal    Ready    <none>   <none>
ip-10-57-20-48.eu-west-1.compute.internal    Ready    <none>   <none>
ip-10-57-20-96.eu-west-1.compute.internal    Ready    <none>   <none>
ip-10-57-21-11.eu-west-1.compute.internal    Ready    <none>   <none>
```

Nodes with issues
```
```

Events of nodes
```
LAST SEEN   TYPE      REASON             OBJECT                                            MESSAGE
3m7s        Warning   Unsupported        node/ip-10-57-17-61.eu-west-1.compute.internal    The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
2m13s       Warning   Unsupported        node/ip-10-57-18-103.eu-west-1.compute.internal   The instance type t3a.large is not supported for trunk interface (Security Group for Pods)
7m55s       Normal    Unconsolidatable   node/ip-10-57-18-122.eu-west-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
7m55s       Normal    Unconsolidatable   node/ip-10-57-19-162.eu-west-1.compute.internal   SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
7m54s       Normal    Unconsolidatable   node/ip-10-57-20-229.eu-west-1.compute.internal   Can't remove without creating 2 candidates
7m55s       Normal    Unconsolidatable   node/ip-10-57-20-48.eu-west-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
7m55s       Normal    Unconsolidatable   node/ip-10-57-20-96.eu-west-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
7m54s       Normal    Unconsolidatable   node/ip-10-57-21-11.eu-west-1.compute.internal    SpotToSpotConsolidation is disabled, can't replace a spot node with a spot node
```

Pods with issues
```
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-7ntrj                               0/1     CreateContainerConfigError   0          132m
cloudflared-tunnel              cloudflared-tunnel-746c5477d5-8zz9d                               0/1     CreateContainerConfigError   0          156m
```

PodDisruptionBudgets
```
NAMESPACE                             NAME                                      MIN AVAILABLE   MAX UNAVAILABLE   ALLOWED DISRUPTIONS   AGE
cluster-monitoring                    cluster-monitoring-pdb                    N/A             1                 1                     293d
karpenter                             karpenter                                 N/A             1                 1                     2y147d
kube-system                           coredns                                   N/A             1                 1                     646d
kube-system                           ebs-csi-controller                        N/A             1                 1                     2y159d
kyverno                               kyverno-admission-controller              1               N/A               2                     603d
orb-fleet-backend-docs-server         orb-fleet-backend-docs-server-pdb         N/A             1                 0                     154d
orb-fleet-backend-event-server        orb-fleet-backend-event-server-pdb        N/A             1                 0                     181d
orb-fleet-backend-external            orb-fleet-backend-external-pdb            N/A             1                 1                     281d
orb-fleet-backend-internal            orb-fleet-backend-internal-pdb            N/A             1                 1                     281d
orb-fleet-backend-job-server          orb-fleet-backend-job-server-pdb          N/A             1                 0                     212d
orb-fleet-backend-job-worker          orb-fleet-backend-job-worker-pdb          N/A             1                 0                     216d
orb-fleet-backend-location-server     orb-fleet-backend-location-server-pdb     N/A             1                 0                     190d
orb-fleet-backend-monitoring-server   orb-fleet-backend-monitoring-server-pdb   N/A             1                 0                     212d
orb-fleet-backend-monitoring-worker   orb-fleet-backend-monitoring-worker-pdb   N/A             1                 0                     233d
signup-service                        signup-service-pdb                        N/A             1                 1                     76d
```

Cluster version up to date - no pluto apis detection rquired
