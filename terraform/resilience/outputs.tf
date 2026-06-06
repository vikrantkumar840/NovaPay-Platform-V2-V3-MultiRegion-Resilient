output "hosted_zone_id" {
  value = aws_route53_zone.novapay.zone_id
}

output "health_check_id" {
  value = aws_route53_health_check.primary.id
}

output "primary_bucket_name" {
  value = aws_s3_bucket.primary.id
}

output "dr_bucket_name" {
  value = aws_s3_bucket.dr.id
}
