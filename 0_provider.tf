terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0" # Adjust the version based on your requirements
    }
  }

  required_version = ">= 1.3.0" # Ensure compatibility with your Terraform version
}

provider "google" {
  credentials = file(".gcp-key.json") # Ensure the file path is correct
  project     = "sapient-spark-436013-t0" # Replace with your actual projet ID
  region      = "us-central1"            # Replace with your desired region
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
