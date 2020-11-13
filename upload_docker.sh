#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=mdumbuya93/capstone-app-mdumbu
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
# docker login --username mdumbuya93
docker image tag capstone-app-mdumbu $dockerpath


# Step 3:
# Push image to a docker repository
docker login
docker push $dockerpath