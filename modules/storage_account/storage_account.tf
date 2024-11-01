resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_share" "fileshare" {
  name                 = var.fileshare_name
  storage_account_name = azurerm_storage_account.storage_account.name
  quota                = 5120
}

resource "azurerm_private_endpoint" "storage_private_endpoint" {
  name                = "${var.storage_account_name}-private-endpoint"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.vnet_integration_subnet_id

  private_service_connection {
    name                           = "${var.storage_account_name}-private-connection"
    private_connection_resource_id = azurerm_storage_account.storage_account.id
    is_manual_connection           = false
    subresource_names              = ["file"]
  }
}

