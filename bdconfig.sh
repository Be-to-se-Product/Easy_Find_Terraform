#!/bin/bash

# Atualize os pacotes existentes
sudo apt update -y

# Instale o Docker
sudo apt install docker.io -y

# Adicione o usuário atual $(whoami) ao grupo docker
sudo usermod -a -G docker $(whoami)

# Inicie o Docker
sudo systemctl start docker

# Execute o comando docker pull para baixar a imagem desejada
sudo docker pull rafaellizarbe95/banco_easy_find:latest

# Execute o comando docker run para criar um contêiner a partir da imagem baixada
sudo docker run -d --name mysql_easy -p 3306:3306 rafaellizarbe95/banco_easy_find:latest