# Using a separate network breaks the kubemci tool
#data "google_compute_network" "ompldr-network" {
#  project = "${var.project}"
#  name    = "ompldr-network"
#}

resource "google_container_cluster" "us-east4" {
  project = "${var.project}"
  zone    = "${var.default_zone}"
  name    = "ompldr-us-east4"

  min_master_version = "${var.k8s-version}"
  network            = "default"
  subnetwork         = "default"

  additional_zones = [
    "us-east4-b",
    "us-east4-c",
  ]

  node_pool = [{
    name       = "node-pool-small"
    node_count = 0

    management {
      auto_repair  = true
      auto_upgrade = true
    }

    autoscaling {
      min_node_count = 0
      max_node_count = 8
    }

    node_config {
      preemptible      = true
      machine_type     = "n1-standard-2"
      min_cpu_platform = "Intel Broadwell"

      oauth_scopes = [
        "https://www.googleapis.com/auth/compute",
        "https://www.googleapis.com/auth/devstorage.read_write",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring",
        "https://www.googleapis.com/auth/sqlservice.admin",
      ]
    }
  },
    {
      name       = "node-pool-large"
      node_count = 0

      management {
        auto_repair  = true
        auto_upgrade = true
      }

      autoscaling {
        min_node_count = 0
        max_node_count = 4
      }

      node_config {
        preemptible      = true
        machine_type     = "n1-standard-8"
        min_cpu_platform = "Intel Broadwell"

        oauth_scopes = [
          "https://www.googleapis.com/auth/compute",
          "https://www.googleapis.com/auth/devstorage.read_write",
          "https://www.googleapis.com/auth/logging.write",
          "https://www.googleapis.com/auth/monitoring",
          "https://www.googleapis.com/auth/sqlservice.admin",
        ]
      }
    },
  ]
}

resource "google_compute_disk" "bitcoind-1" {
  project = "${var.project}"
  name    = "bitcoind-1"
  type    = "pd-ssd"
  zone    = "${var.default_zone}"
  size    = 250
}

resource "google_compute_disk" "lnd-1" {
  project = "${var.project}"
  name    = "lnd-1"
  type    = "pd-ssd"
  zone    = "${var.default_zone}"
  size    = 10
}
