pterraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.13.0"
    }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.credentials_file)
}

variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "credentials_file" {
  type = string
}







# 1) Create A service account
# 2) permission needed
# 1) Compute Admin
# 2) Kubernetes Engine Admin
# 3) Kubernetes Engine Default Node Service Account
# 4) Service Account Admin
# 5) Service Account User


#  Enable some api
# ===================

# compute engine api
# Kubernetes Engine api 
# Resource manager api