#!/bin/bash

# Update system
sudo dnf update -y

# Install Adoptium JDK 17
sudo rpm --import https://packages.adoptium.net/artifactory/api/gpg/key/public
echo -e "[adoptium]\nname=Adoptium\nbaseurl=https://packages.adoptium.net/artifactory/rpm/$(. /etc/os-release && echo $VERSION_ID)\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://packages.adoptium.net/artifactory/api/gpg/key/public" | sudo tee /etc/yum.repos.d/adoptium.repo
sudo dnf install temurin-17-jdk -y
/usr/bin/java --version

# Install Jenkins
sudo curl -fsSL https://pkg.jenkins.io/redhat-stable/jenkins.io.key | sudo gpg --dearmor -o /etc/pki/rpm-gpg/jenkins-key
echo -e "[jenkins]\nname=Jenkins\nbaseurl=https://pkg.jenkins.io/redhat-stable\ngpgcheck=1\nenabled=1\ngpgkey=file:///etc/pki/rpm-gpg/jenkins-key" | sudo tee /etc/yum.repos.d/jenkins.repo
sudo dnf install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins

# Install Docker
sudo dnf install docker-io -y
sudo usermod -aG docker $USER
newgrp docker
sudo chmod 777 /var/run/docker.sock
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community

# Install Trivy
sudo dnf install wget dnf-plugins-core gnupg lsb-release -y
sudo wget -qO /usr/share/keyrings/trivy.gpg https://aquasecurity.github.io/trivy-repo/rpm/pubkey.gpg
echo -e "[trivy]\nname=Trivy repository\nbaseurl=https://aquasecurity.github.io/trivy-repo/rpm/$(rpm -E %rhel)/\$basearch\nenabled=1\ngpgcheck=1\ngpgkey=file:///usr/share/keyrings/trivy.gpg" | sudo tee /etc/yum.repos.d/trivy.repo
sudo dnf install trivy -y

