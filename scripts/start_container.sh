#!/bin/bash
set -e

# Log in to the Docker registry
echo "Logging in to Docker registry..."
echo "RPH4P@TqZAB3YhVX1" | docker login docker.io -u "priancegtm" --password-stdin 

# Pull the docker image from docker hub
docker pull priancegtm/myapp

# Run the docker image as a container
docker run -d -p 3000:5173 priancegtm/myapp


# #!/bin/bash
# set -e

# # Log in to the Docker registry
# echo "Logging in to Docker registry..."
# echo "RPH4P@TqZAB3YhVX1" | docker login docker.io -u "priancegtm" --password-stdin

# # Pull the Docker image from Docker Hub
# echo "Pulling the Docker image..."
# docker pull priancegtm/myapp:latest

# # Check if a container with the same name is already running
# if [ "$(docker ps -q -f name=myapp_container)" ]; then
#     echo "Stopping the running container..."
#     docker stop myapp_container
#     docker rm myapp_container
# fi

# # Check if port 3000 is in use
# if lsof -i:3000 | grep LISTEN; then
#     echo "Port 3000 is already in use. Please stop the process using it or choose a different port."
#     exit 1
# fi

# # Run the Docker image as a container
# echo "Starting the container..."
# docker run -d --name myapp_container -p 3000:5173 priancegtm/myapp:latest

# echo "Deployment successful! The application is running on port 3000."
