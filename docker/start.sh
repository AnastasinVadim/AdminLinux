#!/bin/bash

# Exit on any error
set -e

# Name of the container
CONTAINER_NAME="main_container"

# Pull the latest image
echo "Pulling latest image..."
podman pull vog333/admin:latest

# Stop and remove existing container if it exists
if podman container exists "$CONTAINER_NAME"; then
    echo "Removing existing container..."
    podman stop "$CONTAINER_NAME"
    podman rm -f "$CONTAINER_NAME"
fi

# Run the container with host networking and always-restart policy
echo "Starting new container..."
podman run -d \
      --name "$CONTAINER_NAME" \
      --network host \
      --restart=always \
      vog333/admin:latest

echo "Container '$CONTAINER_NAME' is now running."
