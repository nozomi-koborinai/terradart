# Lane fixture: a child module that selects google.eu. Never apply.
# Isolated validate of the child fails; the root validate covers it.

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 8.0"
    }
  }
}

provider "google" {
  project = "ci-test-project-id"
  region  = "us-central1"
}

provider "google" {
  alias   = "eu"
  project = "ci-test-project-id"
  region  = "europe-west1"
}

module "net" {
  source = "./modules/net"
  providers = {
    google.eu = google.eu
  }
}
