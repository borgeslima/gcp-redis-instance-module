locals {
  name    = "quarks-labs"
  project = "quarks-labs"
  region  = "us-east1"
}

provider "google" {
  project = local.project
  region  = local.region
}

module "module" {
  source                  = "../.."
  project                 = local.project
  region                  = local.region
  name                    = local.name
  display_name            = local.name
  location_id             = "us-east1-b"
  tier                    = "STANDARD_HA"
  reserved_ip_range       = "10.3.0.0/27"
  auth_enabled            = false
  authorized_network      = "default"
  transit_encryption_mode = "DISABLED"
  memory_size_gb          = 1
  redis_version           = "REDIS_4_0"
}



