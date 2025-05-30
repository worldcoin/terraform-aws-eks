resource "aws_security_group" "cluster" {
  name        = "eks-cluster-${var.cluster_name}"
  description = "EKS cluster security group"
  vpc_id      = var.vpc_config.vpc_id

  tags = {
    Name = "eks-cluster-${var.cluster_name}"
  }
}

resource "aws_security_group" "node" {
  name        = "eks-node-${var.cluster_name}"
  description = "EKS node security group"
  vpc_id      = var.vpc_config.vpc_id


  tags = {
    Name                     = "eks-node-${var.cluster_name}"
    "karpenter.sh/discovery" = var.cluster_name
  }
}

resource "aws_security_group_rule" "cluster_from_node_ingress" {
  security_group_id        = aws_security_group.cluster.id
  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.node.id
  description              = "Allow nodes to communicate with the cluster API Server"
}

#tfsec:ignore:aws-ec2-no-public-egress-sgr
resource "aws_security_group_rule" "cluster_egress" {
  security_group_id = aws_security_group.cluster.id
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  description       = "Allow cluster to communicate with all"
}

resource "aws_security_group_rule" "node_from_cluster_ingress" {
  security_group_id        = aws_security_group.node.id
  type                     = "ingress"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
  source_security_group_id = aws_security_group.cluster.id
  description              = "Allow cluster to communicate with worker nodes"
}

resource "aws_security_group_rule" "node_to_node_ingress" {
  security_group_id = aws_security_group.node.id
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = -1
  self              = true
  description       = "Allow worker nodes to communicate with each other"
}

#tfsec:ignore:aws-ec2-no-public-egress-sgr
resource "aws_security_group_rule" "node_egress" {
  security_group_id = aws_security_group.node.id
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  description       = "Allow worker nodes to communicate with all"
}

resource "aws_security_group_rule" "traefik_from_alb_traffic" {
  for_each = toset([local.external_alb_name])

  security_group_id        = aws_security_group.node.id
  type                     = "ingress"
  from_port                = 8443
  to_port                  = 8443
  protocol                 = "tcp"
  source_security_group_id = module.alb[each.key].sg_ids["backend"]
  description              = "Allow ALB to have access to 8443 ClusterIP with app"
}

resource "aws_security_group_rule" "traefik_from_alb_metrics" {
  for_each = toset([local.external_alb_name])

  security_group_id        = aws_security_group.node.id
  type                     = "ingress"
  from_port                = 9000
  to_port                  = 9000
  protocol                 = "tcp"
  source_security_group_id = module.alb[each.key].sg_ids["backend"]
  description              = "Allow ALB to have access to 9000 CluterIP with metrics"
}

resource "aws_security_group_rule" "node_from_alb_ingress" {
  count = length(var.alb_additional_node_ports)

  security_group_id        = aws_security_group.node.id
  type                     = "ingress"
  from_port                = var.alb_additional_node_ports[count.index]
  to_port                  = var.alb_additional_node_ports[count.index]
  protocol                 = "tcp"
  source_security_group_id = module.alb[local.external_alb_name].sg_ids["backend"]
  description              = "Allow ALB to have access to node port ${var.alb_additional_node_ports[count.index]}"
}

resource "aws_security_group_rule" "additional_rule" {
  for_each = { for v in var.additional_security_group_rules : v.sg_id => v }

  security_group_id        = aws_security_group.node.id
  source_security_group_id = each.value.sg_id
  type                     = each.value.type
  from_port                = each.value.from_port
  to_port                  = each.value.to_port
  protocol                 = each.value.protocol
  description              = each.value.description
}

resource "aws_security_group_rule" "additional_cluster_security_group_rules" {
  for_each = { for v in var.additional_cluster_security_group_rules : v.sg_id => v }

  security_group_id        = aws_security_group.cluster.id
  source_security_group_id = each.value.sg_id
  type                     = each.value.type
  from_port                = each.value.from_port
  to_port                  = each.value.to_port
  protocol                 = each.value.protocol
  description              = each.value.description
}

resource "aws_security_group_rule" "tfe_and_gha_cluster_ingress" {
  security_group_id = aws_security_group.cluster.id
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = [var.tfe_cidr, var.gha_cidr]
  description       = "Allow TFE and GHA to communicate with the cluster API Server"
}
