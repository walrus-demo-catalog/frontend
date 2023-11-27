## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | 1.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | 1.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubectl_manifest.manifest](https://registry.terraform.io/providers/gavinbunney/kubectl/1.14.0/docs/resources/manifest) | resource |
| [kubectl_path_documents.manifest](https://registry.terraform.io/providers/gavinbunney/kubectl/1.14.0/docs/data-sources/path_documents) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_adservice_name"></a> [adservice\_name](#input\_adservice\_name) | The ad service name in env to connect | `string` | `"adservice"` | no |
| <a name="input_cartservice_name"></a> [cartservice\_name](#input\_cartservice\_name) | The cart service name in env to connect | `string` | `"cartservice"` | no |
| <a name="input_checkoutservice_name"></a> [checkoutservice\_name](#input\_checkoutservice\_name) | The checkout service name in env to connect | `string` | `"checkoutservice"` | no |
| <a name="input_context"></a> [context](#input\_context) | Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.<br><br>Examples:<pre>context:<br>  project:<br>    name: string<br>    id: string<br>  environment:<br>    name: string<br>    id: string<br>  resource:<br>    name: string<br>    id: string</pre> | `map(any)` | `{}` | no |
| <a name="input_currencyservice_name"></a> [currencyservice\_name](#input\_currencyservice\_name) | The currency service name in env to connect | `string` | `"currencyservice"` | no |
| <a name="input_image_registry"></a> [image\_registry](#input\_image\_registry) | Image registry | `string` | `"docker.io"` | no |
| <a name="input_image_repository"></a> [image\_repository](#input\_image\_repository) | Image repository | `string` | `"liyinlin"` | no |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | Image tag | `string` | `"v0.8.0"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the deployment resource. Auto-generated if empty. | `string` | `""` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace to deploy. Auto-generated if empty. | `string` | `""` | no |
| <a name="input_productcatalogservice_name"></a> [productcatalogservice\_name](#input\_productcatalogservice\_name) | The product catalog service name in env to connect | `string` | `"productcatalogservice"` | no |
| <a name="input_recommendationservice_name"></a> [recommendationservice\_name](#input\_recommendationservice\_name) | The recommendation service name in env to connect | `string` | `"recommendationservice"` | no |
| <a name="input_replicas"></a> [replicas](#input\_replicas) | Replicas to deploy | `number` | `1` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Service name | `string` | `"frontend"` | no |
| <a name="input_shippingservice_name"></a> [shippingservice\_name](#input\_shippingservice\_name) | The shipping service name in env to connect | `string` | `"shippingservice"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Service name |
