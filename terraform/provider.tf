terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  project = "j31416"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "./service_account_key.json"
}