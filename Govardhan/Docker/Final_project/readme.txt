#created ubuntu ec2 machine using terraform 

1.first installed aws cli and tearrform cli in my local and configured aws cli using my IAM user access key and password
aws --version
terraform --version
aws configure(enter IAM user accesskey and password with default region and json format)

2.craeted a main.tf file in my terraform folder in my local
 mkdir -m 777 terraform
 

 cat main.tf(i used my existing key pair name in code for ssh connection)

 # version settings

terraform {
    required_version = ">= 1.1.0"

required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

#provider configuration
provider "aws" {
    region = "ap-south-1"
}

# resource creation

resource "aws_instance" "myec2" {
instance_type = "t3.micro"
ami = "ami-0a7cf821b91bcccbc"

subnet_id = "subnet-045d1d4e239177fbe"

associate_public_ip_address = true

key_name = "ec2pem"

tags = {
    Name = "docker"
  }
}

3.executed below commands

terraform init
terraform plan
terraform apply

4.I have checked the ec2 in console and connected using bewo command

ssh -i "ec2pem.pem" ubuntu@ec2-3-110-114-191.ap-south-1.compute.amazonaws.com


5.after successfuly connecting i have installed docker from official docker page

docker --version

6.Added ubuntu user docker group
 sudo usermod -aG docker ubuntu

7.created a practice folder in ubuntu user home directory and did gitinit in that folder and mapped my git to github and cloned the repo 

mkdir -m 777 practice
cd practice
git init
git remote add origin repourl
git clone repourl

8.I went to the project folder where dockercompose available and exceuted below commands

cd /practice/learn-docker/day9/project

9.I have entered that frontent folder changed the backend url with publicip and backend port
REACT_APP_API_BASE_URL=http://3.110.114.191:8000

10. I have modified .env in backned folder as well, added my ec2 public ip which is a source to backend in CORS origin
CORS_ORIGINS=http://localhost:3000,http://localhost:8080,http://localhost,http://3.110.114.191

11.after that i ran a docker compose up command and i can able to access from browser with my publicip
docker compose up

