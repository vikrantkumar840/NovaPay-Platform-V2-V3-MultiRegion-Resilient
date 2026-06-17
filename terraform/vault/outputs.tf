output "vault_namespace" {
  value = kubernetes_namespace.vault.metadata[0].name
}

output "vault_release" {
  value = helm_release.vault.name
}

output "vault_irsa_role" {
  value = aws_iam_role.vault_irsa.arn
}