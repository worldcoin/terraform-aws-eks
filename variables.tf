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
  default     = "1.26"
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

variable "github_deploy_group" {
  description = "A kubernetes group attached to github-deploy."
  type        = string
  default     = "system:masters"
}

variable "snyk_integration_id" {
  description = "The Snyk Integration ID. Stored in snyk-monitor namespace as a secret ."
  type        = string
}

variable "datadog_api_key" {
  description = "Datadog API key. Stored in kube-system namespace as a secret."
  type        = string
}

variable "custom_load_balancers" {
  description = "Custom load balancers to create. Key is the name of the load balancer, value is whether it should be internet-facing or not."
  type        = map(bool)
  default     = {}
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

variable "alb_enabled" {
  description = "If it set to true ALB will be created"
  type        = bool
  default     = false
}

variable "internal_alb_ingress_rules" {
  description = "The security group rules to allow ingress from to internal ALB"
  type = list(object({
    description     = optional(string, "")
    protocol        = optional(string, "tcp")
    port            = optional(number, 443)
    security_groups = optional(list(string))
    cidr_blocks     = optional(list(string))
  }))
  default = []
}
