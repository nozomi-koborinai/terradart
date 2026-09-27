variable "instance_name" {
  type = string
}

resource "google_sql_database_instance" "this" {
  name             = var.instance_name
  database_version = "POSTGRES_15"
  region           = "asia-northeast1"

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "app" {
  name     = "app"
  instance = google_sql_database_instance.this.name
}

resource "google_sql_user" "app" {
  name     = "app"
  instance = google_sql_database_instance.this.name
}
