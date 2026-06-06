output "kms_key_arn" {
  value = aws_kms_key.novapay.arn
}

output "alb_security_group_id" {
  value = aws_security_group.alb_sg.id
}

output "eks_security_group_id" {
  value = aws_security_group.eks_sg.id
}

output "private_nacl_id" {
  value = aws_network_acl.private_nacl.id
}

output "backup_vault_name" {
  value = aws_backup_vault.novapay.name
}

output "backup_plan_id" {
  value = aws_backup_plan.novapay.id
}
