resource "aws_eks_node_group" "dr" {
  cluster_name    = aws_eks_cluster.dr.name
  node_group_name = "dr-workers"
  node_role_arn   = var.node_role_arn

  subnet_ids = data.terraform_remote_state.dr_network.outputs.dr_private_subnets

  scaling_config {
    desired_size = 1
    min_size     = 1
    max_size     = 2
  }

  instance_types = ["t3.small"]

  capacity_type = "ON_DEMAND"

  tags = {
    Environment = "dr"
    Project     = "NovaPay-V2"
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
