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

resource "aws_security_group" "rds" {
  name        = "novapay-rds-sg"
  description = "RDS Security Group"
  vpc_id      = data.terraform_remote_state.network.outputs.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_db_instance" "primary" {
  identifier        = "novapay-primary-db"
  engine            = "postgres"
  engine_version    = "15.4"
  instance_class    = "db.t3.medium"

  db_name           = "novapay"
  username          = var.master_username
  password          = var.master_password

  db_subnet_group_name = aws_db_subnet_group.primary.name
  vpc_security_group_ids = [aws_security_group.rds.id]

  allocated_storage = 20
  skip_final_snapshot = true
}
resource "aws_db_subnet_group" "primary" {
  name = "primary-db-subnet"

  subnet_ids = var.private_subnet_ids
}
terraform {
  backend "s3" {
    bucket         = "novapay-v2-terraform-state-187478112406"
    key            = "primary-region/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "novapay-terraform-locks"
    encrypt        = true
  }
}

