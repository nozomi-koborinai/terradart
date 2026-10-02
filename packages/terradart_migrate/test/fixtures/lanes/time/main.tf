# Lane fixture: an aliased hashicorp/time provider. Never apply.

terraform {
  required_providers {
    time = {
      source  = "hashicorp/time"
      version = "~> 0.12"
    }
  }
}

provider "time" {
  alias = "slow"
}

resource "time_sleep" "wait" {
  create_duration = "60s"
  provider        = time.slow
}
