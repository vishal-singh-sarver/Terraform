locals {
  ami = "ami-04a37924ffe27da53"
  instance_type = "t2.nano"
  key_name = "testKeypair"
}

resource "aws_instance" "server" {
  ami = local.ami
  instance_type = local.instance_type
  key_name = local.key_name
}