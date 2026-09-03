resource "aws_instance" "example" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.mk.key_name
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.mk_sg.id]
  tags = {
    Name = "${var.prefix}-instance"
  }
}