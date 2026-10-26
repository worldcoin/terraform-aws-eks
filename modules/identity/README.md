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

Deployment access entries use the `NamespaceCreator` Kubernetes group by default.
Set `deployment_kubernetes_groups` to override this list, or `[]` to use only
the EKS access policy. RBAC permissions are additive: inspect all bindings to
the selected groups. When replacing the default, provision any required
namespace-creation binding before deploying with `helm --create-namespace`.
When using the main EKS module, set its `namespace_creator_groups` to the same
dedicated groups. That module owns the binding and Kubernetes provider; this
identity module continues to require only the AWS provider.
This setting does not change Pod Identity associations or the namespace-scoped
EKS admin policy.
