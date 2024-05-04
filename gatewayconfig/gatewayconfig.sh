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
sudo docker pull nginx:latest

# Execute o comando docker run para criar um contêiner a partir da imagem baixada
sudo docker run --name gateway -d -p 80:80 nginx:latest