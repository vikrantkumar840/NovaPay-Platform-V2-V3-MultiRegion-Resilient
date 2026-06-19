resource "aws_secretsmanager_secret" "db_credentials" {
  name = "novapay-db-credentials"

  tags = {
    Project = "NovaPay-V2"
  }
}

resource "aws_secretsmanager_secret_version" "db_credentials" {
  secret_id = aws_secretsmanager_secret.db_credentials.id

  secret_string = jsonencode({
    username = "admin"
    password = "var.db_password"
  })
}
