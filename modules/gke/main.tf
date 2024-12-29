resource "google_container_cluster" "gke_cluster" {
  name     = var.cluster_name
  location = var.region

  network    = var.network
  subnetwork = var.subnetwork

  initial_node_count = 1
  node_config {
    machine_type = "e2-medium"
  }
}
