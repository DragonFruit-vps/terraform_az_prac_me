variable "app_name" {
  type = string
  validation {
    condition     = length(var.app_name) <= 9
    error_message = "lenth should be less than 9"
  }
}
variable "env_name" {
  type = string
}
variable "api_key" {
  sensitive = true
  type      = string
}
#variable "instance_count" {
#  type = number
#  validation {
#    condition     = var.instance_count >= 5 && var.instance_count < 9 && var.instance_count % 2 != 0
#    error_message = "length is between 5 to 9 and only odd instnce"
# }
#}
# instedd of hard coded value use local nd provide min max
variable "instance_count" {
  type = number
  validation {
    condition     = var.instance_count >= local.min_v && var.instance_count < local.max_v && var.instance_count % 2 != 0
    error_message = "length is between 5 to 9 and only odd instnce"
  }
}
variable "enabled" {
  type = bool
}
variable "region" {
  type = list(string)
}
variable "region_count" {
  type = map(string)
}
variable "region_set" {
  type = set(string)
}
variable "sku_setting" {
  type = object({
    kind = string
    tier = string
  })
}
/*
output "alpha" {
  value = module.alpha.random_string
}
output "bravo" {
  value = module.bravo.random_string
}*/
