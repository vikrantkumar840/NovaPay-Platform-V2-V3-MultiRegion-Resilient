
variable "aws_region" {
  default = "ap-south-1"
}

variable "cluster_name" {
  default = "novapay-primary-eks"
}

variable "environment" {
  default = "primary"
}

variable "cluster_role_arn" {
  type = string
}

variable "node_role_arn" {}

variable "private_subnet_ids" {
  type = list(string)
}
