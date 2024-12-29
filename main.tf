provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source        = "./modules/network.tf"
}

module "gke" {
  source        = "./modules/gke.tf"
  network       = module.network.network_name
  subnetwork    = module.network.subnetwork_name
}

module "storage" {
  source        = "./modules/storage.tf"
}

module "service_account" {
  source = "./modules/service_account.tf"
}
