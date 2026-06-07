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

variable "primary_region" {
  description = "Primary AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "dr_region" {
  description = "DR AWS Region"
  type        = string
  default     = "ap-south-2"
}

variable "primary_backup_bucket_name" {
  description = "Primary Velero backup bucket"
  type        = string
  default     = "novapay-velero-backup-primary"
}

variable "dr_backup_bucket_name" {
  description = "DR Velero backup bucket"
  type        = string
  default     = "novapay-velero-backup-dr"
}
