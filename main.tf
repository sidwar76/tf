provider "azurerm" {
   features {}
}
# Reference to the current subscription.  Used when creating role assignments
resource "azurerm_resource_group" "siddharth_rg" {
  name     = "siddharth_rg"
  location = "East US"
}