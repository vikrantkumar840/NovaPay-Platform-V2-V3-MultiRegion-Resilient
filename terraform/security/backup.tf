resource "aws_backup_vault" "novapay" {
  name = "novapay-backup-vault"

  tags = {
    Name        = "novapay-backup-vault"
    Project     = "NovaPay-V2"
    Environment = "production"
  }
}

resource "aws_backup_plan" "novapay" {
  name = "novapay-backup-plan"

  rule {
    rule_name         = "daily-backup"
    target_vault_name = aws_backup_vault.novapay.name

    schedule = "cron(0 1 * * ? *)"

    lifecycle {
      delete_after = 30
    }
  }
}
