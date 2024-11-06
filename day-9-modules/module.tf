module "instance" {
  source = "../day-9-template-block"
  ami_id = "ami-04a37924ffe27da53"
  instance_type = "t2.nano"
  key = "testKeypair"
}