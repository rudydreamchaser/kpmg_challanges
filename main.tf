# CloudSQL creation

resource "google_sql_database_instance" "master" {
  name             = "${var.prefix}-mysql"
  project          = var.project
  region           = var.region
  database_version = var.database_version
  settings {
    tier                        = var.tier
    activation_policy           = var.activation_policy
    authorized_gae_applications = var.authorized_gae_applications

    resource "google_sql_database" "default" {
      name     = var.db_name
      project  = var.project
      instance = google_sql_database_instance.master.name
    }

    resource "google_sql_user" "default" {
      name     = var.user_name
      project  = var.project
      instance = google_sql_database_instance.master.name
    }
  }
}

#Appengine deployment

resource "google_app_engine_standard_app_version" "testapp1" {
  version_id = "v1"
  service = "new"
  runtime = "python37"

  entrypoint {
    shell = "python3 app.py"
  }

  deployment {
    zip {
      source_url = "https://storage.googleapis.com/path_to_testapp1_file_on_gcs"
    }
  }

  env_variables = {
    port = "8080"
  }

  delete_service_on_destroy = true
