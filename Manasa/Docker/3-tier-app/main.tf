provider "aws" {
  region = "ap-south-1"   # Mumbai region
}

# Get the default VPC in this region
data "aws_vpc" "default" {
  default = true
}

# Security group inside the default VPC
resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Allow SSH and HTTP"
  vpc_id      = data.aws_vpc.default.id   #  attach SG to the default VPC

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 instance in the same VPC
resource "aws_instance" "app_server" {
  ami                    = "ami-0f8ca728008ff5af4"   # Ubuntu 20.04 LTS in ap-south-1
  instance_type          = "t3.micro"                #  free-tier eligible
  key_name               = "docker-mumbai"              # <-- replace with your key pair name
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "docker-app-server"
  }
}

# Output the public IP
output "public_ip" {
  value = aws_instance.app_server.public_ip
}