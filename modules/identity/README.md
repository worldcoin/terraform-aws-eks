# eks-identity

This module create `pods identity` and `access entries` for EKS cluster based on information provided to module.

## Example

Base example how to use this module you can find below.

### Minimal

```hcl
module "test_selfservice_application_identity" {
  source = "git@github.com:worldcoin/terraform-aws-eks//modules/identity?ref=v4.x.x"

  application      = "test-selfservice-application"
  environment      = var.environment
  cluster_name     = module.eks.name
  service_accounts = ["test-selfservice-application"]
  namespace        = "test-selfservice-application"
}
```
