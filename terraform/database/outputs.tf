output "primary_db_endpoint" {
  value = aws_db_instance.primary.endpoint
}

output "primary_db_arn" {
  value = aws_db_instance.primary.arn
}
