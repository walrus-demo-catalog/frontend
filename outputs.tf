locals {
  external_ips = [
    for node in data.kubernetes_nodes.node.nodes :
    node.status.addresses.address if node.status.addresses.type == "ExternalIP"
  ]

  endpoints = {
    url = "http://${local.external_ips[0]}:"
  }
}

output "debug_port_data" {
  value = data.kubernetes_service.service.spec.port
}

output "service_name" {
  description = "Service name"
  value       = var.service_name
}

output "endpoints" {
  description = "Endpoint for access URL"
  value       = local.endpoints
}
