variable "db_name" {
  default = "novapay"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  sensitive = true
  default   = "admin@123"
}
