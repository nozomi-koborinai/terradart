# Lane fixture: google + cloudflare. Never apply.

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 8.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.26.0"
    }
  }
}

provider "google" {
  project = "ci-test-project-id"
  region  = "us-central1"
}

resource "google_pubsub_topic" "orders" {
  name = "orders"
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
