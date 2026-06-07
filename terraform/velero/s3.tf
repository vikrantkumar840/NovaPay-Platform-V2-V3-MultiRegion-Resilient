resource "aws_s3_bucket" "velero_primary" {
  bucket = var.primary_backup_bucket_name

  tags = merge(
    local.common_tags,
    {
      Name   = "velero-primary-backup"
      Region = var.primary_region
    }
  )
}

resource "aws_s3_bucket_versioning" "velero_primary" {
  bucket = aws_s3_bucket.velero_primary.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "velero_primary" {
  bucket = aws_s3_bucket.velero_primary.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket" "velero_dr" {
  provider = aws.dr

  bucket = var.dr_backup_bucket_name

  tags = merge(
    local.common_tags,
    {
      Name   = "velero-dr-backup"
      Region = var.dr_region
    }
  )
}

resource "aws_s3_bucket_versioning" "velero_dr" {
  provider = aws.dr

  bucket = aws_s3_bucket.velero_dr.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "velero_dr" {
  provider = aws.dr

  bucket = aws_s3_bucket.velero_dr.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
