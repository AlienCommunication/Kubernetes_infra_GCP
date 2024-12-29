resource "google_service_account" "gke_sa" {
  account_id   = "terraform-service-account-new"
  display_name = "Terraform Service Account"
}

resource "google_project_iam_member" "gke_sa_roles" {
  for_each = toset([
    "roles/container.admin",
    "roles/compute.admin",
    "roles/storage.admin"
  ])
  project = var.project_id
  member  = "serviceAccount:${google_service_account.gke_sa.email}"
  role    = each.key
}
