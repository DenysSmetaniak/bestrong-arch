resource "azurerm_service_plan" "bestrong_sp" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = var.app_service_plan_os
  sku_name            = var.app_service_plan_sku
}

resource "azurerm_linux_web_app" "bestrong_appservice" {
  name                      = var.app_service_name
  location                  = var.location
  resource_group_name       = var.resource_group_name
  service_plan_id           = azurerm_service_plan.bestrong_sp.id
  virtual_network_subnet_id = var.virtual_network_subnet_id

  site_config {
    always_on = false
  }

  storage_account {
    name         = var.storage_account_name
    account_name = var.storage_account_name
    share_name   = var.storage_account_share_name
    mount_path   = var.storage_mount_path
    type         = "AzureFiles"
    access_key   = var.storage_account_access_key
  }

  identity {
    type = "SystemAssigned"
  }

  depends_on = [
    var.storage_share_dependency
  ]
}



