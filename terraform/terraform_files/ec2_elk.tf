resource "aws_instance" "elk" {
  ami                         = data.aws_ami.ami.id
  instance_type               = var.instance_type
  key_name                    = var.keypair
  subnet_id                   = aws_subnet.subnet_public-d.id
  vpc_security_group_ids      = [aws_security_group.allow_traffic_elk.id]
  associate_public_ip_address = true
  tags                        = local.common_tags
}