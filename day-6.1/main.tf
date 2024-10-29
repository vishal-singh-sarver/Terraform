resource "aws_instance" "server" {
	tags = { Name = "server-2" }
	ami = var.ami
	instance_type = var.instance_type
	key_name = var.key
}