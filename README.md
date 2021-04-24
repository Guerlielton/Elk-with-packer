# Elk-with-packer
Project is run with hashicorp packer and terraform

Projeto com hashicorp packer e terraform

Pré-requisitos para o projeto.

- Packer

- Terraform

- Aws Cli

Neste projeto estarei utilizando o packer e o terraform para criamos a imagem com o ELK.Usando o packer iremos construir a imagem e instalar todos os componentes necessários para a stack do elasticsearch subir criando uma AMI Amazon machine image, depois com o terraform iremos construir toda a configuração de infra na aws.

Aqui estão os link para instalação do packer,terraform e aws cli escolha o seu sistema operacional para instalação das ferramentas
neste projeto utilizei o linux ubuntu para todas as configurações.
``` 
https://docs.aws.amazon.com/cli/latest/userguide/install-cliv1.html
https://www.terraform.io/downloads.html
https://www.packer.io/downloads

```
Após a instalação dos pacotes iremos seguir com o processo de configuração para o aws cli utilizando o comando 
```aws configure``` ele ira solicitar o seu  acesse key e secret access key e a região caso a região não seja passada podemos define em nosso codigo.
```
aws configure
AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY

```
Após estes parâmetros serem informados o packer e o terraform conseguirá trabalhar de forma que não precisaremos passar esses dados sensíveis direto em nosso código.


