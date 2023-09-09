#!/bin/bash

# Build the Docker image
docker build -t mallet .

# Run the Docker container
# docker run -v /${PWD}/tmp:/usr/local/mallet/malletmp -it --name malletcds mallet bash
docker run -v ~/Desktop/sample-data:/sample-data -it --name malletcds mallet bash
