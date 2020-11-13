#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag capstone-app-mdumbu .
# Step 2: 
# List docker images
docker image
# Step 3: 
# Run flask app
docker run -p 9080:9080 capstone-app-mdumbu
