resource "google_compute_subnetwork" "coffer" {
  name          = "coffer-subnet"
  ip_cidr_range = "10.10.0.0/24"
  region        = "asia-south1"
  network       = google_compute_network.coffer.id

  secondary_ip_range {
    range_name    = "gke-pods"
    ip_cidr_range = "10.20.0.0/16"
  }

  secondary_ip_range {
    range_name    = "gke-services"
    ip_cidr_range = "10.30.0.0/24"
  }
}