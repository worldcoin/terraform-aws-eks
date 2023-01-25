# terraform-aws-eks
- [terraform-aws-eks](#terraform-aws-eks)
  - [Description](#description)
  - [Supported versions](#supported-versions)
  - [Example](#example)
  - [Datadog](#datadog)
  - [Snyk](#snyk)
  - [Amazon EFS CSI driver](#amazon-efs-csi-driver)
  - [Cluster removal](#cluster-removal)

## Description 
This module is used to create an EKS cluster on AWS with the support of the `vpc` 
and `sso-roles` modules.

## Supported versions
The module is currently supporting the following versions of Kubernetes:
- 1.22,
- 1.23,
- 1.24,

## Example
A minimal example of how to use this module.

```terraform
module "orb" {
    source       = "git@github.com:worldcoin/terraform-aws-eks?ref=v0.3.0"
    cluster_name = "orb-${var.environment}-${var.region}"

    vpc_config = module.vpc.config

    extra_role_mapping = module.sso_roles.default_mappings

    snyk_integration_id = var.snyk_integration_id
    datadog_api_key     = var.datadog_api_key
    traefik_cert_arn    = var.traefik_cert_arn
}
```

Extra load balancers setup:
```terraform
module "orb" {
    source       = "git@github.com:worldcoin/terraform-aws-eks?ref=v0.3.0"
    cluster_name = "orb-${var.environment}-${var.region}"

    vpc_config = module.vpc.config

    extra_role_mapping = module.sso_roles.default_mappings

    snyk_integration_id = var.snyk_integration_id
    datadog_api_key     = var.datadog_api_key
    traefik_cert_arn    = var.traefik_cert_arn

    custom_load_balancers = {
      internal = false
    }
}
```

## Datadog
The module is creating a DataDog integration secret for the [apiKeyExistingSecret](https://github.com/DataDog/helm-charts/blob/main/charts/datadog/values.yaml#L38) of the DataDog helm chart.

## Snyk
The module is creating a Snyk integration secret for the [snyk-monitor](https://artifacthub.io/packages/helm/snyk/snyk-monitor#installing) Helm chart.

## Amazon EFS CSI driver
The module comes with the IAM role for [Amazon EFS CSI driver](https://docs.aws.amazon.com/eks/latest/userguide/efs-csi.html), and can be enabled using `efs_csi_driver_enabled` variable. Also with the role, it will create an instance of Elastic File System (EFS) and mount it to the cluster as a StorageClass named `efs-sc`.

## Cluster removal
To remove the cluster you have to set the flag `kubernetes_provider_enabled` to
`false`. The module will remove every usage of the Kubernetes provider and allow
You to remove the cluster module without any errors.

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
