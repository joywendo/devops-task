terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.4"
    }
  }
  required_version = ">= 1.2.0"
}

provider "docker" {
  # Uses local Docker daemon by default
}

