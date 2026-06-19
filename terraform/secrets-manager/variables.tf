variable "environment" {
  default = "production"
}

variable "db_password" {
  type = string
  sensitive = true

}
