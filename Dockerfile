# Use ubuntu as base image
FROM ubuntu:latest

# Set environment variable for Mallet
ENV MALLET_HOME /usr/local/mallet
ENV PATH $MALLET_HOME/bin:$PATH

# Install necessary packages
RUN apt-get update && \
    apt-get install -y openjdk-11-jre wget unzip tar nano gpg curl ca-certificates curl gnupg -y && \
    sudo install -m 0755 -d /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/l inux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg && \
    sudo chmod a+r /etc/apt/keyrings/docker.gpg && \
#     source ~/.bashrc && \
#     install -m 0755 -d /etc/apt/keyrings && \
#     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg && \
#     sudo chmod a+r /etc/apt/keyrings/docker.gpg && \ 
    rm -rf /var/lib/apt/lists/*

# RUN echo \
#     "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
#     "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
#     sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# RUN apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

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

