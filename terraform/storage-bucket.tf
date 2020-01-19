terraform {
  # Версия terraform
  required_version = "~>0.12.8"
}

provider "google" {
  version = "~> 2.15"
  project = var.project
  region  = var.region
}

module "storage-bucket" {
  source   = "SweetOps/storage-bucket/google"
  version  = "0.3.0"
  location = var.region

  # Имя поменяйте на другое
  name = "storage-bucket-kuchin1"
}

output storage-bucket_url {
  value = module.storage-bucket.url
}
