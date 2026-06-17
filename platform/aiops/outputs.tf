output "incident_topic_arn" {
  value = aws_sns_topic.incident_notifications.arn
}

output "lambda_name" {
  value = aws_lambda_function.incident_assistant.function_name
}