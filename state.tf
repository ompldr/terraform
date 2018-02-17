terraform {
  backend "gcs" {
    bucket = "ompldr"
    prefix = "terraform/state/global"
  }
}
