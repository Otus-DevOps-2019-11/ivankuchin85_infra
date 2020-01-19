variable public_key_path {
  description = "Path to the public key used to connect to instance"
}

variable zone {
  description = "Zone"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable machine_type {
  description = "machine_type for VM"
  default     = "g1-small" 
}

variable vm_name {
  description = "instance name"
  default     = "reddit-app" 
} 
