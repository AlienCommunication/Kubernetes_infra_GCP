resource "google_storage_bucket" "terraform_state" {
  name          = "terraform-state-bucket12"
  location      = var.region
  force_destroy = true
}
