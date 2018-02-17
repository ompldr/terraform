resource "google_compute_network" "ompldr-network" {
  project = "${var.project}"
  name    = "ompldr-network"
}
