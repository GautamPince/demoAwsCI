#!/bin/bash
set -e 

# Pull the docker image from docker hub
docker pull priancegtm/myapp

# Run the docker image as a container 
docker run -d -p 3000:5173 princegtm/myapp
