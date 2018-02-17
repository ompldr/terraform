resource "google_dns_managed_zone" "ompldr-io" {
  project  = "${var.project}"
  name     = "ompldr-io"
  dns_name = "ompldr.io."
}

resource "google_dns_managed_zone" "ompldr-org" {
  project  = "${var.project}"
  name     = "ompldr-org"
  dns_name = "ompldr.org."
}

resource "google_dns_managed_zone" "omploader-org" {
  project  = "${var.project}"
  name     = "omploader-org"
  dns_name = "omploader.org."
}

resource "google_dns_record_set" "ompldr-io-ssl" {
  project = "${var.project}"
  name    = "_b40f73668b30447067699bd1e392e33a.${google_dns_managed_zone.ompldr-io.dns_name}"
  type    = "CNAME"
  ttl     = 10800

  managed_zone = "${google_dns_managed_zone.ompldr-io.name}"

  rrdatas = ["c742616f5ef03d281696875b70ae5129.622d56c5e1ae31f207271d3a0004ebea.cfefe028584e7a3f406e.comodoca.com."]
}

resource "google_dns_record_set" "www-ompldr-io-ssl" {
  project = "${var.project}"
  name    = "_b40f73668b30447067699bd1e392e33a.www.${google_dns_managed_zone.ompldr-io.dns_name}"
  type    = "CNAME"
  ttl     = 10800

  managed_zone = "${google_dns_managed_zone.ompldr-io.name}"

  rrdatas = ["c742616f5ef03d281696875b70ae5129.622d56c5e1ae31f207271d3a0004ebea.cfefe028584e7a3f406e.comodoca.com."]
}

resource "google_dns_record_set" "api-ompldr-io-ssl" {
  project = "${var.project}"
  name    = "_b40f73668b30447067699bd1e392e33a.api.${google_dns_managed_zone.ompldr-io.dns_name}"
  type    = "CNAME"
  ttl     = 10800

  managed_zone = "${google_dns_managed_zone.ompldr-io.name}"

  rrdatas = ["c742616f5ef03d281696875b70ae5129.622d56c5e1ae31f207271d3a0004ebea.cfefe028584e7a3f406e.comodoca.com."]
}

resource "google_dns_record_set" "api-ompldr-io-A" {
  project = "${var.project}"
  name    = "api.${google_dns_managed_zone.ompldr-io.dns_name}"
  type    = "A"
  ttl     = 300

  managed_zone = "${google_dns_managed_zone.ompldr-io.name}"

  rrdatas = ["35.190.0.2"]
}

resource "google_dns_record_set" "api-ompldr-io-AAAA" {
  project = "${var.project}"
  name    = "api.${google_dns_managed_zone.ompldr-io.dns_name}"
  type    = "AAAA"
  ttl     = 300

  managed_zone = "${google_dns_managed_zone.ompldr-io.name}"

  rrdatas = ["2600:1901:0:6ca4::"]
}

resource "google_dns_record_set" "www-ompldr-io-A" {
  project = "${var.project}"
  name    = "www.${google_dns_managed_zone.ompldr-io.dns_name}"
  type    = "A"
  ttl     = 300

  managed_zone = "${google_dns_managed_zone.ompldr-io.name}"

  rrdatas = ["35.201.114.163"]
}

resource "google_dns_record_set" "ompldr-io-A" {
  project = "${var.project}"
  name    = "${google_dns_managed_zone.ompldr-io.dns_name}"
  type    = "A"
  ttl     = 300

  managed_zone = "${google_dns_managed_zone.ompldr-io.name}"

  rrdatas = ["35.201.114.163"]
}

resource "google_dns_record_set" "www-ompldr-io-AAAA" {
  project = "${var.project}"
  name    = "www.${google_dns_managed_zone.ompldr-io.dns_name}"
  type    = "AAAA"
  ttl     = 300

  managed_zone = "${google_dns_managed_zone.ompldr-io.name}"

  rrdatas = ["2600:1901:0:9ef2::"]
}

resource "google_dns_record_set" "ompldr-io-AAAA" {
  project = "${var.project}"
  name    = "${google_dns_managed_zone.ompldr-io.dns_name}"
  type    = "AAAA"
  ttl     = 300

  managed_zone = "${google_dns_managed_zone.ompldr-io.name}"

  rrdatas = ["2600:1901:0:9ef2::"]
}

# Other domains (ompldr.org, omploader.org)

resource "google_dns_record_set" "www-omploader-org-A" {
  project = "${var.project}"
  name    = "www.${google_dns_managed_zone.omploader-org.dns_name}"
  type    = "A"
  ttl     = 300

  managed_zone = "${google_dns_managed_zone.omploader-org.name}"

  rrdatas = ["35.201.114.163"]
}

resource "google_dns_record_set" "omploader-org-A" {
  project = "${var.project}"
  name    = "${google_dns_managed_zone.omploader-org.dns_name}"
  type    = "A"
  ttl     = 300

  managed_zone = "${google_dns_managed_zone.omploader-org.name}"

  rrdatas = ["35.201.114.163"]
}

resource "google_dns_record_set" "www-omploader-org-AAAA" {
  project = "${var.project}"
  name    = "www.${google_dns_managed_zone.omploader-org.dns_name}"
  type    = "AAAA"
  ttl     = 300

  managed_zone = "${google_dns_managed_zone.omploader-org.name}"

  rrdatas = ["2600:1901:0:9ef2::"]
}

resource "google_dns_record_set" "omploader-org-AAAA" {
  project = "${var.project}"
  name    = "${google_dns_managed_zone.omploader-org.dns_name}"
  type    = "AAAA"
  ttl     = 300

  managed_zone = "${google_dns_managed_zone.omploader-org.name}"

  rrdatas = ["2600:1901:0:9ef2::"]
}

resource "google_dns_record_set" "www-ompldr-org-A" {
  project = "${var.project}"
  name    = "www.${google_dns_managed_zone.ompldr-org.dns_name}"
  type    = "A"
  ttl     = 300

  managed_zone = "${google_dns_managed_zone.ompldr-org.name}"

  rrdatas = ["35.201.114.163"]
}

resource "google_dns_record_set" "ompldr-org-A" {
  project = "${var.project}"
  name    = "${google_dns_managed_zone.ompldr-org.dns_name}"
  type    = "A"
  ttl     = 300

  managed_zone = "${google_dns_managed_zone.ompldr-org.name}"

  rrdatas = ["35.201.114.163"]
}

resource "google_dns_record_set" "www-ompldr-org-AAAA" {
  project = "${var.project}"
  name    = "www.${google_dns_managed_zone.ompldr-org.dns_name}"
  type    = "AAAA"
  ttl     = 300

  managed_zone = "${google_dns_managed_zone.ompldr-org.name}"

  rrdatas = ["2600:1901:0:9ef2::"]
}

resource "google_dns_record_set" "ompldr-org-AAAA" {
  project = "${var.project}"
  name    = "${google_dns_managed_zone.ompldr-org.dns_name}"
  type    = "AAAA"
  ttl     = 300

  managed_zone = "${google_dns_managed_zone.ompldr-org.name}"

  rrdatas = ["2600:1901:0:9ef2::"]
}
