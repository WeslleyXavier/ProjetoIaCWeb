#!/bin/bash

echo -e "Buscando atualizações...\n"
apt-get update

echo -e "Atualizando...\n"
apt-get upgrade -y

echo -e "Instalando Apache...\n"
apt install apache2 -y

echo -e "Instalando Unzip...\n"
apt install unzip -y

echo -e "Baixando arquivos...\n"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

echo -e "Copiando arquivos...\n"
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
echo -e "Arquivos copiados com sucesso!\n"




