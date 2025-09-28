variable "network_name" {
  description = "Docker network name (simulates VPC)"
  type        = string
  default     = "devops_network"
}

variable "subnet_cidr" {
  description = "Subnet CIDR for the Docker network (must not collide with host network)"
  type        = string
  default     = "172.25.0.0/16"
}

variable "gateway" {
  description = "Gateway for the Docker network"
  type        = string
  default     = "172.25.0.1"
}

variable "vm_name" {
  description = "Name of the container (VM)"
  type        = string
  default     = "joy-webapp"
}

variable "image" {
  description = "Docker image to run (nginx is used so HTTP serves out of the box)"
  type        = string
  default     = "nginx:latest"
}

variable "static_ip" {
  description = "Static IP to assign to the container on the Docker network"
  type        = string
  default     = "172.25.0.10"
}

variable "host_http_port" {
  description = "Host port mapped to container HTTP (80)"
  type        = number
  default     = 8080
}

variable "host_https_port" {
  description = "Host port mapped to container HTTPS (443)"
  type        = number
  default     = 8443
}

