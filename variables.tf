variable "name" {
  type        = string
  description = "Name of the deployment resource. Auto-generated if empty."
  default     = ""
}

variable "namespace" {
  type        = string
  description = "Namespace to deploy. Auto-generated if empty."
  default     = ""
}

variable "replicas" {
  type        = number
  description = "Replicas to deploy"
  default     = 1
}

variable "productcatalogservice_name" {
  type        = string
  description = "The product catalog service name in env to connect"
  default     = "productcatalogservice"
}

variable "currencyservice_name" {
  type        = string
  description = "The currency service name in env to connect"
  default     = "currencyservice"
}

variable "cartservice_name" {
  type        = string
  description = "The cart service name in env to connect"
  default     = "cartservice"
}

variable "recommendationservice_name" {
  type        = string
  description = "The recommendation service name in env to connect"
  default     = "recommendationservice"
}

variable "shippingservice_name" {
  type        = string
  description = "The shipping service name in env to connect"
  default     = "shippingservice"
}

variable "checkoutservice_name" {
  type        = string
  description = "The checkout service name in env to connect"
  default     = "checkoutservice"
}

variable "adservice_name" {
  type        = string
  description = "The ad service name in env to connect"
  default     = "adservice"
}

variable "image_registry" {
  description = "Image registry"
  type        = string
  default     = "docker.io"
}

variable "image_repository" {
  description = "Image repository"
  type        = string
  default     = "liyinlin"
}

variable "image_version" {
  description = "Image tag"
  type        = string
  default     = "v0.8.0"
}

variable "service_name" {
  type        = string
  description = "Service name"
  default     = "frontend"
}

variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
```
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
```
EOF
  type        = map(any)
  default     = {}
}
