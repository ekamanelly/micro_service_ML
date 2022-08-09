#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=emmanuelekama/tag

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run predictor --image=emmanuelekama/tag --port=80


# Step 3:
# List kubernetes pods
kubectl get pods
kubectl wait --for=condition=Ready pod/predictor

# Step 4:
# Forward the container port to a host
kubectl port-forward pods/predictor --address 0.0.0.0 8000:80

