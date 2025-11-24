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

variable "region" {
  description = "AWS Region"
  type        = string
  validation {
    condition     = can(regex("^([a-z0-9]+(-[a-z0-9]+)*)$", var.region)) && length(regex("^([a-z0-9]+(-[a-z0-9]+)*)$", var.region)) > 0
    error_message = "AWS Region must contain only lowercase letters, digits and hyphens"
  }
}

variable "cluster_version" {
  description = "The Kubernetes version to use for the cluster."
  type        = string
  default     = "1.33"
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
  validation {
    condition = alltrue([
      for role_mapping in var.extra_role_mapping : (
        role_mapping.rolearn != "" ? can(regex("arn:aws:iam::[0-9]{12}:role/[a-zA-Z0-9+=,.@_/-]+$", role_mapping.rolearn)) : true
      )
    ])
    error_message = "Invalid role mapping"
  }
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

variable "external_alb_enabled" {
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
  # commented due to tests passed, but in module it is not working
  # regex match certificate arn
  # validation {
  #   condition     = can(regex("^arn:aws:acm:[a-z][a-z]-[a-z]+-[1-9]:[0-9]{12}:certificate/[A-Za-z0-9\\-]+$", var.internal_nlb_acm_arn))
  #   error_message = "Invalid ACM ARN"
  # }
}

variable "traefik_cert_arn" {
  description = "The ARN of the certificate to use for Traefik."
  type        = string
  default     = null
  validation {
    condition     = var.internal_nlb_enabled || var.external_alb_enabled ? can(regex("^arn:aws:acm:[a-z][a-z]-[a-z]+-[1-9]:[0-9]{12}:certificate/[A-Za-z0-9\\-]+$", var.traefik_cert_arn)) : true
    error_message = "Invalid `traefik_cert_arn` ARN"
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

variable "monitor_all_workload" {
  description = "Whether to monitor all workloads in the cluster. False will only monitor workloads in system namespaces."
  type        = bool
  default     = true # TEMP for testing
}

variable "monitoring_external_enabled" {
  description = "Whether to enable external monitoring (Datadog Synthetics)."
  type        = bool
  default     = true
}

variable "monitoring_notification_channel" {
  description = "The Datadog notification channel to use for monitoring alerts."
  type        = string
  default     = "@slack-TFH-infrastructure-alerts"
  validation {
    condition     = can(regex("^@(?:slack|webhook)-[A-Za-z0-9\\-]+$", var.monitoring_notification_channel))
    error_message = "Invalid notification channel"
  }
}

variable "monitoring_reachability_fail_locations" {
  description = "Number of locations to fail to trigger the reachability test"
  type        = number
  default     = 5
}

variable "monitoring_reachability_failure_duration" {
  description = "Time after first error when the reachability test is triggered"
  type        = number
  default     = 300
}

variable "alb_logs_bucket_id" {
  description = "The ID of the S3 bucket to store logs in for ALB."
  type        = string
  validation {
    condition = (
      can(regex("^[a-z0-9][a-z0-9-]{1,61}[a-z0-9]$", var.alb_logs_bucket_id)) &&
      !strcontains(var.alb_logs_bucket_id, "..") &&
      !startswith(var.alb_logs_bucket_id, "xn--") &&
      !startswith(var.alb_logs_bucket_id, "sthree-") &&
      !endswith(var.alb_logs_bucket_id, "-s3alias") &&
      !endswith(var.alb_logs_bucket_id, "--ol-s3")
    )
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

variable "vpc_cni_enable_prefix_delegation" {
  description = "Enable prefix delegation for IPv6, allocate IPs in /28 blocks (instead of all at once)"
  type        = bool
  default     = false
}

variable "vpc_cni_warm_ip_target" {
  description = "Number of IPs to keep warm for each node to speed up pod scheduling"
  type        = string
  default     = "4"
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
    type      = string
    from_port = number
    to_port   = number
    protocol  = string

    description                   = optional(string)
    cidr_blocks                   = optional(list(string))
    ipv6_cidr_blocks              = optional(list(string))
    prefix_list_ids               = optional(list(string))
    self                          = optional(bool)
    source_cluster_security_group = optional(bool, false)
    sg_id                         = optional(string)
  }))
  default = []
  validation {
    condition = alltrue([
      for rule in var.additional_security_group_rules : (
        can(regex("\\d+", rule.from_port)) &&
        rule.from_port >= 0 && rule.from_port <= 65535 &&
        can(regex("\\d+", rule.to_port)) &&
        rule.to_port >= 0 && rule.to_port <= 65535 &&
        can(regex("TCP|UDP|ICMP|tcp|udp|icmp|-1", rule.protocol))
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
        can(regex("TCP|UDP|tcp|udp", port.protocol))
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
    condition     = var.wafv2_arn == "" ? true : can(regex("^arn:aws:wafv2:\\w{2}-\\w+-\\d{1}:\\d{12}:(regional|global)/webacl/.+$", var.wafv2_arn))
    error_message = "Invalid WAFv2 WebACL ARN"
  }
}

variable "dockerhub_pull_through_cache_repositories_arn" {
  description = "The ARN of the repositories to allow the EKS node group to pull images from the DockerHub pull-through cache."
  type        = string
  default     = "arn:aws:ecr:us-east-1:507152310572:repository/docker-cache/*" # internal-tools docker-cache ECR repositories
  validation {
    condition     = can(regex("arn:aws:ecr:[a-z][a-z]-\\w+-\\d{1}:\\d{12}:repository/.*", var.dockerhub_pull_through_cache_repositories_arn))
    error_message = "Invalid ECR repository ARN"
  }
}

variable "cluster_endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled"
  type        = bool
  default     = false
}

variable "public_access_cidrs" {
  description = "List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint when enabled."
  type        = list(string)
  default     = ["0.0.0.0/0"]
  validation {
    condition     = alltrue([for cidr in var.public_access_cidrs : can(cidrnetmask(cidr))])
    error_message = "All public access CIDRs must be valid CIDR blocks."
  }
}

variable "acm_extra_arns" {
  description = "ARNs of ACM certificates used for TLS, attached as additional certificates to the ALB"
  type        = list(string)
  default     = []
}

variable "external_check_locations" {
  description = "List of DD locations to check cluster availability from"
  type        = list(string)
  default = [
    "aws:af-south-1",
    "aws:ap-south-1",
    "aws:ap-southeast-1",
    "aws:eu-central-1",
    "aws:sa-east-1",
    "aws:us-east-1",
  ]
}

variable "http_put_response_hop_limit" {
  description = "The maximum number of hops allowed for HTTP PUT requests. Must be between 1 and 64."
  type        = number
  default     = 2
  validation {
    condition     = var.http_put_response_hop_limit >= 1 && var.http_put_response_hop_limit <= 64
    error_message = "Invalid hop limit. Must be between 1 and 64"
  }
}

variable "authentication_mode" {
  description = "The authentication mode for the cluster. Valid values are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`"
  type        = string
  default     = "API_AND_CONFIG_MAP"
  validation {
    condition     = var.authentication_mode == "CONFIG_MAP" || var.authentication_mode == "API" || var.authentication_mode == "API_AND_CONFIG_MAP"
    error_message = "Invalid authentication mode"
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

variable "s3_mountpoint_csi_driver_enabled" {
  description = "Whether to enable the S3 mountpoint CSI driver"
  type        = bool
  default     = false
}

variable "s3_mountpoint_csi_s3_bucket_arns" {
  description = "List of S3 bucket ARNs to allow access from the S3 mountpoint CSI driver"
  type        = list(string)
  default     = ["*"]
}

variable "memory_limits_low_perc_enabled" {
  description = "Enable memory limits low percentage alert"
  type        = bool
  default     = false
}

variable "node_monitoring_agent_enabled" {
  description = "Enable node monitoring agent"
  type        = bool
  default     = false
}

variable "coredns_min_replicas" {
  description = "Minimum number of replicas for CoreDNS"
  type        = number
  default     = 2
}

variable "coredns_max_replicas" {
  description = "Maximum number of replicas for CoreDNS"
  type        = number
  default     = 10
}

variable "additional_cluster_security_group_rules" {
  description = "Additional cluster security group rules"
  type = list(object({
    type      = string
    from_port = number
    to_port   = number
    protocol  = string

    description                = optional(string)
    cidr_blocks                = optional(list(string))
    ipv6_cidr_blocks           = optional(list(string))
    prefix_list_ids            = optional(list(string))
    self                       = optional(bool)
    source_node_security_group = optional(bool, false)
    sg_id                      = optional(string)
  }))
  default = []
  validation {
    condition = alltrue([
      for rule in var.additional_cluster_security_group_rules : (
        can(regex("\\d+", rule.from_port)) &&
        rule.from_port >= 0 && rule.from_port <= 65535 &&
        can(regex("\\d+", rule.to_port)) &&
        rule.to_port >= 0 && rule.to_port <= 65535 &&
        can(regex("TCP|UDP|ICMP|tcp|udp|icmp|-1", rule.protocol))
      )
    ])
    error_message = "Invalid security group rule configuration"
  }
}

variable "tfe_cidr" {
  description = "Terraform Enterprise CIDR block"
  type        = string
  default     = "10.52.160.0/20"

  validation {
    condition     = can(regex("^([0-9]{1,3}\\.){3}[0-9]{1,3}/[0-9]{1,2}$", var.tfe_cidr))
    error_message = "Terraform Enterprise CIDR must be a valid CIDR block."
  }
}

variable "gha_cidr" {
  description = "GitHub Actions CIDR block"
  type        = string
  default     = "10.0.96.0/20"

  validation {
    condition     = can(regex("^([0-9]{1,3}\\.){3}[0-9]{1,3}/[0-9]{1,2}$", var.gha_cidr))
    error_message = "GitHub Actions CIDR must be a valid CIDR block."
  }
}

variable "enclaves_instance_type" {
  description = "Instance type for Nitro Enclaves"
  type        = string
  default     = "m7a.2xlarge"
  validation {
    condition     = can(regex("^(c5|c5d|c5n|c6i|c6id|c6in|c7i|m5|m5d|m5dn|m5n|m5zn|m6i|m6id|m6idn|m6in|m7i|m7a|r5|r5b|r5d|r5dn|r5n|r6i|r6id|r6idn|r6in|r7i|x2idn|x2iedn|x2iezn|z1d)\\.(xlarge|2xlarge|4xlarge|8xlarge|12xlarge|16xlarge|32xlarge)$", var.enclaves_instance_type)) || can(regex("^(c6g|c6gd|c6gn|c7g|m6g|m6gd|r6g|r6gd|x2gd)\\.(large|xlarge|2xlarge|4xlarge|8xlarge|12xlarge|16xlarge)$", var.enclaves_instance_type))
    error_message = "Invalid instance type for Nitro Enclaves. Must be Intel/AMD instances with at least 4 vCPUs (excluding c7i.24xlarge, c7i.48xlarge, m7i.24xlarge, m7i.48xlarge) or Graviton instances with at least 2 vCPUs (excluding excluded families)."
  }
}

variable "enclaves_cpu_allocation" {
  description = "Number of CPUs to allocate for Nitro Enclaves per node"
  type        = string
  default     = "4"
}

variable "enclaves_memory_allocation" {
  description = "Memory in MiB to allocate for Nitro Enclaves per node"
  type        = string
  default     = "4096"
}

variable "enclave_tracks" {
  description = "Additional enclave tracks for multi-version deployments. Key is used as track identifier."
  type = map(object({
    autoscaling_group = optional(object({
      size     = optional(number, 1)
      min_size = optional(number, 0)
      max_size = optional(number, 10)
    }), {})
    instance_type     = optional(string)
    cpu_allocation    = optional(string)
    memory_allocation = optional(string)
  }))
  default = {}

  validation {
    condition = alltrue([
      for k, v in var.enclave_tracks :
      can(regex("^[a-z0-9]([-a-z0-9]*[a-z0-9])?$", k)) && length(k) <= 30
    ])
    error_message = "Track keys must be valid Kubernetes labels (lowercase alphanumeric, hyphens, max 30 chars)"
  }
}

variable "storage_class" {
  description = "Configuration for the storage class that defines how volumes are allocated in Kubernetes."

  type = object({
    volume_binding_mode    = optional(string, "WaitForFirstConsumer")
    allow_volume_expansion = optional(bool, true)
  })

  default = {
    volume_binding_mode    = "WaitForFirstConsumer"
    allow_volume_expansion = true
  }

  validation {
    condition = (
      contains(["WaitForFirstConsumer", "Immediate"], var.storage_class.volume_binding_mode)
    )
    error_message = "volume_binding_mode must be one of: 'WaitForFirstConsumer' or 'Immediate'."
  }
}

# https://github.com/worldcoin/terraform-datadog-kubernetes/blob/main/deploy-desired-vs-status-variables.tf#L6-L16
variable "deploy_desired_vs_status_warning" {
  description = "Threshold for warning for Desired pods vs current pods (Deployments)"
  type        = number
  default     = 1
}
variable "deploy_desired_vs_status_critical" {
  description = "Threshold for critical for Desired pods vs current pods (Deployments)"
  type        = number
  default     = 10
}
variable "deploy_desired_vs_status_evaluation_period" {
  description = "Evaluation period for Desired pods vs current pods (Deployments)"
  type        = string
  default     = "last_15m"
}

variable "vpc_cni_enable_pod_eni" {
  description = "Enable pod ENI support"
  type        = bool
  default     = false
}

variable "vpc_cni_pod_security_group_enforcing_mode" {
  description = "Set pod security group enforcing mode"
  type        = string
  default     = "standard"

  validation {
    condition     = can(regex("^(standard|strict)$", var.vpc_cni_pod_security_group_enforcing_mode))
    error_message = "Invalid pod security group enforcing mode. Must be 'standard' or 'strict'."
  }
}

variable "vpc_cni_external_snat" {
  description = "Needed to enable cross-vpc pod-to-pod communication - see: https://github.com/aws/amazon-vpc-cni-k8s?tab=readme-ov-file#aws_vpc_k8s_cni_externalsnat"
  type        = string
  default     = false
}

variable "aws_load_balancer_iam_role_enabled" {
  description = "Whether to enable the IAM role for the AWS Load Balancer"
  type        = bool
  default     = true
}

variable "eks_node_group" {
  description = "Configuration for EKS node group"
  type = object({
    arch  = string
    types = list(string)
    disk  = optional(number, 100)
    dns   = optional(string, "172.20.0.10")
  })

  default = null
}

variable "aws_autoscaling_group_enabled" {
  description = "Whether to enable AWS Autoscaling group"
  type        = bool
  default     = true
}

variable "on_demand_percentage_above_base_capacity" {
  description = "The percentage of on-demand instances to use above the base capacity"
  type        = number
  default     = 50
}
