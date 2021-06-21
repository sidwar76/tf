provider "azurerm" {
  subscription_id = "0d3ce63c-abaa-48ae-bbe1-f582cea576b9"
  client_id       = "811398c3-7846-4b90-84b9-2c4585a28aaa" 
  client_secret   = "3d8YqB.G3.Q~eCfhLcx.nZXr_79m384st."
  tenant_id       = "e4e34038-ea1f-4882-b6e8-ccd776459ca0"
  features {}
}
# This will be specific to your own Terraform State in Azure storage
#terraform {
 # backend "azurerm" {
  #  resource_group_name   = "siddhart_rg"
   # storage_account_name  = "sidwar1"
    #container_name        = "sid"
    #key                   = "terraform.tfstate"
  #}
#}

resource "azurerm_resource_group" "siddharth_rg2" {
  name     = "siddharth_rg"
  location = "East US"
}
