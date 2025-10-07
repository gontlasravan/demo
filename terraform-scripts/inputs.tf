# Defines all user-configurable variables for the configuration.

variable "project_id" {
  description = "The ID of the Google Cloud project where the registry will be created."
  type        = string
  default     = "gcp-project-123456" # <-- CHANGE THIS
}

variable "region" {
  description = "The region for the Artifact Registry repository (e.g., 'us-central1' or 'asia-south1')."
  type        = string
  default     = "asia-south1" # <-- CHANGE THIS
}

variable "repository_id" {
  description = "The unique ID (name) for the Artifact Registry repository."
  type        = string
  default     = "terraform-docker-repo" # <-- CHANGE THIS
}
