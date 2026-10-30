locals {
  gateway_api_nlb_default_egress_sg_rules = [for port in [5052, 5053, 8080, 8081, 8085, 8443] : {
    description      = "Allow Gateway backend and health-check TCP/${port} within the VPC"
    protocol         = "tcp"
    from_port        = port
    to_port          = port
    cidr_blocks      = local.cluster_vpc_ipv4_cidr_blocks
    ipv6_cidr_blocks = []
    security_groups  = []
  }]
}
