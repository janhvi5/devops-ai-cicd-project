![AWS](https://img.shields.io/badge/AWS-Cloud-orange)
![Docker](https://img.shields.io/badge/Docker-Container-blue)
![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)
![Jenkins](https://img.shields.io/badge/Jenkins-CI/CD-red)

# AI-Powered DevOps CI/CD Pipeline Project

## 📌 Project Objective
Build a real-world automated CI/CD pipeline to deploy a containerized application on AWS using Infrastructure as Code, security scanning, and monitoring.

---

## 🛠 Tech Stack
- AWS (EC2, VPC, IAM, S3, CloudWatch)
- Jenkins
- Docker
- Terraform
- GitHub
- Trivy
- Linux (Ubuntu)

---

## 🏗 Architecture Overview
Developer → GitHub → Jenkins → Docker → Security Scan → AWS Deploy → Monitoring

---

## 🚀 Pipeline Flow
1. Code push triggers Jenkins  
2. Docker build  
3. Trivy scan  
4. Terraform infra  
5. EC2 deployment  
6. Monitoring  

---

## ⚙️ Setup & Commands

### Clone repository
```bash
git clone https://github.com/janhvi5/devops-ai-cicd-project.git
cd devops-ai-cicd-project

sudo apt update
sudo apt install -y docker.io terraform git

sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

aws configure

cd terraform
terraform init
terraform apply -auto-approve


trivy image devops-app

