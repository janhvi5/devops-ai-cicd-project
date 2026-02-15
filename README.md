# AI-Powered DevOps CI/CD Pipeline Project

## 📌 Project Objective
Build a real-world automated CI/CD pipeline to deploy a containerized application on AWS using Infrastructure as Code, security scanning, and monitoring.

---

## 🛠 Tech Stack
- AWS (EC2, VPC, IAM, S3, CloudWatch)
- Jenkins (CI/CD automation)
- Docker (containerization)
- Terraform (Infrastructure as Code)
- GitHub (source control)
- Trivy (AI-assisted security scanning)
- Linux (Ubuntu)

---

## 🏗 Architecture Overview

Developer → GitHub → Jenkins Pipeline → Docker Build → Security Scan → AWS Deploy → Monitoring

(Optional: upload diagram image later)

---

## 🚀 Pipeline Flow

1. Code pushed to GitHub  
2. Jenkins triggers pipeline  
3. Docker image build  
4. Trivy vulnerability scan  
5. Terraform provisions AWS infra  
6. App deployed to EC2  
7. Monitoring enabled with CloudWatch  

---

## ⚙️ Setup & Commands

### Clone repository
```bash
git clone https://github.com/janhvi5/devops-ai-cicd-project.git
cd devops-ai-cicd-project
