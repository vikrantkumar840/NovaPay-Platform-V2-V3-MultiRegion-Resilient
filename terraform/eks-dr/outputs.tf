output "dr_cluster_name" {
  value = aws_eks_cluster.dr.name
}

output "dr_cluster_endpoint" {
  value = aws_eks_cluster.dr.endpoint
}
