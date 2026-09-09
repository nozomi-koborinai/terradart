# Fixture for tool/migrate_fixture_gates.dart (#672): a module whose
# `locals` cover every case `--inline-locals` has to tell apart. Migrated
# with and without the flag, the two packages must plan identically — the
# inlined value is the one Terraform resolved from the sidecar before.

terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
  }
}

provider "google" {
  project = "demo-project"
}

variable "env" {
  type    = string
  default = "dev"
}

variable "topic_count" {
  type    = number
  default = 2
}

locals {
  # Inlined: a literal, read from inside a template and on its own.
  prefix   = "acme"
  location = "US"

  # Inlined: a template over locals that are themselves inlined.
  bucket_name = "${local.prefix}-assets-${local.location}"

  # Inlined: a number, read by an argument whose slot takes one.
  ack_seconds = 45

  # Kept: reads a variable, which has no Dart value at migration time.
  suffix = "topic-${var.env}"

  # Kept: not a scalar.
  labels = {
    managed_by = "terradart"
  }

  # Kept, and declared: the Stack reads it, so it becomes a `final` — but a
  # block that stays in Terraform reads it too, so the sidecar must go on
  # defining it as well.
  retention = "604800s"

  # Kept: nothing in the Stack reads it, so it has no reason to move.
  unused = "spare"
}

resource "google_storage_bucket" "assets" {
  name          = local.bucket_name
  location      = local.location
  force_destroy = true

  labels = local.labels
}

resource "google_pubsub_topic" "orders" {
  name                       = "${local.prefix}-orders"
  message_retention_duration = local.retention
}

resource "google_pubsub_subscription" "orders_pull" {
  name                 = "${local.prefix}-orders-pull"
  topic                = google_pubsub_topic.orders.id
  ack_deadline_seconds = local.ack_seconds
}

# A count Terraform resolves but the migrator cannot unroll: the block stays
# in the sidecar, and the local it reads has to stay with it.
resource "google_pubsub_topic" "shards" {
  count                      = var.topic_count
  name                       = "${local.suffix}-${count.index}"
  message_retention_duration = local.retention
}

output "bucket" {
  value = google_storage_bucket.assets.name
}
