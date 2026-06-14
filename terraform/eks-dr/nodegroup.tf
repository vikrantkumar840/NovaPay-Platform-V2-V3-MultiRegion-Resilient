resource "aws_eks_node_group" "dr" {
  cluster_name    = aws_eks_cluster.dr.name
  node_group_name = "dr-workers"
  node_role_arn   = var.node_role_arn

  subnet_ids = var.private_subnet_ids

  scaling_config {
    desired_size = 1
    min_size     = 1
    max_size     = 2
  }

  instance_types = ["t3.medium"]

  capacity_type = "ON_DEMAND"

  tags = {
    Environment = "dr"
    Project     = "NovaPay-V2"
  }
}

resource "aws_ecr_replication_configuration" "replication" {
  replication_configuration {
    rule {
      destination {
        region      = "ap-south-2"
        registry_id = "187478112406"
      }
      repository_filter {
        filter      = "*"
        filter_type = "PREFIX_MATCH"
      }
    }
  }
}
data "terraform_remote_state" "dr_network" {
  backend = "s3"

  config = {
    bucket = "novapay-v2-terraform-state-187478112406"
    key    = "dr-region/terraform.tfstate"
    region = "ap-south-1"
  }
}
