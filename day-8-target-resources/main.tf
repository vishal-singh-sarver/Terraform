resource "aws_instance" "server" {
	ami = "ami-04a37924ffe27da53"
	instance_type = "t2.nano"
	key_name = "testKeypair"
	tags = {
		Name: "server_1"
	}
}

resource "aws_s3_bucket" "s3" {
	bucket = "cdfvdfvdfvdfvdfv"
	tags = {
		Name: "s3_1"
	}
}

#terraform apply --target=aws_instance.server