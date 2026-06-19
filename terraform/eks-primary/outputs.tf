output "cluster_name" {
  value = aws_eks_cluster.primary.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.primary.endpoint
}

output "cluster_security_group_id" {
  value = aws_eks_cluster.primary.vpc_config[0].cluster_security_group_id
}

output "cluster_arn" {
  value = aws_eks_cluster.primary.arn
}
