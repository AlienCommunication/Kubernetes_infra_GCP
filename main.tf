provider "google" {
  project     = var.project_id
  region      = var.region
}

module "network" {
  source = "./modules/network"
}

module "gke" {
  source       = "./modules/gke"
  cluster_name = var.cluster_name
  region       = var.region
  network      = module.network.network_name
  subnetwork   = module.network.subnetwork_name
}

module "storage" {
  source = "./modules/storage"
  region = var.region
}

module "service_account" {
  source     = "./modules/service_account"
  project_id = var.project_id
}

