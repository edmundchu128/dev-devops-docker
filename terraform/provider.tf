terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.83.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "tfstate_backend"
    prefix = "terraform/state"
  }
}