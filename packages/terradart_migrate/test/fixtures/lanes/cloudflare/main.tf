# Lane fixture: cloudflare. Never apply.

terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.26.0"
    }
  }
}

resource "cloudflare_zone" "main" {
  name = "terradart-demo.example"
  account = {
    id = "terradart-demo-account"
  }
}

resource "cloudflare_dns_record" "api" {
  zone_id = cloudflare_zone.main.id
  name    = "api.terradart-demo.example"
  type    = "CNAME"
  ttl     = 1
  content = "ghs.googlehosted.com"
}
