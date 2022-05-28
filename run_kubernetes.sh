#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=phatryo99/udacityproject4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy udacityproject4 --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
pod=$(kubectl get pods --no-headers -o custom-columns=':metadata.name')
echo $pod
kubectl port-forward pod/$pod 8000:80
