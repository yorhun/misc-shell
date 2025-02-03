#!/bin/bash

sudo apt-get update

# Install required packages to allow apt to use HTTPS repositories:

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add Docker's official GPG key:

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add the Docker repository to APT sources:

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


# Update apt package index again:

sudo apt-get update

# Install Docker Engine:

sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# (Optional) If you want to run Docker without sudo, add your user to the docker group:

sudo usermod -aG docker $USER

# relog for the above command to take effect or try a machine reboot if it is not sufficient

# setup docker-compose

sudo mkdir -p /usr/local/lib/docker/cli-plugins

sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/lib/docker/cli-plugins/docker-compose

sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose

sudo ln -s /usr/local/lib/docker/cli-plugins/docker-compose /usr/bin/docker-compose

docker compose version
