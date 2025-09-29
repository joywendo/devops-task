output "vm_static_ip" {
  description = "Static IP assigned on the Docker network"
  value       = tolist(docker_container.vm.networks_advanced)[0].ipv4_address
}

output "access_urls" {
  description = "Host URLs to access the VM web service (HTTP/HTTPS)"
  value = {
    http  = "http://localhost:${var.host_http_port}"
    https = "https://localhost:${var.host_https_port}"
  }
}

output "container_id" {
  description = "Docker container ID"
  value       = docker_container.vm.id
}

