#!/bin/bash

# Update the package list and install dependencies
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add the Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add the Docker repository
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Start the Docker service and enable it to start on boot
sudo systemctl start docker
sudo systemctl enable docker

# Check Docker version
docker --version

# Run a test container to verify Docker installation
docker run hello-world

# Add your user to the docker group to run Docker commands without sudo
sudo usermod -aG docker $USER

# Print a message to instruct the user to log out and log back in for the group changes to take effect
echo "Docker is now installed. Please log out and log back in to use Docker without sudo."

