variable "k8s-version" {
  default = "1.9.2-gke.1"
}

variable "project" {
  default = "ompldr"
}

variable "default_zone" {
  default = "us-east4-a"
}

variable "api-lb-ip" {
  default = "0.0.0.0"
}

variable "web-lb-ip" {
  default = "0.0.0.0"
}
