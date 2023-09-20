variable "project_id" {
  type    = string
  default = "nhl-dashboard-stats"
}

variable "artifact_reg_repo_service" {
  type    = string
}

variable "dashboard_image_name" {
  type    = string
}

variable "region" {
  type    = string
  default = "us-central1"
}


variable "service_account_tf" {
  type    = string
  default = "sa-gha-cloudrun@nhl-dashboard-stats.iam.gserviceaccount.com"
}