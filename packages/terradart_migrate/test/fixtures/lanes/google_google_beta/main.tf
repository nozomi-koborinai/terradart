# Lane fixture: google + google-beta. Never apply.

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 8.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 8.0"
    }
  }
}

provider "google" {
  project = "ci-test-project-id"
  region  = "us-central1"
}

provider "google-beta" {
  project = "ci-test-project-id"
  region  = "us-central1"
}

resource "google_pubsub_topic" "orders" {
  name = "orders"
}

resource "google_project_service_identity" "pubsub" {
  provider = google-beta
  service  = "pubsub.googleapis.com"
}
