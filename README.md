# Stack Elk
Projeto com hashicorp packer e terraform

Objetivo do projeto e coletar informações de logs da própria instância que será criada com o Elasticsearch como também coletar logs de outras instâncias sendo necessário a instalação do filebeat nas máquinas clientes. 

Pré-requisitos para o projeto.

- Packer

- Terraform

- Aws Cli

Neste projeto estarei utilizando o packer e o terraform para criamos a imagem com o ELK, usando o packer iremos construir a imagem e instalar todos os componentes necessários para a stack do elasticsearch subir criando uma AMI Amazon machine image, depois com o terraform iremos construir toda a configuração de infra na aws.

Aqui estão os link para instalação do [Packer](https://www.packer.io/downloads),[Terraform](https://www.terraform.io/downloads.html),[Aws cli](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv1.html) escolha o seu sistema operacional para instalação das ferramentas neste projeto utilizei o linux ubuntu 20.04 para todas as configurações.

Após a instalação dos pacotes iremos seguir com o processo de configuração para o aws cli utilizando o comando 
```aws configure``` ele irá solicitar o seu access key e secret access key e a região, caso a região não seja passada podemos definir em nosso código.
```
aws configure
AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
```
Após estes parâmetros serem informados o packer e o terraform conseguirá trabalhar de forma que não precisaremos passar esses dados sensíveis direto em nosso código.