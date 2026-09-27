terraform {
  backend "gcs" {
    bucket = "app-prod-tfstate"
    prefix = "infra/prod"
  }
}
