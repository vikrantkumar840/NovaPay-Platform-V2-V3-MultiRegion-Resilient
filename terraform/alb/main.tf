resource "aws_lb" "novapay" {
  name               = "novapay-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = []
  subnets         = var.public_subnet_ids

  tags = {
    Project = "NovaPay-V2"
  }
}
