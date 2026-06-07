resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "novapay-high-cpu"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EKS"
  period              = 300
  statistic           = "Average"
  threshold           = 80

  alarm_actions = [
    aws_sns_topic.alerts.arn
  ]
}
