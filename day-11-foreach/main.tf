resource "aws_instance" "server" {
	ami = "ami-04a37924ffe27da53"
	instance_type = "t2.nano"
	key_name = "testKeypair"
	for_each = toset(var.env)
	tags = {
		Name: each.value
	}
}

variable "env" {
  description = "This is the envirment"
	type = list(string)
	default = [ "dev", "prod", "stage", "uat" ]
}