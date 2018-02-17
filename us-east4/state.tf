terraform {
  backend "gcs" {
    bucket = "ompldr"
    prefix = "terraform/state/us-east4"
  }
}
