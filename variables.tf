variable "zone_id" {
  description = "(Required) The DNS zone to which the certificate pack should be added."
  type        = string
}

variable "type" {
  description = "(Required) Certificate pack configuration type. Allowed values: `custom`, `dedicated_custom`, `advanced`."
  type        = string
}

variable "hosts" {
  description = "(Required) List of hostnames to provision the certificate pack for. Note: If using Let's Encrypt, you cannot use individual subdomains and only a wildcard for subdomain is available."
  type        = list(string)
}

variable "validation_method" {
  description = "(Optional based on type) Which validation method to use in order to prove domain ownership. Allowed values: `txt`, `http`, `email`."
  type        = string
  default     = null
}

variable "validity_days" {
  description = "(Optional based on type) How long the certificate is valid for. Note: If using Let's Encrypt, this value can only be 90 days. Allowed values: 14, 30, 90, 365."
  type        = number
  default     = null
}

variable "certificate_authority" {
  description = "(Optional based on type) Which certificate authority to issue the certificate pack. Allowed values: `digicert`, `lets_encrypt`."
  type        = string
  default     = "free"
}

variable "cloudflare_branding" {
  description = "(Optional based on type) Whether or not to include Cloudflare branding. This will add sni.cloudflaressl.com as the Common Name if set to true."
  type        = string
  default     = "free"
}
