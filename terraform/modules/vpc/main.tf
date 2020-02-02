# vpc.tf
resource "google_compute_firewall" "firewall_ssh" {
  name = var.rule_name
  network = "default"
  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  source_ranges = var.source_ranges
}

resource "google_compute_firewall" "firewall_http_reddit" {
  name = "allow-reddit-http"
  network = "default"
  allow {
    protocol = "tcp"
    ports = ["80"]
  }
  source_ranges = var.source_ranges
  target_tags = var.reddit_tags
}
