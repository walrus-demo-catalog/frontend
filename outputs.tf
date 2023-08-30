output "service_name" {
  description = "Service name"
  value       = var.service_name
}

output "service_ip" {
  description = "Service IP"
  value       = data.kubernetes_service.service.spec.0.cluster_ip
}
