terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-south-2"
}

resource "aws_rds_cluster" "dr" {
  cluster_identifier = var.cluster_identifier

  engine = "aurora-postgresql"

  replication_source_identifier = "arn:aws:rds:ap-south-1:123456789012:cluster:novapay-primary-aurora"

  storage_encrypted = true

  skip_final_snapshot = true

  tags = {
    Environment = var.environment
    Project     = "NovaPay-V2"
  }
}

resource "aws_rds_cluster_instance" "reader" {
  identifier         = "novapay-dr-reader"
  cluster_identifier = aws_rds_cluster.dr.id

  instance_class = "db.t3.medium"

  engine = aws_rds_cluster.dr.engine
}
