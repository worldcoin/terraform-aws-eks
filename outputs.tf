output "name" {
  description = "The name of the cluster"
  value       = aws_eks_cluster.this.name
}

output "nlb_dns_name" {
  description = "A dns name of the main NLB (traefik)"
  value       = module.nlb["traefik"].dns_name
}

output "nlb_arn" {
  description = "An ARN of the main NLB (traefik)"
  value       = module.nlb["traefik"].arn
}

output "nlb_dns_names" {
  description = "Map of dns names of the NLBs"
  value       = { for k, v in module.nlb : k => v.dns_name }
}

output "nlb_arns" {
  description = "Map of ARNs of the NLBs"
  value       = { for k, v in module.nlb : k => v.arn }
}

output "alb_dns_name" {
  description = "A dns name of the main ALB (traefik)"
  value       = join("", [for k, v in module.alb : v.dns_name if k == "traefik"])
}

output "alb_arn" {
  description = "An ARN of the main ALB (traefik)"
  value       = join("", [for k, v in module.alb : v.arn if k == "traefik"])
}

output "alb_dns_names" {
  description = "Map of dns names of the ALBs"
  value       = { for k, v in module.alb : k => v.dns_name }
}

output "alb_arns" {
  description = "Map of ARNs of the ALBs"
  value       = { for k, v in module.alb : k => v.arn }
}

output "cluster_oidc_issuer_url" {
  description = "The OIDC issuer URL for the EKS cluster"
  value       = local.oidc
}

output "node_security_group_id" {
  description = "The security group ID of the EKS nodes"
  value       = aws_security_group.node.id
}
