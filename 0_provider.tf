terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.13.0"
    }
  }
}

# Google Provider Configuration
provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.credentials_file)
}

# Variables
variable "project_id" {
  type = string
  description = "The GCP project ID"
}

variable "region" {
  type = string
  description = "The region where resources will be created"
}

variable "credentials_file" {
  type = string
  description = "Path to the GCP credentials JSON file"
}

# Documentation
# ==============
# 1. **Service Account Creation:**
#    Create a service account and attach the following roles:
#    - Compute Admin
#    - Kubernetes Engine Admin
#    - Kubernetes Engine Default Node Service Account
#    - Service Account Admin
#    - Service Account User
#
# 2. **Enable Required APIs:**
#    Ensure the following APIs are enabled in the GCP project:
#    - Compute Engine API
#    - Kubernetes Engine API
#    - Resource Manager API
#
# 3. **Usage Instructions:**
#    - Replace the `project_id`, `region`, and `credentials_file` variables with appropriate values.
#    - Ensure the Terraform environment is set up and authenticated to GCP before running the configuration.
#    - Run the following Terraform commands in order:
#      ```
#      terraform init
#      terraform plan -var="project_id=<PROJECT_ID>" -var="region=<REGION>" -var="credentials_file=<PATH_TO_CREDENTIALS_JSON>"
#      terraform apply -var="project_id=<PROJECT_ID>" -var="region=<REGION>" -var="credentials_file=<PATH_TO_CREDENTIALS_JSON>"
#      ```
