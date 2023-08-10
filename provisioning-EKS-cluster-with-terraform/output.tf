output "cluster_endpoint" {
  value       = module.eks.cluster_endpoint
  description = "Endpoint for EKS control plane"
  depends_on  = []
}

output "cluster_security_group_id" {
  value       = module.eks.cluster_security_group_id
  description = "security group ids attached to the cluster group control plane"
  depends_on  = []
}

output "region" {
  value       = var.region
  description = "AWS region"
  depends_on  = []
}

output "cluster_name" {
  value       = module.eks.cluster_name
  description = "Kubernetes cluster name"
  depends_on  = []
}
