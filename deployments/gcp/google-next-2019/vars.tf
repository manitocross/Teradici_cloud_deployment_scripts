variable "gcp_credentials_file" {
  description = "Location of GCP JSON credentials file"
  type = "string"
}

variable "gcp_project_id" {
  description = "GCP Project ID"
  type = "string"
}

variable "gcp_region" {
  description = "GCP region"
  default = "us-west2"
}
variable "gcp_zone" {
  description = "GCP zone"
  # Default to us-west2-b because P4 Workstation GPUs available here
  default = "us-west2-b"
}

variable "prefix" {
  description = "Prefix to add to name of new resources. Must be <= 9 characters."
  default = ""
}

variable "dc_subnet_cidr" {
  description = "CIDR for subnet containing the Domain Controller"
  default = "10.0.0.0/24"
}

variable "dc_private_ip" {
  description = "Static internal IP address for the Domain Controller"
  default = "10.0.0.100"
}

variable "dc_machine_type" {
  description = "Machine type for Domain Controller"
  default = "n1-standard-2"
}

variable "dc_disk_image_project" {
  description = "Disk image project for Domain Controller"
  default = "windows-cloud"
}

variable "dc_disk_image_family" {
  description = "Disk image family for Domain Controller"
  default = "windows-2016"
}

variable "dc_disk_size_gb" {
  description = "Disk size (GB) of Domain Controller"
  default = 50
}

variable "dc_admin_password" {
  description = "Password for the Administrator of the Domain Controller"
  type = "string"
}

# Hard-coded to accept list of 3: on-prem, us-west, us-east
# These regions are chosen based on support for Nvidia P4 GPU
variable "cac_regions" {
  description = "Regions in which to deploy Connectors"
  default = ["us-central1", "us-west2", "us-east4"]
}

# Hard-coded to accept list of 3: on-prem, us-west, us-east
variable "cac_zones" {
  description = "Zones in which to deploy Connectors"
  default = ["us-central1-a", "us-west2-b", "us-east4-b"]
}

# Hard-coded to accept list of 3: on-prem, us-west, us-east
variable "cac_subnet_cidrs" {
  description = "CIDRs for subnet containing the Cloud Access Connector"
  default = ["10.0.1.0/24", "10.1.1.0/24", "10.2.1.0/24"]
}

variable "cac_machine_type" {
  description = "Machine type for Cloud Access Connector"
  default = "n1-standard-2"
}

variable "cac_disk_image_project" {
  description = "Disk image project for Cloud Access Connector"
  default = "ubuntu-os-cloud"
}

variable "cac_disk_image_family" {
  description = "Disk image family for Cloud Access Connector"
  default = "ubuntu-1804-lts"
}

variable "cac_disk_size_gb" {
  description = "Disk size (GB) of Cloud Access Connector"
  default = 50 
}

# TODO: does this have to match the tag at the end of the SSH pub key?
variable "cac_admin_user" {
  description = "Username of Cloud Access Connector Administrator"
  default = "cam_admin"
}

variable "cac_admin_ssh_pub_key_file" {
  description = "SSH public key for Cloud Access Connector Administrator"
  type = "string"
}

variable "cac_admin_ssh_priv_key_file" {
  description = "SSH private key for Cloud Access Connector Administrator"
  type = "string"
}

variable "domain_name" {
  description = "Domain name for the new domain"
  type = "string"
}

variable "safe_mode_admin_password" {
  description = "Safe Mode Admin Password (Directory Service Restore Mode - DSRM)"
  type = "string"
}

variable "service_account_username" {
  description = "Active Directory Service account name to be created"
  default = "cam_admin"
}

variable "service_account_password" {
  description = "Active Directory Service account password"
  type = "string"
}

variable "ws_region" {
  default = "us-west2"
}

variable "ws_subnet_cidr" {
  description = "CIDR for subnet containing Remote Workstations"
  default = "10.1.2.0/24"
}

variable "cac_token" {
  description = "Connector Token from CAM Service"
  type = "list"
}

variable "pcoip_registration_code" {
  description = "PCoIP Registration code"
  type = "string"
}

variable "cam_url" {
  description = "cam server url."
  default = "https://cam.teradici.com"
}

variable "win_gfx_instance_count" {
  description = "Number of Windows Grpahics Workstations"
  default = 0
}

variable "win_gfx_machine_type" {
  description = "Machine type for Windows Graphics Workstations"
  default = "n1-standard-2"
}

variable "win_gfx_accelerator_type" {
  description = "Accelerator type for Windows Graphics Workstations"
  default = "nvidia-tesla-p4-vws"
}

variable "win_gfx_accelerator_count" {
  description = "Number of GPUs for Windows Graphics Workstations"
  default = 1
}

variable "win_gfx_disk_size_gb" {
  description = "Disk size (GB) of Windows Graphics Workstations"
  default = 50
}

variable "centos_gfx_instance_count" {
  description = "Number of CentOS Grpahics Workstations"
  default = 0
}

variable "centos_gfx_machine_type" {
  description = "Machine type for CentOS Graphics Workstations"
  default = "n1-standard-2"
}

variable "centos_gfx_accelerator_type" {
  description = "Accelerator type for CentOS Graphics Workstations"
  default = "nvidia-tesla-p4-vws"
}

variable "centos_gfx_accelerator_count" {
  description = "Number of GPUs for CentOS Graphics Workstations"
  default = 1
}

variable "centos_gfx_disk_size_gb" {
  description = "Disk size (GB) of CentOS Graphics Workstations"
  default = 50
}

variable "centos_admin_user" {
  description = "Username of CentOS Workstations"
  default = "cam_admin"
}

variable "centos_admin_ssh_pub_key_file" {
  description = "SSH public key for CentOS Workstation Administrator"
  type = "string"
}

variable "centos_admin_ssh_priv_key_file" {
  description = "SSH private key for CentOS Workstation Administrator"
  type = "string"
}
