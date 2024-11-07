resource "azurerm_storage_account" "bestrong_sa" {
  name                          = var.bestrong_sa_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  account_tier                  = "Standard"
  account_replication_type      = "LRS"
  public_network_access_enabled = true

  # static_website {
  #   index_document     = "dummy.html"
  #   error_404_document = "dummy404.html"
  # }
}

resource "azurerm_storage_share" "bestrong_fs" {
  name                 = var.bestrong_fs_name
  storage_account_name = azurerm_storage_account.bestrong_sa.name
  quota                = var.bestrong_storage_fs_size_gb
}

resource "azurerm_private_endpoint" "bestrong_pe" {
  name                = var.bestrong_pe_name
  location            = var.location
  resource_group_name = var.resource_group_name
  # subnet_id           = var.bestrong_private_es
  subnet_id = var.subnet_id


  private_service_connection {
    name                           = var.bestrong_storage_private_link
    private_connection_resource_id = azurerm_storage_account.bestrong_sa.id
    is_manual_connection           = false
    subresource_names              = ["file"]
  }
}

