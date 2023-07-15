terraform {
  backend "gcs" {}
  required_version = "> 1.0.0"
}

provider "scaleway" {
  zone       = var.scaleway_zone
  region     = var.scaleway_region
  project_id = var.scaleway_project_id
}