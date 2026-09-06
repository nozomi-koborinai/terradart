# Production environment root module — same shape as dev, with an extra bucket
# and an authoritative IAM binding.

data "google_project" "current" {
  project_id = var.project_id
}

resource "google_project_service" "run" {
  service = "run.googleapis.com"
}

resource "google_artifact_registry_repository" "images" {
  repository_id = "app-images"
  format        = "DOCKER"
  location      = var.region
}

resource "google_storage_bucket" "assets" {
  name     = "app-prod-assets"
  location = var.region
}

resource "google_storage_bucket" "uploads" {
  name     = "app-prod-uploads"
  location = var.region
}

resource "google_storage_bucket" "backups" {
  name     = "app-prod-backups"
  location = var.region
}

resource "google_storage_bucket_iam_binding" "backups_admins" {
  bucket  = google_storage_bucket.backups.name
  role    = "roles/storage.objectAdmin"
  members = [module.sa_worker.member]
}

resource "google_storage_bucket_iam_member" "assets_public" {
  bucket = google_storage_bucket.assets.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}

resource "google_storage_bucket_iam_member" "uploads_admin" {
  bucket = google_storage_bucket.uploads.name
  role   = "roles/storage.objectAdmin"
  member = module.sa_worker.member
}

resource "google_storage_bucket_iam_member" "uploads_reader" {
  bucket = google_storage_bucket.uploads.name
  role   = "roles/storage.objectViewer"
  member = module.sa_bff.member
}

resource "google_cloud_run_v2_job" "db_migrate" {
  name     = "app-db-migrate"
  location = var.region

  template {
    template {
      containers {
        image = "gcr.io/example-project/db-migrate:latest"
      }
    }
  }
}

resource "google_cloud_run_v2_service_iam_member" "bff_invoker" {
  name   = module.cloud_run_bff.service_name
  role   = "roles/run.invoker"
  member = "allUsers"
}

resource "google_project_iam_member" "worker_token_creator" {
  project = var.project_id
  role    = "roles/iam.serviceAccountTokenCreator"
  member  = module.sa_worker.member
}

resource "google_service_account_iam_member" "agent_user" {
  service_account_id = module.sa_adk_agent.id
  role               = "roles/iam.serviceAccountUser"
  member             = module.sa_bff.member
}

module "sa_bff" {
  source     = "../modules/service_account"
  account_id = "app-bff-sa"
}

module "sa_worker" {
  source     = "../modules/service_account"
  account_id = "app-worker-sa"
}

module "sa_adk_agent" {
  source     = "../modules/service_account"
  account_id = "app-agent-sa"
}

module "sa_github_actions" {
  source     = "../modules/service_account"
  account_id = "app-gha-sa"
}

module "app_secrets" {
  source = "../modules/secret_manager"
}

module "cloud_run_bff" {
  source = "../modules/cloud_run"
  name   = "app-bff"
}

module "cloud_run_worker" {
  source = "../modules/cloud_run"
  name   = "app-worker"
}

module "cloud_sql" {
  source        = "../modules/cloud_sql"
  instance_name = "app-postgres-prod"
}

module "pubsub_webhook" {
  source = "../modules/pubsub"
  topic  = "app-webhook-events"
}

module "workload_identity" {
  source = "../modules/workload_identity"
}
