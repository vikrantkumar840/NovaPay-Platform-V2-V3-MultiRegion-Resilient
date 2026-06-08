output "primary_cluster_name" {
  value = var.primary_cluster_name
}

output "dr_cluster_name" {
  value = var.dr_cluster_name
}

output "irsa_foundation_policy_arn" {
  value = aws_iam_policy.irsa_foundation.arn
}
