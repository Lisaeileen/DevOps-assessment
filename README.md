🚀 Static Website Deployment on AWS Using Terraform + GitHub Actions
This project is part of my Assessment and demonstrates how to deploy a static website on AWS using S3 for hosting and CloudFront for global distribution, fully automated with Terraform and GitHub Actions.

✅ Project Highlights
🌍 Globally accessible static site

🔒 HTTPS-secured via CloudFront default SSL

⚡ Fully automated deployment with Terraform + GitHub Actions

📦 Infrastructure as Code (IaC) for reproducible setups

🔧 Tech Stack
Terraform — Infrastructure as Code

AWS S3 — Static website storage

AWS CloudFront — CDN + HTTPS

GitHub Actions — CI/CD automation

📁 Project Structure
bash
Copy
.github/workflows/terraform.yml   # CI/CD pipeline definition
terraform/
  ├── main.tf                     # AWS resources (S3 + CloudFront)
  ├── outputs.tf                   # Outputs (bucket + CloudFront URL)
  ├── variables.tf                 # Input variables for reusability
  ├── versions.tf                  # Providers + Terraform settings
website/
  └── index.html                   # Static website content
README.md                          # Documentation
⚙️ CI/CD Workflow
The GitHub Actions workflow:

Triggers on push to the main branch

Sets up Terraform

Executes terraform init, terraform validate, terraform plan, and terraform apply

Outputs the S3 bucket name and CloudFront URL after deployment

🔐 Required GitHub Secrets
Secret Name	Description
AWS_ACCESS_KEY_ID	IAM user access key with permissions for S3 + CloudFront
AWS_SECRET_ACCESS_KEY	IAM user secret key
FULLSTACK_ASSESSMENT	Globally unique S3 bucket name

🌍 How It Works
✅ S3
Stores static files (HTML, CSS, JS)

Allows CloudFront to fetch objects

✅ CloudFront
Uses the S3 bucket as origin

Serves content over HTTPS

Globally distributed for low latency
