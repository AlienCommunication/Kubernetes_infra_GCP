variable "network" {
  description = "The name of the network for the GKE cluster"
  type        = string
}

variable "subnetwork" {
  description = "The name of the subnetwork for the GKE cluster"
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
}

variable "region" {
  description = "The region for the GKE cluster"
  type        = string
}
