output "cluster_name" {
  value = module.eks.cluster_name
}

output "database_endpoint" {
  value = module.rds.endpoint
}
