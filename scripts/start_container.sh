# #!/bin/bash
# set -e

# # Pull the docker image from docker hub
# docker pull priancegtm/myapp:latest

# # Run the docker image as a container
# docker run -d -p 3000:5173 priancegtm/myapp:latest


#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull priancegtm/myapp:latest

# Stop and remove any existing container with the same name
if [ "$(docker ps -aq -f name=myapp_container)" ]; then
    docker stop myapp_container
    docker rm myapp_container
fi

# Run the Docker image as a container
docker run -d --name myapp_container -p 3000:5173 priancegtm/myapp:latest
