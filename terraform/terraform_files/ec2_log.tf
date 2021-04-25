resource "aws_instance" "log" {
  ami                         = "ami-013f17f36f8b1fefb" #ami do ubuntu utilizada
  instance_type               = var.instance_type
  key_name                    = var.keypair
  subnet_id                   = aws_subnet.subnet_public-d.id
  vpc_security_group_ids      = [aws_security_group.allow_traffic_elk.id]
  private_ip                  = "10.0.1.11"
  associate_public_ip_address = true
  tags = {
    Name = "Web teste logs"
  }
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("/home/ubuntu/Downloads/log.pem") #caminho para key que foi baixada.
    host        = self.public_ip

    #Sessão utilizada para copia dos arquivos ja configurados do filebeat
  }
  provisioner "file" {
    source      = "./filebeat.yml"
    destination = "/home/ubuntu/filebeat.yml"
  }
  #Sessão utilizada para instalação do filebeat
  provisioner "remote-exec" {
    inline = [
      "sudo wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -",
      "echo deb https://artifacts.elastic.co/packages/7.x/apt stable main | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list",
      "sudo apt update",
      "sudo apt install filebeat -y",
    ]
    #Sessão utilizada para iniciamos o serviço do filebeat
  }
  provisioner "remote-exec" {
    inline = [
      "sudo cp /home/ubuntu/filebeat.yml /etc/filebeat/",
      "sudo systemctl enable filebeat",
      "sudo systemctl start filebeat"
    ]
  }
}
