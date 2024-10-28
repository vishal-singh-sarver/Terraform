output "public_ip" {
	description = "This is use to print public Ip"
	value = aws_instance.server_1.public_ip
}