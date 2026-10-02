# Lane fixture: google. Never apply. user_project_override must survive migrate.

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 8.0"
    }
  }
}

provider "google" {
  project               = "ci-test-project-id"
  region                = "us-central1"
  user_project_override = true
}

resource "google_pubsub_topic" "orders" {
  name = "orders"
}
