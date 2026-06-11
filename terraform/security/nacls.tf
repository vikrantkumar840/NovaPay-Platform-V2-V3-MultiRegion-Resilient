resource "aws_network_acl" "private_nacl" {
  vpc_id = var.vpc_id

  tags = {
    Name = "novapay-private-nacl"
  }
}

resource "aws_network_acl_rule" "private_ingress_https" {
  network_acl_id = aws_network_acl.private_nacl.id

  rule_number = 100
  egress      = false
  protocol    = "tcp"

  rule_action = "allow"

  cidr_block = "10.0.0.0/16"

  from_port = 443
  to_port   = 443
}

resource "aws_network_acl_rule" "private_egress_all" {
  network_acl_id = aws_network_acl.private_nacl.id

  rule_number = 100
  egress      = true
  protocol    = "-1"

  rule_action = "allow"

  cidr_block = "0.0.0.0/0"
}
