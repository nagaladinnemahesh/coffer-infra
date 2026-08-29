resource "google_service_account" "gke_nodes" {
  account_id   = "coffer-gke-nodes"
  display_name = "Coffer GKE Nodes"
}

resource "google_project_iam_member" "gke_nodes_log_writer" {
  project = "coffer-506809"
  role    = "roles/logging.logWriter"
  member  = "serviceAccount:${google_service_account.gke_nodes.email}"
}

resource "google_project_iam_member" "gke_nodes_metric_writer" {
  project = "coffer-506809"
  role    = "roles/monitoring.metricWriter"
  member  = "serviceAccount:${google_service_account.gke_nodes.email}"
}