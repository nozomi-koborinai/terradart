resource "google_secret_manager_secret" "db_password" {
  secret_id = "db-password"

  replication {
    auto {}
  }
}

resource "google_secret_manager_secret" "api_key" {
  secret_id = "api-key"

  replication {
    auto {}
  }
}
