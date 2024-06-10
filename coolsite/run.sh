#!/bin/bash

if [ -z "$1" ]; then
  echo "Необходимо указать тег. Пример использования: ./run.sh <тег>"
  exit 1
fi

TAG=$1 docker-compose up -d
