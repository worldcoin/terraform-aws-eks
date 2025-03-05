# terraform-aws-eks

- [Description](#description)
- [How to release](#how-to-release)
- [Breaking changes](#breaking-changes)
- [Supported versions](#supported-versions)
- [Examples](#examples)
  - [Minimal](#minimal)
  - [Internal Load Balancer](#internal-load-balancer)
  - [Static AutoScalingGroup](#static-autoscalinggroup)
  - [Private SubNets](#private-subnets)
  - [Additional Security Group Rules](#additional-security-group-rules)
  - [Associate access policies with access entries](#associate-access-policies-with-access-entries)
    - [AWS EKS Cluster Policies](#aws-eks-cluster-policies)
- [Upgrading clusters](#upgrading-clusters)
- [Datadog](#datadog)
  - [Monitoring](#monitoring)
- [Amazon EFS CSI driver](#amazon-efs-csi-driver)
- [Terraform tips and tricks](#terraform-tips-and-tricks)
  - [Cluster create](#cluster-create)
  - [Cluster update](#cluster-update)
  - [Cluster remove](#cluster-remove)
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

## Breaking changes

Version 4.0 introduces an authentication mode change from CONFIG_MAP to API_AND_CONFIG_MAP. This change requires manual intervention to update the clusters. The following steps should be taken to update the clusters:

```
aws eks update-cluster-config --name CLUSTER_NAME --access-config authenticationMode=API_AND_CONFIG_MAP --region AWS_REGION
```

This will change the authentication mode to API_AND_CONFIG_MAP, and the next terraform plan/apply will work as expected.

## Supported versions

The module is currently supporting the following versions of Kubernetes:

- 1.29,
- 1.30,
- 1.31,
- 1.32,

> [!NOTE]
> Default version for EKS Cluster is 1.32.

## Examples

### Minimal

A minimal example of how to use this module.

```terraform
module "eks" {
    source       = "git@github.com:worldcoin/terraform-aws-eks?ref=v4.4.2"
  cluster_name = local.cluster_name

    vpc_config = module.vpc.config

    extra_role_mapping = module.sso_roles.default_mappings

    datadog_api_key     = var.datadog_api_key
    traefik_cert_arn    = var.traefik_cert_arn
    alb_logs_bucket_id  = module.region.alb_logs_bucket_id
}
```

### Internal Load Balancer

Example of Internal load balancer setup

```terraform
module "eks" {
    source       = "git@github.com:worldcoin/terraform-aws-eks?ref=v4.4.0"
  cluster_name = local.cluster_name

    vpc_config = module.vpc.config

    extra_role_mapping = module.sso_roles.default_mappings

    datadog_api_key     = var.datadog_api_key
    traefik_cert_arn    = var.traefik_cert_arn
    alb_logs_bucket_id  = module.region.alb_logs_bucket_id

    internal_nlb_enabled = true
    internal_nlb_acm_arn = module.acm.cert_arn
}
```

### Static AutoScalingGroup

Example off using Static Auto Scaling Group

```terraform
module "eks" {
  source       = "git@github.com:worldcoin/terraform-aws-eks?ref=v4.4.0"
  cluster_name = local.cluster_name

  vpc_config           = module.vpc.config
  extra_role_mapping   = module.sso_roles.default_mappings
  environment          = var.environment
  traefik_cert_arn     = module.acm_v3.cert_arn
  datadog_api_key      = var.datadog_api_key
  alb_logs_bucket_id   = module.region.alb_logs_bucket_id
  monitoring_enabled   = false
  internal_nlb_enabled = true

  static_autoscaling_group = {
    size = 8
    arch = "arm64"
    type = "m7g.16xlarge"
  }
}
```

### Private SubNets

Example of using private subnets for internal NLB

```terraform
module "eks" {
  source       = "git@github.com:worldcoin/terraform-aws-eks?ref=v4.4.0"
  cluster_name = local.cluster_name

  vpc_config                           = module.vpc.config
  extra_role_mapping                   = module.sso_roles.default_mappings
  environment                          = var.environment
  traefik_cert_arn                     = module.acm_v3.cert_arn
  datadog_api_key                      = var.datadog_api_key
  alb_logs_bucket_id                   = module.region.alb_logs_bucket_id
  monitoring_enabled                   = false
  internal_nlb_enabled                 = true
  use_private_subnets_for_internal_nlb = true
}
```

### Additional Security Group Rules

Example of using `additional_security_group_rules`

```terraform
module "eks" {
  source       = "git@github.com:worldcoin/terraform-aws-eks?ref=v4.4.0"
  cluster_name = local.cluster_name

  environment        = var.environment
  vpc_config         = module.vpc.config
  extra_role_mapping = module.sso_roles.default_mappings

  traefik_cert_arn     = module.acm.cert_arn
  internal_nlb_enabled = true

  datadog_api_key    = var.datadog_api_key
  alb_logs_bucket_id = module.region.alb_logs_bucket_id

  monitoring_notification_channel = "@slack-TFH-infrastructure-alerts-stage"
  additional_security_group_rules = [
    {
      sg_id       = var.sg_id
      type        = "ingress"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = format("Rule for %s", var.sg_id)
  }]
}
```

### Associate access policies with access entries

The `access_entries` input allows you to associate access policies with access entries. The `access_entries` input is a map where the key is the name of the access entry and the value is a map with the following keys:

```terraform
module "eks" {
  source       = "git@github.com:worldcoin/terraform-aws-eks?ref=v4.4.0"
  cluster_name = local.cluster_name

  vpc_config = module.vpc.config

  extra_role_mapping = module.sso_roles.default_mappings

  datadog_api_key     = var.datadog_api_key
  traefik_cert_arn    = var.traefik_cert_arn
  alb_logs_bucket_id  = module.region.alb_logs_bucket_id

  access_entries = {
    # example with cluster access with default AmazonEKSAdminPolicy
    applicationA = {
      principal_arn     = "arn:aws:iam::507152310572:role/github-deployment-applicationA"
      access_scope_type = "cluster"
    }
    # example with namespace access
    applicationB = {
      principal_arn           = "arn:aws:iam::507152310572:role/github-deployment-applicationB"
      access_scope_namespaces = ["applicationB"]
    }
    # example with policy AmazonEKSClusterAdminPolicy access
    applicationC = {
      principal_arn           = "arn:aws:iam::507152310572:role/github-deployment-applicationC"
      access_scope_type       = "cluster"
      policy_arn              = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
    }
  }
}
```

Once the policy_arn is not specified, the default AmazonEKSAdminPolicy is used.

#### AWS EKS Cluster Policies

Most common used AWS policies for EKS clusters:
* AmazonEKSClusterAdminPolicy: This policy grants administrator access to a cluster and is equivalent to the RBAC cluster-admin role with star permissions on everything.
* AmazonEKSAdminPolicy: This policy is equivalent to the RBAC admin role. It provides broad permissions to resources, typically scoped to a specific namespace. It is somewhat restricted when it comes to modifying namespace configurations or affecting other namespaces. This policy is designed to support namespace-based multi-tenancy. If you want an IAM principal to have a more limited administrative scope, consider using AmazonEKSAdminPolicy instead of AmazonEKSClusterAdminPolicy.
* AmazonEKSEditPolicy: This policy grants access to edit most Kubernetes resources, usually within a specific namespace. It allows reading secrets and editing resources, but it should not serve as a security boundary, as there are several possible privilege escalation paths to AmazonEKSClusterAdminPolicy.
* AmazonEKSViewPolicy: Grants access to list and view most Kubernetes resources, typically within a namespace. This policy is read-only and does not allow modification of resources. It is useful for monitoring and auditing purposes.

In summary, AmazonEKSClusterAdminPolicy provides the highest level of access, while AmazonEKSAdminPolicy and AmazonEKSEditPolicy offer more restricted, namespace-scoped permissions.

If you need specyfic access to the cluster, you can list the available AWS Polivies via aws cli:
```
aws eks list-access-policies --output table --region us-east-1
```

## Datadog

The module is creating a DataDog integration secret for the [apiKeyExistingSecret](https://github.com/DataDog/helm-charts/blob/main/charts/datadog/values.yaml#L38) of the DataDog helm chart.

### Monitoring

Monitoring the cluster using Datadog is also included, enabled by default, by using [terraform-datadog-kubernetes](https://github.com/kabisa/terraform-datadog-kubernetes).

## Amazon EFS CSI driver

The module comes with the IAM role for [Amazon EFS CSI driver](https://docs.aws.amazon.com/eks/latest/userguide/efs-csi.html), and can be enabled using `efs_csi_driver_enabled` variable. Also with the role, it will create an instance of Elastic File System (EFS) and mount it to the cluster as a StorageClass named `efs`.

## Terraform tips and tricks

1. Module from begining, has defined `kubernetes` provider inside on it, configured based on information from terraform resource `aws_eks_cluster` to authenticate to the eks cluster.
With this constrain only `create` operation work properly, other operation `update`, `remove` doesn't work. 

1. With version `v4.2.0` we have change for `kubernetes` provider. It's configured based on informatiom from data source about `aws_eks_cluster`, and if provider can't be configure with this way terraform resource `aws_eks_cluster` is used. PR with: [fix kubernetes provider](https://github.com/worldcoin/terraform-aws-eks/pull/176). With this change `create` and `update` operation work perfectly, `remove` operation still doesn't work.

1. In the feature versions of `terraform-aws-eks module`, `remove` operation can be fixed to work properly. For this `kubernetes` provider must be moved from module to workspace. It can be tested with PRs:
  * [remove kubernetes provider from terraform-aws-eks module](https://github.com/worldcoin/terraform-aws-eks/pull/177)
  * [test if remove kubernetes provider from tf module works](https://github.com/worldcoin/infrastructure/pull/13175)

### Cluster create

Works like a charm for any case, from begining.

### Cluster update

#### Before version 4.2.0

Manual upgrade is required with below command, and `terraform apply` after execution.

```bash
aws eks update-cluster-version --region ... --name ... --kubernetes-version 1.29
```

#### After version 4.2.0

Works like a charm without of any manual operation.

### Cluster remove

To remove the cluster you have to:

1. Delete ALL traefik SVCs and ingresses, example (keep in mind there could be more/less traefiks than in this example):

   ```bash
   kubectl -n traefik delete svc traefik-alb --wait=false
   kubectl -n traefik patch svc traefik-alb -p '{"metadata":{"finalizers":null}}' --type=merge

   kubectl -n traefik-internal delete svc traefik-internal --wait=false
   kubectl -n traefik-internal patch svc traefik-internal -p '{"metadata":{"finalizers":null}}' --type=merge

   kubectl -n traefik delete ingress traefik-alb --wait=false
   kubectl -n traefik patch ingress traefik-alb -p '{"metadata":{"finalizers":null}}' --type=merge
   ```

1. Set these flags, the module will remove every usage of the Kubernetes provider and allow
   you to remove the cluster module without any errors.

   ```yaml
   efs_csi_driver_enabled = false
   kubernetes_provider_enabled = false
   ```

1. If above PR `apply` fails (possible reason: race condition - aws_auth removed too soon), remove all `kubernetes_*` resources from state:

   ```bash
   terraform state list |grep kubernetes_

   terraform state rm ...
   ```

1. Manually remove LB deletion protection from AWS (both external and internal) before final delete

1. Remove module invocation to finally delete cluster itself.

1. If above PR `apply` fails on deleting autoscalinggroups, terminate leftover instances and rerun `apply` (possible reason: race condition - karpenter didn't have enough time to clean instances)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.5 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 4.10 |
| <a name="requirement_datadog"></a> [datadog](#requirement\_datadog) | >= 3.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.3 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.88.0 |
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.52.0 |
| <a name="provider_datadog"></a> [datadog](#provider\_datadog) | 3.55.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.35.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.3 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.6 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alb"></a> [alb](#module\_alb) | git@github.com:worldcoin/terraform-aws-alb.git | v0.17.0 |
| <a name="module_datadog_monitoring"></a> [datadog\_monitoring](#module\_datadog\_monitoring) | git@github.com:worldcoin/terraform-datadog-kubernetes | v1.2.1 |
| <a name="module_nlb"></a> [nlb](#module\_nlb) | git@github.com:worldcoin/terraform-aws-nlb.git | v0.7.0 |

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_group.static](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_autoscaling_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_cloudwatch_event_rule.spot_aws_ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule) | resource |
| [aws_cloudwatch_event_rule.spot_aws_health](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule) | resource |
| [aws_cloudwatch_event_target.spot_aws_ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target) | resource |
| [aws_cloudwatch_event_target.spot_aws_health](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target) | resource |
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_efs_file_system.persistent_volume](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_file_system) | resource |
| [aws_efs_mount_target.persistent_volume](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_mount_target) | resource |
| [aws_eks_access_entry.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_access_entry) | resource |
| [aws_eks_access_policy_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_access_policy_association) | resource |
| [aws_eks_addon.coredns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_addon.ebs_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_addon.eks_pod_identity_agent](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_addon.kube_proxy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_addon.mountpoint_s3_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_addon.vpc_cni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_eks_pod_identity_association.ebs_csi_controller](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_pod_identity_association) | resource |
| [aws_eks_pod_identity_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_pod_identity_association) | resource |
| [aws_iam_instance_profile.node](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_openid_connect_provider.oidc_provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |
| [aws_iam_role.aws_efs_csi_driver](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.aws_load_balancer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.aws_s3_mountpoint_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.ebs_csi_controller](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.karpenter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.kube_ops](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.node](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.aws_efs_csi_driver](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.aws_load_balancer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.aws_s3_mountpoint_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.dockerhub_pull_through_cache](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.karpenter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.kube_ops](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.node_inline_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.ebs_csi_controller](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.node](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_kms_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_launch_template.static](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_launch_template.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_secretsmanager_secret.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_security_group.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.node](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.persistent_volume](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.additional_rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.cluster_egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.cluster_from_node_ingress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.node_egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.node_from_alb_ingress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.node_from_cluster_ingress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.node_to_node_ingress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.persistent_volume_from_node_ingress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.traefik_from_alb_metrics](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.traefik_from_alb_traffic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_sqs_queue.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |
| [aws_sqs_queue_policy.spot_notifications_sqs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy) | resource |
| [cloudflare_record.monitoring](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [datadog_monitor.oom](https://registry.terraform.io/providers/DataDog/datadog/latest/docs/resources/monitor) | resource |
| [datadog_synthetics_test.cluster_monitoring](https://registry.terraform.io/providers/DataDog/datadog/latest/docs/resources/synthetics_test) | resource |
| [kubernetes_config_map.aws_auth](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map) | resource |
| [kubernetes_ingress_v1.treafik_ingress](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/ingress_v1) | resource |
| [kubernetes_namespace.traefik](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kubernetes_secret.datadog](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |
| [kubernetes_service.traefik_alb](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service) | resource |
| [kubernetes_service.traefik_nlb](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service) | resource |
| [kubernetes_storage_class.efs](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/storage_class) | resource |
| [random_password.dd_clusteragent_token](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [aws_ami.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_caller_identity.account](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_eks_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |
| [aws_eks_cluster_auth.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |
| [aws_eks_clusters.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_clusters) | data source |
| [aws_iam_policy_document.assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.aws_efs_csi_driver](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.aws_efs_csi_driver_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.aws_load_balancer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.aws_load_balancer_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.aws_s3_mountpoint_csi_s3_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.aws_s3_mountpoint_csi_s3_assume](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.cluster_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.dockerhub_pull_through_cache](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.eks_pod_identity_assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.karpenter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.karpenter_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.kms](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.kube_ops](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.node_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.spot_notification_sqs_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [aws_ssm_parameter.ami_id](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [cloudflare_zone.worldcoin_dev](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/zone) | data source |
| [datadog_synthetics_locations.locations](https://registry.terraform.io/providers/DataDog/datadog/latest/docs/data-sources/synthetics_locations) | data source |
| [tls_certificate.this](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/certificate) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_entries"></a> [access\_entries](#input\_access\_entries) | Map of access entries to add to the cluster | <pre>map(object({<br/>    principal_arn           = string<br/>    kubernetes_groups       = optional(list(string), null)<br/>    type                    = optional(string, "STANDARD")<br/>    tags                    = optional(map(string), {})<br/>    access_scope_type       = optional(string, "namespace")<br/>    access_scope_namespaces = optional(list(string), [])<br/>    policy_arn              = optional(string, "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy")<br/>  }))</pre> | `{}` | no |
| <a name="input_acm_extra_arns"></a> [acm\_extra\_arns](#input\_acm\_extra\_arns) | ARNs of ACM certificates used for TLS, attached as additional certificates to the ALB | `list(string)` | `[]` | no |
| <a name="input_additional_open_ports"></a> [additional\_open\_ports](#input\_additional\_open\_ports) | Additional ports accessible from the Internet for the ALB | <pre>set(object({<br/>    port     = number<br/>    protocol = optional(string, "tcp")<br/>  }))</pre> | `[]` | no |
| <a name="input_additional_security_group_rules"></a> [additional\_security\_group\_rules](#input\_additional\_security\_group\_rules) | Additional security group rules | <pre>list(object({<br/>    sg_id       = string<br/>    type        = string<br/>    from_port   = number<br/>    to_port     = number<br/>    protocol    = string<br/>    description = string<br/>  }))</pre> | `[]` | no |
| <a name="input_alb_additional_node_ports"></a> [alb\_additional\_node\_ports](#input\_alb\_additional\_node\_ports) | List of node ports which are accessible by ALB | `list(number)` | `[]` | no |
| <a name="input_alb_idle_timeout"></a> [alb\_idle\_timeout](#input\_alb\_idle\_timeout) | The time in seconds that the connection is allowed to be idle | `number` | `60` | no |
| <a name="input_alb_logs_bucket_id"></a> [alb\_logs\_bucket\_id](#input\_alb\_logs\_bucket\_id) | The ID of the S3 bucket to store logs in for ALB. | `string` | n/a | yes |
| <a name="input_argocd_role_arn"></a> [argocd\_role\_arn](#input\_argocd\_role\_arn) | The ARN of the remote ArgoCD role used to assume eks-cluster role | `string` | `null` | no |
| <a name="input_authentication_mode"></a> [authentication\_mode](#input\_authentication\_mode) | The authentication mode for the cluster. Valid values are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP` | `string` | `"API_AND_CONFIG_MAP"` | no |
| <a name="input_cluster_endpoint_public_access"></a> [cluster\_endpoint\_public\_access](#input\_cluster\_endpoint\_public\_access) | Indicates whether or not the Amazon EKS public API server endpoint is enabled | `bool` | `true` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the cluster. Has to be unique per region per account. | `string` | n/a | yes |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | The Kubernetes version to use for the cluster. | `string` | `"1.32"` | no |
| <a name="input_create_ebs_csi_controller_role"></a> [create\_ebs\_csi\_controller\_role](#input\_create\_ebs\_csi\_controller\_role) | Set to `true` if you want to create the EBS CSI controller IAM role | `bool` | `false` | no |
| <a name="input_datadog_api_key"></a> [datadog\_api\_key](#input\_datadog\_api\_key) | Datadog API key. Stored in kube-system namespace as a secret. | `string` | n/a | yes |
| <a name="input_dockerhub_pull_through_cache_repositories_arn"></a> [dockerhub\_pull\_through\_cache\_repositories\_arn](#input\_dockerhub\_pull\_through\_cache\_repositories\_arn) | The ARN of the repositories to allow the EKS node group to pull images from the DockerHub pull-through cache. | `string` | `"arn:aws:ecr:us-east-1:507152310572:repository/docker-cache/*"` | no |
| <a name="input_drop_invalid_header_fields"></a> [drop\_invalid\_header\_fields](#input\_drop\_invalid\_header\_fields) | Drop invalid header fields | `bool` | `false` | no |
| <a name="input_efs_csi_driver_enabled"></a> [efs\_csi\_driver\_enabled](#input\_efs\_csi\_driver\_enabled) | Whether to enable the EFS CSI driver (IAM Role & StorageClass). | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment of cluster | `string` | n/a | yes |
| <a name="input_external_check_locations"></a> [external\_check\_locations](#input\_external\_check\_locations) | List of DD locations to check cluster availability from | `list(string)` | <pre>[<br/>  "aws:af-south-1",<br/>  "aws:ap-south-1",<br/>  "aws:ap-southeast-1",<br/>  "aws:eu-central-1",<br/>  "aws:sa-east-1",<br/>  "aws:us-east-1"<br/>]</pre> | no |
| <a name="input_external_tls_listener_version"></a> [external\_tls\_listener\_version](#input\_external\_tls\_listener\_version) | The version of the TLS listener to use for external ALB. | `string` | `"1.3"` | no |
| <a name="input_extra_nlb_listeners"></a> [extra\_nlb\_listeners](#input\_extra\_nlb\_listeners) | List with configuration for additional listeners | <pre>list(object({<br/>    name              = string<br/>    port              = string<br/>    protocol          = optional(string, "TCP")<br/>    target_group_port = number<br/>  }))</pre> | `[]` | no |
| <a name="input_extra_role_mapping"></a> [extra\_role\_mapping](#input\_extra\_role\_mapping) | Extra role mappings to add to the aws-auth configmap. | <pre>list(object({<br/>    rolearn  = string<br/>    username = string<br/>    groups   = list(string)<br/>  }))</pre> | `[]` | no |
| <a name="input_http_put_response_hop_limit"></a> [http\_put\_response\_hop\_limit](#input\_http\_put\_response\_hop\_limit) | The maximum number of hops allowed for HTTP PUT requests. Must be between 1 and 64. | `number` | `2` | no |
| <a name="input_internal_nlb_acm_arn"></a> [internal\_nlb\_acm\_arn](#input\_internal\_nlb\_acm\_arn) | The ARN of the certificate to use for internal NLB. | `string` | `""` | no |
| <a name="input_internal_nlb_enabled"></a> [internal\_nlb\_enabled](#input\_internal\_nlb\_enabled) | Internal Network load balancers to create. If true, the NLB will be created. | `bool` | `true` | no |
| <a name="input_internal_tls_listener_version"></a> [internal\_tls\_listener\_version](#input\_internal\_tls\_listener\_version) | The version of the TLS listener to use for internal NLB. | `string` | `"1.3"` | no |
| <a name="input_kube_ops_enabled"></a> [kube\_ops\_enabled](#input\_kube\_ops\_enabled) | Whether to create a role and association for kube-ops | `bool` | `true` | no |
| <a name="input_kubelet_extra_args"></a> [kubelet\_extra\_args](#input\_kubelet\_extra\_args) | kubelet extra args to pass to the node group | `string` | `"--register-with-taints=critical:NoExecute"` | no |
| <a name="input_kubelet_extra_args_static_autoscaling_group"></a> [kubelet\_extra\_args\_static\_autoscaling\_group](#input\_kubelet\_extra\_args\_static\_autoscaling\_group) | kubelet extra args to pass to the static node group | `string` | `""` | no |
| <a name="input_kubernetes_provider_enabled"></a> [kubernetes\_provider\_enabled](#input\_kubernetes\_provider\_enabled) | Whether to create a Kubernetes provider for the cluster. Use as a prerequisite to cluster removal. | `bool` | `true` | no |
| <a name="input_monitoring_enabled"></a> [monitoring\_enabled](#input\_monitoring\_enabled) | Whether to enable monitoring (Datadog). | `bool` | `true` | no |
| <a name="input_monitoring_notification_channel"></a> [monitoring\_notification\_channel](#input\_monitoring\_notification\_channel) | The Datadog notification channel to use for monitoring alerts. | `string` | `"@slack-TFH-infrastructure-alerts"` | no |
| <a name="input_monitoring_reachability_fail_locations"></a> [monitoring\_reachability\_fail\_locations](#input\_monitoring\_reachability\_fail\_locations) | Number of locations to fail to trigger the reachability test | `number` | `5` | no |
| <a name="input_monitoring_reachability_failure_duration"></a> [monitoring\_reachability\_failure\_duration](#input\_monitoring\_reachability\_failure\_duration) | Time after first error when the reachability test is triggered | `number` | `300` | no |
| <a name="input_node_instance_profile_inline_policies"></a> [node\_instance\_profile\_inline\_policies](#input\_node\_instance\_profile\_inline\_policies) | Inline policies to attach to the node instance profile. Key is the name of the policy, value is the policy document. | `map(string)` | `{}` | no |
| <a name="input_on_demand_base_capacity"></a> [on\_demand\_base\_capacity](#input\_on\_demand\_base\_capacity) | The number of minimum on-demand instances to launch. | `number` | `1` | no |
| <a name="input_open_to_all"></a> [open\_to\_all](#input\_open\_to\_all) | Set to `true` if you want to open the cluster to all traffic from internet | `bool` | `false` | no |
| <a name="input_s3_mountpoint_csi_driver_enabled"></a> [s3\_mountpoint\_csi\_driver\_enabled](#input\_s3\_mountpoint\_csi\_driver\_enabled) | Whether to enable the S3 mountpoint CSI driver | `bool` | `false` | no |
| <a name="input_s3_mountpoint_csi_s3_bucket_arns"></a> [s3\_mountpoint\_csi\_s3\_bucket\_arns](#input\_s3\_mountpoint\_csi\_s3\_bucket\_arns) | List of S3 bucket ARNs to allow access from the S3 mountpoint CSI driver | `list(string)` | <pre>[<br/>  "*"<br/>]</pre> | no |
| <a name="input_static_autoscaling_group"></a> [static\_autoscaling\_group](#input\_static\_autoscaling\_group) | Configuration for static autoscaling group | <pre>object({<br/>    size = number<br/>    arch = optional(string, null)<br/>    type = string<br/>  })</pre> | `null` | no |
| <a name="input_traefik_cert_arn"></a> [traefik\_cert\_arn](#input\_traefik\_cert\_arn) | The ARN of the certificate to use for Traefik. | `string` | n/a | yes |
| <a name="input_traefik_nlb_service_ports"></a> [traefik\_nlb\_service\_ports](#input\_traefik\_nlb\_service\_ports) | List of additional ports for treafik k8s service | <pre>list(object({<br/>    name        = string<br/>    port        = number<br/>    target_port = string<br/>    protocol    = string<br/>  }))</pre> | `[]` | no |
| <a name="input_use_private_subnets_for_internal_nlb"></a> [use\_private\_subnets\_for\_internal\_nlb](#input\_use\_private\_subnets\_for\_internal\_nlb) | Set to `true` if you want to use private subnets for internal NLB | `bool` | `false` | no |
| <a name="input_vpc_cni_enable_prefix_delegation"></a> [vpc\_cni\_enable\_prefix\_delegation](#input\_vpc\_cni\_enable\_prefix\_delegation) | Enable prefix delegation for IPv6, allocate IPs in /28 blocks (instead of all at once) | `bool` | `true` | no |
| <a name="input_vpc_cni_version_override"></a> [vpc\_cni\_version\_override](#input\_vpc\_cni\_version\_override) | The version of the VPC CNI plugin to use. If not specified, the default version for the cluster version will be used. | `string` | `""` | no |
| <a name="input_vpc_cni_warm_eni_target"></a> [vpc\_cni\_warm\_eni\_target](#input\_vpc\_cni\_warm\_eni\_target) | Number of ENIs to keep warm for each node to speed up pod scheduling | `string` | `"1"` | no |
| <a name="input_vpc_cni_warm_ip_target"></a> [vpc\_cni\_warm\_ip\_target](#input\_vpc\_cni\_warm\_ip\_target) | Number of IPs to keep warm for each node to speed up pod scheduling | `string` | `"8"` | no |
| <a name="input_vpc_config"></a> [vpc\_config](#input\_vpc\_config) | VPC configuration from aws/vps module | <pre>object({<br/>    vpc_id          = string<br/>    private_subnets = list(string)<br/>    public_subnets  = list(string)<br/>  })</pre> | n/a | yes |
| <a name="input_wafv2_arn"></a> [wafv2\_arn](#input\_wafv2\_arn) | The ARN of the WAFv2 WebACL to associate with the ALB | `string` | `""` | no |

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
| <a name="output_nlb_zone_ids"></a> [nlb\_zone\_ids](#output\_nlb\_zone\_ids) | Map of zone IDs of the NLBs |
| <a name="output_node_security_group_id"></a> [node\_security\_group\_id](#output\_node\_security\_group\_id) | The security group ID of the EKS nodes |
<!-- END_TF_DOCS -->
