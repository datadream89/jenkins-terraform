#!/bin/bash
sudo apt-get -y update
# Install OpenJDK 8
sudo apt-get -y install openjdk-8-jdk
# Install Jenkins
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo echo "deb https://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list
sudo apt-get -y update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
sudo docker run -d --name sonarqube -p 9000:9000 sonarqube

