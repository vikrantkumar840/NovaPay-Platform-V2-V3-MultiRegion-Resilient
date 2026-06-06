variable "environment" {
  default = "production"
}
variable "vpc_id" {
  description = "Target VPC ID"
  type        = string
  default     = "vpc-placeholder"
}
