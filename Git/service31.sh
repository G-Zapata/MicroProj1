#!/bin/bash

echo "*****INSTALANDO PAQUETES PARA SERVIDOR WEB 31*****"

echo "INSTALANDO CONSUL"
 wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

 echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

 sudo apt install consul -y

echo "INSTALAR nodejs Y npm"

sudo apt install nodejs -y

sudo apt install npm -y

echo "CREANDO FOLDER consulService/app Y COPIANDO ARCHIVO index31.js"

sudo mkdir -p consulService/app 

sudo touch index31.js

sudo cp /vagrant/consulService/app/index31.js consulService/app/index31.js

cd consulService/app

echo "INSTALANDO NPM CONSUL Y NPM EXPRESS"

sudo npm install consul

sudo npm install express

echo "*****INSTALACIÓN PAQUETES PARA SERVIDOR WEB 31 TERMINADA*****"