output "pub-ip" {
  value = aws_instance.nginxserver.public_ip
}

output "nginx_url" {
  value = "http://${aws_instance.nginxserver.public_ip}"

}