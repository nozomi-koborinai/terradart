# Lane fixture: azure + cloudflare. Never apply.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.11.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.28.1"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "app" {
  name     = "app"
  location = "eastus"
}

resource "cloudflare_dns_record" "api" {
  zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
  name    = "api.terradart-demo.example"
  type    = "CNAME"
  ttl     = 1
  content = "ghs.googlehosted.com"
}
