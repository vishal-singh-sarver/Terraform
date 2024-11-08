variable "ami_id" {
	description = "This is ami id variable"
	type = string
	default = "ami-04a37924ffe27da53"
}

variable "instance_type" {
	description = "This is instance type variable"
	type = string
	default = "t2.nano"
}

variable "key" {
	description = "This is key pair variable"
	type = string
	default = "testKeypair"
}

resource "aws_instance" "server" {
	ami = var.ami_id
	instance_type = var.instance_type
	key_name = var.key
	count = var.instance_type == "t2.micro" ? 1 : 0
}
