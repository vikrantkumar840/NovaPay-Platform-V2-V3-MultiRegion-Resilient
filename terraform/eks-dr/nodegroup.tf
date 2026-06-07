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
