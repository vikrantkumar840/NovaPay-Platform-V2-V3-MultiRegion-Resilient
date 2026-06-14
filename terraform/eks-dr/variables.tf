variable "cluster_name" {
  default = "novapay-dr-eks"
}

variable "aws_region" {
  default = "ap-south-2"
}

variable "environment" {
  default = "dr"
}
variable "node_role_arn" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "cluster_role_arn" {
  type = string
}
