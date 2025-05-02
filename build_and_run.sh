#!/bin/bash

# Paso 1: Ejecutar mvn clean package
cd ./backend
echo "Ejecutando mvn clean package..."
mvn clean package

# Verificar si el comando mvn fue exitoso
if [ $? -ne 0 ]; then
  echo "Error al ejecutar mvn clean package. Saliendo..."
  exit 1
fi

# Paso 2: Ejecutar docker-compose up --build
cd ../
echo "Ejecutando docker-compose up --build..."
docker-compose up --build
