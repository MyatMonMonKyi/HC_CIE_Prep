resource "tls_private_key" "mk" {
  algorithm = "RSA"
}

locals {
  private_key_filename = "${var.prefix}-ssh-key.pem"
}

resource "aws_key_pair" "mk" {
  key_name   = local.private_key_filename
  public_key = tls_private_key.mk.public_key_openssh
}

resource "local_file" "ssh_key" {
  filename        = "${path.module}/${local.private_key_filename}"
  content         = tls_private_key.mk.private_key_pem
  file_permission = "0400"
}

