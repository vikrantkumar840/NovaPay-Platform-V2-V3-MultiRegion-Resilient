data "terraform_remote_state" "oidc" {
  backend = "s3"

  config = {
    bucket = "novapay-v2-terraform-state-187478112406"
    key    = "oidc/terraform.tfstate"
    region = "ap-south-1"
  }
}
