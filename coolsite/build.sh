#!/bin/bash

if [ -z "$1" ]; then
  echo "Необходимо указать тег. Пример использования: ./build.sh <тег>"
  exit 1
fi

