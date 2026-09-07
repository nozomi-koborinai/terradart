# Fixture for tool/migrate_moved_gates.dart (#663): a module whose state
# (state.json next to this file — a terraform.tfstate under a name the
# repository does not ignore) holds indexed instances. After migration the
# unrolled resources must plan as moves only.

terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
  }
}

provider "google" {
  project = "demo-project"
}

# count → google_pubsub_topic.t_0 / t_1
resource "google_pubsub_topic" "t" {
  count = 2
  name  = "t-${count.index}"
}

# for_each → google_pubsub_topic.region_eu / region_us
resource "google_pubsub_topic" "region" {
  for_each = toset(["eu", "us"])
  name     = "topic-${each.key}"
}

# References to instances follow them to the new addresses.
resource "google_pubsub_subscription" "s" {
  name       = "s"
  topic      = google_pubsub_topic.t[1].name
  depends_on = [google_pubsub_topic.region]
}

# A rename the module already carries with a moved block of its own.
resource "google_pubsub_topic" "single" {
  name = "single"
}

moved {
  from = google_pubsub_topic.old
  to   = google_pubsub_topic.single
}

output "topic_ids" {
  value = google_pubsub_topic.t[*].id
}
