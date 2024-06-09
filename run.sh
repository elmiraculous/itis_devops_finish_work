#!/bin/bash

TAG=${1:-latest}

# Запуск веб-приложения
docker run -d -p 8888:8888 --name mywebapp mywebapp:$TAG

# Ожидание запуска приложения
sleep 10

# Пример работы с логами
docker logs mywebapp

# Открытие Grafana
xdg-open http://localhost:3000
