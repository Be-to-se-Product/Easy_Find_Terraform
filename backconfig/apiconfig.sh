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
sudo docker pull rafaellizarbe95/api_easy_find:latest

# Execute o comando docker run para criar um contêiner a partir da imagem baixada
sudo docker run -it --name api_easy -p 8080:8080 rafaellizarbe95/api_easy_find:latest