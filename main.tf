terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.46.0"
    }
  }
  required_version = ">=1.7.5"
}

resource "aws_vpc" "main" {
 cidr_block = var.cidr-block-vpc
 
 tags = {
   Name = var.name-vpc
 }
}

resource "aws_subnet" "public_subnets" {
 count      = length(var.public_subnet_cidrs)
 vpc_id     = aws_vpc.main.id
 cidr_block = element(var.public_subnet_cidrs, count.index)
 
 tags = {
   Name = "Public Subnet ${count.index + 1}"
 }
}
 
resource "aws_subnet" "private_subnets" {
 count      = length(var.private_subnet_cidrs)
 vpc_id     = aws_vpc.main.id
 cidr_block = element(var.private_subnet_cidrs, count.index)
 
 tags = {
   Name = "Private Subnet ${count.index + 1}"
 }
}



# Consulta para contar los Internet Gateways asociados a la VPC




resource "aws_internet_gateway" "gateway" {

  count = 1
  vpc_id = aws_vpc.main.id
  tags = {
    Name = var.name-gateway
    }
}
  
  