terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_eks_cluster" "primary" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids              = data.terraform_remote_state.network.outputs.private_subnets
    endpoint_private_access = true
    endpoint_public_access  = true
  }

  tags = {
    Environment = var.environment
    Project     = "NovaPay-V2"
  }
}
data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "novapay-v2-terraform-state-187478112406"
    key    = "primary-region/terraform.tfstate"
    region = "ap-south-1"
  }
}

