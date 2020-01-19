variable public_key_path {
  description = "Path to the public key used to connect to instance"
}

variable zone {
  description = "Zone"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}

variable source_ranges {
  description = "Allowed IP addresses"
  default = ["0.0.0.0/0"]
}

variable rule_name {
  description = "name for firewall rule"
  default = "default-allow-ssh"
}
