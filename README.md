# terraform-aws-eks
- [terraform-aws-eks](#terraform-aws-eks)
  - [Description](#description)
  - [Example](#example)
  - [Cluster removal](#cluster-removal)

## Description 
This module is used to create an EKS cluster on AWS with the support of the `vpc` 
and `sso-roles` modules.

## Example
A minimal example of how to use this module.

```terraform
module "orb" {
    source       = "github.com/terraform-aws-modules/terraform-aws-eks"
    cluster_name = "orb-${var.environment}-${var.region}"

    vpc_id          = module.vpc.id
    public_subnets  = module.vpc.public_subnets
    private_subnets = module.vpc.private_subnets

    extra_role_mapping = module.sso_roles.default_mappings
}
```

## Cluster removal
To remove the cluster you have to set the flag `kubernetes_provider_enabled` to
`false`. The module will remove every usage of the Kubernetes provider and allow
You to remove the cluster module without any errors.

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
