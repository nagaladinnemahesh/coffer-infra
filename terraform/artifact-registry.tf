resource "google_artifact_registry_repository" "coffer_docker" {
  location      = "asia-south1"
  repository_id = "coffer-docker"
  description   = "Coffer Docker images"
  format        = "DOCKER"
}