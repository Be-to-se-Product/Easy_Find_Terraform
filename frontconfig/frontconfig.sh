#!/bin/bash

# Atualize os pacotes existentes
sudo apt update -y

# Instale o Docker
sudo apt install docker.io -y

# Adicione o usuário atual $(whoami) ao grupo docker
sudo usermod -a -G docker $(whoami)

# Inicie o Docker
sudo systemctl start docker

sudo docker pull rafaellizarbe95/front_easy:v1.0

sudo docker run --name front -d -p 80:80 rafaellizarbe95/front_easy:v1.0

