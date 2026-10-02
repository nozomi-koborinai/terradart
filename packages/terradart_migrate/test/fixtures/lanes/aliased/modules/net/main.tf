# Child module. The alias is passed by the caller.

terraform {
  required_providers {
    google = {
      source                = "hashicorp/google"
      version               = "~> 8.0"
      configuration_aliases = [google.eu]
    }
  }
}

resource "google_pubsub_topic" "orders" {
  name     = "orders-eu"
  provider = google.eu
}
