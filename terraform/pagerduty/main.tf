resource "aws_ssm_parameter" "pagerduty_key" {
  name  = "/novapay/pagerduty/integration-key"
  type  = "SecureString"
  value = var.pagerduty_integration_key
}
