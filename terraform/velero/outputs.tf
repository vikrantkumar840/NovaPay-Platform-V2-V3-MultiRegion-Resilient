output "primary_backup_bucket" {
  value = aws_s3_bucket.velero_primary.bucket
}

output "dr_backup_bucket" {
  value = aws_s3_bucket.velero_dr.bucket
}

output "velero_role_arn" {
  value = aws_iam_role.velero_role.arn
}
