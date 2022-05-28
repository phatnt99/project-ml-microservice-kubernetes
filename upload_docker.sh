#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
dockerpath=phatryo99/udacityproject4
# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
echo "Docker ID and Image: $dockerpath"

# Step 2:  
# Authenticate & tag
docker login --username phatryo99 --password qp123456789
docker tag udacityproject4 $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath