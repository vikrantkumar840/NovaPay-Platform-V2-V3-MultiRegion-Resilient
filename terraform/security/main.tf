resource "aws_kms_key" "novapay" {
  description             = "NovaPay Multi Region Encryption Key"
  deletion_window_in_days = 7
  enable_key_rotation     = true

  tags = {
    Name    = "novapay-kms"
    Project = "NovaPay-V2"
  }
}

resource "aws_kms_alias" "novapay" {
  name          = "alias/novapay"
  target_key_id = aws_kms_key.novapay.key_id
}
