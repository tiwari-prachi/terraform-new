######################################
# Global Settings
######################################
project_id = "xenon-chain-393407"
region     = "asia-south1"
location   = "asia-south1"

######################################
# VPC Module
######################################
vpc_name      = "drishya-vpc-dev"
routing_mode  = "REGIONAL"

######################################
# Subnet Module
######################################
subnet_name              = "private-subnet"
subnet_cidr              = "172.16.96.0/20"               # unchanged, okay

private_ip_google_access = true

# Public Subnet
public_subnet_name = "public-subnet"
public_subnet_cidr = "192.168.0.0/21"                    # unchanged, okay

######################################
# GKE Module
######################################
cluster_name          = "drishya-gke-cluster-dev"
machine_type          = "e2-medium"
service_account_email = "993583867388-compute@developer.gserviceaccount.com?uid=111239338393399054276"

# GKE IP Ranges (non-overlapping)
pods_range          = "gke-pods-range"
pods_range_name     = "gke-pods-range"
pods_ip_range       = "172.20.0.0/17"                    # updated from 172.16.128.0/17 to avoid overlap

services_range      = "gke-services-range"
services_range_name = "gke-services-range"
services_ip_range   = "172.21.0.0/19"                    # updated from 172.17.0.0/19 to avoid overlap

######################################
# Firewall Module
######################################
ssh_source_ip = "203.0.113.4/32"

######################################
# Static IP Module
######################################
static_ip_names = [
  "ajna-ai-frontend-static-ip-dev",
  "artisan-client-frontend-static-ip-dev"
]

######################################
# GCR (Artifact Registry) Module
######################################
repo_name = "gke-docker-repo"

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
zone               = "us-central1-a"
database_version   = "POSTGRES_15"
disk_size          = 10
disk_type          = "PD_SSD"
root_password      = "iloveindia@2025"
enable_private_ip  = true
enable_public_ip   = false
deletion_protection = false
private_network    = "projects/xenon-chain-393407/global/networks/drishya-vpc-dev"
db_name            = "mydatabase"
db_user            = "dbuser"
db_password        = "iloveindia@1947"

######################################
# VPC Peering Module
######################################

peering_range_name    = "sql-private-ip-range"
peering_range_address = "172.22.0.0"       # safe non-overlapping /24 block in 172.22.0.0/24
prefix_length         = 24
