# kpmg_challanges
KPMG interview challange1

Problem Statement: A 3-tier environment is a common setup. Use a tool of your choosing/familiarity create these
resources. Please remember we will not be judged on the outcome but more focusing on the
approach, style and reproducibility.

Solution: GAE + Cloudsql (MySql) 

For this solution, we have app folder on GCS bucket, which is deployed on the GAE and can connect to CloudSQL(MySQL), as we have mentioned in configuration "authorized_gae_applications"  which can access the MySQL database.

Assumations: For this 3-tier env to work we have made following assumations,

We have permissions to create service account,
We have created a service account with following scopes:
"https://www.googleapis.com/auth/cloud-platform"
"https://www.googleapis.com/auth/appengine.admin"
"https://www.googleapis.com/auth/cloud-platform.read-only"
"https://www.sql-component.googleapis.com"
"https://www.googleapis.com/auth/sqlservice.admin"
"https://www.googleapis.com/auth/devstorage.full_control"
"https://www.googleapis.com/auth/logging.write"
"https://www.googleapis.com/auth/monitoring.write"

GCS bucket is in the same project and SA have permission to access it
