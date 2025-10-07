# Specifies the required versions for Terraform and the Google Provider.

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
  # Recommended: Define a backend for state storage (e.g., GCS bucket)
  # backend "gcs" {
  #   bucket = "your-tf-state-bucket"
  #   prefix = "artifact-registry"
  # }
}
