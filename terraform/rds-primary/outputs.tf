output "cluster_id" {
  value = aws_rds_cluster.primary.id
}

output "cluster_endpoint" {
  value = aws_rds_cluster.primary.endpoint
}

output "writer_instance_id" {
  value = aws_rds_cluster_instance.writer.id
}
