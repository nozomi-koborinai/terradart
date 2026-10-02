# Lane fixture: aws + cloudflare. Never apply.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.66.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.26.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_sns_topic" "events" {
  name = "events"
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
