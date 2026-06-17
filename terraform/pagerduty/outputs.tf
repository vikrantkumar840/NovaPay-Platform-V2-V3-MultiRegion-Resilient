output "pagerduty_parameter_name" {
  value = aws_ssm_parameter.pagerduty_key.name
}

output "pagerduty_service_name" {
  value = aws_ssm_parameter.pagerduty_service.value
}