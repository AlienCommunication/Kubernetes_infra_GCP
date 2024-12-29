terraform {
  backend "gcs" {
    bucket  = "terraform-state-bucket12"
    prefix  = "terraform/state"
  }
}
