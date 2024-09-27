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
  default     = "1.29"
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

variable "kube_ops_enabled" {
  description = "Whether to create a role and association for kube-ops"
  type        = bool
  default     = false
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

variable "use_private_subnets_for_internal_nlb" {
  description = "Set to `true` if you want to use private subnets for internal NLB"
  type        = bool
  default     = false
}

variable "internal_nlb_acm_arn" {
  description = "The ARN of the certificate to use for internal NLB."
  type        = string
  default     = ""
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
  default     = "--register-with-taints=critical:NoExecute"
}

variable "kubelet_extra_args_static_autoscaling_group" {
  description = "kubelet extra args to pass to the static node group"
  type        = string
  default     = ""
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

variable "internal_tls_listener_version" {
  description = "The version of the TLS listener to use for internal NLB."
  type        = string
  default     = "1.3"
  validation {
    condition     = var.internal_tls_listener_version == "1.2" || var.internal_tls_listener_version == "1.3"
    error_message = "Only TLS >= 1.2 or 1.3 are supported"
  }
}

variable "external_tls_listener_version" {
  description = "The version of the TLS listener to use for external ALB."
  type        = string
  default     = "1.3"
  validation {
    condition     = var.external_tls_listener_version == "1.2" || var.external_tls_listener_version == "1.3"
    error_message = "Only TLS >= 1.2 or 1.3 are supported"
  }
}

variable "argocd_role_arn" {
  description = "The ARN of the remote ArgoCD role used to assume eks-cluster role"
  type        = string
  default     = null
}

variable "static_autoscaling_group" {
  description = "Configuration for static autoscaling group"
  type = object({
    size = number
    arch = optional(string, null)
    type = string
  })

  default = null
}

variable "additional_security_group_rules" {
  description = "Additional security group rules"
  type = list(object({
    sg_id       = string
    type        = string
    from_port   = number
    to_port     = number
    protocol    = string
    description = string
  }))

  default = []
}

variable "alb_additional_node_ports" {
  description = "List of node ports which are accessible by ALB"
  type        = list(number)
  default     = []
}

variable "create_ebs_csi_controller_role" {
  description = "Set to `true` if you want to create the EBS CSI controller IAM role"
  type        = bool
  default     = false
}

variable "alb_idle_timeout" {
  description = "The time in seconds that the connection is allowed to be idle"
  type        = number
  default     = 60
}

variable "node_instance_profile_inline_policies" {
  description = "Inline policies to attach to the node instance profile. Key is the name of the policy, value is the policy document."
  type        = map(string)
  default     = {}
}

variable "open_to_all" {
  description = "Set to `true` if you want to open the cluster to all traffic from internet"
  type        = bool
  default     = false
}

variable "additional_open_ports" {
  description = "Additional ports accessible from the Internet for the ALB"
  type = set(object({
    port     = number
    protocol = optional(string, "tcp")
  }))
  default = []
}

variable "drop_invalid_header_fields" {
  description = "Drop invalid header fields"
  type        = bool
  default     = false
}

variable "wafv2_arn" {
  description = "The ARN of the WAFv2 WebACL to associate with the ALB"
  type        = string
  default     = ""
}

variable "dockerhub_pull_through_cache_repositories_arn" {
  description = "The ARN of the repositories to allow the EKS node group to pull images from the DockerHub pull-through cache."
  type        = string
  default     = "arn:aws:ecr:us-east-1:507152310572:repository/docker-cache/*" # internal-tools docker-cache ECR repositories
}
