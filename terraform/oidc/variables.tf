variable "project_name" {
  description = "Project name"
  type        = string
  default     = "NovaPay-V2"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "production"
}

variable "primary_cluster_name" {
  description = "Primary EKS cluster name"
  type        = string
  default     = "novapay-primary-eks"
}

variable "dr_cluster_name" {
  description = "DR EKS cluster name"
  type        = string
  default     = "novapay-dr-eks"
}
