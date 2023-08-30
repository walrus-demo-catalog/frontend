terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    }
  }
}

data "kubectl_path_documents" "manifest" {
  pattern = "${path.module}/manifest.yaml"
  vars = {
    namespace                  = local.namespace
    image_registry             = var.image_registry
    image_repository           = var.image_repository
    image_version              = var.image_version
    replicas                   = var.replicas
    productcatalogservice_name = var.productcatalogservice_name
    currencyservice_name       = var.currencyservice_name
    cartservice_name           = var.cartservice_name
    recommendationservice_name = var.recommendationservice_name
    shippingservice_name       = var.shippingservice_name
    checkoutservice_name       = var.checkoutservice_name
    adservice_name             = var.adservice_name

  }
}

resource "kubectl_manifest" "manifest" {
  wait_for_rollout = false

  count     = length(data.kubectl_path_documents.manifest.documents)
  yaml_body = element(data.kubectl_path_documents.manifest.documents, count.index)
}

data "kubernetes_service" "service" {
  depends_on = [kubectl_manifest.manifest]

  metadata {
    name      = var.external_service_name
    namespace = local.namespace
  }
}

locals {
  name      = coalesce(var.name, "${var.walrus_metadata_service_name}")
  namespace = coalesce(var.namespace, var.walrus_metadata_namespace_name)
}
