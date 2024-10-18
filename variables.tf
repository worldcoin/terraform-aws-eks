variable "cluster_name" {
  description = "The name of the cluster. Has to be unique per region per account."
  type        = string
  validation {
    condition     = can(regex("\\w-", var.cluster_name))
    error_message = "Cluster name must be lowercase alphanumeric characters"
  }
}

variable "environment" {
  description = "Environment of cluster"
  type        = string
  validation {
    condition     = can(regex("\\w+", var.environment))
    error_message = "Environment name must be lowercase alphanumeric characters or hyphens"
  }
}

variable "cluster_version" {
  description = "The Kubernetes version to use for the cluster."
  type        = number
  default     = "1.29"
}

variable "vpc_config" {
  description = "VPC configuration from aws/vps module"
  type = object({
    vpc_id          = string
    private_subnets = list(string)
    public_subnets  = list(string)
  })
  validation {
    condition = (
      can(regex("^vpc-\\w", var.vpc_config.vpc_id)) &&
      alltrue([for subnet in var.vpc_config.private_subnets : can(regex("subnet-\\w+", subnet))]) &&
      alltrue([for subnet in var.vpc_config.public_subnets : can(regex("subnet-\\w+", subnet))])
    )
    error_message = "Invalid VPC configuration"
  }
}

variable "vpc_cni_version_override" {
  description = "The version of the VPC CNI plugin to use. If not specified, the default version for the cluster version will be used."
  type        = string
  default     = ""
  validation {
    condition     = var.vpc_cni_version_override != "" ? can(regex("\\d+{1}\\.\\d+{1,2}\\.\\d+{1,2}", var.vpc_cni_version_override)) : true
    error_message = "Invalid version format"
  }
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
  validation {
    condition = alltrue([
      for role_mapping in var.extra_role_mapping : (
        can(regex("arn:aws:iam::\\d+{12}:role/\\w+", role_mapping.rolearn)) &&
        can(regex("\\w+", role_mapping.username)) &&
        alltrue([
          for group in role_mapping.groups : can(regex("\\w+", group))
        ])
      )
    ])
    error_message = "Invalid role mapping"
  }
}

variable "datadog_api_key" {
  description = "Datadog API key. Stored in kube-system namespace as a secret."
  type        = string
  validation {
    condition     = can(regex("\\W+", var.datadog_api_key))
    error_message = "Invalid API key"
  }
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
  validation {
    condition     = can(regex("^arn:aws:acm:[a-z][a-z]-[a-z]+-[1-9]:\\d{12}:certificate/[A-Za-z0-9\\-]+$", var.internal_nlb_acm_arn))
    error_message = "Invalid ACM ARN"
  }
}

variable "traefik_cert_arn" {
  description = "The ARN of the certificate to use for Traefik."
  type        = string
  validation {
    condition     = can(regex("^arn:aws:acm:[a-z][a-z]-[a-z]+-[1-9]:\\d{12}:certificate/[A-Za-z0-9\\-]+$", var.traefik_cert_arn))
    error_message = "Invalid ACM ARN"
  }
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
  validation {
    condition     = can(regex("^@slack-[A-Za-z0-9\\-]+$", var.monitoring_notification_channel))
    error_message = "Invalid notification channel"
  }
}

variable "alb_logs_bucket_id" {
  description = "The ID of the S3 bucket to store logs in for ALB."
  type        = string
  validation {
    condition     = can(regex("arn:aws:s3:::\\w+", var.alb_logs_bucket_id))
    error_message = "Invalid S3 bucket ID"
  }
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
  validation {
    condition = alltrue([
      for port in var.traefik_nlb_service_ports : (
        can(regex("\\w+", port.name)) &&
        (can(regex("\\d+", port.port)) && port.port > 0 && port.port <= 65535) &&
        can(regex("\\w+", port.target_port)) &&
        can(regex("TCP|UDP", port.protocol))
      )
    ])
    error_message = "Invalid port configuration"
  }
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
  validation {
    condition = alltrue([
      for listener in var.extra_nlb_listeners : (
        can(regex("\\w+", listener.name)) &&
        can(regex("\\d+", listener.port)) &&
        listener.port > 0 && listener.port <= 65535 &&
        can(regex("TCP|UDP", listener.protocol)) &&
        can(regex("\\d+", listener.target_group_port)) &&
        listener.target_group_port > 0 && listener.target_group_port <= 65535
      )
    ])
    error_message = "Invalid listener configuration"
  }
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
  validation {
    condition     = var.argocd_role_arn != null ? can(regex("^arn:aws:iam::\\d{12}:role/[A-Za-z0-9\\-]+$", var.argocd_role_arn)) : true
    error_message = "Invalid IAM role ARN"
  }
}

variable "static_autoscaling_group" {
  description = "Configuration for static autoscaling group"
  type = object({
    size = number
    arch = optional(string, null)
    type = string
  })
  default = null
  validation {
    condition = var.static_autoscaling_group == null ? true : (
      can(regex("\\d+", var.static_autoscaling_group.size)) &&
      var.static_autoscaling_group.size > 0 &&
      can(regex("\\w+", var.static_autoscaling_group.type)) &&
      var.static_autoscaling_group.arch != null ? can(regex("arm64|x86_64", var.static_autoscaling_group.arch)) : true
    )
    error_message = "Invalid static autoscaling group configuration"
  }
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
  validation {
    condition = alltrue([
      for rule in var.additional_security_group_rules : (
        can(regex("sg-\\w+", rule.sg_id)) &&
        can(regex("\\d+", rule.from_port)) &&
        rule.from_port >= 0 && rule.from_port <= 65535 &&
        can(regex("\\d+", rule.to_port)) &&
        rule.to_port >= 0 && rule.to_port <= 65535 &&
        can(regex("TCP|UDP|ICMP", rule.protocol)) &&
        can(regex("\\w+", rule.description))
      )
    ])
    error_message = "Invalid security group rule configuration"
  }
}

variable "alb_additional_node_ports" {
  description = "List of node ports which are accessible by ALB"
  type        = list(number)
  default     = []
  validation {
    condition = alltrue([
      for port in var.alb_additional_node_ports : (
        can(regex("\\d+", port)) &&
        port >= 0 && port <= 65535
      )
    ])
    error_message = "Invalid port configuration"
  }
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
  validation {
    condition     = var.alb_idle_timeout >= 1 && var.alb_idle_timeout <= 4000
    error_message = "Invalid idle timeout"
  }
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
  validation {
    condition = alltrue([
      for port in var.additional_open_ports : (
        can(regex("\\d+", port.port)) &&
        port.port >= 0 && port.port <= 65535 &&
        can(regex("TCP|UDP", port.protocol))
      )
    ])
    error_message = "Invalid port configuration"
  }
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
  validation {
    condition     = var.wafv2_arn == "" ? true : can(regex("^arn:aws:wafv2:\\w{2}-\\w{2}-\\w{1,12}:\\d{12}:webacl/.+$", var.wafv2_arn))
    error_message = "Invalid WAFv2 WebACL ARN"
  }
}

variable "dockerhub_pull_through_cache_repositories_arn" {
  description = "The ARN of the repositories to allow the EKS node group to pull images from the DockerHub pull-through cache."
  type        = string
  default     = "arn:aws:ecr:us-east-1:507152310572:repository/docker-cache/*" # internal-tools docker-cache ECR repositories
  validation {
    #                           arn:aws:ecr:us-east-1:507152310572:repository/docker-cache/*
    condition     = can(regex("arn:aws:ecr:[a-z][a-z]-\\w+-\\d{1}:\\d{12}:repository/.*", var.dockerhub_pull_through_cache_repositories_arn))
    error_message = "Invalid ECR repository ARN"
  }
}
