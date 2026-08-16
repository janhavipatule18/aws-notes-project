# AWS Notes App - Terraform Infrastructure

## 📌 Project Overview

This project demonstrates the deployment and infrastructure management of a **Django Notes Application** on AWS using **Docker, MySQL, and Terraform**.

The Django Notes Application runs in Docker containers on an **AWS EC2 instance**, while the supporting AWS infrastructure is managed using **Terraform (Infrastructure as Code)**.

The existing AWS infrastructure was imported into Terraform and verified against the Terraform configuration to ensure that the infrastructure matches the defined code.

---

## 🏗️ Architecture

The project is deployed in the **AWS Asia Pacific (Mumbai) region (****`ap-south-1`****)**.

### Architecture Flow

```
User
  ↓
Internet
  ↓
AWS VPC
  ↓
Public Subnet
  ↓
EC2 Instance
  ↓
Docker
  ├── Django Notes App
  └── MySQL

```

The AWS networking layer consists of:

```
VPC
 ├── Public Subnet
 │     └── EC2 Instance
 │           ├── Docker
 │           ├── Django Notes App
 │           └── MySQL
 │
 ├── Internet Gateway
 ├── Route Table
 ├── Route Table Association
 └── Security Group
       ├── SSH (22)
       ├── HTTP (80)
       └── Django (8000)

```

---

## ☁️ AWS Infrastructure

The following AWS resources are managed using Terraform:

* VPC
* Public Subnet
* Internet Gateway
* Route Table
* Route Table Association
* Security Group
* Security Group Ingress Rules
* EC2 Instance

### AWS Region

**Asia Pacific (Mumbai)**

```
Region: ap-south-1

```

---

## 🛠️ Technologies Used

* **AWS EC2** – Cloud virtual server
* **AWS VPC** – Virtual private network
* **AWS Subnet** – Network segment for the EC2 instance
* **AWS Internet Gateway** – Internet connectivity for the VPC
* **AWS Route Table** – Network traffic routing
* **AWS Security Group** – Firewall rules for the EC2 instance
* **Terraform** – Infrastructure as Code
* **Docker** – Application containerization
* **Docker Compose** – Multi-container application management
* **Django** – Web application framework
* **MySQL** – Database
* **Git & GitHub** – Version control
* **Linux** – Server and development environment

---

## 🧩 Terraform Implementation

Terraform was used to bring the existing AWS infrastructure under **Infrastructure-as-Code management**.

### Terraform workflow

```
Terraform Configuration
        ↓
terraform init
        ↓
terraform validate
        ↓
terraform plan
        ↓
terraform apply
        ↓
AWS Infrastructure Management

```

### Terraform features practiced

* AWS provider configuration
* Terraform variables
* Terraform outputs
* Terraform resource configuration
* Importing existing AWS resources into Terraform
* Terraform state management
* Infrastructure validation using `terraform validate`
* Infrastructure planning using `terraform plan`
* Infrastructure changes using `terraform apply`

The final Terraform plan confirmed:

```
No changes.
Your infrastructure matches the configuration.

```

This verified that the Terraform configuration matches the AWS infrastructure being managed.

---

## 📁 Project Structure

```
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
│   └── .terraform.lock.hcl
│
├── .gitignore
└── README.md

```

> `terraform.tfvars`, Terraform state files, and the `.terraform/` directory are excluded from Git using `.gitignore`.

---

## 🔐 Security Configuration

The EC2 Security Group contains the following ingress rules:

| PortProtocolPurpose |     |                    |
| ------------------- | --- | ------------------ |
| 22                  | TCP | SSH access         |
| 80                  | TCP | HTTP traffic       |
| 8000                | TCP | Django application |

SSH access is restricted to the configured IP address, while the application ports are configured according to the project's requirements.

---

## 🎯 Learning Outcomes

Through this project, I gained hands-on experience with:

* Deploying a containerized application on AWS EC2
* Working with AWS networking components
* Configuring VPCs and public subnets
* Configuring Internet Gateways and Route Tables
* Managing EC2 Security Groups and ingress rules
* Running Django and MySQL using Docker
* Managing AWS infrastructure using Terraform
* Importing existing AWS resources into Terraform
* Using Terraform variables and outputs
* Validating and planning infrastructure changes
* Version-controlling Infrastructure as Code using Git and GitHub

---

## 📊 Project Outcome

The Django Notes Application was successfully deployed on an AWS EC2 instance using Docker and MySQL.

The existing AWS infrastructure was successfully brought under Terraform management and verified using Terraform planning.

The project was then organized, documented, and version-controlled using Git and GitHub.

This resulted in a reusable and version-controlled Infrastructure-as-Code project.

---

## 🚀 Conclusion

This project provided practical experience in **cloud deployment, containerization, AWS networking, and Infrastructure as Code**.

The project demonstrates how a containerized Django application can be hosted on AWS EC2 while the underlying AWS infrastructure is represented and managed through Terraform.

By importing the existing infrastructure into Terraform and verifying it with `terraform plan`, the project also demonstrates how manually created cloud resources can be brought under **Infrastructure-as-Code management**.

Overall, this project strengthened my understanding of **AWS, Terraform, Docker, Django, MySQL, Linux, and Git/GitHub** and provided hands-on experience with a real-world DevOps workflow.

---

## 📌 Project Summary

**Project:** AWS Notes Application
**Region:** AWS Asia Pacific (Mumbai) — `ap-south-1`
**Infrastructure:** AWS EC2, VPC, Subnet, Internet Gateway, Route Table, Security Group
**Application:** Django Notes App + MySQL
**Containerization:** Docker & Docker Compose
**Infrastructure as Code:** Terraform
**Version Control:** Git & GitHub

---


> 🚀 **Looking forward to learning more, exploring new DevOps tools, and building more real-world projects!**

