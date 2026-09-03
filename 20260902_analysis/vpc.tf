resource "aws_vpc" "hellocloud" {
  cidr_block           = var.address_space
  enable_dns_hostnames = true

  tags = {
    Name        = "${var.prefix}-vpc-${var.region}"
    environment = "${var.environment}"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.hellocloud.id

  tags = {
    Name = "${var.prefix}-igw"
  }
}

resource "aws_route_table" "mk_rtb" {
  vpc_id = aws_vpc.hellocloud.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}