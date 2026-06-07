terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_rds_cluster" "primary" {
  cluster_identifier = var.cluster_identifier

  engine         = var.engine
  engine_version = var.engine_version

  database_name   = var.database_name
  master_username = var.master_username

  manage_master_user_password = true

  backup_retention_period = 7

  storage_encrypted = true

  skip_final_snapshot = true

  tags = {
    Environment = var.environment
    Project     = "NovaPay-V2"
  }
}

resource "aws_rds_cluster_instance" "writer" {
  identifier         = "novapay-primary-writer"
  cluster_identifier = aws_rds_cluster.primary.id

  instance_class = "db.t3.medium"

  engine         = aws_rds_cluster.primary.engine
  engine_version = aws_rds_cluster.primary.engine_version
}
