resource "aws_instance" "server" {
	ami = "ami-04a37924ffe27da53"
	instance_type = "t2.nano"
	key_name = "testKeypair"
	tags = {
		Name: "server"
	}  
}

resource "aws_s3_bucket" "s3" {
	bucket = "sdfghjgchvjk"
	depends_on = [ aws_instance.server ]
}

#terraform apply --target=aws_s3_bucket.s3