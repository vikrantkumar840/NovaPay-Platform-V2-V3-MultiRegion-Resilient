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
  role_arn = "arn:aws:iam::123456789012:role/eks-cluster-role"

  vpc_config {
    subnet_ids = [
      "subnet-11111111",
      "subnet-22222222"
    ]
  }

  tags = {
    Environment = var.environment
    Project     = "NovaPay-V2"
  }
}
