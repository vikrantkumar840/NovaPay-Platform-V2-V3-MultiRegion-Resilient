terraform {
  backend "s3" {
    bucket         = "novapay-v2-terraform-state-187478112406"
    key            = "oidc/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "novapay-terraform-locks"
    encrypt        = true
  }
}
