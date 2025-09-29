# Terraform + Docker Project

This project demonstrates how to use **Terraform** to manage infrastructure locally with Docker.  
Instead of provisioning on AWS or GCP, this setup runs entirely on your machine, making it simple and cost-free to experiment with Infrastructure as Code (IaC).

---

## What this project does
- Provisions a Docker container using Terraform.
- Maps a host port (e.g., `8080`) to the container’s internal port.
- Uses Terraform plans to preview changes before applying them.

---

## Why Docker?
- Lightweight and fast to set up.
- No cloud costs or credentials required.
- Perfect for practicing Terraform workflows locally.

---

## Getting Started

### Prerequisites
- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed  
- [Docker](https://docs.docker.com/get-docker/) installed and running

---

## How to Run the Project

1. **Initialize Terraform**
   ```bash
   terraform init (to initialize the project)
   terraform plan 
   terraform apply	


