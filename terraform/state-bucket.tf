resource "google_storage_bucket" "terraform_state" {
  name                        = "coffer-506809-tfstate"
  location                    = "ASIA-SOUTH1"
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}