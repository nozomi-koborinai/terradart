terraform {
  backend "gcs" {
    bucket = "app-dev-tfstate"
    prefix = "infra/dev"
  }
}
