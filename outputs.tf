output "cluster_endpoint" {
  value = module.gke.endpoint
}

output "gcs_bucket_name" {
  value = module.storage.bucket_name
}
