resource "google_storage_bucket" "terraform_state" {
  name          = "terraform-state-bucket"
  location      = var.region
  force_destroy = true
}
