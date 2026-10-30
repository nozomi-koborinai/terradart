# Lane fixture: google + azure. Never apply. Both NetApp volumes set the
# security style and tiering policy whose Dart types the two packages must
# name apart.

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 8.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.12.0"
    }
  }
}

provider "google" {
  project = "ci-test-project-id"
  region  = "us-central1"
}

provider "azurerm" {
  subscription_id = "00000000-0000-0000-0000-000000000000"
  features {}
}

resource "google_netapp_volume" "shared" {
  name           = "shared"
  location       = "us-central1"
  capacity_gib   = "100"
  share_name     = "shared"
  storage_pool   = "terradart-pool"
  protocols      = ["NFSV3"]
  security_style = "UNIX"

  tiering_policy {
    tier_action            = "ENABLED"
    cooling_threshold_days = 31
  }
}

resource "azurerm_netapp_volume" "shared" {
  name                = "shared"
  resource_group_name = "terradart-rg"
  location            = "westeurope"
  account_name        = "terradart-account"
  pool_name           = "terradart-pool"
  volume_path         = "shared"
  service_level       = "Standard"
  subnet_id           = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/terradart-rg/providers/Microsoft.Network/virtualNetworks/terradart-vnet/subnets/netapp"
  storage_quota_in_gb = 100
  protocols           = ["NFSv3"]
  security_style      = "unix"

  cool_access {
    coolness_period_in_days = 7
    retrieval_policy        = "Default"
    tiering_policy          = "Auto"
  }
}
