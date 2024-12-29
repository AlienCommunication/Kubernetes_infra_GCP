provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source        = "./network.tf"
}

module "gke" {
  source        = "./gke.tf"
  network       = module.network.network_name
  subnetwork    = module.network.subnetwork_name
}

module "storage" {
  source        = "./storage.tf"
}

module "service_account" {
  source = "./service_account.tf"
}
