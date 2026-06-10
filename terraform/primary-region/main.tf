terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "primary" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "novapay-primary-vpc"
    Environment = "primary"
    Project     = "NovaPay-V2"
  }
}
data "aws_availability_zones" "available" {}

resource "aws_internet_gateway" "primary" {
  vpc_id = aws_vpc.primary.id

  tags = {
    Name = "novapay-primary-igw"
  }
}

resource "aws_subnet" "public_az1" {
  vpc_id                  = aws_vpc.primary.id
  cidr_block              = var.public_subnet_1_cidr
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "public-az1"
    Tier = "public"
    
    "kubernetes.io/role/elb" = "1"  
  }
}

resource "aws_subnet" "public_az2" {
  vpc_id                  = aws_vpc.primary.id
  cidr_block              = var.public_subnet_2_cidr
  availability_zone       = data.aws_availability_zones.available.names[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "public-az2"

    Tier = "public"
    "kubernetes.io/role/elb" = "1"
  }
}

resource "aws_subnet" "private_az1" {
  vpc_id            = aws_vpc.primary.id
  cidr_block        = var.private_subnet_1_cidr
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "private-az1"
    Tier = "pr"

    "kubernetes.io/role/internal-elb" = "1" 
  }
}

resource "aws_subnet" "private_az2" {
  vpc_id            = aws_vpc.primary.id
  cidr_block        = var.private_subnet_2_cidr
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "private-az2"
    Tier = "private"

    "kubernetes.io/role/internal-elb" = "1"  
  }
}
resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name = "novapay-nat-eip"
  }
}
resource "aws_nat_gateway" "primary" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_az1.id

  depends_on = [
    aws_internet_gateway.primary
  ]

  tags = {
    Name = "novapay-primary-nat"
  }
}
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.primary.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.primary.id
  }

  tags = {
    Name = "public-rt"
  }
}
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.primary.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.primary.id
  }

  tags = {
    Name = "private-rt"
  }
}
resource "aws_route_table_association" "public_az1" {
  subnet_id      = aws_subnet.public_az1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_az2" {
  subnet_id      = aws_subnet.public_az2.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "private_az1" {
  subnet_id      = aws_subnet.private_az1.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private_az2" {
  subnet_id      = aws_subnet.private_az2.id
  route_table_id = aws_route_table.private.id
}
