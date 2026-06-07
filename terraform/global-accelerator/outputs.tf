output "accelerator_arn" {
  value = aws_globalaccelerator_accelerator.novapay.arn
}

output "dns_name" {
  value = aws_globalaccelerator_accelerator.novapay.dns_name
}
