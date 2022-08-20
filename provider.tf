# Setup our GCP provider
provider "google" {
  version = "~> 2.13"
  project     = var.project
  region      = var.region
}

terraform {
  backend "gcs" {
    prefix      = "testapp1"
    bucket = "tf-state-bucket-testapp1"
  }
}
