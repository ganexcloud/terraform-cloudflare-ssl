<!-- BEGIN_TF_DOCS -->

Provides a Cloudflare Certificate Pack resource that is used to provision managed TLS certificates.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 3.13.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_certificate_pack.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/certificate_pack) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_certificate_authority"></a> [certificate\_authority](#input\_certificate\_authority) | (Optional based on type) Which certificate authority to issue the certificate pack. Allowed values: `digicert`, `lets_encrypt`. | `string` | `"free"` | no |
| <a name="input_cloudflare_branding"></a> [cloudflare\_branding](#input\_cloudflare\_branding) | (Optional based on type) Whether or not to include Cloudflare branding. This will add sni.cloudflaressl.com as the Common Name if set to true. | `string` | `"free"` | no |
| <a name="input_hosts"></a> [hosts](#input\_hosts) | (Required) List of hostnames to provision the certificate pack for. Note: If using Let's Encrypt, you cannot use individual subdomains and only a wildcard for subdomain is available. | `list(string)` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | (Required) Certificate pack configuration type. Allowed values: `custom`, `dedicated_custom`, `advanced`. | `string` | n/a | yes |
| <a name="input_validation_method"></a> [validation\_method](#input\_validation\_method) | (Optional based on type) Which validation method to use in order to prove domain ownership. Allowed values: `txt`, `http`, `email`. | `string` | `null` | no |
| <a name="input_validity_days"></a> [validity\_days](#input\_validity\_days) | (Optional based on type) How long the certificate is valid for. Note: If using Let's Encrypt, this value can only be 90 days. Allowed values: 14, 30, 90, 365. | `number` | `null` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | (Required) The DNS zone to which the certificate pack should be added. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->