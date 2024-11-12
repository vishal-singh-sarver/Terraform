resource "aws_instance" "server" {
  ami = "ami-04a37924ffe27da53"
  instance_type = "t2.nano"
  key_name = "testKeypair"
}