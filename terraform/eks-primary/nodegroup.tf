resource "aws_eks_node_group" "primary" {
  cluster_name    = aws_eks_cluster.primary.name
  node_group_name = "primary-workers"
  node_role_arn   = var.node_role_arn

  subnet_ids = var.private_subnet_ids

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 2
  }

  instance_types = ["t3.small"]

  capacity_type = "ON_DEMAND"

  tags = {
    Environment = var.environment
    Project     = "NovaPay-V2"
    "k8s.io/cluster-autoscaler/enabled"           = "true"
    "k8s.io/cluster-autoscaler/novapay-primary-eks" = "owned"  
  }
}
