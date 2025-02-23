terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "gke" {
  source  = "terraform-google-modules/kubernetes-engine/google"
  project_id = var.project_id
  name     = "gke-knative-cluster"
  region   = var.region
  network  = "default_vntw"
  subnetwork = "default_sntw"

  remove_default_node_pool = true
  initial_node_count       = 1
}
