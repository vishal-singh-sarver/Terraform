resource "aws_instance" "server" {
	tags = { Name: "server-1" }
	ami = var.ami
	instance_type = "t2.micro"
	key_name = var.key
}