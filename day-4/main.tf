#Create Vpc
resource "aws_vpc" "vpc_1" {
	tags = { Name: "vpc_1"}
	cidr_block = "10.0.0.0/24"
}

#Create Internat Gatway and Intgrate
resource "aws_internet_gateway" "ig" {
	tags = { Name: "ig-1"}
	vpc_id = aws_vpc.vpc_1.id
}

#Create Subnet 
resource "aws_subnet" "public_subnet" {
	tags = { Name: "public-subnet-1" }
	vpc_id = aws_vpc.vpc_1.id
	cidr_block = "10.0.0.0/25"
}

resource "aws_subnet" "private_subnet" {
	tags = { Name: "private-subnet-1" }
	vpc_id = aws_vpc.vpc_1.id
	cidr_block = "10.0.0.128/26"
}

#Create Route Table
resource "aws_route_table" "rt" {
	tags = { Name: "rt_1" }
	vpc_id = aws_vpc.vpc_1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
}

#Enable Routing and associte with Subnet
resource "aws_route_table_association" "rta" {
	subnet_id = aws_subnet.public_subnet.id
	route_table_id = aws_route_table.rt.id
}

#Create Secrate Group
resource "aws_security_group" "sg" {
	tags = { Name: "sg_1"}
	vpc_id = aws_vpc.vpc_1.id
	ingress {
		description = "TLS from VPC"
		from_port = 80
		to_port = 80
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	ingress {
		description = "TLS from VPC"
		from_port = 22
		to_port = 22
		protocol = "TCP"
		cidr_blocks = ["0.0.0.0/0"]
	}
}

#Launch Instance
resource "aws_instance" "server_1" {
	tags = { Name: "server-1"}
	ami = var.ami
	instance_type = var.instance_type
	key_name = var.key
	subnet_id = aws_subnet.public_subnet.id
	vpc_security_group_ids = [aws_security_group.sg.id]
}