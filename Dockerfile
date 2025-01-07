# Set the baseImage to use for subsequent instructions. 
FROM node:18

# Set the working directory for any subsequent ADD, COPY, CMD, ENTRYPOINT, or RUN instructions that follow it in the Dockerfile.
WORKDIR /myapp

# Copy only package.json and package-lock.json first to leverage Docker caching
COPY package*.json ./

# Execute any commands on top of the current image as a new layer and commit the results.
RUN npm install

# Copy files or folders from source to the dest path in the image's filesystem.
COPY . .


# Define the network ports that this container will listen on at runtime.
EXPOSE 5173

# Provide defaults for an executing container. If an executable is not specified, then ENTRYPOINT must be specified as well. There can only be one CMD instruction in a Dockerfile.
CMD ["npm", "run", "dev"]


# For Production:
#    If you're preparing the app for production (building the app and serving it with Vite's preview server), modify the Dockerfile like this:
# # Use an official Node.js runtime as a parent image
# FROM node:18

# # Set the working directory
# WORKDIR /myapp

# # Copy only package.json and package-lock.json first
# COPY package*.json ./

# # Install dependencies
# RUN npm install

# # Copy the rest of the application code
# COPY . .

# # Build the app for production
# RUN npm run build

# # Expose the port for Vite's preview server
# EXPOSE 4173

# # Serve the app with the Vite preview server
# CMD ["npm", "run", "preview"]
