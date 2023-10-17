@echo off
REM Build the Docker image
docker build -t mallet .

REM Run the Docker container
docker run -v %cd%\sample-data:/usr/local/mallet/sample-data -it --name malletcds mallet bash
