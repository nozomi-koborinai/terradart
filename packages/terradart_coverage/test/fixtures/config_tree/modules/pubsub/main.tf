variable "topic" {
  type = string
}

resource "google_pubsub_topic" "this" {
  name = var.topic
}

resource "google_pubsub_subscription" "this" {
  name  = "${var.topic}-sub"
  topic = google_pubsub_topic.this.name
}

resource "google_service_account_iam_member" "publisher" {
  service_account_id = "projects/example-project/serviceAccounts/publisher@example-project.iam.gserviceaccount.com"
  role               = "roles/iam.serviceAccountTokenCreator"
  member             = "serviceAccount:service-pubsub@example-project.iam.gserviceaccount.com"
}
