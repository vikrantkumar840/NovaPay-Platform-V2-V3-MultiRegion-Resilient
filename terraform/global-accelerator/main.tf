resource "aws_globalaccelerator_accelerator" "novapay" {
  name            = "novapay-global-accelerator"
  ip_address_type = "IPV4"
  enabled         = true
}

