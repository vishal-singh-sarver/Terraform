module "instance" {
  source = "terraform-aws-modules/ec2-instance/aws"
	ami = "ami-04a37924ffe27da53"
  instance_type = "t2.nano"
  key_name  = "testKeypair"
}