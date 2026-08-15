# Source for ../real_plan_show.json — a real `terraform show -json` fixture used
# by test/real_plan_test.dart.
#
# Regenerate after catalog changes:
#   cd test/fixtures/real_plan_src
#   terraform init
#   terraform plan -out=tfplan.bin      # no credentials needed (managed resources only)
#   terraform show -json tfplan.bin > ../real_plan_show.json
#
# Mixes resources across a root module and a child module so the coverage
# report exercises Terraform's real document shape. Do not keep a live GA
# type uncurated just to populate notInCatalog — that path is tested with
# a fabricated type in coverage_report_test.dart.

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}

provider "google" {
  project = "example-dogfood-project"
  region  = "us-central1"
}

# --- Curated by terradart_google (expected: supported) ---

resource "google_storage_bucket" "assets" {
  name          = "example-dogfood-assets"
  location      = "US"
  force_destroy = true
}

resource "google_storage_bucket_object" "config" {
  name    = "config.json"
  bucket  = google_storage_bucket.assets.name
  content = "{}"
}

resource "google_pubsub_topic" "events" {
  name = "events"
}

resource "google_service_account" "ci" {
  account_id   = "ci-runner"
  display_name = "CI Runner"
}

resource "google_compute_router" "router" {
  name    = "example-router"
  network = "default"
  region  = "us-central1"
}

resource "google_compute_router_nat" "nat" {
  name                               = "example-nat"
  router                             = google_compute_router.router.name
  region                             = "us-central1"
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}

# --- Still uncurated in terradart_google (not a required sentinel) ---

resource "google_identity_platform_oauth_idp_config" "hello" {
  name      = "oidc.hello"
  client_id = "dummy"
  issuer    = "https://accounts.example.com"
}

module "network" {
  source = "./modules/network"
}
