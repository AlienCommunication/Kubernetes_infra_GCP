provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source        = "./modules/network"
}

module "gke" {
  source        = "./modules/gke"
  network       = module.network.network_name
  subnetwork    = module.network.subnetwork_name
}

module "storage" {
  source        = "./modules/storage"
}

module "service_account" {
  source = "./modules/service_account"
}
