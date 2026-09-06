# Stress fixture: repeated blocks at every level must survive parsing.
terraform {
  required_version = ">= 1.5"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
  backend "gcs" {
    bucket = "tf-state"
    prefix = "stress"
  }
}

provider "google" {
  project = var.project
}

provider "google" {
  alias   = "eu"
  project = var.project
  region  = "europe-west1"
}

variable "project" {
  type        = string
  description = "GCP project"
}

locals {
  labels = { env = "dev", team = "core" }
  names  = ["a", "b", "c"]
}

resource "google_cloud_run_v2_service" "svc" {
  name     = "svc-${var.project}"
  location = "asia-northeast1"
  labels   = local.labels

  template {
    containers {
      image = "gcr.io/${var.project}/api:latest"
      env {
        name  = "A"
        value = "1"
      }
      env {
        name  = "B"
        value = "2"
      }
      env {
        name = "SECRET"
        value_source {
          secret_key_ref {
            secret  = google_secret_manager_secret.s.secret_id
            version = "latest"
          }
        }
      }
    }
    containers {
      image = "gcr.io/${var.project}/sidecar:latest"
      resources {
        limits = { cpu = "1", memory = "512Mi" }
      }
    }
    scaling {
      min_instance_count = 0
      max_instance_count = 3
    }
  }

  lifecycle {
    ignore_changes = [client, client_version]
  }
}

resource "google_storage_bucket" "b" {
  name     = lower("${var.project}-assets")
  location = "US"
  lifecycle_rule {
    action { type = "Delete" }
    condition { age = 30 }
  }
  lifecycle_rule {
    action {
      type          = "SetStorageClass"
      storage_class = "NEARLINE"
    }
    condition {
      age                = 7
      matches_storage_class = ["STANDARD"]
    }
  }
  dynamic "cors" {
    for_each = var.cors_origins
    content {
      origin = [cors.value]
      method = ["GET"]
    }
  }
}

resource "google_secret_manager_secret" "s" {
  secret_id = "api-key"
  replication {
    auto {}
  }
}

data "google_project" "p" {}

module "network" {
  source  = "./modules/network"
  project = var.project
  cidrs   = [for i in range(3) : cidrsubnet("10.0.0.0/16", 8, i)]
}

output "url" {
  value       = google_cloud_run_v2_service.svc.uri
  description = <<-EOT
    Service URL.
    Multi-line description with ${var.project} inside.
  EOT
}

moved {
  from = google_storage_bucket.old
  to   = google_storage_bucket.b
}
