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
  cluster_identifier = "novapay-primary-db"
  engine            = "aurora-postgresql"
  db_subnet_group_name = aws_db_subnet_group.primary.name
  master_username = var.master_username
  master_password = var.master_password

  database_name = "novapay"
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
resource "aws_db_subnet_group" "primary" {
  name = "primary-db-subnet"

  subnet_ids = var.private_subnet_ids
}

