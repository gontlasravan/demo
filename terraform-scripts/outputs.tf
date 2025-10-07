# Defines the output values displayed to the user after deployment.

# Output the full repository URL for use in Docker commands
output "docker_repository_url" {
  description = "The full URL used to tag and pull images from the registry."
  value       = "${var.region}-docker.pkg.dev/${var.project_id}/${google_artifact_registry_repository.docker_repo.repository_id}"
}

# Output the gcloud command to configure Docker for this repository
output "docker_login_command" {
  description = "Run this command to configure Docker authentication."
  value       = "gcloud auth configure-docker ${var.region}-docker.pkg.dev"
}
