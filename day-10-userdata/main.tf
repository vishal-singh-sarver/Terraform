resource "aws_instance" "server" {
	tags = { Name = "server-2" }
	ami = var.ami_id
	instance_type = var.instance_type
	key_name = var.key
    user_data = file("test.sh")
}