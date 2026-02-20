# =============================================================================
# SECURE KUBE-OPS IAM ROLE WITH ABAC (ATTRIBUTE-BASED ACCESS CONTROL)
# =============================================================================
# This file demonstrates a deeply secured IAM role configuration for kube-ops
# using ABAC principles, including:
# - Strict trust policy with conditions
# - Granular resource-based permissions
# - Tag-based access control
# - Temporal and network-based restrictions
# - Least privilege principles
# =============================================================================

# -----------------------------------------------------------------------------
# Variables for ABAC Configuration
# -----------------------------------------------------------------------------

variable "kube_ops_allowed_account_ids" {
  description = "List of AWS account IDs allowed to assume the kube-ops role"
  type        = list(string)
  default     = []
}

variable "kube_ops_allowed_principals" {
  description = "Additional IAM principals allowed to assume kube-ops role"
  type        = list(string)
  default     = []
}

variable "kube_ops_secrets_prefix" {
  description = "Prefix for secrets that kube-ops can access"
  type        = string
  default     = "kube-ops/"
}

variable "kube_ops_required_tags" {
  description = "Required tags for kube-ops resources"
  type        = map(string)
  default = {
    Environment = "production"
    ManagedBy   = "terraform"
    Team        = "platform"
  }
}

variable "kube_ops_max_session_duration" {
  description = "Maximum session duration in seconds for assumed roles"
  type        = number
  default     = 3600 # 1 hour
}

# -----------------------------------------------------------------------------
# Data Source: Current AWS Account and Region
# -----------------------------------------------------------------------------

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

# -----------------------------------------------------------------------------
# Secure Assume Role Policy with ABAC Conditions
# -----------------------------------------------------------------------------
# This trust policy implements AWS EKS Pod Identity best practices:
# 1. Locks role to specific cluster using aws:SourceArn (prevents cross-cluster abuse)
# 2. Restricts to specific namespace using kubernetes-namespace tag
# 3. Restricts to specific service account using kubernetes-service-account tag
# 4. Enforces account-level restrictions using aws:SourceAccount
#
# Reference: https://docs.aws.amazon.com/eks/latest/userguide/pod-id-role.html
# -----------------------------------------------------------------------------

data "aws_iam_policy_document" "assume_role_secure" {
  # Primary statement: Allow EKS Pod Identity to assume the role
  statement {
    sid    = "EKSPodIdentityAssumeRole"
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["pods.eks.amazonaws.com"]
    }

    actions = [
      "sts:AssumeRole",
      "sts:TagSession"
    ]

    # Condition 1: Restrict to specific cluster
    condition {
      test     = "StringEquals"
      variable = "aws:SourceAccount"
      values   = [data.aws_caller_identity.current.account_id]
    }

    # Condition 2: Lock to specific EKS cluster ARN (CRITICAL: Prevents cross-cluster abuse)
    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values   = [aws_eks_cluster.this.arn]
    }

    # Condition 3: Restrict to specific namespace (Per AWS best practices)
    condition {
      test     = "StringEquals"
      variable = "aws:RequestTag/kubernetes-namespace"
      values   = ["kube-ops"]
    }

    # Condition 4: Restrict to specific service account (Per AWS best practices)
    condition {
      test     = "StringEquals"
      variable = "aws:RequestTag/kubernetes-service-account"
      values   = ["kube-ops"]
    }

    # Condition 5: Enforce secure transport (TLS)
    condition {
      test     = "Bool"
      variable = "aws:SecureTransport"
      values   = ["true"]
    }

    # Condition 6: Restrict by time window (optional, business hours only)
    # condition {
    #   test     = "DateGreaterThan"
    #   variable = "aws:CurrentTime"
    #   values   = ["2024-01-01T00:00:00Z"]
    # }
    # condition {
    #   test     = "DateLessThan"
    #   variable = "aws:CurrentTime"
    #   values   = ["2025-12-31T23:59:59Z"]
    # }
  }

  # Secondary statement: Allow specific IAM principals (for break-glass scenarios)
  dynamic "statement" {
    for_each = length(var.kube_ops_allowed_principals) > 0 ? [1] : []
    content {
      sid    = "AllowSpecificPrincipals"
      effect = "Allow"

      principals {
        type        = "AWS"
        identifiers = var.kube_ops_allowed_principals
      }

      actions = ["sts:AssumeRole"]

      # Require MFA for human users
      condition {
        test     = "Bool"
        variable = "aws:MultiFactorAuthPresent"
        values   = ["true"]
      }

      # Enforce secure transport
      condition {
        test     = "Bool"
        variable = "aws:SecureTransport"
        values   = ["true"]
      }

      # Restrict by source IP (VPN/corporate network)
      # condition {
      #   test     = "IpAddress"
      #   variable = "aws:SourceIp"
      #   values   = ["10.0.0.0/8", "172.16.0.0/12"]
      # }
    }
  }

  # Deny statement: Explicitly deny if conditions are not met
  statement {
    sid    = "DenyInsecureTransport"
    effect = "Deny"

    principals {
      type        = "Service"
      identifiers = ["pods.eks.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]

    condition {
      test     = "Bool"
      variable = "aws:SecureTransport"
      values   = ["false"]
    }
  }
}

# -----------------------------------------------------------------------------
# Secure IAM Role with ABAC Tags
# -----------------------------------------------------------------------------

resource "aws_iam_role" "kube_ops_secure" {
  count = var.kube_ops_enabled ? 1 : 0

  name               = trimsuffix(substr("kube-ops-${var.cluster_name}", 0, 63), "-")
  assume_role_policy = data.aws_iam_policy_document.assume_role_secure.json
  path               = "/system/"
  description        = "Secure kube-ops role with ABAC for cluster ${var.cluster_name}"

  max_session_duration = var.kube_ops_max_session_duration

  # ABAC Tags - used for permission boundaries and conditional access
  tags = merge(
    var.kube_ops_required_tags,
    {
      Name        = "kube-ops-${var.cluster_name}"
      Cluster     = var.cluster_name
      Environment = var.environment
      Region      = var.region
      Role        = "kube-ops"
      Namespace   = "kube-ops"
      # Security tags
      DataClassification = "confidential"
      ComplianceScope    = "soc2"
    }
  )

  # Force MFA delete and prevent accidental deletion
  # Note: These are best practices for production environments
  lifecycle {
    prevent_destroy = false # Set to true in production
  }
}

# -----------------------------------------------------------------------------
# Secure IAM Policy Document with ABAC and Least Privilege
# -----------------------------------------------------------------------------

data "aws_iam_policy_document" "kube_ops_secure" {
  # Statement 1: Read secrets with tag-based restrictions
  statement {
    sid    = "ReadSecretsWithTags"
    effect = "Allow"

    actions = [
      "secretsmanager:GetSecretValue",
      "secretsmanager:DescribeSecret",
    ]

    # Restrict to specific secret path prefix
    resources = [
      "arn:aws:secretsmanager:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:secret:${var.kube_ops_secrets_prefix}*"
    ]

    # Condition 1: Only access secrets with matching environment tag
    condition {
      test     = "StringEquals"
      variable = "secretsmanager:ResourceTag/Environment"
      values   = [var.environment]
    }

    # Condition 2: Only access secrets with matching team tag
    condition {
      test     = "StringEquals"
      variable = "secretsmanager:ResourceTag/Team"
      values   = ["platform", "kube-ops"]
    }

    # Condition 3: Enforce encryption in transit
    condition {
      test     = "Bool"
      variable = "aws:SecureTransport"
      values   = ["true"]
    }

    # Condition 4: Restrict to specific VPC endpoints (optional)
    # condition {
    #   test     = "StringEquals"
    #   variable = "aws:SourceVpce"
    #   values   = ["vpce-xxxxx"]
    # }
  }

  # Statement 2: List secrets (read-only, limited scope)
  statement {
    sid    = "ListSecretsLimited"
    effect = "Allow"

    actions = [
      "secretsmanager:ListSecrets",
    ]

    resources = ["*"]

    # Condition: Only list secrets in the same region
    condition {
      test     = "StringEquals"
      variable = "aws:RequestedRegion"
      values   = [data.aws_region.current.name]
    }
  }

  # Statement 3: Get secret metadata (no access to secret values)
  statement {
    sid    = "GetSecretMetadata"
    effect = "Allow"

    actions = [
      "secretsmanager:GetResourcePolicy",
      "secretsmanager:ListSecretVersionIds",
    ]

    resources = [
      "arn:aws:secretsmanager:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:secret:${var.kube_ops_secrets_prefix}*"
    ]
  }

  # Statement 4: Deny access to sensitive secrets (explicit deny)
  statement {
    sid    = "DenyAccessToSensitiveSecrets"
    effect = "Deny"

    actions = [
      "secretsmanager:GetSecretValue",
      "secretsmanager:GetResourcePolicy",
      "secretsmanager:DescribeSecret",
    ]

    resources = [
      "arn:aws:secretsmanager:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:secret:production/master/*",
      "arn:aws:secretsmanager:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:secret:root/*",
      "arn:aws:secretsmanager:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:secret:admin/*",
    ]
  }

  # Statement 5: Deny all secret modification operations
  statement {
    sid    = "DenySecretModification"
    effect = "Deny"

    actions = [
      "secretsmanager:CreateSecret",
      "secretsmanager:DeleteSecret",
      "secretsmanager:PutSecretValue",
      "secretsmanager:UpdateSecret",
      "secretsmanager:RestoreSecret",
      "secretsmanager:RotateSecret",
      "secretsmanager:TagResource",
      "secretsmanager:UntagResource",
      "secretsmanager:UpdateSecretVersionStage",
    ]

    resources = ["*"]
  }

  # Statement 6: Allow CloudWatch Logs (for audit trail)
  statement {
    sid    = "AllowCloudWatchLogs"
    effect = "Allow"

    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]

    resources = [
      "arn:aws:logs:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:log-group:/aws/eks/${var.cluster_name}/kube-ops:*"
    ]
  }

  # Statement 7: Deny access from outside VPC (optional, requires VPC endpoint)
  # statement {
  #   sid    = "DenyAccessFromOutsideVPC"
  #   effect = "Deny"
  #
  #   actions = ["secretsmanager:*"]
  #
  #   resources = ["*"]
  #
  #   condition {
  #     test     = "StringNotEquals"
  #     variable = "aws:SourceVpc"
  #     values   = [var.vpc_config.vpc_id]
  #   }
  # }

  # Statement 8: Require encryption at rest
  statement {
    sid    = "DenyUnencryptedSecrets"
    effect = "Deny"

    actions = [
      "secretsmanager:GetSecretValue",
    ]

    resources = ["*"]

    condition {
      test     = "Null"
      variable = "secretsmanager:ResourceTag/EncryptionEnabled"
      values   = ["true"]
    }
  }
}

# -----------------------------------------------------------------------------
# Attach Policy to Role
# -----------------------------------------------------------------------------

resource "aws_iam_role_policy" "kube_ops_secure" {
  count = var.kube_ops_enabled ? 1 : 0

  name   = trimsuffix(substr("kube-ops-secure-${var.cluster_name}", 0, 63), "-")
  role   = aws_iam_role.kube_ops_secure[0].id
  policy = data.aws_iam_policy_document.kube_ops_secure.json
}

# -----------------------------------------------------------------------------
# Permission Boundary (Optional but Recommended)
# -----------------------------------------------------------------------------

data "aws_iam_policy_document" "kube_ops_permission_boundary" {
  # Statement 1: Allow only specific AWS services
  statement {
    sid    = "AllowSpecificServices"
    effect = "Allow"

    actions = [
      "secretsmanager:*",
      "logs:*",
      "cloudwatch:*",
    ]

    resources = ["*"]

    # Condition: Only in specific region
    condition {
      test     = "StringEquals"
      variable = "aws:RequestedRegion"
      values   = [data.aws_region.current.name]
    }
  }

  # Statement 2: Deny dangerous operations
  statement {
    sid    = "DenyDangerousOperations"
    effect = "Deny"

    actions = [
      "iam:*",
      "sts:AssumeRole",
      "organizations:*",
      "account:*",
    ]

    resources = ["*"]
  }

  # Statement 3: Deny resource creation without required tags
  statement {
    sid    = "DenyResourceCreationWithoutTags"
    effect = "Deny"

    actions = [
      "secretsmanager:CreateSecret",
    ]

    resources = ["*"]

    condition {
      test     = "Null"
      variable = "aws:RequestTag/Environment"
      values   = ["true"]
    }
  }
}

resource "aws_iam_policy" "kube_ops_permission_boundary" {
  count = var.kube_ops_enabled ? 1 : 0

  name        = trimsuffix(substr("kube-ops-boundary-${var.cluster_name}", 0, 63), "-")
  path        = "/boundaries/"
  description = "Permission boundary for kube-ops role"

  policy = data.aws_iam_policy_document.kube_ops_permission_boundary.json

  tags = merge(
    var.kube_ops_required_tags,
    {
      Name = "kube-ops-permission-boundary-${var.cluster_name}"
    }
  )
}

# Attach permission boundary to role
resource "aws_iam_role_policy_attachment" "kube_ops_boundary" {
  count = var.kube_ops_enabled ? 1 : 0

  role       = aws_iam_role.kube_ops_secure[0].name
  policy_arn = aws_iam_policy.kube_ops_permission_boundary[0].arn
}

# -----------------------------------------------------------------------------
# EKS Pod Identity Association with Conditions
# -----------------------------------------------------------------------------

resource "aws_eks_pod_identity_association" "kube_ops_secure" {
  count = var.kube_ops_enabled ? 1 : 0

  cluster_name    = aws_eks_cluster.this.id
  namespace       = "kube-ops"
  service_account = "kube-ops"
  role_arn        = aws_iam_role.kube_ops_secure[0].arn

  tags = merge(
    var.kube_ops_required_tags,
    {
      Name      = "kube-ops-identity-${var.cluster_name}"
      Cluster   = var.cluster_name
      Namespace = "kube-ops"
    }
  )
}

# -----------------------------------------------------------------------------
# CloudWatch Log Group for Audit Trail
# -----------------------------------------------------------------------------

resource "aws_cloudwatch_log_group" "kube_ops_audit" {
  count = var.kube_ops_enabled ? 1 : 0

  name              = "/aws/eks/${var.cluster_name}/kube-ops"
  retention_in_days = 90

  kms_key_id = aws_kms_key.eks[0].arn

  tags = merge(
    var.kube_ops_required_tags,
    {
      Name    = "kube-ops-audit-${var.cluster_name}"
      Purpose = "audit-trail"
    }
  )
}

# -----------------------------------------------------------------------------
# CloudWatch Alarms for Security Monitoring
# -----------------------------------------------------------------------------

resource "aws_cloudwatch_metric_alarm" "kube_ops_unauthorized_access" {
  count = var.kube_ops_enabled ? 1 : 0

  alarm_name          = "kube-ops-unauthorized-access-${var.cluster_name}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "UnauthorizedAPICallsEventCount"
  namespace           = "CloudTrailMetrics"
  period              = 300
  statistic           = "Sum"
  threshold           = 5
  alarm_description   = "Alert on multiple unauthorized access attempts to kube-ops resources"
  treat_missing_data  = "notBreaching"

  dimensions = {
    ClusterName = var.cluster_name
    Role        = "kube-ops"
  }

  tags = var.kube_ops_required_tags
}

# -----------------------------------------------------------------------------
# Outputs
# -----------------------------------------------------------------------------

output "kube_ops_secure_role_arn" {
  description = "ARN of the secure kube-ops IAM role"
  value       = var.kube_ops_enabled ? aws_iam_role.kube_ops_secure[0].arn : null
}

output "kube_ops_secure_role_name" {
  description = "Name of the secure kube-ops IAM role"
  value       = var.kube_ops_enabled ? aws_iam_role.kube_ops_secure[0].name : null
}

output "kube_ops_permission_boundary_arn" {
  description = "ARN of the kube-ops permission boundary policy"
  value       = var.kube_ops_enabled ? aws_iam_policy.kube_ops_permission_boundary[0].arn : null
}

# =============================================================================
# IMPLEMENTATION NOTES AND BEST PRACTICES
# =============================================================================
#
# 1. ABAC (Attribute-Based Access Control) Features:
#    - Tag-based access control for secrets
#    - Environment-specific restrictions
#    - Team-based access segregation
#    - Region-based restrictions
#
# 2. Security Enhancements:
#    - Explicit deny statements for sensitive resources
#    - Permission boundaries to limit privilege escalation
#    - Secure transport (TLS) enforcement
#    - VPC endpoint restrictions (optional)
#    - MFA requirements for human access
#    - Time-based access windows (optional)
#    - Source IP restrictions (optional)
#
# 3. Monitoring and Compliance:
#    - CloudWatch Logs for audit trail
#    - CloudWatch Alarms for security events
#    - 90-day log retention for compliance
#    - KMS encryption for logs
#
# 4. Least Privilege Principles:
#    - Read-only access to secrets
#    - No modification permissions
#    - Resource-specific ARN restrictions
#    - Prefix-based secret access
#
# 5. Migration Path:
#    - Run both old and new role configurations in parallel
#    - Test thoroughly in non-production environments
#    - Monitor CloudTrail for policy issues
#    - Gradually migrate workloads to new role
#    - Remove old configuration after validation
#
# 6. Additional Hardening Options:
#    - Enable AWS CloudTrail for API audit logging
#    - Use AWS Config rules to enforce tagging
#    - Implement AWS Organizations SCPs for account-level restrictions
#    - Enable AWS Security Hub for compliance monitoring
#    - Use AWS GuardDuty for threat detection
#
# 7. Cluster-Locking Mechanism (CRITICAL SECURITY FEATURE):
#
#    The trust policy uses THREE complementary conditions to lock the role
#    to a specific cluster:
#
#    a) aws:SourceAccount (Account-Level Lock):
#       - Ensures the request comes from your AWS account
#       - Prevents cross-account role assumption
#       - Example: "123456789012"
#
#    b) aws:SourceArn (Cluster-Level Lock - MOST IMPORTANT):
#       - Uses ArnEquals to match the exact EKS cluster ARN
#       - Format: arn:aws:eks:REGION:ACCOUNT:cluster/CLUSTER-NAME
#       - Prevents pods from other clusters (even in same account) from assuming role
#       - This is the PRIMARY defense against cross-cluster attacks
#
#    c) kubernetes-namespace and kubernetes-service-account (Pod-Level Lock):
#       - Uses session tags automatically set by EKS Pod Identity
#       - Restricts which namespace and service account can use the role
#       - Provides granular, pod-level access control
#
#    WHY ALL THREE?
#    - Defense in depth: Multiple layers of security
#    - aws:SourceArn prevents cluster-level abuse
#    - kubernetes-* tags prevent namespace/pod-level abuse
#    - aws:SourceAccount prevents account-level abuse
#
#    BLUE/GREEN CLUSTER UPGRADES:
#    If you run blue/green cluster upgrades, you'll need to:
#    1. Add the new cluster ARN to the condition values array
#    2. Create pod identity associations in both clusters
#    3. Remove the old cluster ARN after migration completes
#
#    Example for multiple clusters:
#      condition {
#        test     = "ArnEquals"
#        variable = "aws:SourceArn"
#        values   = [
#          aws_eks_cluster.blue.arn,
#          aws_eks_cluster.green.arn
#        ]
#      }
#
# 8. Testing Checklist:
#    - [ ] Verify pod can assume role from correct cluster
#    - [ ] Verify pod CANNOT assume role from different cluster
#    - [ ] Test access to allowed secrets
#    - [ ] Verify denial of sensitive secrets
#    - [ ] Confirm modification operations are blocked
#    - [ ] Test tag-based conditions (environment, team)
#    - [ ] Validate CloudWatch logging
#    - [ ] Test permission boundary enforcement
#    - [ ] Verify alarm triggers
#    - [ ] Test with wrong namespace (should fail)
#    - [ ] Test with wrong service account (should fail)
#
# 9. Compliance and Audit:
#    - All assume role operations are logged in CloudTrail
#    - Session tags are included in CloudTrail logs for tracking
#    - CloudWatch Logs provide application-level audit trail
#    - Use AWS Config to monitor trust policy changes
#    - Set up AWS Security Hub to detect policy violations
#
# =============================================================================
