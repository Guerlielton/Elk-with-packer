output "ip" {
  value = aws_instance.elk.public_ip
}
output "ec2instance" {
  value = aws_instance.elk.id
}