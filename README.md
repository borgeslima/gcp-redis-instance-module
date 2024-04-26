# GCP REDIS Terraform module

Terraform module which creates Redis resources on GCP.


## Usage

```hcl

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
  source                  = "ssh::git@github.com:quarks-labs/gcp-redis-instance-module.git"
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

```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 5.24.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.24.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_redis_instance.this](https://registry.terraform.io/providers/hashicorp/google/5.24.0/docs/resources/redis_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alternative_location_id"></a> [alternative\_location\_id](#input\_alternative\_location\_id) | n/a | `string` | `"us-central1-f"` | no |
| <a name="input_auth_enabled"></a> [auth\_enabled](#input\_auth\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_authorized_network"></a> [authorized\_network](#input\_authorized\_network) | n/a | `string` | n/a | yes 
|
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | n/a | `string` | n/a | yes |
| <a name="input_location_id"></a> [location\_id](#input\_location\_id) | n/a | `string` | `"us-central1-a"` | no |       
| <a name="input_memory_size_gb"></a> [memory\_size\_gb](#input\_memory\_size\_gb) | n/a | `number` | `1` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_persistence_config"></a> [persistence\_config](#input\_persistence\_config) | n/a | <pre>object({<br>    
persistence_mode    = string<br>    rdb_snapshot_period = string<br>  })</pre> | <pre>{<br>  "persistence_mode": "RDB",<br>  "rdb_snapshot_period": "TWELVE_HOURS"<br>}</pre> | no |
| <a name="input_project"></a> [project](#input\_project) | n/a | `string` | n/a | yes |
| <a name="input_redis_version"></a> [redis\_version](#input\_redis\_version) | n/a | `string` | `"REDIS_4_0"` | no |     
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | n/a | yes |
| <a name="input_reserved_ip_range"></a> [reserved\_ip\_range](#input\_reserved\_ip\_range) | n/a | `string` | n/a | yes || <a name="input_tier"></a> [tier](#input\_tier) | n/a | `string` | `"STANDARD_HA"` | no |
| <a name="input_transit_encryption_mode"></a> [transit\_encryption\_mode](#input\_transit\_encryption\_mode) | n/a | `string` | n/a | yes |

## Outputs

No outputs.



