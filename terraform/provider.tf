terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "google" {
  project = "coffer-506809"
  region  = "asia-south1"
  zone    = "asia-south1-a"
}