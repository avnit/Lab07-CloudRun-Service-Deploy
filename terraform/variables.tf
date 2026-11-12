variable "project_id" {
  type        = string
  description = "Throwaway lab GCP project to deploy into."
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "service_name" {
  type        = string
  default     = "watchlist"
  description = "Cloud Run service name (also the image name and the service-account prefix)."
}

variable "artifact_repository" {
  type        = string
  default     = "watchlist"
  description = "Artifact Registry Docker repository to create for the image."
}

variable "image" {
  type        = string
  default     = null
  description = "Full image reference to deploy. Leave null to build ../ with Cloud Build (needs the gcloud CLI)."
}

variable "mysql_image" {
  type        = string
  default     = "mysql:8.4.3"
  description = "MySQL sidecar image (pinned)."
}

variable "db_name" {
  type    = string
  default = "watchlist"
}

variable "db_root_password" {
  type        = string
  default     = null
  sensitive   = true
  description = "MySQL root password. Leave null to generate a random one. Never commit a real value."
}

variable "allow_unauthenticated" {
  type        = bool
  default     = false
  description = "Grant allUsers roles/run.invoker. Exposes an intentionally vulnerable app to the internet - lab projects only."
}
