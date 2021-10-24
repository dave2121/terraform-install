#terraform installation step:
#!/bin/bash

sudo apt update
sudo wget https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_linux_amd64.zip
sudo apt install unzip -y
sudo unzip terraform_1.0.0_linux_amd64
sudo mv terraform /usr/bin/
sudo rm -r /home/admin/terraform-install/terraform_1.0.0_linux_amd64.zip

#ec2instance

provider "aws" {
    region = "us-east-1"

}
resource "aws_instance" "Git-test" {
    ami = "ami-07d02ee1eeb0c996c"
    instance_type = "t2.micro"
    security_groups = ["github-sec-group"]
    key_name = "test"
  
}

resource "aws_security_group" "github-sec-group" {
  name        = "github-sec-group"
  description = "github test"
  vpc_id      = aws_vpc.Git-test.id

  
  
}


resource "aws_vpc" "Git-test" {
  cidr_block = "10.0.0.0/16"
}
 terraform init 
 terraform apply