terraform {
  backend "gcs" {
    bucket = "ompldr"
    prefix = "terraform/state/us-west1"
  }
}
