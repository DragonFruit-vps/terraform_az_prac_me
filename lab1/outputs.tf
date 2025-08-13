output "application_name" {
  value = var.app_name
}
output "environment_name" {
  value = var.env_name
}
output "env_prefix" {
  value = local.env_prefix
}
output "suffix" {
  value = random_string.suffix.result
}
output "api_key" {
  value     = "${var.api_key}bar"
  sensitive = true
}
output "instance_count" {
  value = var.instance_count
}
output "region" {
  value = var.region[1]
}
#output "region_count" {
#  value = var.region_count["eastus"]
#}

output "region_count" {
  value = var.region_count[var.region[0]]
}
output "region_s" {
  value = var.region_set
}
output "sku" {
  value = var.sku_setting
}
#output "sku" {
#  value = var.sku_setting.kind
#}

/*FOR LIST COLLECTION CHECK MAIN.IF
output "regiona" {
  value = module.regional_stamp[0]
}
*/
#for MAP COLLECTION
output "regiona" {
  value = module.regional_stamp["foo-A"]
}



