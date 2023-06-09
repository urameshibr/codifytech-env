#!/bin/bash

# Define as URLs dos repositórios
api_repository="git@github.com:urameshibr/codifytech-api.git"
web_repository="git@github.com:urameshibr/codifytech-web.git"

# Clone os repositórios na pasta atual
git clone $api_repository
git clone $web_repository

# Criar rede docker do projeto
docker network create codifytech-network -d bridge

# Iniciar o ambiente com Docker Compose
docker-compose up -d --force-recreate --build
