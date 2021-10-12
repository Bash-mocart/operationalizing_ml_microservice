#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
 dockerpath=bashox/col

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u bashox

#docker tag col bashox/udacity[:latest]
#docker commit col bashox/udacity[:latest]

# Step 3:
# Push image to a docker repository\
docker tag col bashox/col
docker push bashox/col
 
