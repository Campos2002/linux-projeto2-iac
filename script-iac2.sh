#!/bin/bash

echo "Atualizando Servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando Apache..."

apt-get install apache2 -y

echo "Instalando Unzip..."

apt-get install unzip -y

echo "Baixando Aplicação para Servidor Apache..."

cd /tmp
wget https://github.com/Campos2002/gerador_de_PDF/archive/refs/heads/main.zip
unzip main.zip
cd gerador_de_PDF-main
cp -R * /var/www/html

