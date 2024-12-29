resource "google_container_cluster" "gke_cluster" {
  name     = var.cluster_name
  location = var.region

  network    = module.network.network_name
  subnetwork = module.network.subnetwork_name

  initial_node_count = 1
  node_config {
    machine_type = "e2-medium"
  }
}
