resource "google_project_service" "container" {
  project         = "coffer-506809"
  service         = "container.googleapis.com"
  deletion_policy = "ABANDON"
}

resource "google_project_service" "artifact_registry" {
  project         = "coffer-506809"
  service         = "artifactregistry.googleapis.com"
  deletion_policy = "ABANDON"
}

resource "google_project_service" "compute" {
  project         = "coffer-506809"
  service         = "compute.googleapis.com"
  deletion_policy = "ABANDON"
}