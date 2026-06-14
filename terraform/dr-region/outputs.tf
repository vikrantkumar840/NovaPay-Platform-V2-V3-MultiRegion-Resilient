output "dr_vpc_id" {
  value = aws_vpc.dr.id
}

output "dr_public_subnet_1_id" {
  value = aws_subnet.public_az1.id
}

output "dr_public_subnet_2_id" {
  value = aws_subnet.public_az2.id
}

output "dr_private_subnet_1_id" {
  value = aws_subnet.private_az1.id
}

output "dr_private_subnet_2_id" {
  value = aws_subnet.private_az2.id
}

output "dr_nat_gateway_id" {
  value = aws_nat_gateway.dr.id
}
output "dr_private_subnets" {
  value = [
    aws_subnet.private_az1.id,
    aws_subnet.private_az2.id
  ]
}

output "dr_public_subnets" {
  value = [
    aws_subnet.public_az1.id,
    aws_subnet.public_az2.id
  ]
}
