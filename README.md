# terraform-aws-eks

- [terraform-aws-eks](#terraform-aws-eks)
  - [Description](#description)
  - [How to release](#how-to-release)
  - [Supported versions](#supported-versions)
  - [Example](#example)
  - [Migrate 1.xx to 2.xx](#migrate-1xx-to-2xx)
  - [Upgrading clusters](#upgrading-clusters)
  - [Datadog](#datadog)
    - [Monitoring](#monitoring)
  - [Amazon EFS CSI driver](#amazon-efs-csi-driver)
  - [Cluster removal](#cluster-removal)
  - [Requirements](#requirements)
  - [Providers](#providers)
  - [Modules](#modules)
  - [Resources](#resources)
  - [Inputs](#inputs)
  - [Outputs](#outputs)

## Description

This module is used to create an EKS cluster on AWS with the support of the `vpc`
and `sso-roles` modules.

## How to release

New releases are created automagically by [Release Drafter GH action](https://github.com/worldcoin/terraform-aws-eks/actions/workflows/release.yml).

Type of release bump is made of commits (tags feat/bugfix/etc...).

Release is created as draft, so you have to edit it manually and change it to final.

## Supported versions

The module is currently supporting the following versions of Kubernetes:

- 1.22,
- 1.23,
- 1.24,
- 1.25,
- 1.26,

## Example

A minimal example of how to use this module.

```terraform
module "orb" {
    source       = "git@github.com:worldcoin/terraform-aws-eks?ref=v0.3.0"
    cluster_name = "orb-${var.environment}-${var.region}"

    vpc_config = module.vpc.config

    extra_role_mapping = module.sso_roles.default_mappings

    datadog_api_key     = var.datadog_api_key
    traefik_cert_arn    = var.traefik_cert_arn
    alb_logs_bucket_id  = module.region.alb_logs_bucket_id
}
```

Extra load balancers setup:

```terraform
module "orb" {
    source       = "git@github.com:worldcoin/terraform-aws-eks?ref=v0.3.0"
    cluster_name = "orb-${var.environment}-${var.region}"

    vpc_config = module.vpc.config

    extra_role_mapping = module.sso_roles.default_mappings

    datadog_api_key     = var.datadog_api_key
    traefik_cert_arn    = var.traefik_cert_arn
    alb_logs_bucket_id  = module.region.alb_logs_bucket_id

    custom_load_balancers = {
      internal = false
    }
}
```

## Migrate 1.xx to 2.xx
1. Upgrade module to version 1.40
1. Set alb_enabled to true in module definition
1. Apply with terraform
1. Switch all external domains to ALB
1. Apply with terraform
1. Check if applications still works
1. Upgrade to version 2.xx
1. Add moved blocks

``` hcl
moved {
  from = module.eks.kubernetes_service.traefik
  to   = module.eks.kubernetes_service.traefik_nlb
}

moved {
  from = module.eks.aws_security_group_rule.nodeports_from_alb_traffic
  to = module.eks.aws_security_group_rule.traefik_from_alb_traffic
}

moved {
  from = module.eks.aws_security_group_rule.nodeports_from_alb_metrics
  to = module.eks.aws_security_group_rule.traefik_from_alb_metrics
}
```
1. Disable delete protection for NLB external and ALB internal
1. Apply terraform changes
1. Check if terraform is able to delete k8s resources. If not remove finalizers from it.

## Upgrading clusters

Due to problems with [tf kubernetes provider](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs) handling configuration changes, this module can't update kubernetes version without help:

1. Update cluster to desired version with CLI/console

    `aws eks update-cluster-version --region ... --name ... --kubernetes-version 1.26`

1. Run `terraform apply` to update the rest (eks addons etc).

## Datadog

The module is creating a DataDog integration secret for the [apiKeyExistingSecret](https://github.com/DataDog/helm-charts/blob/main/charts/datadog/values.yaml#L38) of the DataDog helm chart.

### Monitoring

Monitoring the cluster using Datadog is also included, enabled by default, by using [terraform-datadog-kubernetes](https://github.com/kabisa/terraform-datadog-kubernetes).

## Amazon EFS CSI driver

The module comes with the IAM role for [Amazon EFS CSI driver](https://docs.aws.amazon.com/eks/latest/userguide/efs-csi.html), and can be enabled using `efs_csi_driver_enabled` variable. Also with the role, it will create an instance of Elastic File System (EFS) and mount it to the cluster as a StorageClass named `efs`.

## Cluster removal

To remove the cluster you have to:

1. Remove LB deletion protection from AWS (both external and internal)
1. Disable argocd install of kyverno in [`cluster-apps` repo](https://github.com/worldcoin/cluster-apps)

    ```yaml
    kyverno:
      enabled: false
    ```

1. Delete traefik svc:

    ```bash
    kubectl -n traefik delete svc traefik --wait=false
    kubectl -n traefik patch svc traefik -p '{"metadata":{"finalizers":null}}' --type=merge
    ```

1. Set these flags, the module will remove every usage of the Kubernetes provider and allow
    you to remove the cluster module without any errors.

    ```yaml
      efs_csi_driver_enabled = false
      kubernetes_provider_enabled = false
    ```

1. Remove module invocation to finally delete cluster itself.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.5 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 4.10.0 |
| <a name="requirement_datadog"></a> [datadog](#requirement\_datadog) | >= 3.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.3 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.5 |
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.10.0 |
| <a name="provider_datadog"></a> [datadog](#provider\_datadog) | >= 3.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | >= 2.0 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.3 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | >= 4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alb"></a> [alb](#module\_alb) | git@github.com:worldcoin/terraform-aws-alb.git | v0.3.1 |
| <a name="module_datadog_monitoring"></a> [datadog\_monitoring](#module\_datadog\_monitoring) | git@github.com:worldcoin/terraform-datadog-kubernetes | v1.0.0 |
| <a name="module_nlb"></a> [nlb](#module\_nlb) | git@github.com:worldcoin/terraform-aws-nlb.git | v0.2.0 |

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_efs_file_system.persistent_volume](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_file_system) | resource |
| [aws_efs_mount_target.persistent_volume](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_mount_target) | resource |
| [aws_eks_addon.coredns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_addon.ebs_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_addon.kube_proxy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_addon.vpc_cni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_iam_instance_profile.node](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_openid_connect_provider.oidc_provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |
| [aws_iam_role.aws_efs_csi_driver](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.aws_load_balancer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.karpenter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.kube_ops](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.node](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.aws_efs_csi_driver](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.aws_load_balancer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.karpenter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.kube_ops](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.node](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_kms_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_launch_template.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_secretsmanager_secret.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_security_group.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.node](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.persistent_volume](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.cluster_egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.cluster_from_node_ingress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.node_egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.node_from_cluster_ingress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.node_to_node_ingress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.persistent_volume_from_node_ingress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.traefik_from_alb_metrics](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.traefik_from_alb_traffic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [cloudflare_record.monitoring](https://registry.terraform.io/providers/cloudflare/cloudflare/4.10.0/docs/resources/record) | resource |
| [datadog_monitor.oom](https://registry.terraform.io/providers/DataDog/datadog/latest/docs/resources/monitor) | resource |
| [datadog_synthetics_test.cluster_monitoring](https://registry.terraform.io/providers/DataDog/datadog/latest/docs/resources/synthetics_test) | resource |
| [kubernetes_config_map.aws_auth](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map) | resource |
| [kubernetes_ingress_v1.treafik_ingress](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/ingress_v1) | resource |
| [kubernetes_namespace.cluster_monitoring](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kubernetes_namespace.traefik](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kubernetes_secret.datadog](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |
| [kubernetes_service.traefik_alb](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service) | resource |
| [kubernetes_service.traefik_nlb](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service) | resource |
| [kubernetes_storage_class.efs](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/storage_class) | resource |
| [random_password.dd_clusteragent_token](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [aws_ami.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_caller_identity.account](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_eks_cluster_auth.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |
| [aws_iam_policy_document.aws_efs_csi_driver](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.aws_efs_csi_driver_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.aws_load_balancer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.aws_load_balancer_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.cluster_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.karpenter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.karpenter_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.kms](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.kube_ops](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.kube_ops_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.node_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [cloudflare_zone.worldcoin_dev](https://registry.terraform.io/providers/cloudflare/cloudflare/4.10.0/docs/data-sources/zone) | data source |
| [datadog_synthetics_locations.locations](https://registry.terraform.io/providers/DataDog/datadog/latest/docs/data-sources/synthetics_locations) | data source |
| [tls_certificate.this](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/certificate) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb_logs_bucket_id"></a> [alb\_logs\_bucket\_id](#input\_alb\_logs\_bucket\_id) | The ID of the S3 bucket to store logs in for ALB. | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the cluster. Has to be unique per region per account. | `string` | n/a | yes |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | The Kubernetes version to use for the cluster. | `string` | `"1.26"` | no |
| <a name="input_custom_load_balancers"></a> [custom\_load\_balancers](#input\_custom\_load\_balancers) | Custom load balancers to create. Key is the name of the load balancer, value is whether it should be internet-facing or not. | `map(bool)` | `{}` | no |
| <a name="input_datadog_api_key"></a> [datadog\_api\_key](#input\_datadog\_api\_key) | Datadog API key. Stored in kube-system namespace as a secret. | `string` | n/a | yes |
| <a name="input_efs_csi_driver_enabled"></a> [efs\_csi\_driver\_enabled](#input\_efs\_csi\_driver\_enabled) | Whether to enable the EFS CSI driver (IAM Role & StorageClass). | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment of cluster | `string` | n/a | yes |
| <a name="input_extra_nlb_listeners"></a> [extra\_nlb\_listeners](#input\_extra\_nlb\_listeners) | List with configuration for additional listeners | <pre>list(object({<br>    name              = string<br>    port              = string<br>    protocol          = optional(string, "TCP")<br>    target_group_port = number<br>  }))</pre> | `[]` | no |
| <a name="input_extra_role_mapping"></a> [extra\_role\_mapping](#input\_extra\_role\_mapping) | Extra role mappings to add to the aws-auth configmap. | <pre>list(object({<br>    rolearn  = string<br>    username = string<br>    groups   = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_kubernetes_provider_enabled"></a> [kubernetes\_provider\_enabled](#input\_kubernetes\_provider\_enabled) | Whether to create a Kubernetes provider for the cluster. Use as a prerequisite to cluster removal. | `bool` | `true` | no |
| <a name="input_monitoring_enabled"></a> [monitoring\_enabled](#input\_monitoring\_enabled) | Whether to enable monitoring (Datadog). | `bool` | `true` | no |
| <a name="input_monitoring_notification_channel"></a> [monitoring\_notification\_channel](#input\_monitoring\_notification\_channel) | The Datadog notification channel to use for monitoring alerts. | `string` | `"@slack-TFH-infrastructure-alerts"` | no |
| <a name="input_on_demand_base_capacity"></a> [on\_demand\_base\_capacity](#input\_on\_demand\_base\_capacity) | The number of minimum on-demand instances to launch. | `number` | `1` | no |
| <a name="input_traefik_cert_arn"></a> [traefik\_cert\_arn](#input\_traefik\_cert\_arn) | The ARN of the certificate to use for Traefik. | `string` | n/a | yes |
| <a name="input_traefik_nlb_service_ports"></a> [traefik\_nlb\_service\_ports](#input\_traefik\_nlb\_service\_ports) | List of additional ports for treafik k8s service | <pre>list(object({<br>    name        = string<br>    port        = number<br>    target_port = string<br>    protocol    = string<br>  }))</pre> | `[]` | no |
| <a name="input_vpc_cni_version_override"></a> [vpc\_cni\_version\_override](#input\_vpc\_cni\_version\_override) | The version of the VPC CNI plugin to use. If not specified, the default version for the cluster version will be used. | `string` | `""` | no |
| <a name="input_vpc_config"></a> [vpc\_config](#input\_vpc\_config) | VPC configuration from aws/vps module | <pre>object({<br>    vpc_id          = string<br>    private_subnets = list(string)<br>    public_subnets  = list(string)<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_arn"></a> [alb\_arn](#output\_alb\_arn) | An ARN of the main ALB (traefik) |
| <a name="output_alb_arns"></a> [alb\_arns](#output\_alb\_arns) | Map of ARNs of the ALBs |
| <a name="output_alb_dns_name"></a> [alb\_dns\_name](#output\_alb\_dns\_name) | A dns name of the main ALB (traefik) |
| <a name="output_alb_dns_names"></a> [alb\_dns\_names](#output\_alb\_dns\_names) | Map of dns names of the ALBs |
| <a name="output_cluster_oidc_issuer_url"></a> [cluster\_oidc\_issuer\_url](#output\_cluster\_oidc\_issuer\_url) | The OIDC issuer URL for the EKS cluster |
| <a name="output_name"></a> [name](#output\_name) | The name of the cluster |
| <a name="output_nlb_arns"></a> [nlb\_arns](#output\_nlb\_arns) | Map of ARNs of the NLBs |
| <a name="output_nlb_dns_names"></a> [nlb\_dns\_names](#output\_nlb\_dns\_names) | Map of dns names of the NLBs |
| <a name="output_node_security_group_id"></a> [node\_security\_group\_id](#output\_node\_security\_group\_id) | The security group ID of the EKS nodes |
<!-- END_TF_DOCS -->
