resource "azurerm_mssql_server" "bestrong_mssql_srv" {
  name                          = var.bestrong_mssql_srv_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  version                       = var.bestrong_mssql_srv_version
  administrator_login           = var.bestrong_mssql_login
  administrator_login_password  = var.bestrong_mssql_password
  public_network_access_enabled = false
}

resource "azurerm_mssql_database" "bestrong_mssql_db" {
  name      = var.bestrong_mssql_db_name
  server_id = azurerm_mssql_server.bestrong_mssql_srv.id
  collation = "SQL_Latin1_General_CP1_CI_AS"

  max_size_gb                 = var.bestrong_mssql_size_gb
  sku_name                    = var.bestorng_mssql_cpu_max
  min_capacity                = var.bestrong_mssql_cpu_min
  auto_pause_delay_in_minutes = var.bestrong_mssql_cpu_pause_delay

  lifecycle {
    prevent_destroy = false
  }
}

resource "azurerm_private_endpoint" "bestrong_mssql_pe" {
  name                = var.bestrong_mssql_pe_name
  location            = var.location
  resource_group_name = var.resource_group_name
  #   subnet_id           = azurerm_subnet.bestrong_private_es.id
  subnet_id = var.subnet_id

  private_service_connection {
    name                           = var.private_service_connection
    private_connection_resource_id = azurerm_mssql_server.bestrong_mssql_srv.id
    is_manual_connection           = false
    subresource_names              = ["sqlServer"]
  }
}
