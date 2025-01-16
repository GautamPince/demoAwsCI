# #!/bin/bash
# set -e

# # Pull the docker image from docker hub
# docker pull priancegtm/myapp:latest
# echo "Logging in to Docker registry..."
#  echo "RPH4P@TqZAB3YhVX1" | docker login docker.io -u "priancegtm" --password-stdin
# # Run the docker image as a container
# docker run -p 3000:5173 priancegtm/myapp:latest

#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
echo "Pulling the Docker image..."
docker pull priancegtm/myapp:latest

# Log in to the Docker registry
echo "Logging in to Docker registry..."
echo "RPH4P@TqZAB3YhVX1" | docker login docker.io -u "priancegtm" --password-stdin

# Stop and remove any existing container with the same name
if [ "$(docker ps -aq -f name=myapp_container)" ]; then
    echo "Stopping and removing the existing container..."
    docker stop myapp_container
    docker rm myapp_container
fi

# Run the Docker image as a container
echo "Running the Docker container..."
docker run -d --name myapp_container -p 3000:5173 priancegtm/myapp:latest

echo "Deployment successful!"
