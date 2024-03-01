#!/bin/bash

echo "*****INSTALANDO PAQUETES PARA SERVIDOR ARTILLERY 35*****"

echo "INSTALAR nodejs Y npm"

curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo apt-get install nodejs -y

sudo apt install npm -y

sudo npm install -g artillery

sudo mkdir artillery

echo "*****INSTALACIÓN PAQUETES PARA SERVIDOR ARTILLERY 35 TERMINADA*****"