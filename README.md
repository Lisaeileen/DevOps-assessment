# 🚀 Static Website Deployment on AWS Using Terraform + GitHub Actions

## 📌 Overview
This project is part of my **Assessment** and demonstrates how to deploy a static website on AWS using **S3** for hosting and **CloudFront** for global distribution, fully automated with **Terraform** and **GitHub Actions**.

---

## 🎯 Project Goals
- 🌍 Deploy a **globally accessible static website**
- 🔒 Secure content delivery with **HTTPS**
- ⚡ Automate deployment using **Terraform + GitHub Actions**
- 📦 Manage infrastructure as **code (IaC)** for easy reusability

---

## 🛠️ Tech Stack
- **Terraform** — Infrastructure as Code  
- **AWS S3** — Static website hosting  
- **AWS CloudFront** — CDN + HTTPS delivery  
- **GitHub Actions** — CI/CD automation  

---

## 📂 Project Structure

.github/workflows/terraform.yml   # CI/CD pipeline definition
terraform/
  ├── main.tf                     # AWS resources (S3 + CloudFront)
  ├── outputs.tf                   # Outputs (bucket + CloudFront URL)
  ├── variables.tf                 # Input variables for reusability
  ├── versions.tf                  # Providers + Terraform settings
website/
  └── index.html                   # Static website content
README.md                          # Documentation


---

## ⚙️ CI/CD Workflow
The GitHub Actions pipeline:
1. **Triggers** on push to the `main` branch  
2. Sets up **Terraform**  
3. Runs:
   - `terraform init`
   - `terraform validate`
   - `terraform plan`
   - `terraform apply`  
4. Outputs:
   - **S3 bucket name**
   - **CloudFront distribution URL**  

---

## 🔐 Required GitHub Secrets
| Secret Name             | Description |
|-------------------------|-------------|
| `AWS_ACCESS_KEY_ID`     | IAM user access key with S3 + CloudFront permissions |
| `AWS_SECRET_ACCESS_KEY` | IAM user secret key |
| `fullstack-site-lisa`  | Globally unique S3 bucket name |

---

## 🌍 How It Works

### 1️⃣ **S3 Bucket**
- Stores static files 
- Configured for CloudFront access

### 2️⃣ **CloudFront Distribution**
- Uses the S3 bucket as the origin
- Serves content over **HTTPS**

---

📦 Deployment Output
After a successful run, Terraform will output:

S3 Bucket Name — where files are stored

CloudFront Domain Name — the live website URL
