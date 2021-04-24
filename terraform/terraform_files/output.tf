output "ip" {
  description = "Ip address da instance Ec2"
  value       = aws_instance.elk.public_ip
}
output "ec2instance" {
  description = "Id da instance Ec2"
  value       = aws_instance.elk.id
}