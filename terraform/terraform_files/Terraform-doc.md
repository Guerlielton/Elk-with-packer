## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_instance.elk](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.rtb_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.rta_subnet_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.allow_traffic_elk](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.subnet_public-d](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_ami.ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_from_cidrs"></a> [allow\_from\_cidrs](#input\_allow\_from\_cidrs) | Permitir conexão SSH para instância EC2 | `list` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_ami_filter_name"></a> [ami\_filter\_name](#input\_ami\_filter\_name) | Filtro para pegar o nome da AMI criada pelo packer | `string` | `"ELK-CHALLENGE-*"` | no |
| <a name="input_ami_owner"></a> [ami\_owner](#input\_ami\_owner) | Filtro para o dono da AMI | `string` | `"self"` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | Zona de Disponibilidade da SubNet | `string` | `"us-east-1d"` | no |
| <a name="input_cidr_subnet"></a> [cidr\_subnet](#input\_cidr\_subnet) | Subnet Zona D 1.0/24 | `string` | `"10.0.1.0/24"` | no |
| <a name="input_cidr_vpc"></a> [cidr\_vpc](#input\_cidr\_vpc) | CIDR Bloco da VPC | `string` | `"10.0.0.0/16"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Tipo da instancia EC2 | `string` | `"t2.micro"` | no |
| <a name="input_keypair"></a> [keypair](#input\_keypair) | Key pair criada previamente para acesso as máquina EC2 | `string` | `"default"` | no |
| <a name="input_region"></a> [region](#input\_region) | Região da aws | `string` | `"us-east-1"` | no |
| <a name="input_tag_name"></a> [tag\_name](#input\_tag\_name) | Nome para instancia EC2 | `string` | `"ELK-CHALLENGE"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2instance"></a> [ec2instance](#output\_ec2instance) | Id da instance Ec2 |
| <a name="output_ip"></a> [ip](#output\_ip) | Ip address da instance Ec2 |