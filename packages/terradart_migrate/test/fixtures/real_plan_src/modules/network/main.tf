# All curated by terradart_google (expected: supported). Lives in a child module
# so the fixture exercises per-module breakdown and child_modules recursion.

resource "google_compute_network" "vpc" {
  name                    = "example-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "example-subnet"
  network       = google_compute_network.vpc.id
  ip_cidr_range = "10.0.0.0/24"
  region        = "us-central1"
}

resource "google_compute_route" "egress" {
  name             = "example-egress"
  network          = google_compute_network.vpc.name
  dest_range       = "0.0.0.0/0"
  next_hop_gateway = "default-internet-gateway"
}
