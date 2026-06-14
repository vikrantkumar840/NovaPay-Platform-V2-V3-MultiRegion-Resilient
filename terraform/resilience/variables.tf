variable "domain_name" {
  description = "NovaPay application domain"
  type        = string
  default     = "novapay.com"
}

variable "primary_alb_dns_name" {
  description = "Primary ALB DNS"
  type        = string
  default     = "primary-alb.example.com"
}

variable "dr_alb_dns_name" {
  description = "DR ALB DNS"
  type        = string
  default     = "dr-alb.example.com"
}

variable "primary_bucket_name" {
  description = "Primary S3 bucket"
  type        = string
  default     = "novapay-primary-backups"
}

variable "dr_bucket_name" {
  description = "DR S3 bucket"
  type        = string
  default     = "novapay-dr-backups"
}
variable "replication_enabled" {
  type    = bool
  default = true
}
