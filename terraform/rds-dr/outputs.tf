output "dr_cluster_id" {
  value = aws_rds_cluster.dr.id
}

output "dr_cluster_endpoint" {
  value = aws_rds_cluster.dr.endpoint
}

output "dr_reader_instance" {
  value = aws_rds_cluster_instance.reader.id
}
