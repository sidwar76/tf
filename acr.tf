locals {
  acr_name = "sidwaracr"
}

resource "azurerm_container_registry" "default" {
  name                     = "${local.acr_name}"
  resource_group_name      = "${azurerm_resource_group.example.name}"
  location                 = "${azurerm_resource_group.example.location}"
  sku                      = "Standard"
  admin_enabled            = false
}