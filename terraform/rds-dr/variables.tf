variable "cluster_identifier" {
  default = "novapay-dr-aurora"
}

variable "source_region" {
  default = "ap-south-1"
}

variable "environment" {
  default = "dr"
}
variable "db_name" {
  type = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "engine_version" {
  type    = string
  default = "15.4"
}
variable "primary_cluster_arn" {
  type = string
}

