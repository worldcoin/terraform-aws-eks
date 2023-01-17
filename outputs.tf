output "name" {
  description = "The name of the cluster"
  value       = aws_eks_cluster.this.name
}

output "nlb_dns_name" {
  description = "value"
  value       = module.nlb["traefik"].dns_name
}

output "nlb_dns_names" {
  description = "value"
  value       = module.nlb[*].dns_name
}
