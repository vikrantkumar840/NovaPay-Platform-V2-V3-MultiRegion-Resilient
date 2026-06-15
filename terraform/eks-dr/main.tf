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
  role_arn = var.cluster_role_arn


  vpc_config {
    subnet_ids = [
      data.terraform_remote_state.dr_network.outputs.dr_private_subnet_1_id,
      data.terraform_remote_state.dr_network.outputs.dr_private_subnet_2_id
    ]
  }

  tags = {
    Environment = var.environment
    Project     = "NovaPay-V2"
    Region      = "DR"
  }
}
