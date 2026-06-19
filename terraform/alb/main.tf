resource "aws_security_group" "alb" {
    vpc_id = data.terraform_remote_state.network.outputs.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_lb" "novapay" {
  name               = "novapay-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = [aws_security_group.alb.id]  
  subnets = [
    data.terraform_remote_state.network.outputs.public_subnet_1_id,
    data.terraform_remote_state.network.outputs.public_subnet_2_id
  ]
  tags = {
    Project = "NovaPay-V2"
  }
}
data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket = "novapay-v2-terraform-state-187478112406"
    key    = "primary-region/terraform.tfstate"
    region = "ap-south-1"
  }
}
