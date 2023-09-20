# Deploy Artifact registry repository
resource "google_artifact_registry_repository" "artifact-registry-repo" {
  location      = "us-central1"
  project       = var.project_id
  repository_id = var.artifact_reg_repo_service
  description   = "streamlit docker repository"
  format        = "DOCKER"
}

# Configuring the repository's permission
resource "google_artifact_registry_repository_iam_binding" "gar_sa_iam_binding" {
  repository = google_artifact_registry_repository.artifact-registry-repo.name
  location   = var.region
  role       = "roles/artifactregistry.writer"
  project    = var.project_id

  members = [
    "serviceAccount:${var.service_account_tf}"
  ]
}