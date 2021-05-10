provider "azurerm" {
    
    features {}
}
# This will be specific to your own Terraform State in Azure storage
terraform {
  backend "azurerm" {
    resource_group_name   = "siddhart_rg"
    storage_account_name  = "sidwar1"
    container_name        = "sid"
    key                   = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "siddharth_rg" {}