terraform {
  backend "gcs" {
    bucket = "coffer-506809-tfstate"
    prefix = "coffer"
  }
}