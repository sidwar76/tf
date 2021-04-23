
resource "azurerm_storage_account" "example" {
  name                     = "${var.name}-storageacc"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "${var.plan_tier}"
  account_replication_type = "LRS"
}

resource "azurerm_sql_server" "example" {
  name                         = "${var.name}-mysqlserver"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "${var.loginid}"
  administrator_login_password = "${var.password}"

  extended_auditing_policy {
    storage_endpoint                        = azurerm_storage_account.example.primary_blob_endpoint
    storage_account_access_key              = azurerm_storage_account.example.primary_access_key
    storage_account_access_key_is_secondary = true
    retention_in_days                       = 6
  }

  tags = {
    environment = "production"
  }
}