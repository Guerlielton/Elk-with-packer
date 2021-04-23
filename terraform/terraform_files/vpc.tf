resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_vpc
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "ELK-CHALLANGE"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
}

resource "aws_subnet" "subnet_public-d" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.cidr_subnet
  map_public_ip_on_launch = "true"
  availability_zone       = var.availability_zone
  tags = {
    Name = "SUBNET | ZONE-D | 10.0.1.0/24"
  }
}

resource "aws_route_table" "rtb_public" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "rta_subnet_public" {
  subnet_id      = aws_subnet.subnet_public-d.id
  route_table_id = aws_route_table.rtb_public.id
}