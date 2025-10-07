# Configure the Google Cloud Provider using variables for project and region.
provider "google" {
  project = var.project_id
  region  = var.region
}

# The resource definition for the Artifact Registry Repository.
resource "google_artifact_registry_repository" "docker_repo" {
  # 1. Location and Project
  location    = var.region
  project     = var.project_id

  # 2. Repository ID (Name)
  # This uses the new dedicated variable.
  repository_id = var.repository_id

  # 3. Format (Type)
  # Use 'DOCKER', 'MAVEN', 'NPM', 'PYTHON', or 'KFP'
  format = "DOCKER"

  # 4. Description (Recommended)
  description = "Repository for storing and managing Docker images for CI/CD."

  # 5. Optional Features
  # Set to true if you want to store the images with customer-managed encryption keys.
  # kms_key_name = "projects/..."
}
