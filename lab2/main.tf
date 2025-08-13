resource "azurerm_resource_group" "main" {
  name     = "rg-${var.app-name}- ${var.env-name}"
  location = var.primary_region
}
