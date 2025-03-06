# eks-access-entries

This module create access entries for EKS cluster based on information provided to module:
- cluster_name
- access-entries

## Example

### Access Entries minimal

```hcl
module "eks_access_entries" {
  source       = "git@github.com:worldcoin/terraform-aws-eks//modules/access-entries?ref=v4.5.0"
  cluster_name = local.cluster_name

  access_entries = {
    applicationA = {
      principal_arn     = "arn:aws:iam::507152310572:role/github-deployment-application"
      access_scope_type = "cluster"
    }
  }
}
```

### Access Entries For many Applications

```hcl
module "eks_access_entries" {
  source       = "git@github.com:worldcoin/terraform-aws-eks//modules/access-entries?ref=v4.5.0"
  cluster_name = local.cluster_name

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
