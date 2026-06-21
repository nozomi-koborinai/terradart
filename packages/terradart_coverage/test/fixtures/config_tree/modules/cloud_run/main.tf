variable "name" {
  type = string
}

resource "google_cloud_run_v2_service" "this" {
  name     = var.name
  location = "asia-northeast1"

  template {
    containers {
      image = "gcr.io/example-project/${var.name}:latest"
    }
  }
}

resource "google_cloud_run_v2_service_iam_member" "invoker" {
  name     = google_cloud_run_v2_service.this.name
  location = google_cloud_run_v2_service.this.location
  role     = "roles/run.invoker"
  member   = "allUsers"
}
