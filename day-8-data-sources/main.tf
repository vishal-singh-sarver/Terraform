data "aws_subnet" "selected" {
  filter {
    name   = "tag:Name"
    values = ["subnet"]
  }
}

data "aws_ami" "amzlinux" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-gp2" ]
  }
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}

resource "aws_instance" "server" {
	ami = data.aws_ami.amzlinux.id
	instance_type = "t2.nano"
	key_name = "testKeypair"
	subnet_id = data.aws_subnet.selected.id
	tags = {
		Name: "server"
	}
}