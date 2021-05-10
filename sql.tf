resource "azurerm_sql_server" "siddharth_rg" {
  name                         = "mysiddharth_rgsqlserver"
  resource_group_name          = azurerm_resource_group.siddharth_rg.name
  location                     = "West US"
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"

  tags = {
    environment = "production"
  }
}

resource "azurerm_storage_account" "siddharth_rg" {
  name                     = "siddharth_rgsa"
  resource_group_name      = azurerm_resource_group.siddharth_rg.name
  location                 = azurerm_resource_group.siddharth_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_sql_database" "siddharth_rg" {
  name                = "mysiddharth_rgsqldatabase"
  resource_group_name = azurerm_resource_group.siddharth_rg.name
  location            = "West US"
  server_name         = azurerm_sql_server.siddharth_rg.name

  extended_auditing_policy {
    storage_endpoint                        = azurerm_storage_account.siddharth_rg.primary_blob_endpoint
    storage_account_access_key              = azurerm_storage_account.siddharth_rg.primary_access_key
    storage_account_access_key_is_secondary = true
    retention_in_days                       = 6
  }



  tags = {
    environment = "production"
  }
}