#!/bin/bash

# Build the Docker image
docker build -t mallet .

# Run the Docker container
docker run -it --name malletcds mallet bash
