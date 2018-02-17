resource "google_storage_bucket" "ompldr-us" {
  project  = "${var.project}"
  name     = "ompldr-us"
  location = "us"

  storage_class = "MULTI_REGIONAL"
}

resource "google_storage_bucket" "ompldr-eu" {
  project  = "${var.project}"
  name     = "ompldr-eu"
  location = "eu"

  storage_class = "MULTI_REGIONAL"
}

resource "google_storage_bucket" "ompldr-asia" {
  project  = "${var.project}"
  name     = "ompldr-asia"
  location = "asia"

  storage_class = "MULTI_REGIONAL"
}
