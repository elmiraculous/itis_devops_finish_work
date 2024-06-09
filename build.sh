#!/bin/bash

TAG=${1:-latest}

# Сборка веб-приложения и всех зависимостей
docker build -t mywebapp:$TAG .

# Сборка и запуск Loki и Grafana
docker-compose up -d --build
