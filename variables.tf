variable "cluster_name" {
  description = "The name of the cluster. Has to be unique per region per account."
  type        = string
}

variable "environment" {
  description = "Environment of cluster"
  type        = string
}

variable "cluster_version" {
  description = "The Kubernetes version to use for the cluster."
  type        = string
  default     = "1.28"
}

variable "vpc_config" {
  description = "VPC configuration from aws/vps module"
  type = object({
    vpc_id          = string
    private_subnets = list(string)
    public_subnets  = list(string)
  })
}

variable "vpc_cni_version_override" {
  description = "The version of the VPC CNI plugin to use. If not specified, the default version for the cluster version will be used."
  type        = string
  default     = ""
}

variable "on_demand_base_capacity" {
  description = "The number of minimum on-demand instances to launch."
  type        = number
  default     = 1
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

variable "datadog_api_key" {
  description = "Datadog API key. Stored in kube-system namespace as a secret."
  type        = string
}

variable "internal_nlb_enabled" {
  description = "Internal Network load balancers to create. If true, the NLB will be created."
  type        = bool
  default     = true
}

variable "traefik_cert_arn" {
  description = "The ARN of the certificate to use for Traefik."
  type        = string
}

variable "efs_csi_driver_enabled" {
  description = "Whether to enable the EFS CSI driver (IAM Role & StorageClass)."
  type        = bool
  default     = false
}

variable "monitoring_enabled" {
  description = "Whether to enable monitoring (Datadog)."
  type        = bool
  default     = true
}

variable "monitoring_notification_channel" {
  description = "The Datadog notification channel to use for monitoring alerts."
  type        = string
  default     = "@slack-TFH-infrastructure-alerts"
}

variable "alb_logs_bucket_id" {
  description = "The ID of the S3 bucket to store logs in for ALB."
  type        = string
}

variable "traefik_nlb_service_ports" {
  description = "List of additional ports for treafik k8s service"
  type = list(object({
    name        = string
    port        = number
    target_port = string
    protocol    = string
  }))

  default = []
}

variable "extra_nlb_listeners" {
  description = "List with configuration for additional listeners"
  type = list(object({
    name              = string
    port              = string
    protocol          = optional(string, "TCP")
    target_group_port = number
  }))

  default = []
}

variable "kubelet_extra_args" {
  description = "kubelet extra args to pass to the node group"
  type        = string
  default     = "--register-with-taints=karpenter:NoExecute"
}

variable "vpc_cni_warm_ip_target" {
  description = "Number of IPs to keep warm for each node to speed up pod scheduling"
  type        = string
  default     = "8"
}

variable "vpc_cni_warm_eni_target" {
  description = "Number of ENIs to keep warm for each node to speed up pod scheduling"
  type        = string
  default     = "1"
}
