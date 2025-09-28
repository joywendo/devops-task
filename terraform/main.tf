# --- Network (VPC / subnet simulation)
resource "docker_network" "devops_net" {
  name = var.network_name

  ipam_config {
    subnet  = var.subnet_cidr
    gateway = var.gateway
  }
}

# --- Pull the image
resource "docker_image" "vm_image" {
  name = var.image
}

# --- Container (VM) with static IP and port mappings
resource "docker_container" "vm" {
  name  = var.vm_name
  image = docker_image.vm_image.image_id

  # Attach to our custom network and set a fixed IPv4 address
  networks_advanced {
    name         = docker_network.devops_net.name
    ipv4_address = var.static_ip
  }

  # Expose / map ports to host (simulates security/ingress)
  ports {
    internal = 80
    external = var.host_http_port
  }

  ports {
    internal = 443
    external = var.host_https_port
  }

  # Keep container running (nginx runs by default in nginx image)
  # No extra command necessary for nginx image.
  restart = "always"

  # Add a small healthcheck (optional)
  healthcheck {
    test     = ["CMD-SHELL", "curl -f http://localhost/ || exit 1"]
    interval = "10s"
    timeout  = "2s"
    retries  = 3
    start_period = "5s"
  }

  # Ensure container is created after network and image (Terraform handles this automatically)
  depends_on = [
    docker_network.devops_net,
    docker_image.vm_image
  ]
}

