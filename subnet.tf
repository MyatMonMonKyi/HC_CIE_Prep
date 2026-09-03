resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.hellocloud.id
  cidr_block              = var.public_subnet_prefix
  availability_zone       = "eu-north-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.prefix}-public-subnet"
  }
}

resource "aws_route_table_association" "rtb_subnet_asso" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.mk_rtb.id
}