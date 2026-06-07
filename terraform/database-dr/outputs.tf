output "dr_replica_endpoint" {
  value = aws_db_instance.dr_replica.endpoint
}

output "dr_replica_arn" {
  value = aws_db_instance.dr_replica.arn
}
