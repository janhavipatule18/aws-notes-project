# AWS Notes App - Terraform Infrastructure

## 📌 Project Overview

This project demonstrates the deployment and management of a Django Notes Application on AWS using Docker and Terraform.

The application runs on an AWS EC2 instance using Docker containers, while the AWS infrastructure is managed using Terraform.

## 🏗️ Architecture

User
  |
  v
Internet
  |
  v
AWS VPC (10.0.0.0/16)
  |
  v
Public Subnet (10.0.1.0/24)
  |
  v
EC2 Instance
  |
  +-- Docker
  |    |
  |    +-- Django Notes App
  |    |
  |    +-- MySQL
  |
  +-- Security Group
       |
       +-- SSH (22)
       +-- HTTP (80)
       +-- Django (8000)

## 🛠️ Technologies Used

- AWS EC2
- AWS VPC
- AWS Subnet
- AWS Internet Gateway
- AWS Route Table
- AWS Security Groups
- Terraform
- Docker
- Docker Compose
- Django
- MySQL
- Git & GitHub
- Linux

## ☁️ AWS Infrastructure

The following AWS resources are managed using Terraform:

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- Security Group Ingress Rules
- EC2 Instance

## 🧩 Terraform Features

The project uses:

- Terraform provider configuration
- Terraform variables
- Terraform outputs
- Existing AWS infrastructure imported into Terraform
- Terraform state management
- Infrastructure validation using `terraform validate`
- Infrastructure planning using `terraform plan`

## 📁 Project Structure

```text
aws-notes-project/
│
├── terraform/
│   ├── ec2.tf
│   ├── internet_gateway.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── route_association.tf
│   ├── route_table.tf
│   ├── security_group.tf
│   ├── subnet.tf
│   ├── variables.tf
│   ├── vpc.tf
│   ├── terraform.tfvars
│   └── .terraform.lock.hcl
│
├── .gitignore
└── README.md

## 🎯 Learning Outcomes

Through this project, I practiced:

- Deploying applications on AWS EC2
- Creating AWS networking infrastructure
- Managing infrastructure using Terraform
- Importing existing AWS resources into Terraform
- Using Terraform variables and outputs
- Managing security group rules
- Running Django and MySQL using Docker
- Using Git and GitHub for infrastructure code

## 📌 Project Status

The AWS Notes Application is successfully deployed and accessible through the EC2 instance.

The AWS infrastructure has been successfully managed and verified using Terraform, and the project has been documented and version-controlled using Git and GitHub.

## 🚀 Conclusion

This project provided hands-on experience with cloud infrastructure, Infrastructure as Code, containerization, and application deployment. It demonstrates how AWS resources can be organized and managed using Terraform while running a containerized Django application on EC2.

---

**Project:** AWS Notes Application  
**Technologies:** AWS • Terraform • Docker • Django • MySQL • Git • GitHub
