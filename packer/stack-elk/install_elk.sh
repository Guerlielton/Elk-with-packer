#!/bin/bash

#add swap para micro
sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=2048 count=1048576
sudo /sbin/mkswap /var/swap.1
sudo chmod 600 /var/swap.1
sudo /sbin/swapon /var/swap.1
sudo echo "/var/swap.1   none   swap  sw  0  0" | sudo tee -a /etc/fstab


echo " Instalando o Java e o Nginx"

sudo apt update 
sudo apt install apt-transport-https -y
sudo apt install default-jre -y
sudo apt install nginx -y

echo "#######################################"

echo "Adicionando chave GPG Publica"

sudo wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

echo "#######################################"

echo "Adicionando source list"

echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list

echo "#######################################"
 
echo "Atualizando os pacotes"

sudo apt update 
sudo apt upgrade -y

echo "Instalando Elasticsearch"

sudo apt install elasticsearch -y

echo "#######################################"

echo "Instalando Kibana"

sudo apt install kibana  -y

echo "#######################################"

echo "Instalando Logstash"

sudo apt install logstash -y

echo "#######################################"

echo "Instalando Filebeat"

sudo apt install filebeat -y

echo "#######################################"



