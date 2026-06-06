resource "aws_s3_bucket" "primary" {
  bucket = var.primary_bucket_name
}

resource "aws_s3_bucket" "dr" {
  bucket = var.dr_bucket_name
}

resource "aws_s3_bucket_versioning" "primary" {
  bucket = aws_s3_bucket.primary.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_versioning" "dr" {
  bucket = aws_s3_bucket.dr.id

  versioning_configuration {
    status = "Enabled"
  }
}
