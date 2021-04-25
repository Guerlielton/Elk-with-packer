resource "aws_security_group" "allow_traffic_elk" {
  name        = "permitir_ssh"
  description = "Allow trafic to EC2"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "Allow trafic"
    self        = true
    from_port   = 0
    to_port     = 0
    protocol    = -1
  }
  ingress {
    cidr_blocks = var.allow_from_cidrs
    description = "SSH to EC2"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }
  ingress {
    cidr_blocks = var.allow_from_cidrs
    description = "Allow acess kibana"
    from_port   = 5601
    to_port     = 5601
    protocol    = "tcp"
  }
  ingress {
    cidr_blocks = var.allow_from_cidrs
    description = "Allow port logstash"
    from_port   = 5044
    to_port     = 5044
    protocol    = "tcp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Allow_acess_ssh_and_elk"
  }
}