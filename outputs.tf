output "name" {
  description = "The name of the cluster"
  value       = aws_eks_cluster.this.name
}

output "nlb_dns_name" {
  description = "A dns name of the main NLB (traefik)"
  value       = module.nlb["traefik"].dns_name
}

output "nlb_dns_names" {
  description = "Map of dns names of the NLBs"
  value       = { for k, v in module.nlb : k => v.dns_name }
}
