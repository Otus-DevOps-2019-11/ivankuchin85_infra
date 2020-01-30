terraform {
  # Версия terraform
  required_version = "~>0.12.8"
}

provider "google" {
  # Версия провайдера
  version = "~> 2.15"

  # ID проекта
  project = var.project
  region = var.region
}

module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  zone            = var.zone
  app_disk_image  = var.app_disk_image
  machine_type = "g1-small"
  vm_name = "reddit-app"
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  zone            = var.zone
  db_disk_image   = var.db_disk_image
  machine_type = "g1-small"
  vm_name = "reddit-db"
}

module "vpc" {
  source          = "../modules/vpc"
  source_ranges = ["109.252.109.150/32"]
  public_key_path = var.public_key_path
  zone            = var.zone
  db_disk_image   = var.db_disk_image
  rule_name = "default-allow-ssh"
  reddit_tags = ["reddit-app"]
}
