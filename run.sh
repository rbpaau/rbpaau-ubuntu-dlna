#!/bin/bash

# Construir la imagen a partir del Dockerfile
docker build -t rbpaau/ubuntu-dlna -f Dockerfile .

# Crear y ejecutar el contenedor a partir de la imagen
docker run -d --name my-dlna-container -p 8200:8200 rbpaau/ubuntu-dlna
