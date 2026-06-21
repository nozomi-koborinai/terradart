variable "account_id" {
  type = string
}

resource "google_service_account" "this" {
  account_id = var.account_id
}

resource "google_project_iam_member" "log_writer" {
  project = "example-project"
  role    = "roles/logging.logWriter"
  member  = "serviceAccount:${google_service_account.this.email}"
}
