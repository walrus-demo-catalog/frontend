locals {
  external_ips = [
    for address in data.kubernetes_nodes.node.nodes.status.addresses :
    address.address if address.type == "ExternalIP"
  ]

  port = data.kubernetes_service.service.port.node_port

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
