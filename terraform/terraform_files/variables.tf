variable "ami_filter_name" {
  description = "Filtro para pegar o nome da AMI criada pelo packer"
  default     = "ELK-CHALLENGE-*"
}

variable "region" {
  description = "Região da aws"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Tipo da instancia EC2"
  default     = "t2.micro"
}

variable "tag_name" {
  description = "Nome para instancia EC2"
  default     = "ELK-CHALLENGE"
}

variable "allow_from_cidrs" {
  description = "Permitir conexão SSH para instância EC2"
  default     = ["0.0.0.0/0"]
}

variable "ami_owner" {
  description = "Filtro para o dono da AMI"
  default     = "self"
}

variable "cidr_vpc" {
  description = "CIDR Bloco da VPC"
  default     = "10.0.0.0/16"
}
variable "cidr_subnet" {
  description = "Subnet Zona D 1.0/24"
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Zona de Disponibilidade da SubNet"
  default     = "us-east-1d"
}

variable "keypair" {
  description = "Key pair criada previamente para acesso as máquina EC2 esse valor sera validado no tfvars"
  default     = "default"
}
