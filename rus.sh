#terraform installation step:
#!/bin/bash

sudo apt update
sudo wget https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_linux_amd64.zip
sudo apt install unzip -y
sudo unzip terraform_1.0.0_linux_amd64
sudo mv terraform /usr/bin/
sudo rm -r /home/admin/dave/terraform_1.0.0_linux_amd64.zip

#ec2instance terraform
cd /home/admin/dave/Git-test
terraform init 
terraform apply 