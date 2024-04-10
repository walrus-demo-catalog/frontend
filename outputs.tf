locals {
  external_ips = [
    for address in data.kubernetes_nodes.node.status.addresses :
    address.address if address.type == "ExternalIP"
  ]

  port = data.kubernetes_service.service.spec[0].ports[0].nodePort

  endpoints = {
    url = "http://${local.external_ips[0]}:${local.port}"
  }
}

output "service_name" {
  description = "Service name"
  value       = var.service_name
}

output "endpoints" {
  description = "Endpoint for access URL"
  value       = local.endpoints
}
