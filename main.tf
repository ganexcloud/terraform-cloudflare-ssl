/**
  *
  * Provides a Cloudflare Certificate Pack resource that is used to provision managed TLS certificates.
  */

resource "cloudflare_certificate_pack" "this" {
  zone_id               = var.zone_id
  type                  = var.type
  hosts                 = var.hosts
  validation_method     = var.validation_method
  validity_days         = var.validity_days
  certificate_authority = var.certificate_authority
  cloudflare_branding   = var.cloudflare_branding
  lifecycle {
    create_before_destroy = true
  }
}
