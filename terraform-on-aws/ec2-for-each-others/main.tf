resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  for_each      = var.webservers
  tags = {
    name = each.value
  }
}