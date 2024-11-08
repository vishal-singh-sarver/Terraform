resource "aws_instance" "server" {
  ami = "ami-04a37924ffe27da53"
  instance_type = "t2.nano"
  key_name = "testKeypair"
  count = length(var.env)
	tags = {
		Name: var.env[count.index]
	}
}

variable "env" {
  description = "This is the envirment"
	type = list(string)
	default = [ "dev", "prod", "stage", "uat" ]
}