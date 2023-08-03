# Use ubuntu as base image
FROM ubuntu:latest

# Set environment variable for Mallet
ENV MALLET_HOME /usr/local/mallet
ENV PATH $MALLET_HOME/bin:$PATH

# Install necessary packages
RUN apt-get update && \
    apt-get install -y openjdk-8-jre wget unzip tar nano -y && \
    rm -rf /var/lib/apt/lists/*

# Download Mallet
WORKDIR /usr/local/
RUN wget -O mallet-202108_cds-custom.tar.gz "https://cody.digitalscholarship.brown.edu/mallet-202108_cds-custom.tar.gz" && \
    tar -zxf mallet-202108_cds-custom.tar.gz && \
    mv mallet-202108_cds-custom mallet && \
    rm mallet-202108_cds-custom.tar.gz

# Set the working directory
WORKDIR /usr/local/mallet

# Set the default command to run Mallet
# CMD ["bin/mallet"]
CMD ["./run_mallet.sh"]

