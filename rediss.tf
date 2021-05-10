

// # NOTE: the Name used for Redis needs to be globally unique
// resource "azurerm_redis_cache" "example" {
//   name                = "${var.name}-rediss"
//   location            = azurerm_resource_group.siddharth_rg.location
//   resource_group_name = azurerm_resource_group.siddharth_rg.name
//   capacity            = 2
//   family              = "C"
//   sku_name            = "${var.plan_tier}"
//   enable_non_ssl_port = false
//   minimum_tls_version = "1.2"

//   redis_configuration {
//   }
// }