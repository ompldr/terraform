resource "google_sql_database_instance" "ompldr-master-mysql" {
  project          = "${var.project}"
  region           = "us-east4"
  name             = "ompmaster-mysql4"
  database_version = "MYSQL_5_7"

  settings {
    tier = "db-n1-standard-1"

    ip_configuration {
      require_ssl = true
    }

    backup_configuration {
      enabled            = true
      binary_log_enabled = true
    }
  }
}

#
# Couldn't get this to work correctly, and can't import it for some reason.
#

resource "google_sql_database_instance" "ompldr-master-mysql-failover" {
  project          = "${var.project}"
  region           = "us-east4"
  name             = "ompmaster-mysql4-failover"
  database_version = "MYSQL_5_7"

  master_instance_name = "${google_sql_database_instance.ompldr-master-mysql.name}"

  settings {
    tier = "db-n1-standard-1"
  }

  replica_configuration {
    failover_target = true
  }
}

resource "google_sql_database_instance" "ompldr-master-mysql-replica" {
  project          = "${var.project}"
  region           = "us-east4"
  name             = "ompmaster-mysql4-replica"
  database_version = "MYSQL_5_7"

  master_instance_name = "${google_sql_database_instance.ompldr-master-mysql.name}"

  settings {
    tier = "db-n1-standard-1"
  }
}

resource "google_sql_user" "ompldr-master-users" {
  project  = "${var.project}"
  name     = "${var.db_user}"
  instance = "${google_sql_database_instance.ompldr-master-mysql.name}"
  host     = "%"
  password = "${var.db_password}"
}
