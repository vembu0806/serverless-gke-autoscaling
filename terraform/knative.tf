resource "google_project_service" "enable_knative" {
  service = "run.googleapis.com"
}

resource "google_project_service" "enable_cloud_run" {
  service = "cloudrun.googleapis.com"
}

resource "google_project_service" "enable_iam" {
  service = "iam.googleapis.com"
}
