# Use ubuntu as base image
FROM ubuntu:latest

# Set environment variable for Mallet
ENV MALLET_HOME /usr/local/mallet
ENV PATH $MALLET_HOME/bin:$PATH

# Install necessary packages
RUN apt-get update && \
    apt-get install -y openjdk-11-jre wget unzip tar nano gpg ca-certificates curl gnupg coreutils -y
# mkdir malletmp

# Download Mallet
WORKDIR /usr/local/
RUN wget -O mallet-202108_cds-custom.zip "https://cody.digitalscholarship.brown.edu/mallet-202108_cds-custom.zip" && \
    unzip mallet-202108_cds-custom.zip && \
    mv mallet-202108_cds-custom mallet && \
    rm mallet-202108_cds-custom.zip

# Set the working directory
WORKDIR /usr/local/mallet

# specify the volume
VOLUME ["usr/local/mallet/sample-data"]

# Set the default command to run Mallet
# CMD ["bin/mallet"]
CMD ["./run_mallet.sh"]


# create dir for the volume
# RUN mkdir /usr/local/mallet/sample-data
#ADD REPO
# RUN echo "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
#     "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
#     tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install docker cmds
# RUN apt-get update && \
#     apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin && \
#     rm -rf /var/lib/apt/lists/*

