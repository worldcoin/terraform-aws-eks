variable "cluster_name" {
  description = "The name of the cluster. Has to be unique per region per account."
  type        = string
  validation {
    condition     = can(regex("\\w-", var.cluster_name))
    error_message = "Cluster name must be lowercase alphanumeric characters"
  }
}

variable "access_entries" {
  description = "Map of access entries to add to the cluster"
  type = map(object({
    principal_arn           = string
    kubernetes_groups       = optional(list(string), null)
    type                    = optional(string, "STANDARD")
    tags                    = optional(map(string), {})
    access_scope_type       = optional(string, "namespace")
    access_scope_namespaces = optional(list(string), [])
    policy_arn              = optional(string, "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy")
  }))
  default = {}
}
