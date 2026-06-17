resource "aws_lambda_function" "incident_assistant" {
  function_name = "novapay-ai-incident-assistant"

  role    = aws_iam_role.lambda_role.arn
  handler = "lambda_function.lambda_handler"

  runtime = "python3.12"

  filename         = "${path.module}/incident_assistant.zip"
  source_code_hash = filebase64sha256("${path.module}/incident_assistant.zip")

  timeout = 60
}
