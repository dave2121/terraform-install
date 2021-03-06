#!/bin/bash

# Terraform installation
sudo apt update
sudo apt install unzip
wget https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_linux_amd64.zip
unzip /home/admin/test/terraform_1.0.0_linux_amd64.zip
rm -r /home/admin/test/terraform_1.0.0_linux_amd64.zip
sudo mv /home/admin/test/terraform  /usr/bin


# Jenkins

sudo apt install openjdk-11-jdk -y
sudo apt install gnupg -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins -y

