variable "aws_region" {
  default = "ap-south-1"
}

variable "bucket_name" {
  default = "novapay-v2-terraform-state"
}

variable "lock_table_name" {
  default = "novapay-terraform-locks"
}
