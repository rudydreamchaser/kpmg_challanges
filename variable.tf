variable "prefix" {
  default = "testapp" # default is this, if not specifically specified
}
variable "project" {
  description = "The project to deploy to, if not set the default provider project is used."
  default     = ""
}

variable "region" {
  description = "Region for cloud resources"
  default     = "us-central1"
}

variable "database_version" {
  description = "The version of of the database"
  default     = "MYSQL_5_6"
}


variable "tier" {
  description = "machine type"
  default     = "db-f1-micro"
}

variable "db_name" {
  description = "Name of the default database to create"
  default     = "testapp-mysql"
}

variable "user_name" {
  description = "The name of the default user"
  default     = "testapp"
}

variable "user_password" {
  description = "Password for testapp user, otherwise we have to write output.tf to output the password"
  default     = "test123"
}

variable "activation_policy" {
  default     = "ALWAYS"
}

variable "authorized_gae_applications" {
  description = "This is important as we need to allow the App Engine to access this"
  default     = [testapp1]
}


variable "disk_size" {
  description = "Disk Size"
  default     = 10
}

variable "disk_type" {
  description = "Second generation only. The type of data disk: `PD_SSD` or `PD_HDD`."
  default     = "PD_SSD"
}

variable "pricing_plan" {
  default     = "PER_USE"
}

variable "replication_type" {
  default     = "SYNCHRONOUS"
}

variable "availability_type" {
  description = "Regional or Zonal"
  default     = "ZONAL"
}
