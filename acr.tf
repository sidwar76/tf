locals {
  acr_name = "${var.name}acr"
}

resource "azurerm_container_registry" "default" {
  name                     = "${local.acr_name}"
  resource_group_name      = "${azurerm_resource_group.siddharth_rg.name}"
  location                 = "${azurerm_resource_group.siddharth_rg.location}"
  sku                      = "Standard"
  admin_enabled            = false
}