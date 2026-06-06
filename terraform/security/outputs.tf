output "kms_key_arn" {
  value = aws_kms_key.novapay.arn
}

output "alb_security_group_id" {
  value = aws_security_group.alb_sg.id
}

output "eks_security_group_id" {
  value = aws_security_group.eks_sg.id
}
