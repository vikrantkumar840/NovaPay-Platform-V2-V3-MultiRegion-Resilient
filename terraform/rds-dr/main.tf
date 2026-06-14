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
  cluster_identifier      = "novapay-dr-db"
  engine                  = "aurora-postgresql"

  
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

data "terraform_remote_state" "primary_db" {
  backend = "s3"
  config = {
    bucket = "novapay-v2-terraform-state-187478112406"
    key    = "rds-primary/terraform.tfstate"
    region = "ap-south-1"
     
  }
}



