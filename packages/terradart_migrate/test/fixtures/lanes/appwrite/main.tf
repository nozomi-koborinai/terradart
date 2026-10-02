# Lane fixture: appwrite. Never apply.

terraform {
  required_providers {
    appwrite = {
      source  = "appwrite/appwrite"
      version = "2.0.0-beta.1"
    }
  }
}

provider "appwrite" {
  endpoint = "https://cloud.appwrite.io/v1"
}

resource "appwrite_project" "demo" {
  name = "demo"
}
