output "ELK-IP" {
  description = "Ip address da instance Ec2 elk"
  value       = aws_instance.elk.public_ip
}
output "Ec2-log" {
  description = "Ip address da instance Ec2 web "
  value       = aws_instance.web.public_ip
}
