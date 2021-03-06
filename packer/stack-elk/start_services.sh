#!/bin/bash
#Autor: Guerlielton Campos
echo "Iniciando o Elasticsearch"
sudo systemctl daemon-reload 
sudo systemctl enable elasticsearch
sudo systemctl start elasticsearch
sudo systemctl status elasticsearch
echo "################################"

echo "Iniciando o Kibana"
sudo systemctl daemon-reload 
sudo systemctl enable kibana
sudo systemctl start kibana
sudo systemctl status kibana
echo "################################"

echo "Testando o arquivo de input"
#teste da configuração que e enviada no processo de build da imagem
sudo /usr/share/logstash/bin/logstash -f log-input.conf --config.test_and_exit 
echo "##############################"
sudo filebeat test config -e #teste da configurações do filebeat
echo "##############################"
sudo filebeat setup --dashboards #setup dos dashboards
echo "##############################"

echo "Iniciando o Filebeat"
sudo systemctl enable filebeat 
sudo systemctl start filebeat
sudo systemctl status filebeat
echo "##############################"

echo "Iniciando o Logstash"
sudo systemctl enable logstash 
sudo systemctl start logstash
sudo systemctl status logstash
echo "##############################"