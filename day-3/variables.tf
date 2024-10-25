variable "ami" {
	description = "This is the ami id variable"
	type = string
	default = "ami-04a37924ffe27da53"
}

variable "instance_type" {
	description = "This is the instance type variable"
	type = string
	default = "t2.micro"
}

variable "key" {
	description = "This is the key pair variable"
	type = string
	default = "testKeypair"
}