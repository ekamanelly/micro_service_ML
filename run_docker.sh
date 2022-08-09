!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# read -p 'plases specify a tag: ' tag
echo your container name is tag
sudo docker build --tag emmanuelekama/tag .
# Build image and add a descriptive tag

# Step 2: 
# List docker images
echo listing tag on docker hub
docker images

# Step 3: 
# Run flask app
sudo docker run -p 8000:80 emmanuelekama/tag
