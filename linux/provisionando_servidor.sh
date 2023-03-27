#! /bin/bash

echo "Atualizando sistema..."
sudo apt update -y

echo "Instalando dependencias..."
sudo apt install apache2 unzip -y

echo "Realizando o downloads do projeto na pasta '/tmp'..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/sitedio.zip

echo "Descompactando o projeto..."
sudo unzip /tmp/sitedio.zip -d /tmp/

echo "Copiando os arquivo para o diretório '/var/www/html'..."
sudo cp -rf /tmp/linux-site-dio-main/* /var/www/html/

echo "Removendo arquivos desnecessários..."
sudo sudo rm -rf /tmp/linux-site-dio-main/ /tmp/sitedio.zip



