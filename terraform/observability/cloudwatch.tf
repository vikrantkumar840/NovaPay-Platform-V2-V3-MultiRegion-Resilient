resource "aws_cloudwatch_dashboard" "novapay" {
  dashboard_name = "novapay-dashboard"

  dashboard_body = jsonencode({
    widgets = []
  })
}
