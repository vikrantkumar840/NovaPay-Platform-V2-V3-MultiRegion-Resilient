resource "aws_cloudwatch_log_group" "application" {
  name              = "/novapay/application"
  retention_in_days = 30

  tags = {
    Project = "NovaPay-V2"
  }
}
