variable project {
  description = "Project ID"
}
variable region {
  description = "Region"
  # Значение по умолчанию
  default = "europe-west1"
}
variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable disk_image {
  description = "Disk image"
}

variable provisioners_ssh_key {
  description = "private SSH key for provisioners"
}

variable project_zone {
  description = "project zone"
  default     = "europe-west1-b"
}
