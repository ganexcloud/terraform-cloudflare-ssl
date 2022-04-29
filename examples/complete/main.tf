module "cloudflare_zone" {
  source = "git::https://gitlab.com/ganex-cloud/terraform/terraform-cloudflare-zone.git?ref=71bdf1fba52d282875b55b64b20c26273f372a5f"
  zone   = "domain.com"
  plan   = "free"
}

module "cloudflare_ssl" {
  source                = "../../"
  zone_id               = module.cloudflare_zone.this_id
  type                  = "advanced"
  hosts                 = ["domain.com", "*.domain.com"]
  validation_method     = "txt"
  validity_days         = 365
  certificate_authority = "digicert"
  cloudflare_branding   = false
}
