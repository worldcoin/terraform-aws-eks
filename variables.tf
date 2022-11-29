variable "cluster_name" {
  description = "The name of the cluster. Has to be unique per region per account."
  type        = string
}

variable "cluster_version" {
  description = "The Kubernetes version to use for the cluster."
  type        = string
  default     = "1.23"
}

variable "vpc_id" {
  description = "The VPC ID where the cluster should be created."
  type        = string
}

variable "private_subnets" {
  description = "The private subnets to use for the cluster nodes."
  type        = list(string)
}

variable "public_subnets" {
  description = "The public subnets to use for the cluster control plane."
  type        = list(string)
}

variable "vpc_cni_version_override" {
  description = "The version of the VPC CNI plugin to use. If not specified, the default version for the cluster version will be used."
  type        = string
  default     = ""
}

variable "kubernetes_provider_enabled" {
  description = "Whether to create a Kubernetes provider for the cluster. Use as a prerequisite to cluster removal."
  type        = bool
  default     = true
}

variable "extra_role_mapping" {
  description = "Extra role mappings to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))
  default = []
}
