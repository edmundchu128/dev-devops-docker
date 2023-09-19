variable "project_id" {
  type    = string
  default = "nhl-dashboard-stats"
}

variable "region" {
  type    = string
  default = "us-central1"
}


variable "service_account_tf" {
  type    = string
  default = "sa-gha-cloudrun@nhl-dashboard-stats.iam.gserviceaccount.com"
}