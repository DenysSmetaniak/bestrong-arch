resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_password
}

resource "azurerm_mssql_database" "sql_database" {
  name       = var.database_name
  server_id  = azurerm_mssql_server.sql_server.id
  sku_name   = "S0"
  depends_on = [azurerm_mssql_server.sql_server]
}


resource "azurerm_private_endpoint" "sql_private_endpoint" {
  name                = "${var.sql_server_name}-private-endpoint"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.vnet_integration_subnet_id

  private_service_connection {
    name                           = "${var.sql_server_name}-private-connection"
    private_connection_resource_id = azurerm_mssql_server.sql_server.id
    is_manual_connection           = false
    subresource_names              = ["sqlServer"]
  }
  depends_on = [azurerm_mssql_server.sql_server]
}
