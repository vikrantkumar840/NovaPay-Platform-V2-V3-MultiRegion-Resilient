variable "environment" {
  default = "production"
}
variable "vpc_id" {
  description = "Target VPC ID"
  type        = string
  default     = "vpc-039f6ff66c7ae3543"
}
