# DevOps Ansible Configuration Project

## Overview
This project uses **Ansible** to automate basic system setup on a VM or localhost. It demonstrates file management, group setup, and (on Linux) installing and managing services like PostgreSQL and Nginx.

---

## What the Playbook Does
- Creates a **devops group** for proper permissions  
- Copies a **sample config file**:  
  - Linux → `/opt/config.txt`  
  - macOS → `~/config.txt`  
- Installs **PostgreSQL** and **Nginx** (Linux only) and ensures services are running  
- Checks that the config file exists using Ansible’s `stat` module  

---

## macOS vs Linux
- **macOS**: skips service and package tasks to avoid Homebrew/root issues  
- **Linux**: runs all tasks fully 

---

## How to Run
```bash
cd Devops/ansible
ansible-playbook -i inventory.ini playbook.yml --ask-become-pass

## Check copied file
# Linux
ls -l /opt/config.txt
# macOS
ls -l ~/config.txt

