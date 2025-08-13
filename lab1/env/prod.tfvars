env_name       = "prod"
instance_count = 7
enabled        = false
region         = ["westus", "eastus"]
region_count = {
  "westus" = 3
  "eastus" = 5
}
region_set = ["westus", "eastus"]
sku_setting = {
  kind = "a"
  tier = "dev"
}
