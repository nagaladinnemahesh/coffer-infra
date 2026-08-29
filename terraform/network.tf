resource "google_compute_network" "coffer" {
  name                    = "coffer-vpc"
  auto_create_subnetworks = false
}