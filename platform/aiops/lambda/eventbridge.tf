resource "aws_cloudwatch_event_rule" "incident_rule" {
  name = "novapay-incident-rule"

  event_pattern = jsonencode({
    source = [
      "aws.logs"
    ]
  })
}