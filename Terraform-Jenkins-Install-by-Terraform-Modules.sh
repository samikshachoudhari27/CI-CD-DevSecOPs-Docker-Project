touch vpc.tf 
touch subnet.tf
touch internet_gateway.tf
touch route_table.tf
touch security_group.tf
touch key_pair.tf
touch instance.tf
touch variables.tf
touch outputs.tf
touch install_jenkins.sh
touch provider.tf
touch terraform.tfvars




or

touch vpc.tf subnet.tf internet_gateway.tf route_table.tf security_group.tf key_pair.tf instance.tf variables.tf outputs.tf install_jenkins.sh provider.tf terraform.tfvars


1. Provider Configuration (provider.tf)

provider "aws" {
  region = var.aws_region
}


2. Variables (variables.tf)

variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "availability_zone" {
  default = "ap-south-1a"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "key_name" {
  default = "CloudGen-Key"
}

variable "ami_id" {
  default = "ami-0c55b159cbfafe1f0" # Ubuntu 22.04 (Modify if needed)
}

variable "disk_size" {
  default = 10
}


3. VPC (vpc.tf)

resource "aws_vpc" "cloudgen_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "CloudGen-VPC"
  }
}


4. Subnet (subnet.tf)

resource "aws_subnet" "cloudgen_subnet" {
  vpc_id                  = aws_vpc.cloudgen_vpc.id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone

  tags = {
    Name = "CloudGen-Subnet"
  }
}

5. Internet Gateway (internet_gateway.tf)

resource "aws_internet_gateway" "cloudgen_igw" {
  vpc_id = aws_vpc.cloudgen_vpc.id

  tags = {
    Name = "CloudGen-IGW"
  }
}


6. Route Table (route_table.tf)

resource "aws_route_table" "cloudgen_rt" {
  vpc_id = aws_vpc.cloudgen_vpc.id

  tags = {
    Name = "CloudGen-Route-Table"
  }
}

resource "aws_route_table_association" "cloudgen_rta" {
  subnet_id      = aws_subnet.cloudgen_subnet.id
  route_table_id = aws_route_table.cloudgen_rt.id
}

resource "aws_route" "cloudgen_internet_access" {
  route_table_id         = aws_route_table.cloudgen_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.cloudgen_igw.id
}


7. Security Group (security_group.tf)

resource "aws_security_group" "cloudgen_sg" {
  vpc_id      = aws_vpc.cloudgen_vpc.id
  name        = "CloudGen-SG"
  description = "Security Group for Jenkins Server"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "CloudGen-SG"
  }
}


8. Key Pair (key_pair.tf)

resource "aws_key_pair" "cloudgen_keypair" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_rsa.pub") # Ensure this file exists

  tags = {
    Name = "CloudGen-Key"
  }
}


9. EC2 Instance (instance.tf)

resource "aws_instance" "cloudgen_jenkins_server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.cloudgen_subnet.id
  vpc_security_group_ids = [aws_security_group.cloudgen_sg.id]
  key_name               = aws_key_pair.cloudgen_keypair.key_name
  user_data              = file("install_jenkins.sh") 

  root_block_device {
    volume_size = var.disk_size
  }

  tags = {
    Name = "CloudGen-Jenkins-Server"
  }
}

10. Outputs (outputs.tf)

output "instance_public_ip" {
  description = "Public IP of Jenkins server"
  value       = aws_instance.cloudgen_jenkins_server.public_ip
}

output "instance_private_ip" {
  description = "Private IP of Jenkins server"
  value       = aws_instance.cloudgen_jenkins_server.private_ip
}


11. Terraform Variables (terraform.tfvars)

aws_region        = "ap-south-1"
vpc_cidr         = "10.0.0.0/16"
subnet_cidr      = "10.0.1.0/24"
availability_zone = "ap-south-1a"
instance_type    = "t2.medium"
key_name         = "CloudGen-Key"
ami_id           = "ami-0c55b159cbfafe1f0"
disk_size        = 10




12. Shell Script (install_jenkins.sh)

#!/bin/bash
sudo apt update -y
wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | tee /etc/apt/keyrings/adoptium.asc
echo "deb [signed-by=/etc/apt/keyrings/adoptium.asc] https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list
sudo apt update -y
sudo apt install temurin-17-jdk -y
/usr/bin/java --version
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins --no-pager




