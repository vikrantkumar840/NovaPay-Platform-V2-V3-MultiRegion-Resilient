variable "cluster_name" {
  default = "novapay-primary-eks"
}

variable "aws_region" {
  default = "ap-south-1"
}

variable "environment" {
  default = "primary"
}
variable "node_role_arn" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}
