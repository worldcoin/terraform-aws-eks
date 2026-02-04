#tfsec:ignore:aws-eks-no-public-cluster-access-to-cidr
#tfsec:ignore:aws-eks-no-public-cluster-access
resource "aws_eks_cluster" "this" {
  name     = var.cluster_name
  version  = var.cluster_version
  role_arn = aws_iam_role.cluster.arn

  vpc_config {
    endpoint_private_access = true
    endpoint_public_access  = var.cluster_endpoint_public_access
    security_group_ids      = [aws_security_group.cluster.id]
    subnet_ids              = var.vpc_config.public_subnets
    public_access_cidrs     = var.cluster_endpoint_public_access ? var.public_access_cidrs : null
  }

  encryption_config {
    resources = ["secrets"]
    provider {
      key_arn = aws_kms_key.this.arn
    }
  }

  enabled_cluster_log_types = [
    "api",
    "authenticator",
    "audit",
    "scheduler",
    "controllerManager"
  ]

  access_config {
    authentication_mode                         = var.authentication_mode
    bootstrap_cluster_creator_admin_permissions = true
  }

  timeouts {
    create = "30m"
    delete = "15m"
  }

  tags = {
    "karpenter.sh/discovery" = var.cluster_name
  }

  depends_on = [
    aws_iam_role_policy_attachment.cluster,
    aws_cloudwatch_log_group.this
  ]

  lifecycle {
    ignore_changes = [
      access_config[0].bootstrap_cluster_creator_admin_permissions,
    ]
  }
}

data "tls_certificate" "this" {
  url = aws_eks_cluster.this.identity[0].oidc[0].issuer
}

resource "aws_iam_openid_connect_provider" "oidc_provider" {
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = data.tls_certificate.this.certificates[*].sha1_fingerprint
  url             = aws_eks_cluster.this.identity[0].oidc[0].issuer
}

data "aws_iam_roles" "aws_load_balancer_controller" {
  name_regex  = "^aws-load-balancer-controller-${var.cluster_name}$"
  path_prefix = "/system/"
}

locals {
  aws_load_balancer_controller_role_exists = var.enable_aws_load_balancer_controller_explicit_deny ? length(data.aws_iam_roles.aws_load_balancer_controller.names) > 0 : false
  aws_load_balancer_controller_role_name   = local.aws_load_balancer_controller_role_exists ? sort(tolist(data.aws_iam_roles.aws_load_balancer_controller.names))[0] : null
}

data "aws_iam_policy_document" "aws_load_balancer_controller_explicit_deny" {
  statement {
    effect    = "Deny"
    actions   = ["elasticloadbalancing:CreateLoadBalancer", "elasticloadbalancing:DeleteLoadBalancer"]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "aws_load_balancer_controller_explicit_deny" {
  count  = local.aws_load_balancer_controller_role_exists ? 1 : 0
  name   = "aws-load-balancer-controller-${var.cluster_name}-explicit-deny-elb"
  path   = "/system/"
  policy = data.aws_iam_policy_document.aws_load_balancer_controller_explicit_deny.json
}

resource "aws_iam_role_policy_attachment" "aws_load_balancer_controller_explicit_deny" {
  count      = local.aws_load_balancer_controller_role_exists ? 1 : 0
  role       = local.aws_load_balancer_controller_role_name
  policy_arn = aws_iam_policy.aws_load_balancer_controller_explicit_deny[0].arn
}
  