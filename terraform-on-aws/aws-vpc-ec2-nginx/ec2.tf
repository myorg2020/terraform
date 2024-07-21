resource "aws_instance" "nginxserver" {
  instance_type               = "t3.nano"
  ami                         = "ami-0ec0e125bb6c6e8ec"
  subnet_id                   = aws_subnet.public-subnet.id
  vpc_security_group_ids      = [aws_security_group.nginx-sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
            #!/bin/bash
            sudo yum install -y nginx
            systemctl start nginx
            EOF

  tags = {
    Name = "NginxServer"
  }
}