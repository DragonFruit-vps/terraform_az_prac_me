resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}

#for LIST
/*resource "random_string" "list" {
  count   = length(var.region)
  length  = 6
  upper   = false
  special = false
}*/

/*
#FOR MAP
resource "random_string" "map" {
  count   = length(var.region_count)
  length  = 6
  upper   = false
  special = false
}
resource "random_string" "enabled" {
  count   = var.enabled ? 1 : 0
  length  = 6
  upper   = false
  special = false
}

module "alpha" {
  source  = "hashicorp/module/random"
  version = "1.0.0"
}

module "bravo" {
  source  = "hashicorp/module/random"
  version = "1.0.0"
}
module "charlie" {
  source = "./modules/rando"
  length = 8
}

*/
/*  LIST COLLECTION... 
locals {
  #string interpolatiom
  env_prefix = "${var.app_name}-${var.env_name}-${random_string.suffix.result}"
  regional_stamp = [
    {
      region    = "westus"
      name      = "foo-A"
      max_count = 7
      min_count = 3
    },
    {

      region    = "eastus"
      name      = "foo-B"
      max_count = 7
      min_count = 3
    }
  ]
}

module "regional_stamp" {
  source    = "./modules/regional_stamp"
  count     = length(local.regional_stamp)
  region    = local.regional_stamp[count.index].region
  name      = local.regional_stamp[count.index].name
  max_count = local.regional_stamp[count.index].max_count
  min_count = local.regional_stamp[count.index].min_count
}

*/

#MAP COLLECTION FOR FOR EACH
locals {
  #string interpolatiom
  env_prefix = "${var.app_name}-${var.env_name}-${random_string.suffix.result}"
  regional_stamp = {
    "foo-A" = {
      region    = "westus"
      max_count = 7
      min_count = 3
    },
    "foo-B" = {
      region    = "eastus"
      max_count = 7
      min_count = 3
    }
  }
}

module "regional_stamp" {
  source    = "./modules/regional_stamp"
  for_each  = local.regional_stamp
  region    = each.value.region
  name      = each.key
  max_count = each.value.max_count
  min_count = each.value.min_count
}

