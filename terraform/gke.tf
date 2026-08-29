resource "google_container_cluster" "coffer" {
  name     = "coffer-gke"
  location = "asia-south1"

  network    = google_compute_network.coffer.id
  subnetwork = google_compute_subnetwork.coffer.id

  networking_mode = "VPC_NATIVE"

  ip_allocation_policy {
    cluster_secondary_range_name  = "gke-pods"
    services_secondary_range_name = "gke-services"
  }

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = false
  }

  workload_identity_config {
    workload_pool = "coffer-506809.svc.id.goog"
  }

  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "coffer" {
  name     = "coffer-node-pool"
  location = "asia-south1"
  cluster  = google_container_cluster.coffer.name

  node_locations = ["asia-south1-a"]

  node_count = 1

  node_config {
    machine_type    = "e2-small"
    disk_size_gb    = 20
    disk_type       = "pd-standard"
    service_account = google_service_account.gke_nodes.email

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  autoscaling {
    min_node_count = 1
    max_node_count = 2
  }
}