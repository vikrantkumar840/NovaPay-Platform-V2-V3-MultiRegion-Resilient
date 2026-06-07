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

resource "aws_eks_cluster" "dr" {
  name     = var.cluster_name
  role_arn = "arn:aws:iam::123456789012:role/eks-dr-cluster-role"

  vpc_config {
    subnet_ids = [
      "subnet-aaaa1111",
      "subnet-bbbb2222"
    ]
  }

  tags = {
    Environment = var.environment
    Project     = "NovaPay-V2"
    Region      = "DR"
  }
}
