variable "application" {
  description = "Application name; used for role name"
  type        = string
}

variable "environment" {
  description = "Environment name; used for role name"
  type        = string
}

variable "cluster_name" {
  description = "The name of the cluster. Has to be unique per region per account."
  type        = string
  validation {
    condition     = can(regex("\\w-", var.cluster_name))
    error_message = "Cluster name must be lowercase alphanumeric characters"
  }
}

variable "namespace" {
  description = "Namespace of the Kubernetes service account to authorise"
  type        = string
}

variable "service_accounts" {
  description = "List of service accounts to be associated with global role"
  type        = list(string)
}
