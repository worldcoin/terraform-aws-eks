# eks-access-entries

This module create access entries for EKS cluster based on information provided to module:
- cluster_name
- access-entries

## Example

### Access Entries minimal

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
