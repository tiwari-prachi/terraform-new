######################################
# Global Settings
######################################
project_id = "xenon-chain-393407"
region     = "asia-south1"
location   = "asia-south1"

######################################
# VPC Module
######################################
vpc_name      = "drishya-vpc-dev-new"
routing_mode  = "REGIONAL"

######################################
# Subnet Module
######################################
subnet_name              = "private-subnet-dev-new"
subnet_cidr              = "172.16.112.0/20"
private_ip_google_access = true

public_subnet_name = "public-subnet-dev-new"
public_subnet_cidr = "192.168.8.0/21"

######################################
# GKE Module
######################################
cluster_name          = "drishya-gke-cluster-dev-new"
machine_type          = "e2-medium"
service_account_email = "gke-service-account-dev-new@project-beacon-460705.iam.gserviceaccount.com"

pods_range          = "gke-pods-range-dev-new"
pods_range_name     = "gke-pods-range-dev-new"
pods_ip_range       = "172.23.0.0/17"

services_range      = "gke-services-range-dev-new"
services_range_name = "gke-services-range-dev-new"
services_ip_range   = "172.24.0.0/19"

######################################
# Firewall Module
######################################
ssh_source_ip = "203.0.113.4/32"

######################################
# Static IP Module
######################################
static_ip_names = [
  "ajna-ai-frontend-static-ip-dev-new",
  "artisan-client-frontend-static-ip-dev-new"
]

######################################
# GCR (Artifact Registry) Module
######################################
repo_name = "gke-docker-repo-dev-new"

######################################
# Cloud Storage Bucket Module
######################################
bucket_name = "drishya-stage-state-bucket"

######################################
# Project Services Module
######################################
enabled_apis = [
  "compute.googleapis.com",
  "container.googleapis.com",
  "sqladmin.googleapis.com",
  "cloudresourcemanager.googleapis.com",
  "iam.googleapis.com",
  "certificatemanager.googleapis.com"
]

######################################
# Cloud SQL PostgreSQL Module
######################################
zone                = "us-central1-a"
database_version    = "POSTGRES_15"
disk_size           = 10
disk_type           = "PD_SSD"
root_password       = "artisanDrishya@2025"
enable_private_ip   = true
enable_public_ip    = false
deletion_protection = false
private_network     = "projects/project-beacon-460705/global/networks/drishya-vpc-dev-new"
db_name     = "mydatabase-new"
db_user     = "dbuser"
db_password = "artisanDrishya@2025"

######################################
# VPC Peering Module
######################################
peering_range_name    = "sql-private-ip-range-dev-new"
peering_range_address = "172.25.0.0"
prefix_length         = 24
