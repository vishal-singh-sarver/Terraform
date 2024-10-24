variable "ami" {
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