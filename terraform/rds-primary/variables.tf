variable "cluster_identifier" {
  default = "novapay-primary-aurora"
}

variable "engine" {
  default = "aurora-postgresql"
}

variable "engine_version" {
  default = "15.4"
}

variable "database_name" {
  default = "novapay"
}

variable "master_username" {
  default = "dbadmin"
}

variable "environment" {
  default = "primary"
}
