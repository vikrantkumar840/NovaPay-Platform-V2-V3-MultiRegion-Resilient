output "primary_vpc_id" {
  value = aws_vpc.primary.id
}

output "public_subnet_1_id" {
  value = aws_subnet.public_az1.id
}

output "public_subnet_2_id" {
  value = aws_subnet.public_az2.id
}

output "private_subnet_1_id" {
  value = aws_subnet.private_az1.id
}

output "private_subnet_2_id" {
  value = aws_subnet.private_az2.id
}
