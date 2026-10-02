# Lane fixture: google-beta. Never apply.

terraform {
  required_providers {
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 8.0"
    }
  }
}

provider "google-beta" {
  project = "ci-test-project-id"
  region  = "us-central1"
}

resource "google_project_service_identity" "pubsub" {
  provider = google-beta
  service  = "pubsub.googleapis.com"
}
